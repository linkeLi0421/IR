; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_bus_clks_config:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_bus_clks_config\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_bus_clks_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_init_tstamp_counter:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_init_tstamp_counter\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_init_tstamp_counter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_dvr_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_dvr_probe\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_dvr_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_dvr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_dvr_remove\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_dvr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_resume\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.154 }
%union.anon.154 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.200, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.200 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.201, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.201 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [40 x i8], %struct.napi_struct, [40 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [28 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.196, %struct.anon.197 }
%struct.anon.196 = type { i32, i32, i32 }
%struct.anon.197 = type { i32, i32, i32, i32 }
%struct.stmmac_hwtimestamp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_rx_buffer = type { %union.anon.198, ptr, i32 }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { ptr, i32, i32 }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.page_pool_params = type { i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.153, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.153 = type { %struct.atomic_t }
%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }
%struct.stmmac_tx_info = type { i32, i8, i32, i8, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.159, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.180, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.159 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.180 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.stmmac_fpe_cfg = type { i8, i8, i32, i32 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.dw_xpcs = type { ptr, ptr, %struct.phylink_pcs }
%struct.phylink_pcs = type { ptr, i8 }
%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.205, i16, i16, i16 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { [6 x i8], [6 x i8] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.110 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { %struct.anon.112, [0 x %struct.sock_filter] }
%struct.anon.112 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.ifreq = type { %union.anon.160, %union.anon.161 }
%union.anon.160 = type { [16 x i8] }
%union.anon.161 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.stmmac_tc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_bpf = type { i32, %union.anon.164 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.155, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.156, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.157, ptr, %struct.address_space, %struct.list_head, %union.anon.158, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.155 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.156 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.158 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__param_str_watchdog = internal constant [16 x i8] c"stmmac.watchdog\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@watchdog = internal global i32 5000, align 4
@__param_watchdog = internal constant %struct.kernel_param { ptr @__param_str_watchdog, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.154 { ptr @watchdog } }, section "__param", align 4
@__UNIQUE_ID_watchdogtype563 = internal constant [29 x i8] c"stmmac.parmtype=watchdog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_watchdog564 = internal constant [67 x i8] c"stmmac.parm=watchdog:Transmit timeout in milliseconds (default 5s)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"stmmac.debug\00", align 1
@debug = internal global i32 -1, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.154 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype565 = internal constant [26 x i8] c"stmmac.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug566 = internal constant [69 x i8] c"stmmac.parm=debug:Message Level (-1: default, 0: no output, 16: all)\00", section ".modinfo", align 1
@__param_str_phyaddr = internal constant [15 x i8] c"stmmac.phyaddr\00", align 1
@phyaddr = internal global i32 -1, align 4
@__param_phyaddr = internal constant %struct.kernel_param { ptr @__param_str_phyaddr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.154 { ptr @phyaddr } }, section "__param", align 4
@__UNIQUE_ID_phyaddrtype567 = internal constant [28 x i8] c"stmmac.parmtype=phyaddr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_phyaddr568 = internal constant [44 x i8] c"stmmac.parm=phyaddr:Physical device address\00", section ".modinfo", align 1
@__param_str_flow_ctrl = internal constant [17 x i8] c"stmmac.flow_ctrl\00", align 1
@flow_ctrl = internal global i32 3, align 4
@__param_flow_ctrl = internal constant %struct.kernel_param { ptr @__param_str_flow_ctrl, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.154 { ptr @flow_ctrl } }, section "__param", align 4
@__UNIQUE_ID_flow_ctrltype569 = internal constant [30 x i8] c"stmmac.parmtype=flow_ctrl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_flow_ctrl570 = internal constant [52 x i8] c"stmmac.parm=flow_ctrl:Flow control ability [on/off]\00", section ".modinfo", align 1
@__param_str_pause = internal constant [13 x i8] c"stmmac.pause\00", align 1
@pause = internal global i32 65535, align 4
@__param_pause = internal constant %struct.kernel_param { ptr @__param_str_pause, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.154 { ptr @pause } }, section "__param", align 4
@__UNIQUE_ID_pausetype571 = internal constant [26 x i8] c"stmmac.parmtype=pause:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pause572 = internal constant [42 x i8] c"stmmac.parm=pause:Flow Control Pause Time\00", section ".modinfo", align 1
@__param_str_tc = internal constant [10 x i8] c"stmmac.tc\00", align 1
@tc = internal global i32 64, align 4
@__param_tc = internal constant %struct.kernel_param { ptr @__param_str_tc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.154 { ptr @tc } }, section "__param", align 4
@__UNIQUE_ID_tctype573 = internal constant [23 x i8] c"stmmac.parmtype=tc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tc574 = internal constant [43 x i8] c"stmmac.parm=tc:DMA threshold control value\00", section ".modinfo", align 1
@__param_str_buf_sz = internal constant [14 x i8] c"stmmac.buf_sz\00", align 1
@buf_sz = internal global i32 1536, align 4
@__param_buf_sz = internal constant %struct.kernel_param { ptr @__param_str_buf_sz, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.154 { ptr @buf_sz } }, section "__param", align 4
@__UNIQUE_ID_buf_sztype575 = internal constant [27 x i8] c"stmmac.parmtype=buf_sz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buf_sz576 = internal constant [35 x i8] c"stmmac.parm=buf_sz:DMA buffer size\00", section ".modinfo", align 1
@__param_str_eee_timer = internal constant [17 x i8] c"stmmac.eee_timer\00", align 1
@eee_timer = internal global i32 1000, align 4
@__param_eee_timer = internal constant %struct.kernel_param { ptr @__param_str_eee_timer, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.154 { ptr @eee_timer } }, section "__param", align 4
@__UNIQUE_ID_eee_timertype577 = internal constant [30 x i8] c"stmmac.parmtype=eee_timer:int\00", section ".modinfo", align 1
@__UNIQUE_ID_eee_timer578 = internal constant [53 x i8] c"stmmac.parm=eee_timer:LPI tx expiration time in msec\00", section ".modinfo", align 1
@__param_str_chain_mode = internal constant [18 x i8] c"stmmac.chain_mode\00", align 1
@chain_mode = internal global i32 0, align 4
@__param_chain_mode = internal constant %struct.kernel_param { ptr @__param_str_chain_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.154 { ptr @chain_mode } }, section "__param", align 4
@__UNIQUE_ID_chain_modetype579 = internal constant [31 x i8] c"stmmac.parmtype=chain_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_chain_mode580 = internal constant [57 x i8] c"stmmac.parm=chain_mode:To use chain instead of ring mode\00", section ".modinfo", align 1
@__kstrtab_stmmac_bus_clks_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_bus_clks_config = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_bus_clks_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_bus_clks_config to i32), ptr @__kstrtab_stmmac_bus_clks_config, ptr @__kstrtabns_stmmac_bus_clks_config }, section "___ksymtab_gpl+stmmac_bus_clks_config", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [43 x i8] c"failed to enable PTP reference clock: %pe\0A\00", align 1
@__kstrtab_stmmac_init_tstamp_counter = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_init_tstamp_counter = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_init_tstamp_counter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_init_tstamp_counter to i32), ptr @__kstrtab_stmmac_init_tstamp_counter, ptr @__kstrtabns_stmmac_init_tstamp_counter }, section "___ksymtab_gpl+stmmac_init_tstamp_counter", align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to alloc RX desc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init RX desc.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to alloc TX desc.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: DMA descriptors allocation failed\0A\00", align 1
@__func__.stmmac_xdp_open = private unnamed_addr constant [16 x i8] c"stmmac_xdp_open\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"%s: DMA descriptors initialization failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"stmmac_wq\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to create workqueue\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"unable to bring out of ahb reset: %pe\0A\00", align 1
@stmmac_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @stmmac_open, ptr @stmmac_release, ptr @stmmac_xmit, ptr null, ptr @stmmac_select_queue, ptr null, ptr @stmmac_set_rx_mode, ptr @stmmac_set_mac_address, ptr null, ptr null, ptr @stmmac_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_change_mtu, ptr null, ptr @stmmac_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_vlan_rx_add_vid, ptr @stmmac_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_fix_features, ptr @stmmac_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_bpf, ptr @stmmac_xdp_xmit, ptr null, ptr @stmmac_xsk_wakeup, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"TSO feature enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"SPH feature enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Using %d bits DMA width\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Failed to set DMA Mask\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"%s: warning: maxmtu having invalid value (%d)\0A\00", align 1
@__func__.stmmac_dvr_probe = private unnamed_addr constant [17 x i8] c"stmmac_dvr_probe\00", align 1
@stmmac_dvr_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"%s: MDIO bus (id: %d) registration failed\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"failed to setup phy (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"%s: ERROR %i registering the device\0A\00", align 1
@__kstrtab_stmmac_dvr_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_dvr_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_dvr_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_dvr_probe to i32), ptr @__kstrtab_stmmac_dvr_probe, ptr @__kstrtabns_stmmac_dvr_probe }, section "___ksymtab_gpl+stmmac_dvr_probe", align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"%s: removing driver\00", align 1
@__func__.stmmac_dvr_remove = private unnamed_addr constant [18 x i8] c"stmmac_dvr_remove\00", align 1
@__kstrtab_stmmac_dvr_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_dvr_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_dvr_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_dvr_remove to i32), ptr @__kstrtab_stmmac_dvr_remove, ptr @__kstrtabns_stmmac_dvr_remove }, section "___ksymtab_gpl+stmmac_dvr_remove", align 4
@__kstrtab_stmmac_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_suspend to i32), ptr @__kstrtab_stmmac_suspend, ptr @__kstrtabns_stmmac_suspend }, section "___ksymtab_gpl+stmmac_suspend", align 4
@__kstrtab_stmmac_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_resume to i32), ptr @__kstrtab_stmmac_resume, ptr @__kstrtabns_stmmac_resume }, section "___ksymtab_gpl+stmmac_resume", align 4
@__setup_str_stmmac_cmdline_opt = internal constant [11 x i8] c"stmmaceth=\00", section ".init.rodata", align 1
@__setup_stmmac_cmdline_opt = internal global %struct.obs_kernel_param { ptr @__setup_str_stmmac_cmdline_opt, ptr @stmmac_cmdline_opt, i32 0 }, section ".init.setup", align 4
@stmmac_notifier = internal global %struct.notifier_block { ptr @stmmac_device_event, ptr null, i32 0 }, align 4
@stmmac_fs_dir = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_stmmac__619_7555_stmmac_init6 = internal global ptr @stmmac_init, section ".initcall6.init", align 4
@__exitcall_stmmac_exit = internal global ptr @stmmac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description620 = internal constant [61 x i8] c"stmmac.description=STMMAC 10/100/1000 Ethernet device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [58 x i8] c"stmmac.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file622 = internal constant [55 x i8] c"stmmac.file=drivers/net/ethernet/stmicro/stmmac/stmmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license623 = internal constant [19 x i8] c"stmmac.license=GPL\00", section ".modinfo", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Failed to register xdp rxq info\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_main.c\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Register MEM_TYPE_PAGE_POOL RxQ-%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\016\09RX Queue %u rings\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"\016\09TX Queue %d rings\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"%s: alloc mac MSI %d (error: %d)\0A\00", align 1
@__func__.stmmac_request_irq_multi_msi = private unnamed_addr constant [29 x i8] c"stmmac_request_irq_multi_msi\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"wol\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"%s: alloc wol MSI %d (error: %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"lpi\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"%s: alloc lpi MSI %d (error: %d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"safety-ce\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"%s: alloc sfty ce MSI %d (error: %d)\0A\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"safety-ue\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"%s: alloc sfty ue MSI %d (error: %d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"%s:%s-%d\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"%s: alloc rx-%d  MSI %d (error: %d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"%s: alloc tx-%d  MSI %d (error: %d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"%s: invalid dev pointer\0A\00", align 1
@__func__.stmmac_mac_interrupt = private unnamed_addr constant [21 x i8] c"stmmac_mac_interrupt\00", align 1
@__func__.stmmac_safety_interrupt = private unnamed_addr constant [24 x i8] c"stmmac_safety_interrupt\00", align 1
@__func__.stmmac_msi_intr_rx = private unnamed_addr constant [19 x i8] c"stmmac_msi_intr_rx\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__func__.stmmac_msi_intr_tx = private unnamed_addr constant [19 x i8] c"stmmac_msi_intr_tx\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"%s: ERROR: allocating the IRQ %d (error: %d)\0A\00", align 1
@__func__.stmmac_request_irq_single = private unnamed_addr constant [26 x i8] c"stmmac_request_irq_single\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"%s: ERROR: allocating the WoL IRQ %d (%d)\0A\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"%s: ERROR: allocating the LPI IRQ %d (%d)\0A\00", align 1
@stmmac_dma_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.47 = private unnamed_addr constant [38 x i8] c"Driver BUG: missing reserved tailroom\00", align 1
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.51 = private unnamed_addr constant [38 x i8] c"%s: Cannot attach to PHY (error: %d)\0A\00", align 1
@__func__.stmmac_open = private unnamed_addr constant [12 x i8] c"stmmac_open\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"%s: Hw setup failed\0A\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"no phy at addr %d\0A\00", align 1
@__const.stmmac_init_phy.wol = private unnamed_addr constant { i32, i32, i32, [6 x i8], [2 x i8] } { i32 5, i32 0, i32 0, [6 x i8] zeroinitializer, [2 x i8] zeroinitializer }, align 4
@.str.54 = private unnamed_addr constant [16 x i8] c"Reset adapter.\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"configured FPE\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"!!! BOTH FPE stations ON\0A\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"Send Verify mPacket lo_state=%d lp_state=%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"DMA HW capability register supported\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"No HW DMA feature register supported\0A\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"RX Checksum Offload Engine supported\0A\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"COE Type %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"TX Checksum insertion supported\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"Wake-Up On Lan supported\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"TSO supported\0A\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"Enable RX Mitigation via HW Watchdog Timer\0A\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"device MAC address %pM\0A\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"%s: Tx Ring full when queue awake\0A\00", align 1
@__func__.stmmac_xmit = private unnamed_addr constant [12 x i8] c"stmmac_xmit\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"Tx DMA map failed\0A\00", align 1
@__func__.stmmac_tso_xmit = private unnamed_addr constant [16 x i8] c"stmmac_tso_xmit\00", align 1
@.str.69 = private unnamed_addr constant [49 x i8] c"\016%s: hdrlen %d, hdr_len %d, pay_len %d, mss %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"\016\09skb->len %d, skb->data_len %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [54 x i8] c"\016%s: curr=%d dirty=%d f=%d, e=%d, f_p=%p, nfrags %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"\016>>> frame to be transmitted: \00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"Tx dma map failed\0A\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"No support for HW time stamping\0A\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"must be stopped to change its MTU\0A\00", align 1
@stmmac_block_cb_list = internal global %struct.list_head { ptr @stmmac_block_cb_list, ptr @stmmac_block_cb_list }, align 4
@tc_cls_can_offload_and_chain0.__msg = internal constant [40 x i8] c"Driver supports only offload of chain 0\00", align 1
@tc_can_offload_extack.__msg = internal constant [37 x i8] c"TC offload is disabled on net device\00", align 1
@stmmac_phylink_mac_ops = internal constant %struct.phylink_mac_ops { ptr @stmmac_validate, ptr null, ptr null, ptr null, ptr @stmmac_mac_config, ptr null, ptr null, ptr @stmmac_mac_link_down, ptr @stmmac_mac_link_up }, align 4
@.str.79 = private unnamed_addr constant [19 x i8] c"descriptors_status\00", align 1
@stmmac_rings_status_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stmmac_rings_status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.80 = private unnamed_addr constant [8 x i8] c"dma_cap\00", align 1
@stmmac_dma_cap_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stmmac_dma_cap_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.81 = private unnamed_addr constant [14 x i8] c"RX Queue %d:\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Extended descriptor ring:\0A\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Descriptor ring:\0A\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"TX Queue %d:\0A\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"%d [%pad]: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"DMA HW features not supported\0A\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"==============================\0A\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"\09DMA HW features\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"\0910/100 Mbps: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"\091000 Mbps: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"\09Half duplex: %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"\09Hash Filter: %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"\09Multiple MAC address registers: %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"\09PCS (TBI/SGMII/RTBI PHY interfaces): %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"\09SMA (MDIO) Interface: %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"\09PMT Remote wake up: %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"\09PMT Magic Frame: %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"\09RMON module: %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"\09IEEE 1588-2002 Time Stamp: %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"\09IEEE 1588-2008 Advanced Time Stamp: %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [48 x i8] c"\09802.3az - Energy-Efficient Ethernet (EEE): %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"\09AV features: %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"\09Checksum Offload in TX: %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"\09IP Checksum Offload in RX: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [40 x i8] c"\09IP Checksum Offload (type1) in RX: %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [40 x i8] c"\09IP Checksum Offload (type2) in RX: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"\09RXFIFO > 2048bytes: %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"\09Number of Additional RX channel: %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [38 x i8] c"\09Number of Additional TX channel: %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [37 x i8] c"\09Number of Additional RX queues: %d\0A\00", align 1
@.str.114 = private unnamed_addr constant [37 x i8] c"\09Number of Additional TX queues: %d\0A\00", align 1
@.str.115 = private unnamed_addr constant [27 x i8] c"\09Enhanced descriptors: %s\0A\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"\09TX Fifo Size: %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"\09RX Fifo Size: %d\0A\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"\09Hash Table Size: %d\0A\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"\09TSO: %s\0A\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"\09Number of PPS Outputs: %d\0A\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"\09Safety Features: %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"\09Flexible RX Parser: %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [26 x i8] c"\09Enhanced Addressing: %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [27 x i8] c"\09Receive Side Scaling: %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [26 x i8] c"\09VLAN Hash Filtering: %s\0A\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"\09Split Header: %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"\09VLAN TX Insertion: %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [18 x i8] c"\09Double VLAN: %s\0A\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"\09Number of L3/L4 Filters: %d\0A\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"\09ARP Offloading: %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [46 x i8] c"\09Enhancements to Scheduled Traffic (EST): %s\0A\00", align 1
@.str.132 = private unnamed_addr constant [29 x i8] c"\09Frame Preemption (FPE): %s\0A\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"\09Time-Based Scheduling (TBS): %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"FPE workqueue stop\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"%s: DMA engine initialization failed\0A\00", align 1
@__func__.stmmac_hw_setup = private unnamed_addr constant [16 x i8] c"stmmac_hw_setup\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"invalid port speed\0A\00", align 1
@.str.137 = private unnamed_addr constant [34 x i8] c"RX IPC Checksum Offload disabled\0A\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"PTP not supported by HW\0A\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"PTP init failed\0A\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"Invalid DMA configuration\0A\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"Failed to reset the dma\0A\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"Enabling Safety Features\0A\00", align 1
@.str.143 = private unnamed_addr constant [34 x i8] c"No Safety Features support found\0A\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"No MAC Management Counters available\0A\00", align 1
@.str.145 = private unnamed_addr constant [36 x i8] c"IEEE 1588-2002 Timestamp supported\0A\00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"IEEE 1588-2008 Advanced Timestamp supported\0A\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"%s-fpe\00", align 1
@.str.148 = private unnamed_addr constant [32 x i8] c"%s: Failed to create workqueue\0A\00", align 1
@.str.149 = private unnamed_addr constant [20 x i8] c"FPE workqueue start\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"debug:\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"phyaddr:\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"buf_sz:\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"tc:\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"watchdog:\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"flow_ctrl:\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"pause:\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"eee_timer:\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"chain_mode:\00", align 1
@.str.160 = private unnamed_addr constant [47 x i8] c"\013%s: ERROR broken module parameter conversion\00", align 1
@__func__.stmmac_cmdline_opt = private unnamed_addr constant [19 x i8] c"stmmac_cmdline_opt\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_buf_sz576, ptr @__UNIQUE_ID_buf_sztype575, ptr @__UNIQUE_ID_chain_mode580, ptr @__UNIQUE_ID_chain_modetype579, ptr @__UNIQUE_ID_debug566, ptr @__UNIQUE_ID_debugtype565, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_eee_timer578, ptr @__UNIQUE_ID_eee_timertype577, ptr @__UNIQUE_ID_file622, ptr @__UNIQUE_ID_flow_ctrl570, ptr @__UNIQUE_ID_flow_ctrltype569, ptr @__UNIQUE_ID_license623, ptr @__UNIQUE_ID_pause572, ptr @__UNIQUE_ID_pausetype571, ptr @__UNIQUE_ID_phyaddr568, ptr @__UNIQUE_ID_phyaddrtype567, ptr @__UNIQUE_ID_tc574, ptr @__UNIQUE_ID_tctype573, ptr @__UNIQUE_ID_watchdog564, ptr @__UNIQUE_ID_watchdogtype563, ptr @__exitcall_stmmac_exit, ptr @__initcall__kmod_stmmac__619_7555_stmmac_init6, ptr @__ksymtab_stmmac_bus_clks_config, ptr @__ksymtab_stmmac_dvr_probe, ptr @__ksymtab_stmmac_dvr_remove, ptr @__ksymtab_stmmac_init_tstamp_counter, ptr @__ksymtab_stmmac_resume, ptr @__ksymtab_stmmac_suspend, ptr @__param_buf_sz, ptr @__param_chain_mode, ptr @__param_debug, ptr @__param_eee_timer, ptr @__param_flow_ctrl, ptr @__param_pause, ptr @__param_phyaddr, ptr @__param_tc, ptr @__param_watchdog, ptr @__setup_stmmac_cmdline_opt, ptr @stmmac_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_bus_clks_config(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  br i1 %1, label %7, label %46

7:                                                ; preds = %2
  %8 = tail call i32 @clk_prepare(ptr noundef %6) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef %6) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %6) #16
  br label %58

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 64
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 48
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = tail call i32 @clk_enable(ptr noundef %17) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #16
  br label %24

24:                                               ; preds = %23, %14
  %25 = phi i32 [ %21, %23 ], [ %18, %14 ]
  %26 = load ptr, ptr %3, align 64
  %27 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %26, i32 0, i32 47
  %28 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %28) #16
  tail call void @clk_unprepare(ptr noundef %28) #16
  br label %58

29:                                               ; preds = %20
  %30 = load ptr, ptr %3, align 64
  %31 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %30, i32 0, i32 43
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %30, i32 0, i32 46
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %32(ptr noundef %36, i1 noundef zeroext true) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %3, align 64
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %40, i32 0, i32 47
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #16
  tail call void @clk_unprepare(ptr noundef %42) #16
  %43 = load ptr, ptr %3, align 64
  %44 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %43, i32 0, i32 48
  %45 = load ptr, ptr %44, align 4
  tail call void @clk_disable(ptr noundef %45) #16
  tail call void @clk_unprepare(ptr noundef %45) #16
  br label %58

46:                                               ; preds = %2
  tail call void @clk_disable(ptr noundef %6) #16
  tail call void @clk_unprepare(ptr noundef %6) #16
  %47 = load ptr, ptr %3, align 64
  %48 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %47, i32 0, i32 48
  %49 = load ptr, ptr %48, align 4
  tail call void @clk_disable(ptr noundef %49) #16
  tail call void @clk_unprepare(ptr noundef %49) #16
  %50 = load ptr, ptr %3, align 64
  %51 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %50, i32 0, i32 43
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %50, i32 0, i32 46
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %52(ptr noundef %56, i1 noundef zeroext false) #16
  br label %58

58:                                               ; preds = %54, %46, %39, %34, %29, %24, %13, %7
  %59 = phi i32 [ %25, %24 ], [ %37, %39 ], [ 0, %46 ], [ 0, %54 ], [ 0, %29 ], [ 0, %34 ], [ %11, %13 ], [ %8, %7 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_disable_eee_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 52
  %3 = load i8, ptr %2, align 8, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  store i8 1, ptr %2, align 8
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.stmmac_ops, ptr %8, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %7, i32 noundef 0) #16
  br label %29

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.stmmac_ops, ptr %18, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %17) #16
  br label %25

25:                                               ; preds = %24, %20, %15
  %26 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 45
  %27 = tail call i32 @del_timer_sync(ptr noundef %26) #16
  %28 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 4
  store i8 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %14, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @stmmac_eee_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 51
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 4, label %121
    i32 8, label %121
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %121, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 48
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 47
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %16, label %20, label %54

20:                                               ; preds = %12
  br i1 %19, label %119, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 52
  store i8 1, ptr %22, align 8
  %23 = load ptr, ptr %4, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.stmmac_ops, ptr %24, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %23, i32 noundef 0) #16
  br label %31

31:                                               ; preds = %30, %26, %21
  %32 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 45
  %33 = tail call i32 @del_timer_sync(ptr noundef %32) #16
  %34 = load ptr, ptr %4, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.stmmac_ops, ptr %35, i32 0, i32 23
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  tail call void %39(ptr noundef %34, i32 noundef 0, i32 noundef %3) #16
  %42 = load ptr, ptr %4, align 4
  br label %43

43:                                               ; preds = %41, %37, %31
  %44 = phi ptr [ %42, %41 ], [ %34, %37 ], [ %34, %31 ]
  %45 = getelementptr inbounds %struct.mac_device_info, ptr %44, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %119, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %50 = load ptr, ptr %49, align 64
  %51 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %50, i32 0, i32 52
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @xpcs_config_eee(ptr noundef nonnull %46, i32 noundef %52, i32 noundef 0) #16
  br label %119

54:                                               ; preds = %12
  br i1 %19, label %55, label %77

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 45
  tail call void @init_timer_key(ptr noundef %56, ptr noundef nonnull @stmmac_eee_ctrl_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %57 = load ptr, ptr %4, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.stmmac_ops, ptr %58, i32 0, i32 23
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  tail call void %62(ptr noundef %57, i32 noundef 1000, i32 noundef %3) #16
  %65 = load ptr, ptr %4, align 4
  br label %66

66:                                               ; preds = %64, %60, %55
  %67 = phi ptr [ %65, %64 ], [ %57, %60 ], [ %57, %55 ]
  %68 = getelementptr inbounds %struct.mac_device_info, ptr %67, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %73 = load ptr, ptr %72, align 64
  %74 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %73, i32 0, i32 52
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @xpcs_config_eee(ptr noundef nonnull %69, i32 noundef %75, i32 noundef 1) #16
  br label %77

77:                                               ; preds = %71, %66, %54
  %78 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %79 = load ptr, ptr %78, align 64
  %80 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 58
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 49
  %85 = load i32, ptr %84, align 4
  %86 = icmp slt i32 %85, 1048576
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 45
  %89 = tail call i32 @del_timer_sync(ptr noundef %88) #16
  %90 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 4
  store i8 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 52
  store i8 0, ptr %91, align 8
  %92 = load i32, ptr %84, align 4
  %93 = load ptr, ptr %4, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %119, label %96

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.stmmac_ops, ptr %94, i32 0, i32 22
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %119, label %100

100:                                              ; preds = %96
  tail call void %98(ptr noundef %93, i32 noundef %92) #16
  br label %119

101:                                              ; preds = %83, %77
  %102 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 52
  store i8 1, ptr %102, align 8
  %103 = load ptr, ptr %4, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.stmmac_ops, ptr %104, i32 0, i32 22
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void %108(ptr noundef %103, i32 noundef 0) #16
  br label %111

111:                                              ; preds = %110, %106, %101
  %112 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 45
  %113 = load volatile i32, ptr @jiffies, align 64
  %114 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 49
  %115 = load i32, ptr %114, align 4
  %116 = tail call i32 @__usecs_to_jiffies(i32 noundef %115) #16
  %117 = add i32 %116, %113
  %118 = tail call i32 @mod_timer(ptr noundef %112, i32 noundef %117) #16
  br label %119

119:                                              ; preds = %111, %100, %96, %87, %48, %43, %20
  %120 = xor i1 %16, true
  tail call void @mutex_unlock(ptr noundef %13) #16
  br label %121

121:                                              ; preds = %119, %8, %1, %1
  %122 = phi i1 [ false, %1 ], [ false, %1 ], [ false, %8 ], [ %120, %119 ]
  ret i1 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_config_eee(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_eee_ctrl_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -11244
  %3 = getelementptr i8, ptr %0, i32 -556
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 30
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %11

8:                                                ; preds = %11
  %9 = add nuw i32 %12, 1
  %10 = icmp eq i32 %9, %6
  br i1 %10, label %18, label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %9, %8 ], [ 0, %1 ]
  %13 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %12, i32 13
  %14 = load i32, ptr %13, align 32
  %15 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %12, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %8, label %35

18:                                               ; preds = %8, %1
  %19 = getelementptr i8, ptr %0, i32 -11144
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 -11072
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stmmac_ops, ptr %25, i32 0, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 63
  %33 = load i8, ptr %32, align 4, !range !9
  %34 = icmp ne i8 %33, 0
  tail call void %29(ptr noundef %24, i1 noundef zeroext %34) #16
  br label %42

35:                                               ; preds = %11
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = getelementptr i8, ptr %0, i32 32
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @__usecs_to_jiffies(i32 noundef %38) #16
  %40 = add i32 %39, %36
  %41 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %40) #16
  br label %42

42:                                               ; preds = %35, %31, %27, %22, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_init_tstamp_counter(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 58
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 64
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 1, %2 ], [ %14, %10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %116, label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 49
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_prepare(ptr noundef %26) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = tail call i32 @clk_enable(ptr noundef %26) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %26) #16
  br label %33

33:                                               ; preds = %32, %24
  %34 = phi i32 [ %27, %24 ], [ %30, %32 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = inttoptr i32 %34 to ptr
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str, ptr noundef nonnull %39) #17
  br label %116

40:                                               ; preds = %33, %29
  %41 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mac_device_info, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %44, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 68
  %51 = load ptr, ptr %50, align 8
  tail call void %47(ptr noundef %51, i32 noundef %1) #16
  %52 = load ptr, ptr %41, align 4
  br label %53

53:                                               ; preds = %49, %46, %40
  %54 = phi ptr [ %52, %49 ], [ %42, %46 ], [ %42, %40 ]
  %55 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 61
  store i32 %1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.mac_device_info, ptr %54, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %57, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 68
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %5, align 64
  %67 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %66, i32 0, i32 50
  %68 = load i32, ptr %67, align 4
  call void %61(ptr noundef %65, i32 noundef %68, i32 noundef %16, ptr noundef nonnull %4) #16
  %69 = load i32, ptr %4, align 4
  br label %70

70:                                               ; preds = %63, %59, %53
  %71 = phi i32 [ %69, %63 ], [ 0, %59 ], [ 0, %53 ]
  %72 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 60
  store i32 %71, ptr %72, align 8
  %73 = icmp ugt i32 %71, 1000000000
  br i1 %73, label %84, label %74, !prof !11

74:                                               ; preds = %70
  %75 = load ptr, ptr %5, align 64
  %76 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %75, i32 0, i32 50
  %77 = load i32, ptr %76, align 4
  %78 = udiv i32 1000000000, %71
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 32
  %81 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %77, i64 %80) #18, !srcloc !12
  %82 = extractvalue { i64, i64 } %81, 1
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %74, %70
  %85 = phi i32 [ %83, %74 ], [ 0, %70 ]
  %86 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 59
  store i32 %85, ptr %86, align 4
  %87 = load ptr, ptr %41, align 4
  %88 = getelementptr inbounds %struct.mac_device_info, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %89, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 68
  %97 = load ptr, ptr %96, align 8
  %98 = call i32 %93(ptr noundef %97, i32 noundef %85) #16
  br label %99

99:                                               ; preds = %95, %91, %84
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #16
  %100 = load ptr, ptr %41, align 4
  %101 = getelementptr inbounds %struct.mac_device_info, ptr %100, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %102, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 68
  %110 = load ptr, ptr %109, align 8
  %111 = load i64, ptr %3, align 8
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %114 = load i32, ptr %113, align 8
  %115 = call i32 %106(ptr noundef %110, i32 noundef %112, i32 noundef %114) #16
  br label %116

116:                                              ; preds = %108, %104, %99, %36, %20
  %117 = phi i32 [ %34, %36 ], [ -95, %20 ], [ 0, %108 ], [ 0, %104 ], [ 0, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %117
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_disable_rx_queue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %8, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 32
  tail call void %12(ptr noundef %16, i32 noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #16
  br label %17

17:                                               ; preds = %14, %10, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.mac_device_info, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %20, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %28 = load ptr, ptr %27, align 32
  tail call void %24(ptr noundef %28, i32 noundef %1) #16
  br label %29

29:                                               ; preds = %26, %22, %17
  tail call fastcc void @__free_dma_rx_desc_resources(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__free_dma_rx_desc_resources(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 4
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 21
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 0
  br i1 %5, label %25, label %9

9:                                                ; preds = %2
  br i1 %8, label %47, label %10

10:                                               ; preds = %9
  %11 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 6
  br label %12

12:                                               ; preds = %21, %10
  %13 = phi i32 [ %7, %10 ], [ %22, %21 ]
  %14 = phi i32 [ 0, %10 ], [ %23, %21 ]
  %15 = load ptr, ptr %11, align 8
  %16 = getelementptr %struct.stmmac_rx_buffer, ptr %15, i32 %14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  store ptr null, ptr %16, align 4
  %20 = load i32, ptr %6, align 64
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %13, %12 ], [ %20, %19 ]
  %23 = add nuw i32 %14, 1
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %12, label %47

25:                                               ; preds = %2
  br i1 %8, label %47, label %26

26:                                               ; preds = %25
  %27 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 6
  %28 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 5
  br label %29

29:                                               ; preds = %43, %26
  %30 = phi i32 [ 0, %26 ], [ %44, %43 ]
  %31 = load ptr, ptr %27, align 8
  %32 = getelementptr %struct.stmmac_rx_buffer, ptr %31, i32 %30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %28, align 4
  tail call void @page_pool_put_page(ptr noundef %36, ptr noundef nonnull %33, i32 noundef -1, i1 noundef zeroext false) #16
  br label %37

37:                                               ; preds = %35, %29
  store ptr null, ptr %32, align 4
  %38 = getelementptr %struct.stmmac_rx_buffer, ptr %31, i32 %30, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %28, align 4
  tail call void @page_pool_put_page(ptr noundef %42, ptr noundef nonnull %39, i32 noundef -1, i1 noundef zeroext false) #16
  br label %43

43:                                               ; preds = %41, %37
  store ptr null, ptr %38, align 4
  %44 = add nuw i32 %30, 1
  %45 = load i32, ptr %6, align 64
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %29, label %47

47:                                               ; preds = %43, %25, %21, %9
  %48 = phi i32 [ 0, %25 ], [ 0, %9 ], [ %45, %43 ], [ %22, %21 ]
  %49 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 13
  store i32 0, ptr %49, align 4
  store ptr null, ptr %3, align 64
  %50 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %54 = load ptr, ptr %53, align 8
  br i1 %52, label %55, label %61

55:                                               ; preds = %47
  %56 = shl i32 %48, 4
  %57 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 10
  %58 = load ptr, ptr %57, align 64
  %59 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %60 = load i32, ptr %59, align 4
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef %56, ptr noundef %58, i32 noundef %60, i32 noundef 0) #16
  br label %67

61:                                               ; preds = %47
  %62 = shl i32 %48, 5
  %63 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 8
  %64 = load ptr, ptr %63, align 16
  %65 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %66 = load i32, ptr %65, align 4
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef 0) #16
  br label %67

67:                                               ; preds = %61, %55
  %68 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 3
  %69 = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %68) #16
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call void @xdp_rxq_info_unreg(ptr noundef %68) #16
  br label %71

71:                                               ; preds = %70, %67
  %72 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 6
  %73 = load ptr, ptr %72, align 8
  tail call void @kfree(ptr noundef %73) #16
  %74 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  tail call void @page_pool_destroy(ptr noundef nonnull %75) #16
  br label %78

78:                                               ; preds = %77, %71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_enable_rx_queue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @__alloc_dma_rx_desc_resources(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #17
  br label %172

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @__init_dma_rx_desc_rings(ptr noundef %0, i32 noundef %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call fastcc void @__free_dma_rx_desc_resources(ptr noundef %0, i32 noundef %1)
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #17
  br label %172

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 21
  %16 = load i32, ptr %15, align 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %20 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %21 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 8
  %22 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 63
  %23 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 9
  %25 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 10
  br label %26

26:                                               ; preds = %61, %18
  %27 = phi i32 [ %16, %18 ], [ %63, %61 ]
  %28 = phi i32 [ 0, %18 ], [ %62, %61 ]
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr inbounds %struct.mac_device_info, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %30, label %48, label %35

35:                                               ; preds = %26
  br i1 %34, label %61, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %33, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %21, align 16
  %41 = getelementptr %struct.dma_extended_desc, ptr %40, i32 %28
  %42 = load i32, ptr %22, align 4
  %43 = load i32, ptr %23, align 4
  %44 = add i32 %27, -1
  %45 = icmp eq i32 %28, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, ptr %24, align 4
  tail call void %37(ptr noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %46, i32 noundef %47) #16
  br label %61

48:                                               ; preds = %26
  br i1 %34, label %61, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %33, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %25, align 64
  %54 = getelementptr %struct.dma_desc, ptr %53, i32 %28
  %55 = load i32, ptr %22, align 4
  %56 = load i32, ptr %23, align 4
  %57 = add i32 %27, -1
  %58 = icmp eq i32 %28, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, ptr %24, align 4
  tail call void %50(ptr noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %59, i32 noundef %60) #16
  br label %61

61:                                               ; preds = %52, %49, %48, %39, %36, %35
  %62 = add nuw i32 %28, 1
  %63 = load i32, ptr %15, align 64
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %26, label %65

65:                                               ; preds = %61, %14
  %66 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.mac_device_info, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %69, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %77 = load ptr, ptr %76, align 32
  %78 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %79 = load ptr, ptr %78, align 64
  %80 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 1
  %85 = load i32, ptr %84, align 4
  tail call void %73(ptr noundef %77, ptr noundef %81, i32 noundef %83, i32 noundef %85) #16
  %86 = load ptr, ptr %66, align 4
  br label %87

87:                                               ; preds = %75, %71, %65
  %88 = phi ptr [ %86, %75 ], [ %67, %71 ], [ %67, %65 ]
  %89 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 13
  %92 = load i32, ptr %91, align 4
  %93 = shl i32 %92, 4
  %94 = add i32 %93, %90
  %95 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 16
  store i32 %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.mac_device_info, ptr %88, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %97, i32 0, i32 22
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %105 = load ptr, ptr %104, align 32
  %106 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 1
  %107 = load i32, ptr %106, align 4
  tail call void %101(ptr noundef %105, i32 noundef %94, i32 noundef %107) #16
  br label %108

108:                                              ; preds = %103, %99, %87
  %109 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 4
  %110 = load ptr, ptr %109, align 64
  %111 = icmp eq ptr %110, null
  br i1 %111, label %129, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %91, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %66, align 4
  %117 = getelementptr inbounds %struct.mac_device_info, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %145, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %118, i32 0, i32 26
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %145, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %126 = load ptr, ptr %125, align 32
  %127 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 1
  %128 = load i32, ptr %127, align 4
  tail call void %122(ptr noundef %126, i32 noundef 0, i32 noundef %128) #16
  br label %145

129:                                              ; preds = %112, %108
  %130 = load ptr, ptr %66, align 4
  %131 = getelementptr inbounds %struct.mac_device_info, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %132, i32 0, i32 26
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %140 = load ptr, ptr %139, align 32
  %141 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 9
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 1
  %144 = load i32, ptr %143, align 4
  tail call void %136(ptr noundef %140, i32 noundef %142, i32 noundef %144) #16
  br label %145

145:                                              ; preds = %138, %134, %129, %124, %120, %115
  %146 = load ptr, ptr %66, align 4
  %147 = getelementptr inbounds %struct.mac_device_info, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %148, i32 0, i32 15
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %156 = load ptr, ptr %155, align 32
  tail call void %152(ptr noundef %156, i32 noundef %1) #16
  br label %157

157:                                              ; preds = %154, %150, %145
  %158 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 6
  %159 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %158) #16
  %160 = load ptr, ptr %66, align 4
  %161 = getelementptr inbounds %struct.mac_device_info, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %162, i32 0, i32 11
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %170 = load ptr, ptr %169, align 32
  tail call void %166(ptr noundef %170, i32 noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #16
  br label %171

171:                                              ; preds = %168, %164, %157
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %158, i32 noundef %159) #16
  br label %172

172:                                              ; preds = %171, %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__alloc_dma_rx_desc_resources(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.page_pool_params, align 4
  %4 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 101
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %6, null
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %8 = getelementptr inbounds i8, ptr %3, i32 32
  store i64 0, ptr %8, align 4
  %9 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 1
  store i32 %1, ptr %9, align 4
  %10 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 7
  store ptr %0, ptr %10, align 4
  store i32 3, ptr %3, align 4
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 21
  %12 = load i32, ptr %11, align 64
  %13 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 4095
  %17 = icmp ult i32 %16, 4096
  %18 = lshr i32 %16, 12
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #16, !range !13
  %20 = sub nsw i32 31, %19
  %21 = select i1 %17, i32 -1, i32 %20
  %22 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %24 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 3
  store i32 -1, ptr %24, align 4
  %25 = load ptr, ptr %23, align 8
  %26 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  %27 = select i1 %7, i32 2, i32 0
  %28 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  %29 = select i1 %7, i32 0, i32 256
  %30 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 7
  store i32 %29, ptr %30, align 4
  %31 = and i32 %16, -4096
  %32 = add i32 %31, -256
  %33 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  %34 = call ptr @page_pool_create(ptr noundef nonnull %3) #16
  %35 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 5
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = ptrtoint ptr %34 to i32
  store ptr null, ptr %35, align 4
  br label %95

39:                                               ; preds = %2
  %40 = load i32, ptr %11, align 64
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 20) #16
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %43, label %45, !prof !14

43:                                               ; preds = %39
  %44 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 6
  store ptr null, ptr %44, align 8
  br label %95

45:                                               ; preds = %39
  %46 = extractvalue { i32, i1 } %41, 0
  %47 = call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #19
  %48 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 6
  store ptr %47, ptr %48, align 8
  %49 = icmp eq ptr %47, null
  br i1 %49, label %95, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr %23, align 8
  %55 = load i32, ptr %11, align 64
  br i1 %53, label %62, label %56

56:                                               ; preds = %50
  %57 = shl i32 %55, 5
  %58 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %59 = call ptr @dma_alloc_attrs(ptr noundef %54, i32 noundef %57, ptr noundef %58, i32 noundef 3264, i32 noundef 0) #16
  %60 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 8
  store ptr %59, ptr %60, align 16
  %61 = icmp eq ptr %59, null
  br i1 %61, label %95, label %68

62:                                               ; preds = %50
  %63 = shl i32 %55, 4
  %64 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %65 = call ptr @dma_alloc_attrs(ptr noundef %54, i32 noundef %63, ptr noundef %64, i32 noundef 3264, i32 noundef 0) #16
  %66 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 10
  store ptr %65, ptr %66, align 64
  %67 = icmp eq ptr %65, null
  br i1 %67, label %95, label %68

68:                                               ; preds = %62, %56
  %69 = load ptr, ptr %5, align 16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 100
  %73 = load ptr, ptr %72, align 4
  %74 = lshr i32 %1, 5
  %75 = getelementptr i32, ptr %73, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %1, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 4
  %82 = select i1 %80, ptr %4, ptr %81
  br label %83

83:                                               ; preds = %71, %68
  %84 = phi ptr [ %4, %68 ], [ %82, %71 ]
  %85 = getelementptr inbounds %struct.napi_struct, ptr %84, i32 0, i32 14
  %86 = load i32, ptr %85, align 16
  %87 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 3
  %88 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %9, align 4
  %91 = call i32 @xdp_rxq_info_reg(ptr noundef %87, ptr noundef %89, i32 noundef %90, i32 noundef %86) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %94, ptr noundef nonnull @.str.21) #17
  br label %95

95:                                               ; preds = %93, %83, %62, %56, %45, %43, %37
  %96 = phi i32 [ %38, %37 ], [ -22, %93 ], [ -12, %45 ], [ -12, %56 ], [ -12, %62 ], [ 0, %83 ], [ -12, %43 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret i32 %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__init_dma_rx_desc_rings(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %53, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %8 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %9 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 8
  %10 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 63
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 9
  %13 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 10
  br label %14

14:                                               ; preds = %49, %6
  %15 = phi i32 [ %4, %6 ], [ %51, %49 ]
  %16 = phi i32 [ 0, %6 ], [ %50, %49 ]
  %17 = load i32, ptr %7, align 4
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.mac_device_info, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %18, label %36, label %23

23:                                               ; preds = %14
  br i1 %22, label %49, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %21, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %9, align 16
  %29 = getelementptr %struct.dma_extended_desc, ptr %28, i32 %16
  %30 = load i32, ptr %10, align 4
  %31 = load i32, ptr %11, align 4
  %32 = add i32 %15, -1
  %33 = icmp eq i32 %16, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, ptr %12, align 4
  tail call void %25(ptr noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %34, i32 noundef %35) #16
  br label %49

36:                                               ; preds = %14
  br i1 %22, label %49, label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %21, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %13, align 64
  %42 = getelementptr %struct.dma_desc, ptr %41, i32 %16
  %43 = load i32, ptr %10, align 4
  %44 = load i32, ptr %11, align 4
  %45 = add i32 %15, -1
  %46 = icmp eq i32 %16, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, ptr %12, align 4
  tail call void %38(ptr noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %47, i32 noundef %48) #16
  br label %49

49:                                               ; preds = %40, %37, %36, %27, %24, %23
  %50 = add nuw i32 %16, 1
  %51 = load i32, ptr %3, align 64
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %14, label %53

53:                                               ; preds = %49, %2
  %54 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 3
  tail call void @xdp_rxq_info_unreg_mem_model(ptr noundef %54) #16
  %55 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 101
  %56 = load ptr, ptr %55, align 16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 100
  %60 = load ptr, ptr %59, align 4
  %61 = lshr i32 %1, 5
  %62 = getelementptr i32, ptr %60, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 4
  store ptr null, ptr %65, align 64
  %66 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %54, i32 noundef 2, ptr noundef %67) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70, !prof !11

70:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1685, i32 noundef 9, ptr noundef null) #16
  br label %71

71:                                               ; preds = %70, %64
  %72 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 1
  %75 = load i32, ptr %74, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %73, ptr noundef nonnull @.str.24, i32 noundef %75) #17
  %76 = load ptr, ptr %65, align 64
  %77 = icmp eq ptr %76, null
  %78 = load i32, ptr %3, align 64
  %79 = icmp eq i32 %78, 0
  br i1 %77, label %84, label %80

80:                                               ; preds = %71
  br i1 %79, label %196, label %81

81:                                               ; preds = %80
  %82 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 6
  %83 = load ptr, ptr %82, align 8
  store ptr null, ptr %83, align 4
  br label %196

84:                                               ; preds = %71
  br i1 %79, label %196, label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %87 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 8
  %88 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 10
  %89 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 6
  %90 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 33
  %91 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %93 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 9
  %94 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 13
  br label %95

95:                                               ; preds = %190, %85
  %96 = phi i32 [ 0, %85 ], [ %193, %190 ]
  %97 = load i32, ptr %86, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %87, align 16
  %101 = getelementptr %struct.dma_extended_desc, ptr %100, i32 %96
  br label %105

102:                                              ; preds = %95
  %103 = load ptr, ptr %88, align 64
  %104 = getelementptr %struct.dma_desc, ptr %103, i32 %96
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi ptr [ %101, %99 ], [ %104, %102 ]
  %107 = load ptr, ptr %89, align 8
  %108 = getelementptr %struct.stmmac_rx_buffer, ptr %107, i32 %96
  %109 = load i32, ptr %90, align 4
  %110 = icmp ult i32 %109, 33
  %111 = select i1 %110, i32 10788, i32 10784
  %112 = load ptr, ptr %108, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %105
  %115 = load ptr, ptr %66, align 4
  %116 = tail call ptr @page_pool_alloc_pages(ptr noundef %115, i32 noundef %111) #16
  store ptr %116, ptr %108, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %231, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %55, align 16
  %120 = icmp eq ptr %119, null
  %121 = select i1 %120, i32 0, i32 256
  %122 = getelementptr inbounds %struct.anon.199, ptr %108, i32 0, i32 2
  store i32 %121, ptr %122, align 4
  br label %123

123:                                              ; preds = %118, %105
  %124 = load i32, ptr %91, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %123
  %127 = getelementptr %struct.stmmac_rx_buffer, ptr %107, i32 %96, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load ptr, ptr %66, align 4
  %132 = tail call ptr @page_pool_alloc_pages(ptr noundef %131, i32 noundef %111) #16
  store ptr %132, ptr %127, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %231, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.page, ptr %132, i32 0, i32 1, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr %struct.stmmac_rx_buffer, ptr %107, i32 %96, i32 2
  store i32 %136, ptr %137, align 4
  %138 = load ptr, ptr %92, align 4
  %139 = getelementptr inbounds %struct.mac_device_info, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %160, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %140, i32 0, i32 26
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %160, label %146

146:                                              ; preds = %142
  tail call void %144(ptr noundef %106, i32 noundef %136, i1 noundef zeroext true) #16
  br label %160

147:                                              ; preds = %126, %123
  %148 = getelementptr %struct.stmmac_rx_buffer, ptr %107, i32 %96, i32 1
  store ptr null, ptr %148, align 4
  %149 = load ptr, ptr %92, align 4
  %150 = getelementptr inbounds %struct.mac_device_info, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %151, i32 0, i32 26
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = getelementptr %struct.stmmac_rx_buffer, ptr %107, i32 %96, i32 2
  %159 = load i32, ptr %158, align 4
  tail call void %155(ptr noundef %106, i32 noundef %159, i1 noundef zeroext false) #16
  br label %160

160:                                              ; preds = %157, %153, %147, %146, %142, %134
  %161 = load ptr, ptr %108, align 4
  %162 = getelementptr inbounds %struct.page, ptr %161, i32 0, i32 1, i32 0, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.anon.199, ptr %108, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, %163
  %167 = getelementptr inbounds %struct.anon.199, ptr %108, i32 0, i32 1
  store i32 %166, ptr %167, align 4
  %168 = load ptr, ptr %92, align 4
  %169 = getelementptr inbounds %struct.mac_device_info, ptr %168, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %177, label %172

172:                                              ; preds = %160
  %173 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %170, i32 0, i32 22
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  tail call void %174(ptr noundef %106, i32 noundef %166) #16
  br label %177

177:                                              ; preds = %176, %172, %160
  %178 = load i32, ptr %93, align 4
  %179 = icmp eq i32 %178, 16368
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load ptr, ptr %92, align 4
  %182 = getelementptr inbounds %struct.mac_device_info, ptr %181, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.stmmac_mode_ops, ptr %183, i32 0, i32 4
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  tail call void %187(ptr noundef %106) #16
  br label %190

190:                                              ; preds = %189, %185, %180, %177
  %191 = load i32, ptr %94, align 4
  %192 = add i32 %191, 1
  store i32 %192, ptr %94, align 4
  %193 = add nuw i32 %96, 1
  %194 = load i32, ptr %3, align 64
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %95, label %196

196:                                              ; preds = %190, %84, %81, %80
  %197 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 11
  store i32 0, ptr %197, align 4
  %198 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 12
  store i32 0, ptr %198, align 8
  %199 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %231

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  %206 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.mac_device_info, ptr %207, i32 0, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %205, label %221, label %211

211:                                              ; preds = %202
  br i1 %210, label %231, label %212

212:                                              ; preds = %211
  %213 = load ptr, ptr %209, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %231, label %215

215:                                              ; preds = %212
  %216 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 8
  %217 = load ptr, ptr %216, align 16
  %218 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %219 = load i32, ptr %218, align 4
  %220 = load i32, ptr %3, align 64
  tail call void %213(ptr noundef %217, i32 noundef %219, i32 noundef %220, i32 noundef 1) #16
  br label %231

221:                                              ; preds = %202
  br i1 %210, label %231, label %222

222:                                              ; preds = %221
  %223 = load ptr, ptr %209, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %231, label %225

225:                                              ; preds = %222
  %226 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 10
  %227 = load ptr, ptr %226, align 64
  %228 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 15
  %229 = load i32, ptr %228, align 4
  %230 = load i32, ptr %3, align 64
  tail call void %223(ptr noundef %227, i32 noundef %229, i32 noundef %230, i32 noundef 0) #16
  br label %231

231:                                              ; preds = %225, %222, %221, %215, %212, %211, %196, %130, %114
  %232 = phi i32 [ 0, %221 ], [ 0, %222 ], [ 0, %225 ], [ 0, %211 ], [ 0, %212 ], [ 0, %215 ], [ 0, %196 ], [ -12, %130 ], [ -12, %114 ]
  ret i32 %232
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_disable_tx_queue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %8, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 32
  tail call void %12(ptr noundef %16, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #16
  br label %17

17:                                               ; preds = %14, %10, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.mac_device_info, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %20, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %28 = load ptr, ptr %27, align 32
  tail call void %24(ptr noundef %28, i32 noundef %1) #16
  br label %29

29:                                               ; preds = %26, %22, %17
  tail call fastcc void @__free_dma_tx_desc_resources(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__free_dma_tx_desc_resources(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @dma_free_tx_skbufs(ptr noundef %0, i32 noundef %1)
  %3 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 5
  br label %17

8:                                                ; preds = %2
  %9 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 6
  br label %17

15:                                               ; preds = %8
  %16 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 7
  br label %17

17:                                               ; preds = %15, %13, %6
  %18 = phi i32 [ 32, %6 ], [ 32, %13 ], [ 16, %15 ]
  %19 = phi ptr [ %7, %6 ], [ %14, %13 ], [ %16, %15 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %22 = load i32, ptr %21, align 64
  %23 = mul i32 %22, %18
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 14
  %27 = load i32, ptr %26, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %23, ptr noundef %20, i32 noundef %27, i32 noundef 0) #16
  %28 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 9
  %29 = load ptr, ptr %28, align 16
  tail call void @kfree(ptr noundef %29) #16
  %30 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 8
  %31 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %31) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_enable_tx_queue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @__alloc_dma_tx_desc_resources(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #17
  br label %143

8:                                                ; preds = %2
  tail call fastcc void @__init_dma_tx_desc_rings(ptr noundef %0, i32 noundef %1)
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %10 = load i32, ptr %9, align 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %14 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 5
  %15 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %16 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 6
  %17 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 7
  %18 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %19 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  br label %20

20:                                               ; preds = %54, %12
  %21 = phi i32 [ %10, %12 ], [ %55, %54 ]
  %22 = phi i32 [ 0, %12 ], [ %56, %54 ]
  %23 = add i32 %21, -1
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, ptr %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr %14, align 64
  %30 = getelementptr %struct.dma_extended_desc, ptr %29, i32 %22
  br label %41

31:                                               ; preds = %20
  %32 = load i32, ptr %15, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr %struct.dma_edesc, ptr %36, i32 %22, i32 4
  br label %41

38:                                               ; preds = %31
  %39 = load ptr, ptr %17, align 8
  %40 = getelementptr %struct.dma_desc, ptr %39, i32 %22
  br label %41

41:                                               ; preds = %38, %35, %28
  %42 = phi ptr [ %30, %28 ], [ %37, %35 ], [ %40, %38 ]
  %43 = load ptr, ptr %18, align 4
  %44 = getelementptr inbounds %struct.mac_device_info, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %19, align 4
  tail call void %49(ptr noundef %42, i32 noundef %52, i32 noundef %25) #16
  %53 = load i32, ptr %9, align 64
  br label %54

54:                                               ; preds = %51, %47, %41
  %55 = phi i32 [ %53, %51 ], [ %21, %47 ], [ %21, %41 ]
  %56 = add nuw i32 %22, 1
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %20, label %58

58:                                               ; preds = %54, %8
  %59 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mac_device_info, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %62, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %70 = load ptr, ptr %69, align 32
  %71 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %72 = load ptr, ptr %71, align 64
  %73 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %72, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 14
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 3
  %78 = load i32, ptr %77, align 8
  tail call void %66(ptr noundef %70, ptr noundef %74, i32 noundef %76, i32 noundef %78) #16
  br label %79

79:                                               ; preds = %68, %64, %58
  %80 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %59, align 4
  %86 = getelementptr inbounds %struct.mac_device_info, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %87, i32 0, i32 28
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %95 = load ptr, ptr %94, align 32
  %96 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 3
  %97 = load i32, ptr %96, align 8
  %98 = tail call i32 %91(ptr noundef %95, i1 noundef zeroext true, i32 noundef %97) #16
  br label %99

99:                                               ; preds = %93, %89, %84, %79
  %100 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 14
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 15
  store i32 %101, ptr %102, align 8
  %103 = load ptr, ptr %59, align 4
  %104 = getelementptr inbounds %struct.mac_device_info, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %128, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %105, i32 0, i32 23
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %113 = load ptr, ptr %112, align 32
  %114 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 3
  %115 = load i32, ptr %114, align 8
  tail call void %109(ptr noundef %113, i32 noundef %101, i32 noundef %115) #16
  %116 = load ptr, ptr %59, align 4
  %117 = getelementptr inbounds %struct.mac_device_info, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %111, %107
  %121 = phi ptr [ %118, %111 ], [ %105, %107 ]
  %122 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %121, i32 0, i32 13
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %127 = load ptr, ptr %126, align 32
  tail call void %123(ptr noundef %127, i32 noundef %1) #16
  br label %128

128:                                              ; preds = %125, %120, %111, %99
  %129 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 6
  %130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %129) #16
  %131 = load ptr, ptr %59, align 4
  %132 = getelementptr inbounds %struct.mac_device_info, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %133, i32 0, i32 11
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %141 = load ptr, ptr %140, align 32
  tail call void %137(ptr noundef %141, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #16
  br label %142

142:                                              ; preds = %139, %135, %128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %129, i32 noundef %130) #16
  br label %143

143:                                              ; preds = %142, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__alloc_dma_tx_desc_resources(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 3
  store i32 %1, ptr %3, align 8
  %4 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 4
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %6 = load i32, ptr %5, align 64
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 20) #16
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %9, label %11, !prof !14

9:                                                ; preds = %2
  %10 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 9
  store ptr null, ptr %10, align 16
  br label %60

11:                                               ; preds = %2
  %12 = extractvalue { i32, i1 } %7, 0
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #19
  %14 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 9
  store ptr %13, ptr %14, align 16
  %15 = icmp eq ptr %13, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %5, align 64
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #16
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %20, label %22, !prof !14

20:                                               ; preds = %16
  %21 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 8
  store ptr null, ptr %21, align 4
  br label %60

22:                                               ; preds = %16
  %23 = extractvalue { i32, i1 } %18, 0
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #19
  %25 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 8
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %60, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 16, i32 32
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i32 [ 32, %27 ], [ %36, %31 ]
  %39 = load i32, ptr %5, align 64
  %40 = mul i32 %39, %38
  %41 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 14
  %44 = tail call ptr @dma_alloc_attrs(ptr noundef %42, i32 noundef %40, ptr noundef %43, i32 noundef 3264, i32 noundef 0) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %37
  %47 = load i32, ptr %28, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 5
  store ptr %44, ptr %50, align 64
  br label %60

51:                                               ; preds = %46
  %52 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 6
  store ptr %44, ptr %57, align 4
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 7
  store ptr %44, ptr %59, align 8
  br label %60

60:                                               ; preds = %58, %56, %49, %37, %22, %20, %11, %9
  %61 = phi i32 [ -12, %11 ], [ -12, %22 ], [ -12, %37 ], [ 0, %56 ], [ 0, %58 ], [ 0, %49 ], [ -12, %9 ], [ -12, %20 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__init_dma_tx_desc_rings(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mac_device_info, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 5
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %25 = load i32, ptr %24, align 64
  tail call void %17(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 1) #16
  br label %47

26:                                               ; preds = %6
  %27 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mac_device_info, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %35, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %46 = load i32, ptr %45, align 64
  tail call void %38(ptr noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef 0) #16
  br label %47

47:                                               ; preds = %40, %37, %31, %26, %19, %16, %10, %2
  %48 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 101
  %49 = load ptr, ptr %48, align 16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 100
  %53 = load ptr, ptr %52, align 4
  %54 = lshr i32 %1, 5
  %55 = getelementptr i32, ptr %53, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %51, %47
  %58 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 10
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %60 = load i32, ptr %59, align 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %113, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %64 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 5
  %65 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %66 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 6
  %67 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 7
  %68 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %69 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 9
  %70 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 8
  br label %71

71:                                               ; preds = %99, %62
  %72 = phi i32 [ 0, %62 ], [ %110, %99 ]
  %73 = load i32, ptr %63, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %64, align 64
  %77 = getelementptr %struct.dma_extended_desc, ptr %76, i32 %72
  br label %88

78:                                               ; preds = %71
  %79 = load i32, ptr %65, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %66, align 4
  %84 = getelementptr %struct.dma_edesc, ptr %83, i32 %72, i32 4
  br label %88

85:                                               ; preds = %78
  %86 = load ptr, ptr %67, align 8
  %87 = getelementptr %struct.dma_desc, ptr %86, i32 %72
  br label %88

88:                                               ; preds = %85, %82, %75
  %89 = phi ptr [ %77, %75 ], [ %84, %82 ], [ %87, %85 ]
  %90 = load ptr, ptr %68, align 4
  %91 = getelementptr inbounds %struct.mac_device_info, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %92, i32 0, i32 23
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void %96(ptr noundef %89) #16
  br label %99

99:                                               ; preds = %98, %94, %88
  %100 = load ptr, ptr %69, align 16
  %101 = getelementptr %struct.stmmac_tx_info, ptr %100, i32 %72
  store i32 0, ptr %101, align 4
  %102 = load ptr, ptr %69, align 16
  %103 = getelementptr %struct.stmmac_tx_info, ptr %102, i32 %72, i32 1
  store i8 0, ptr %103, align 4
  %104 = load ptr, ptr %69, align 16
  %105 = getelementptr %struct.stmmac_tx_info, ptr %104, i32 %72, i32 2
  store i32 0, ptr %105, align 4
  %106 = load ptr, ptr %69, align 16
  %107 = getelementptr %struct.stmmac_tx_info, ptr %106, i32 %72, i32 3
  store i8 0, ptr %107, align 4
  %108 = load ptr, ptr %70, align 4
  %109 = getelementptr ptr, ptr %108, i32 %72
  store ptr null, ptr %109, align 4
  %110 = add nuw i32 %72, 1
  %111 = load i32, ptr %59, align 64
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %71, label %113

113:                                              ; preds = %99, %57
  %114 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 13
  store i32 0, ptr %114, align 32
  %115 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 12
  store i32 0, ptr %115, align 4
  %116 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 16
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 87
  %120 = load ptr, ptr %119, align 64
  %121 = getelementptr %struct.netdev_queue, ptr %120, i32 %1, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %121) #16
  %122 = getelementptr %struct.netdev_queue, ptr %120, i32 %1, i32 14
  tail call void @dql_reset(ptr noundef %122) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_xdp_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call fastcc void @stmmac_disable_all_queues(ptr noundef %2)
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 30
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %12, %8 ], [ 0, %1 ]
  %10 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %9, i32 2
  %11 = tail call i32 @hrtimer_cancel(ptr noundef %10) #16
  %12 = add nuw i32 %9, 1
  %13 = load ptr, ptr %3, align 64
  %14 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 30
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %8, label %17

17:                                               ; preds = %8, %1
  tail call fastcc void @stmmac_free_irq(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %18 = load ptr, ptr %3, align 64
  %19 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 29
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 30
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %0, i32 1580
  %26 = getelementptr i8, ptr %0, i32 1568
  br label %32

27:                                               ; preds = %44, %17
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %0, i32 1580
  %31 = getelementptr i8, ptr %0, i32 1568
  br label %47

32:                                               ; preds = %44, %24
  %33 = phi i32 [ 0, %24 ], [ %45, %44 ]
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.mac_device_info, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %36, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %26, align 32
  tail call void %40(ptr noundef %43, i32 noundef %33) #16
  br label %44

44:                                               ; preds = %42, %38, %32
  %45 = add nuw i32 %33, 1
  %46 = icmp eq i32 %45, %20
  br i1 %46, label %27, label %32

47:                                               ; preds = %59, %29
  %48 = phi i32 [ 0, %29 ], [ %60, %59 ]
  %49 = load ptr, ptr %30, align 4
  %50 = getelementptr inbounds %struct.mac_device_info, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %51, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %31, align 32
  tail call void %55(ptr noundef %58, i32 noundef %48) #16
  br label %59

59:                                               ; preds = %57, %53, %47
  %60 = add nuw i32 %48, 1
  %61 = icmp eq i32 %60, %22
  br i1 %61, label %62, label %47

62:                                               ; preds = %59, %27
  %63 = load ptr, ptr %3, align 64
  %64 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %63, i32 0, i32 30
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %67, %62
  %68 = phi i32 [ %69, %67 ], [ 0, %62 ]
  tail call fastcc void @__free_dma_tx_desc_resources(ptr noundef %2, i32 noundef %68) #16
  %69 = add nuw i32 %68, 1
  %70 = icmp eq i32 %69, %65
  br i1 %70, label %71, label %67

71:                                               ; preds = %67
  %72 = load ptr, ptr %3, align 64
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi ptr [ %72, %71 ], [ %63, %62 ]
  %75 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %74, i32 0, i32 29
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %78, %73
  %79 = phi i32 [ %80, %78 ], [ 0, %73 ]
  tail call fastcc void @__free_dma_rx_desc_resources(ptr noundef %2, i32 noundef %79) #16
  %80 = add nuw i32 %79, 1
  %81 = icmp eq i32 %80, %76
  br i1 %81, label %82, label %78

82:                                               ; preds = %78, %73
  %83 = getelementptr i8, ptr %0, i32 1580
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.stmmac_ops, ptr %85, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %0, i32 1568
  %93 = load ptr, ptr %92, align 32
  tail call void %89(ptr noundef %93, i1 noundef zeroext false) #16
  br label %94

94:                                               ; preds = %91, %87, %82
  %95 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %96 = load ptr, ptr %95, align 64
  %97 = load volatile i32, ptr @jiffies, align 64
  %98 = getelementptr inbounds %struct.netdev_queue, ptr %96, i32 0, i32 11
  %99 = load volatile i32, ptr %98, align 8
  %100 = icmp eq i32 %99, %97
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  store volatile i32 %97, ptr %98, align 8
  br label %102

102:                                              ; preds = %101, %94
  tail call void @netif_carrier_off(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_disable_all_queues(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %10

7:                                                ; preds = %10
  %8 = add nuw i32 %11, 1
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %19, label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %12 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %11, i32 4
  %13 = load ptr, ptr %12, align 64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %15

15:                                               ; preds = %10
  tail call void @synchronize_rcu() #16
  %16 = load ptr, ptr %2, align 64
  %17 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %16, i32 0, i32 29
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %7, %1
  %20 = phi i32 [ 0, %1 ], [ %18, %15 ], [ %5, %7 ]
  %21 = phi ptr [ %3, %1 ], [ %16, %15 ], [ %3, %7 ]
  %22 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %21, i32 0, i32 30
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %20, i32 %23) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 101
  %28 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 100
  br label %29

29:                                               ; preds = %54, %26
  %30 = phi i32 [ 0, %26 ], [ %55, %54 ]
  %31 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %30
  %32 = load ptr, ptr %27, align 16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %28, align 4
  %36 = lshr i32 %30, 5
  %37 = getelementptr i32, ptr %35, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %30, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %30, i32 4
  br label %52

45:                                               ; preds = %34, %29
  %46 = icmp ult i32 %30, %20
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  tail call void @napi_disable(ptr noundef %31) #16
  br label %48

48:                                               ; preds = %47, %45
  %49 = icmp ult i32 %30, %23
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %30, i32 2
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi ptr [ %51, %50 ], [ %44, %43 ]
  tail call void @napi_disable(ptr noundef %53) #16
  br label %54

54:                                               ; preds = %52, %48
  %55 = add nuw i32 %30, 1
  %56 = icmp eq i32 %55, %24
  br i1 %56, label %57, label %29

57:                                               ; preds = %54, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_free_irq(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  switch i32 %1, label %93 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %32
    i32 3, label %59
    i32 4, label %69
    i32 5, label %79
    i32 6, label %89
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 12096
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 30
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %2, %3 ], [ %9, %5 ]
  %12 = add i32 %11, -1
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %27

14:                                               ; preds = %24, %10
  %15 = phi i32 [ %25, %24 ], [ %12, %10 ]
  %16 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 73, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %17, ptr noundef null, i1 noundef zeroext true) #16
  %21 = load i32, ptr %16, align 4
  %22 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %15
  %23 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %22) #16
  br label %24

24:                                               ; preds = %19, %14
  %25 = add i32 %15, -1
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %14, label %27

27:                                               ; preds = %24, %10
  %28 = getelementptr i8, ptr %0, i32 12096
  %29 = load ptr, ptr %28, align 64
  %30 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %29, i32 0, i32 29
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %27, %3
  %33 = phi i32 [ %2, %3 ], [ %31, %27 ]
  %34 = add i32 %33, -1
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %49

36:                                               ; preds = %46, %32
  %37 = phi i32 [ %47, %46 ], [ %34, %32 ]
  %38 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 72, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %39, ptr noundef null, i1 noundef zeroext true) #16
  %43 = load i32, ptr %38, align 4
  %44 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 20, i32 %37
  %45 = tail call ptr @free_irq(i32 noundef %43, ptr noundef %44) #16
  br label %46

46:                                               ; preds = %41, %36
  %47 = add i32 %37, -1
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %36, label %49

49:                                               ; preds = %46, %32
  %50 = getelementptr i8, ptr %0, i32 13408
  %51 = load i32, ptr %50, align 32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @free_irq(i32 noundef %51, ptr noundef %0) #16
  br label %59

59:                                               ; preds = %57, %53, %49, %3
  %60 = getelementptr i8, ptr %0, i32 13404
  %61 = load i32, ptr %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @free_irq(i32 noundef %61, ptr noundef %0) #16
  br label %69

69:                                               ; preds = %67, %63, %59, %3
  %70 = getelementptr i8, ptr %0, i32 12672
  %71 = load i32, ptr %70, align 64
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call ptr @free_irq(i32 noundef %71, ptr noundef %0) #16
  br label %79

79:                                               ; preds = %77, %73, %69, %3
  %80 = getelementptr i8, ptr %0, i32 12644
  %81 = load i32, ptr %80, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = tail call ptr @free_irq(i32 noundef %81, ptr noundef %0) #16
  br label %89

89:                                               ; preds = %87, %83, %79, %3
  %90 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %91 = load i32, ptr %90, align 8
  %92 = tail call ptr @free_irq(i32 noundef %91, ptr noundef %0) #16
  br label %93

93:                                               ; preds = %89, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_xdp_open(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 29
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 30
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8)
  %10 = tail call fastcc i32 @alloc_dma_desc_resources(ptr noundef %2)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stmmac_xdp_open) #17
  br label %368

13:                                               ; preds = %1
  %14 = tail call fastcc i32 @init_dma_desc_rings(ptr noundef %0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %0, i32 1580
  %20 = getelementptr i8, ptr %0, i32 1568
  br label %22

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.stmmac_xdp_open) #17
  br label %347

22:                                               ; preds = %48, %18
  %23 = phi i32 [ 0, %18 ], [ %49, %48 ]
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %20, align 32
  %34 = load ptr, ptr %3, align 64
  %35 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  tail call void %30(ptr noundef %33, ptr noundef %36, i32 noundef %23) #16
  %37 = load ptr, ptr %19, align 4
  %38 = getelementptr inbounds %struct.mac_device_info, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %32, %28
  %42 = phi ptr [ %39, %32 ], [ %26, %28 ]
  %43 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %42, i32 0, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %20, align 32
  tail call void %44(ptr noundef %47, i32 noundef %23, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %48

48:                                               ; preds = %46, %41, %32, %22
  %49 = add nuw i32 %23, 1
  %50 = icmp eq i32 %49, %9
  br i1 %50, label %51, label %22

51:                                               ; preds = %48, %16
  %52 = getelementptr i8, ptr %0, i32 1580
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mac_device_info, ptr %53, i32 0, i32 14
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %0, i32 1512
  %59 = load i32, ptr %58, align 8
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %57, %51
  %62 = phi i1 [ false, %51 ], [ %60, %57 ]
  %63 = icmp eq i32 %6, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %0, i32 1568
  %66 = getelementptr i8, ptr %0, i32 1524
  br label %71

67:                                               ; preds = %152, %61
  %68 = icmp eq i32 %8, 0
  br i1 %68, label %194, label %69

69:                                               ; preds = %67
  %70 = getelementptr i8, ptr %0, i32 1568
  br label %157

71:                                               ; preds = %155, %64
  %72 = phi ptr [ %53, %64 ], [ %156, %155 ]
  %73 = phi i32 [ 0, %64 ], [ %153, %155 ]
  %74 = getelementptr inbounds %struct.mac_device_info, ptr %72, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %75, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %65, align 32
  %83 = load ptr, ptr %3, align 64
  %84 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %83, i32 0, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %73, i32 15
  %87 = load i32, ptr %86, align 4
  tail call void %79(ptr noundef %82, ptr noundef %85, i32 noundef %87, i32 noundef %73) #16
  %88 = load ptr, ptr %52, align 4
  br label %89

89:                                               ; preds = %81, %77, %71
  %90 = phi ptr [ %88, %81 ], [ %72, %77 ], [ %72, %71 ]
  %91 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %73, i32 15
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %73, i32 13
  %94 = load i32, ptr %93, align 4
  %95 = shl i32 %94, 4
  %96 = add i32 %95, %92
  %97 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %73, i32 16
  store i32 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.mac_device_info, ptr %90, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %99, i32 0, i32 22
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %65, align 32
  tail call void %103(ptr noundef %106, i32 noundef %96, i32 noundef %73) #16
  br label %107

107:                                              ; preds = %105, %101, %89
  %108 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %73, i32 4
  %109 = load ptr, ptr %108, align 64
  %110 = icmp eq ptr %109, null
  br i1 %110, label %127, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %93, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %52, align 4
  %116 = getelementptr inbounds %struct.mac_device_info, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %141, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %117, i32 0, i32 26
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %141, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %65, align 32
  %125 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %73, i32 1
  %126 = load i32, ptr %125, align 4
  tail call void %121(ptr noundef %124, i32 noundef 0, i32 noundef %126) #16
  br label %141

127:                                              ; preds = %111, %107
  %128 = load ptr, ptr %52, align 4
  %129 = getelementptr inbounds %struct.mac_device_info, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %141, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %130, i32 0, i32 26
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %65, align 32
  %138 = load i32, ptr %66, align 4
  %139 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %73, i32 1
  %140 = load i32, ptr %139, align 4
  tail call void %134(ptr noundef %137, i32 noundef %138, i32 noundef %140) #16
  br label %141

141:                                              ; preds = %136, %132, %127, %123, %119, %114
  %142 = load ptr, ptr %52, align 4
  %143 = getelementptr inbounds %struct.mac_device_info, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %144, i32 0, i32 27
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %65, align 32
  tail call void %148(ptr noundef %151, i1 noundef zeroext %62, i32 noundef %73) #16
  br label %152

152:                                              ; preds = %150, %146, %141
  %153 = add nuw i32 %73, 1
  %154 = icmp eq i32 %153, %6
  br i1 %154, label %67, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %52, align 4
  br label %71

157:                                              ; preds = %189, %69
  %158 = phi i32 [ 0, %69 ], [ %192, %189 ]
  %159 = load ptr, ptr %52, align 4
  %160 = getelementptr inbounds %struct.mac_device_info, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %161, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %70, align 32
  %169 = load ptr, ptr %3, align 64
  %170 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %169, i32 0, i32 8
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %158, i32 14
  %173 = load i32, ptr %172, align 4
  tail call void %165(ptr noundef %168, ptr noundef %171, i32 noundef %173, i32 noundef %158) #16
  %174 = load ptr, ptr %52, align 4
  br label %175

175:                                              ; preds = %167, %163, %157
  %176 = phi ptr [ %174, %167 ], [ %159, %163 ], [ %159, %157 ]
  %177 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %158, i32 14
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %158, i32 15
  store i32 %178, ptr %179, align 8
  %180 = getelementptr inbounds %struct.mac_device_info, ptr %176, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %181, i32 0, i32 23
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %70, align 32
  tail call void %185(ptr noundef %188, i32 noundef %178, i32 noundef %158) #16
  br label %189

189:                                              ; preds = %187, %183, %175
  %190 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %158, i32 2
  tail call void @hrtimer_init(ptr noundef %190, i32 noundef 1, i32 noundef 1) #16
  %191 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %158, i32 2, i32 2
  store ptr @stmmac_tx_timer, ptr %191, align 8
  %192 = add nuw i32 %158, 1
  %193 = icmp eq i32 %192, %8
  br i1 %193, label %194, label %157

194:                                              ; preds = %189, %67
  %195 = load ptr, ptr %52, align 4
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %205, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.stmmac_ops, ptr %196, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = getelementptr i8, ptr %0, i32 1568
  %204 = load ptr, ptr %203, align 32
  tail call void %200(ptr noundef %204, i1 noundef zeroext true) #16
  br label %205

205:                                              ; preds = %202, %198, %194
  %206 = load ptr, ptr %3, align 64
  %207 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %206, i32 0, i32 29
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %206, i32 0, i32 30
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %208, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %205
  %213 = getelementptr i8, ptr %0, i32 1568
  br label %218

214:                                              ; preds = %230, %205
  %215 = icmp eq i32 %210, 0
  br i1 %215, label %248, label %216

216:                                              ; preds = %214
  %217 = getelementptr i8, ptr %0, i32 1568
  br label %233

218:                                              ; preds = %230, %212
  %219 = phi i32 [ 0, %212 ], [ %231, %230 ]
  %220 = load ptr, ptr %52, align 4
  %221 = getelementptr inbounds %struct.mac_device_info, ptr %220, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %222, i32 0, i32 15
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr %213, align 32
  tail call void %226(ptr noundef %229, i32 noundef %219) #16
  br label %230

230:                                              ; preds = %228, %224, %218
  %231 = add nuw i32 %219, 1
  %232 = icmp eq i32 %231, %208
  br i1 %232, label %214, label %218

233:                                              ; preds = %245, %216
  %234 = phi i32 [ 0, %216 ], [ %246, %245 ]
  %235 = load ptr, ptr %52, align 4
  %236 = getelementptr inbounds %struct.mac_device_info, ptr %235, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %237, i32 0, i32 13
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = load ptr, ptr %217, align 32
  tail call void %241(ptr noundef %244, i32 noundef %234) #16
  br label %245

245:                                              ; preds = %243, %239, %233
  %246 = add nuw i32 %234, 1
  %247 = icmp eq i32 %246, %210
  br i1 %247, label %248, label %233

248:                                              ; preds = %245, %214
  %249 = tail call fastcc i32 @stmmac_request_irq(ptr noundef %0)
  %250 = icmp eq i32 %249, 0
  %251 = load ptr, ptr %3, align 64
  br i1 %250, label %256, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %251, i32 0, i32 30
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %343, label %334

256:                                              ; preds = %248
  %257 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %251, i32 0, i32 29
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %251, i32 0, i32 30
  %260 = load i32, ptr %259, align 4
  %261 = tail call i32 @llvm.umax.i32(i32 %258, i32 %260) #16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %294, label %263

263:                                              ; preds = %256
  %264 = getelementptr i8, ptr %0, i32 15472
  %265 = getelementptr i8, ptr %0, i32 15468
  br label %266

266:                                              ; preds = %291, %263
  %267 = phi i32 [ 0, %263 ], [ %292, %291 ]
  %268 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %267
  %269 = load ptr, ptr %264, align 16
  %270 = icmp eq ptr %269, null
  br i1 %270, label %282, label %271

271:                                              ; preds = %266
  %272 = load ptr, ptr %265, align 4
  %273 = lshr i32 %267, 5
  %274 = getelementptr i32, ptr %272, i32 %273
  %275 = load volatile i32, ptr %274, align 4
  %276 = and i32 %267, 31
  %277 = shl nuw i32 1, %276
  %278 = and i32 %275, %277
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %271
  %281 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %267, i32 4
  br label %289

282:                                              ; preds = %271, %266
  %283 = icmp ult i32 %267, %258
  br i1 %283, label %284, label %285

284:                                              ; preds = %282
  tail call void @napi_enable(ptr noundef %268) #16
  br label %285

285:                                              ; preds = %284, %282
  %286 = icmp ult i32 %267, %260
  br i1 %286, label %287, label %291

287:                                              ; preds = %285
  %288 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %267, i32 2
  br label %289

289:                                              ; preds = %287, %280
  %290 = phi ptr [ %288, %287 ], [ %281, %280 ]
  tail call void @napi_enable(ptr noundef %290) #16
  br label %291

291:                                              ; preds = %289, %285
  %292 = add nuw i32 %267, 1
  %293 = icmp eq i32 %292, %261
  br i1 %293, label %294, label %266

294:                                              ; preds = %291, %256
  tail call void @netif_carrier_on(ptr noundef %0) #16
  %295 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %296 = load i32, ptr %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %307, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %300

300:                                              ; preds = %300, %298
  %301 = phi i32 [ 0, %298 ], [ %304, %300 ]
  %302 = load ptr, ptr %299, align 64
  %303 = getelementptr %struct.netdev_queue, ptr %302, i32 %301, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %303) #16
  %304 = add nuw i32 %301, 1
  %305 = load i32, ptr %295, align 4
  %306 = icmp ult i32 %304, %305
  br i1 %306, label %300, label %307

307:                                              ; preds = %300, %294
  %308 = load ptr, ptr %3, align 64
  %309 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %308, i32 0, i32 29
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %308, i32 0, i32 30
  %312 = load i32, ptr %311, align 4
  %313 = tail call i32 @llvm.umax.i32(i32 %310, i32 %312) #16
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %368, label %315

315:                                              ; preds = %307
  %316 = getelementptr i8, ptr %0, i32 1568
  br label %317

317:                                              ; preds = %331, %315
  %318 = phi i32 [ 0, %315 ], [ %332, %331 ]
  %319 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %318, i32 6
  %320 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %319) #16
  %321 = load ptr, ptr %52, align 4
  %322 = getelementptr inbounds %struct.mac_device_info, ptr %321, i32 0, i32 2
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %331, label %325

325:                                              ; preds = %317
  %326 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %323, i32 0, i32 11
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %331, label %329

329:                                              ; preds = %325
  %330 = load ptr, ptr %316, align 32
  tail call void %327(ptr noundef %330, i32 noundef %318, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %331

331:                                              ; preds = %329, %325, %317
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %319, i32 noundef %320) #16
  %332 = add nuw i32 %318, 1
  %333 = icmp eq i32 %332, %313
  br i1 %333, label %368, label %317

334:                                              ; preds = %334, %252
  %335 = phi i32 [ %338, %334 ], [ 0, %252 ]
  %336 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %335, i32 2
  %337 = tail call i32 @hrtimer_cancel(ptr noundef %336) #16
  %338 = add nuw i32 %335, 1
  %339 = load ptr, ptr %3, align 64
  %340 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %339, i32 0, i32 30
  %341 = load i32, ptr %340, align 4
  %342 = icmp ult i32 %338, %341
  br i1 %342, label %334, label %343

343:                                              ; preds = %334, %252
  %344 = phi ptr [ %251, %252 ], [ %339, %334 ]
  %345 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %344, i32 0, i32 49
  %346 = load ptr, ptr %345, align 4
  tail call void @clk_disable(ptr noundef %346) #16
  tail call void @clk_unprepare(ptr noundef %346) #16
  br label %347

347:                                              ; preds = %343, %21
  %348 = phi i32 [ %14, %21 ], [ %249, %343 ]
  %349 = load ptr, ptr %3, align 64
  %350 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %349, i32 0, i32 30
  %351 = load i32, ptr %350, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %359, label %353

353:                                              ; preds = %353, %347
  %354 = phi i32 [ %355, %353 ], [ 0, %347 ]
  tail call fastcc void @__free_dma_tx_desc_resources(ptr noundef %2, i32 noundef %354) #16
  %355 = add nuw i32 %354, 1
  %356 = icmp eq i32 %355, %351
  br i1 %356, label %357, label %353

357:                                              ; preds = %353
  %358 = load ptr, ptr %3, align 64
  br label %359

359:                                              ; preds = %357, %347
  %360 = phi ptr [ %358, %357 ], [ %349, %347 ]
  %361 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %360, i32 0, i32 29
  %362 = load i32, ptr %361, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %368, label %364

364:                                              ; preds = %364, %359
  %365 = phi i32 [ %366, %364 ], [ 0, %359 ]
  tail call fastcc void @__free_dma_rx_desc_resources(ptr noundef %2, i32 noundef %365) #16
  %366 = add nuw i32 %365, 1
  %367 = icmp eq i32 %366, %362
  br i1 %367, label %368, label %364

368:                                              ; preds = %364, %359, %331, %307, %12
  %369 = phi i32 [ %10, %12 ], [ 0, %307 ], [ %348, %359 ], [ %348, %364 ], [ 0, %331 ]
  ret i32 %369
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alloc_dma_desc_resources(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %10

7:                                                ; preds = %10
  %8 = add nuw i32 %11, 1
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %23, label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %12 = tail call fastcc i32 @__alloc_dma_rx_desc_resources(ptr noundef %0, i32 noundef %11) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %7, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 64
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 29
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %19, %14
  %20 = phi i32 [ %21, %19 ], [ 0, %14 ]
  tail call fastcc void @__free_dma_rx_desc_resources(ptr noundef %0, i32 noundef %20) #16
  %21 = add nuw i32 %20, 1
  %22 = icmp eq i32 %21, %17
  br i1 %22, label %46, label %19

23:                                               ; preds = %7
  %24 = load ptr, ptr %2, align 64
  br label %25

25:                                               ; preds = %23, %1
  %26 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %27 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %26, i32 0, i32 30
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %33

30:                                               ; preds = %33
  %31 = add nuw i32 %34, 1
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %46, label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %31, %30 ], [ 0, %25 ]
  %35 = tail call fastcc i32 @__alloc_dma_tx_desc_resources(ptr noundef %0, i32 noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %30, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %2, align 64
  %39 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %38, i32 0, i32 30
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %42, %37
  %43 = phi i32 [ %44, %42 ], [ 0, %37 ]
  tail call fastcc void @__free_dma_tx_desc_resources(ptr noundef %0, i32 noundef %43) #16
  %44 = add nuw i32 %43, 1
  %45 = icmp eq i32 %44, %40
  br i1 %45, label %46, label %42

46:                                               ; preds = %42, %37, %30, %25, %19, %14
  %47 = phi i32 [ %35, %37 ], [ 0, %25 ], [ %12, %14 ], [ %35, %42 ], [ 0, %30 ], [ %12, %19 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_dma_desc_rings(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 29
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %72, label %8

8:                                                ; preds = %15, %1
  %9 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %10 = tail call fastcc i32 @__init_dma_rx_desc_rings(ptr noundef %2, i32 noundef %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 3712
  %14 = load i32, ptr %13, align 64
  br label %18

15:                                               ; preds = %8
  %16 = add nuw i32 %9, 1
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %70, label %8

18:                                               ; preds = %65, %12
  %19 = phi i32 [ %66, %65 ], [ %14, %12 ]
  %20 = phi i32 [ %69, %65 ], [ %9, %12 ]
  %21 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %20, i32 4
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, null
  %24 = icmp eq i32 %19, 0
  br i1 %23, label %43, label %25

25:                                               ; preds = %18
  br i1 %24, label %65, label %26

26:                                               ; preds = %25
  %27 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %20, i32 6
  br label %28

28:                                               ; preds = %38, %26
  %29 = phi i32 [ %19, %26 ], [ %39, %38 ]
  %30 = phi i32 [ %19, %26 ], [ %40, %38 ]
  %31 = phi i32 [ 0, %26 ], [ %41, %38 ]
  %32 = load ptr, ptr %27, align 8
  %33 = getelementptr %struct.stmmac_rx_buffer, ptr %32, i32 %31
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  store ptr null, ptr %33, align 4
  %37 = load i32, ptr %13, align 64
  br label %38

38:                                               ; preds = %36, %28
  %39 = phi i32 [ %29, %28 ], [ %37, %36 ]
  %40 = phi i32 [ %30, %28 ], [ %37, %36 ]
  %41 = add nuw i32 %31, 1
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %28, label %65

43:                                               ; preds = %18
  br i1 %24, label %65, label %44

44:                                               ; preds = %43
  %45 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %20, i32 6
  %46 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %20, i32 5
  br label %47

47:                                               ; preds = %61, %44
  %48 = phi i32 [ 0, %44 ], [ %62, %61 ]
  %49 = load ptr, ptr %45, align 8
  %50 = getelementptr %struct.stmmac_rx_buffer, ptr %49, i32 %48
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %46, align 4
  tail call void @page_pool_put_page(ptr noundef %54, ptr noundef nonnull %51, i32 noundef -1, i1 noundef zeroext false) #16
  br label %55

55:                                               ; preds = %53, %47
  store ptr null, ptr %50, align 4
  %56 = getelementptr %struct.stmmac_rx_buffer, ptr %49, i32 %48, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %46, align 4
  tail call void @page_pool_put_page(ptr noundef %60, ptr noundef nonnull %57, i32 noundef -1, i1 noundef zeroext false) #16
  br label %61

61:                                               ; preds = %59, %55
  store ptr null, ptr %56, align 4
  %62 = add nuw i32 %48, 1
  %63 = load i32, ptr %13, align 64
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %47, label %65

65:                                               ; preds = %61, %43, %38, %25
  %66 = phi i32 [ 0, %43 ], [ 0, %25 ], [ %63, %61 ], [ %39, %38 ]
  %67 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %20, i32 13
  store i32 0, ptr %67, align 4
  store ptr null, ptr %21, align 64
  %68 = icmp eq i32 %20, 0
  %69 = add i32 %20, -1
  br i1 %68, label %166, label %18

70:                                               ; preds = %15
  %71 = load ptr, ptr %3, align 64
  br label %72

72:                                               ; preds = %70, %1
  %73 = phi ptr [ %71, %70 ], [ %4, %1 ]
  %74 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %73, i32 0, i32 30
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %77, %72
  %78 = phi i32 [ %79, %77 ], [ 0, %72 ]
  tail call fastcc void @__init_dma_tx_desc_rings(ptr noundef %2, i32 noundef %78) #16
  %79 = add nuw i32 %78, 1
  %80 = icmp eq i32 %79, %75
  br i1 %80, label %81, label %77

81:                                               ; preds = %77, %72
  tail call fastcc void @stmmac_clear_descriptors(ptr noundef %2)
  %82 = getelementptr i8, ptr %0, i32 12636
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 8192
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %166, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %3, align 64
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %87, i32 0, i32 29
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %122, label %91

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %0, i32 12708
  %93 = getelementptr i8, ptr %0, i32 1580
  %94 = getelementptr i8, ptr %0, i32 3712
  br label %95

95:                                               ; preds = %117, %91
  %96 = phi i32 [ 0, %91 ], [ %118, %117 ]
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %96) #17
  %98 = load i32, ptr %92, align 4
  %99 = icmp eq i32 %98, 0
  %100 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %96, i32 8
  %101 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %96, i32 10
  %102 = select i1 %99, ptr %101, ptr %100
  %103 = select i1 %99, i32 16, i32 32
  %104 = load ptr, ptr %102, align 16
  %105 = load ptr, ptr %93, align 4
  %106 = getelementptr inbounds %struct.mac_device_info, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %107, i32 0, i32 19
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %94, align 64
  %115 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 20, i32 %96, i32 15
  %116 = load i32, ptr %115, align 4
  tail call void %111(ptr noundef %104, i32 noundef %114, i1 noundef zeroext true, i32 noundef %116, i32 noundef %103) #16
  br label %117

117:                                              ; preds = %113, %109, %95
  %118 = add nuw i32 %96, 1
  %119 = icmp eq i32 %118, %89
  br i1 %119, label %120, label %95

120:                                              ; preds = %117
  %121 = load ptr, ptr %3, align 64
  br label %122

122:                                              ; preds = %120, %86
  %123 = phi ptr [ %121, %120 ], [ %87, %86 ]
  %124 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %123, i32 0, i32 30
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %166, label %127

127:                                              ; preds = %122
  %128 = getelementptr i8, ptr %0, i32 12708
  %129 = getelementptr i8, ptr %0, i32 1580
  %130 = getelementptr i8, ptr %0, i32 4800
  br label %131

131:                                              ; preds = %163, %127
  %132 = phi i32 [ 0, %127 ], [ %164, %163 ]
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %132) #17
  %134 = load i32, ptr %128, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %132, i32 5
  br label %147

138:                                              ; preds = %131
  %139 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %132, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %132, i32 6
  br label %147

145:                                              ; preds = %138
  %146 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %132, i32 7
  br label %147

147:                                              ; preds = %145, %143, %136
  %148 = phi ptr [ %137, %136 ], [ %144, %143 ], [ %146, %145 ]
  %149 = phi i32 [ 32, %136 ], [ 32, %143 ], [ 16, %145 ]
  %150 = load ptr, ptr %148, align 4
  %151 = load ptr, ptr %129, align 4
  %152 = getelementptr inbounds %struct.mac_device_info, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %163, label %155

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %153, i32 0, i32 19
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %130, align 64
  %161 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %132, i32 14
  %162 = load i32, ptr %161, align 4
  tail call void %157(ptr noundef %150, i32 noundef %160, i1 noundef zeroext false, i32 noundef %162, i32 noundef %149) #16
  br label %163

163:                                              ; preds = %159, %155, %147
  %164 = add nuw i32 %132, 1
  %165 = icmp eq i32 %164, %125
  br i1 %165, label %166, label %131

166:                                              ; preds = %163, %122, %81, %65
  %167 = phi i32 [ 0, %81 ], [ 0, %122 ], [ 0, %163 ], [ %10, %65 ]
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_tx_timer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 48
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 76
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %5, i32 4
  %10 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %5, i32 2
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %11) #16
  br i1 %12, label %13, label %31, !prof !11

13:                                               ; preds = %1
  %14 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %5, i32 6
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #16
  %16 = getelementptr inbounds %struct.stmmac_priv, ptr %3, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mac_device_info, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %19, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.stmmac_priv, ptr %3, i32 0, i32 13
  %27 = load ptr, ptr %26, align 32
  %28 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %5, i32 7
  %29 = load i32, ptr %28, align 32
  tail call void %23(ptr noundef %27, i32 noundef %29, i1 noundef zeroext false, i1 noundef zeroext true) #16
  br label %30

30:                                               ; preds = %25, %21, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #16
  tail call void @__napi_schedule(ptr noundef %11) #16
  br label %31

31:                                               ; preds = %30, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_request_irq(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.cpumask, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 73
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %166, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !10
  %10 = getelementptr i8, ptr %0, i32 13476
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull @.str.28) #16
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @stmmac_mac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %0) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20, !prof !14

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %0, i32 1572
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %12, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.stmmac_request_irq_multi_msi, i32 noundef %19, i32 noundef %14) #17
  br label %160

20:                                               ; preds = %9
  %21 = getelementptr i8, ptr %0, i32 12644
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, ptr %12, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 13501
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull @.str.30) #16
  %30 = load i32, ptr %21, align 4
  %31 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @stmmac_mac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %28, ptr noundef %0) #16
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37, !prof !14

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %0, i32 1572
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.stmmac_request_irq_multi_msi, i32 noundef %36, i32 noundef %31) #17
  br label %160

37:                                               ; preds = %27, %24, %20
  %38 = getelementptr i8, ptr %0, i32 12672
  %39 = load i32, ptr %38, align 64
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, ptr %12, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %0, i32 13526
  %46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %45, ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull @.str.32) #16
  %47 = load i32, ptr %38, align 64
  %48 = tail call i32 @request_threaded_irq(i32 noundef %47, ptr noundef nonnull @stmmac_mac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %45, ptr noundef %0) #16
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54, !prof !14

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %0, i32 1572
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %38, align 64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.stmmac_request_irq_multi_msi, i32 noundef %53, i32 noundef %48) #17
  br label %160

54:                                               ; preds = %44, %41, %37
  %55 = getelementptr i8, ptr %0, i32 13404
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32, ptr %12, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %0, i32 13551
  %63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %62, ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull @.str.34) #16
  %64 = load i32, ptr %55, align 4
  %65 = tail call i32 @request_threaded_irq(i32 noundef %64, ptr noundef nonnull @stmmac_safety_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %62, ptr noundef %0) #16
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71, !prof !14

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %0, i32 1572
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.stmmac_request_irq_multi_msi, i32 noundef %70, i32 noundef %65) #17
  br label %160

71:                                               ; preds = %61, %58, %54
  %72 = getelementptr i8, ptr %0, i32 13408
  %73 = load i32, ptr %72, align 32
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32, ptr %12, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = getelementptr i8, ptr %0, i32 13577
  %80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %79, ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull @.str.36) #16
  %81 = load i32, ptr %72, align 32
  %82 = tail call i32 @request_threaded_irq(i32 noundef %81, ptr noundef nonnull @stmmac_safety_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %79, ptr noundef %0) #16
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88, !prof !14

84:                                               ; preds = %78
  %85 = getelementptr i8, ptr %0, i32 1572
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %72, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.stmmac_request_irq_multi_msi, i32 noundef %87, i32 noundef %82) #17
  br label %160

88:                                               ; preds = %78, %75, %71
  %89 = load ptr, ptr %4, align 64
  %90 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %89, i32 0, i32 29
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %121, %88
  %94 = phi ptr [ %89, %88 ], [ %122, %121 ]
  %95 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %94, i32 0, i32 30
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %164, label %129

98:                                               ; preds = %121, %88
  %99 = phi ptr [ %122, %121 ], [ %89, %88 ]
  %100 = phi i32 [ %123, %121 ], [ 0, %88 ]
  %101 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 72, i32 %100
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %98
  %105 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 79, i32 %100
  %106 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %105, ptr noundef nonnull @.str.38, ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %100) #16
  %107 = load i32, ptr %101, align 4
  %108 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 20, i32 %100
  %109 = call i32 @request_threaded_irq(i32 noundef %107, ptr noundef nonnull @stmmac_msi_intr_rx, ptr noundef null, i32 noundef 0, ptr noundef %105, ptr noundef %108) #16
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115, !prof !14

111:                                              ; preds = %104
  %112 = getelementptr i8, ptr %0, i32 1572
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %101, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %113, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.stmmac_request_irq_multi_msi, i32 noundef %100, i32 noundef %114, i32 noundef %109) #17
  br label %160

115:                                              ; preds = %104
  store i32 0, ptr %2, align 4
  %116 = load volatile i32, ptr @__num_online_cpus, align 4
  %117 = urem i32 %100, %116
  call void @_set_bit(i32 noundef %117, ptr noundef nonnull %2) #16
  %118 = load i32, ptr %101, align 4
  %119 = call i32 @__irq_apply_affinity_hint(i32 noundef %118, ptr noundef nonnull %2, i1 noundef zeroext true) #16
  %120 = load ptr, ptr %4, align 64
  br label %121

121:                                              ; preds = %115, %98
  %122 = phi ptr [ %99, %98 ], [ %120, %115 ]
  %123 = add nuw nsw i32 %100, 1
  %124 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %122, i32 0, i32 29
  %125 = load i32, ptr %124, align 4
  %126 = icmp uge i32 %123, %125
  %127 = icmp ugt i32 %100, 6
  %128 = or i1 %127, %126
  br i1 %128, label %93, label %98

129:                                              ; preds = %152, %93
  %130 = phi ptr [ %153, %152 ], [ %94, %93 ]
  %131 = phi i32 [ %154, %152 ], [ 0, %93 ]
  %132 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 73, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %152, label %135

135:                                              ; preds = %129
  %136 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 80, i32 %131
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %136, ptr noundef nonnull @.str.38, ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %131) #16
  %138 = load i32, ptr %132, align 4
  %139 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %131
  %140 = call i32 @request_threaded_irq(i32 noundef %138, ptr noundef nonnull @stmmac_msi_intr_tx, ptr noundef null, i32 noundef 0, ptr noundef %136, ptr noundef %139) #16
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146, !prof !14

142:                                              ; preds = %135
  %143 = getelementptr i8, ptr %0, i32 1572
  %144 = load ptr, ptr %143, align 4
  %145 = load i32, ptr %132, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %144, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.stmmac_request_irq_multi_msi, i32 noundef %131, i32 noundef %145, i32 noundef %140) #17
  br label %160

146:                                              ; preds = %135
  store i32 0, ptr %2, align 4
  %147 = load volatile i32, ptr @__num_online_cpus, align 4
  %148 = urem i32 %131, %147
  call void @_set_bit(i32 noundef %148, ptr noundef nonnull %2) #16
  %149 = load i32, ptr %132, align 4
  %150 = call i32 @__irq_apply_affinity_hint(i32 noundef %149, ptr noundef nonnull %2, i1 noundef zeroext true) #16
  %151 = load ptr, ptr %4, align 64
  br label %152

152:                                              ; preds = %146, %129
  %153 = phi ptr [ %130, %129 ], [ %151, %146 ]
  %154 = add nuw nsw i32 %131, 1
  %155 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %153, i32 0, i32 30
  %156 = load i32, ptr %155, align 4
  %157 = icmp uge i32 %154, %156
  %158 = icmp ugt i32 %131, 6
  %159 = or i1 %158, %157
  br i1 %159, label %164, label %129

160:                                              ; preds = %142, %111, %84, %67, %50, %33, %16
  %161 = phi i32 [ 7, %16 ], [ 6, %33 ], [ 5, %50 ], [ 4, %67 ], [ 3, %84 ], [ 1, %142 ], [ 2, %111 ]
  %162 = phi i32 [ 0, %16 ], [ 0, %33 ], [ 0, %50 ], [ 0, %67 ], [ 0, %84 ], [ %131, %142 ], [ %100, %111 ]
  %163 = phi i32 [ %14, %16 ], [ %31, %33 ], [ %48, %50 ], [ %65, %67 ], [ %82, %84 ], [ %140, %142 ], [ %109, %111 ]
  call fastcc void @stmmac_free_irq(ptr noundef %0, i32 noundef %161, i32 noundef %162) #16
  br label %164

164:                                              ; preds = %160, %152, %93
  %165 = phi i32 [ %163, %160 ], [ 0, %93 ], [ 0, %152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %206

166:                                              ; preds = %1
  %167 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %168 = load i32, ptr %167, align 8
  %169 = tail call i32 @request_threaded_irq(i32 noundef %168, ptr noundef nonnull @stmmac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #16
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %175, !prof !14

171:                                              ; preds = %166
  %172 = getelementptr i8, ptr %0, i32 1572
  %173 = load ptr, ptr %172, align 4
  %174 = load i32, ptr %167, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %173, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.stmmac_request_irq_single, i32 noundef %174, i32 noundef %169) #17
  br label %203

175:                                              ; preds = %166
  %176 = getelementptr i8, ptr %0, i32 12644
  %177 = load i32, ptr %176, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = load i32, ptr %167, align 8
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = tail call i32 @request_threaded_irq(i32 noundef %177, ptr noundef nonnull @stmmac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #16
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %189, !prof !14

185:                                              ; preds = %182
  %186 = getelementptr i8, ptr %0, i32 1572
  %187 = load ptr, ptr %186, align 4
  %188 = load i32, ptr %176, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %187, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.stmmac_request_irq_single, i32 noundef %188, i32 noundef %183) #17
  br label %203

189:                                              ; preds = %182, %179, %175
  %190 = getelementptr i8, ptr %0, i32 12672
  %191 = load i32, ptr %190, align 64
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = load i32, ptr %167, align 8
  %195 = icmp eq i32 %191, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = tail call i32 @request_threaded_irq(i32 noundef %191, ptr noundef nonnull @stmmac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #16
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %206, !prof !14

199:                                              ; preds = %196
  %200 = getelementptr i8, ptr %0, i32 1572
  %201 = load ptr, ptr %200, align 4
  %202 = load i32, ptr %190, align 64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %201, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.stmmac_request_irq_single, i32 noundef %202, i32 noundef %197) #17
  br label %203

203:                                              ; preds = %199, %185, %171
  %204 = phi i32 [ 7, %171 ], [ 6, %185 ], [ 5, %199 ]
  %205 = phi i32 [ %169, %171 ], [ %183, %185 ], [ %197, %199 ]
  tail call fastcc void @stmmac_free_irq(ptr noundef %0, i32 noundef %204, i32 noundef 0) #16
  br label %206

206:                                              ; preds = %203, %196, %193, %189, %164
  %207 = phi i32 [ %165, %164 ], [ %205, %203 ], [ 0, %196 ], [ 0, %193 ], [ 0, %189 ]
  ret i32 %207
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_xsk_wakeup(ptr noundef %0, i32 noundef %1, i32 %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 14120
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 1572
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %0, i32 15472
  %18 = load ptr, ptr %17, align 16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 12096
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 29
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, %1
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 30
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 20, i32 %1, i32 4
  %32 = load ptr, ptr %31, align 64
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %1, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %60, label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 26, i32 %1, i32 4
  %40 = getelementptr inbounds %struct.napi_struct, ptr %39, i32 0, i32 1
  br label %41

41:                                               ; preds = %54, %38
  %42 = load volatile i32, ptr %40, align 8
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = and i32 %42, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = or i32 %42, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #16, !srcloc !16
  br label %50

50:                                               ; preds = %50, %48
  %51 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %40, i32 %42, i32 %49) #16, !srcloc !17
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %50

54:                                               ; preds = %50
  %55 = extractvalue { i32, i32 } %51, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %56 = icmp eq i32 %55, %42
  br i1 %56, label %60, label %41

57:                                               ; preds = %45
  %58 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %39) #16
  br i1 %58, label %59, label %60, !prof !11

59:                                               ; preds = %57
  tail call void @__napi_schedule(ptr noundef %39) #16
  br label %60

60:                                               ; preds = %59, %57, %54, %41, %34, %26, %20, %16, %9, %3
  %61 = phi i32 [ -100, %9 ], [ -100, %3 ], [ -6, %16 ], [ -22, %26 ], [ -22, %20 ], [ -6, %34 ], [ 0, %57 ], [ 0, %59 ], [ 0, %41 ], [ 0, %54 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_reinit_queues(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @stmmac_release(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %3
  tail call fastcc void @stmmac_napi_del(ptr noundef %0)
  %11 = getelementptr i8, ptr %0, i32 12096
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %12, i32 0, i32 29
  store i32 %1, ptr %13, align 4
  %14 = load ptr, ptr %11, align 64
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 30
  store i32 %2, ptr %15, align 4
  tail call fastcc void @stmmac_napi_add(ptr noundef %0)
  %16 = load volatile i32, ptr %4, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @stmmac_open(ptr noundef %0)
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %20, %19 ], [ 0, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, 512
  store volatile i32 %6, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %23, %15 ]
  %17 = load ptr, ptr %14, align 64
  %18 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 9
  tail call void @_raw_spin_lock(ptr noundef %18) #16
  %19 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 10
  store volatile i32 %8, ptr %19, align 4
  %20 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #16
  store volatile i32 -1, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %21 = load i16, ptr %18, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %23 = add nuw i32 %16, 1
  %24 = load i32, ptr %10, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %27 = load i16, ptr %9, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  tail call fastcc void @local_bh_enable() #16
  %29 = getelementptr i8, ptr %0, i32 1576
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 11, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 11, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %0, i32 11048
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @phylink_speed_down(ptr noundef %41, i1 noundef zeroext false) #16
  br label %43

43:                                               ; preds = %39, %35, %26
  %44 = getelementptr i8, ptr %0, i32 11048
  %45 = load ptr, ptr %44, align 8
  tail call void @phylink_stop(ptr noundef %45) #16
  %46 = load ptr, ptr %44, align 8
  tail call void @phylink_disconnect_phy(ptr noundef %46) #16
  tail call fastcc void @stmmac_disable_all_queues(ptr noundef %2)
  %47 = getelementptr i8, ptr %0, i32 12096
  %48 = load ptr, ptr %47, align 64
  %49 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %48, i32 0, i32 30
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %52, %43
  %53 = phi i32 [ %56, %52 ], [ 0, %43 ]
  %54 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 23, i32 %53, i32 2
  %55 = tail call i32 @hrtimer_cancel(ptr noundef %54) #16
  %56 = add nuw i32 %53, 1
  %57 = load ptr, ptr %47, align 64
  %58 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %57, i32 0, i32 30
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %52, label %61

61:                                               ; preds = %52, %43
  tail call fastcc void @stmmac_free_irq(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %62 = getelementptr i8, ptr %0, i32 12676
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %0, i32 1508
  store i8 0, ptr %66, align 4
  %67 = getelementptr i8, ptr %0, i32 12652
  %68 = tail call i32 @del_timer_sync(ptr noundef %67) #16
  br label %69

69:                                               ; preds = %65, %61
  %70 = load ptr, ptr %47, align 64
  %71 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %70, i32 0, i32 29
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %70, i32 0, i32 30
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = getelementptr i8, ptr %0, i32 1580
  %78 = getelementptr i8, ptr %0, i32 1568
  br label %84

79:                                               ; preds = %96, %69
  %80 = icmp eq i32 %74, 0
  br i1 %80, label %114, label %81

81:                                               ; preds = %79
  %82 = getelementptr i8, ptr %0, i32 1580
  %83 = getelementptr i8, ptr %0, i32 1568
  br label %99

84:                                               ; preds = %96, %76
  %85 = phi i32 [ 0, %76 ], [ %97, %96 ]
  %86 = load ptr, ptr %77, align 4
  %87 = getelementptr inbounds %struct.mac_device_info, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %88, i32 0, i32 16
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %78, align 32
  tail call void %92(ptr noundef %95, i32 noundef %85) #16
  br label %96

96:                                               ; preds = %94, %90, %84
  %97 = add nuw i32 %85, 1
  %98 = icmp eq i32 %97, %72
  br i1 %98, label %79, label %84

99:                                               ; preds = %111, %81
  %100 = phi i32 [ 0, %81 ], [ %112, %111 ]
  %101 = load ptr, ptr %82, align 4
  %102 = getelementptr inbounds %struct.mac_device_info, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %103, i32 0, i32 14
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %83, align 32
  tail call void %107(ptr noundef %110, i32 noundef %100) #16
  br label %111

111:                                              ; preds = %109, %105, %99
  %112 = add nuw i32 %100, 1
  %113 = icmp eq i32 %112, %74
  br i1 %113, label %114, label %99

114:                                              ; preds = %111, %79
  %115 = load ptr, ptr %47, align 64
  %116 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %115, i32 0, i32 30
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %119, %114
  %120 = phi i32 [ %121, %119 ], [ 0, %114 ]
  tail call fastcc void @__free_dma_tx_desc_resources(ptr noundef %2, i32 noundef %120) #16
  %121 = add nuw i32 %120, 1
  %122 = icmp eq i32 %121, %117
  br i1 %122, label %123, label %119

123:                                              ; preds = %119
  %124 = load ptr, ptr %47, align 64
  br label %125

125:                                              ; preds = %123, %114
  %126 = phi ptr [ %124, %123 ], [ %115, %114 ]
  %127 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %126, i32 0, i32 29
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %130, %125
  %131 = phi i32 [ %132, %130 ], [ 0, %125 ]
  tail call fastcc void @__free_dma_rx_desc_resources(ptr noundef %2, i32 noundef %131) #16
  %132 = add nuw i32 %131, 1
  %133 = icmp eq i32 %132, %128
  br i1 %133, label %134, label %130

134:                                              ; preds = %130, %125
  %135 = getelementptr i8, ptr %0, i32 1580
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.stmmac_ops, ptr %137, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = getelementptr i8, ptr %0, i32 1568
  %145 = load ptr, ptr %144, align 32
  tail call void %141(ptr noundef %145, i1 noundef zeroext false) #16
  br label %146

146:                                              ; preds = %143, %139, %134
  tail call void @netif_carrier_off(ptr noundef %0) #16
  %147 = load ptr, ptr %47, align 64
  %148 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %147, i32 0, i32 49
  %149 = load ptr, ptr %148, align 4
  tail call void @clk_disable(ptr noundef %149) #16
  tail call void @clk_unprepare(ptr noundef %149) #16
  tail call void @stmmac_ptp_unregister(ptr noundef %2) #16
  %150 = load ptr, ptr %29, align 8
  %151 = tail call i32 @__pm_runtime_idle(ptr noundef %150, i32 noundef 5) #16
  %152 = getelementptr i8, ptr %0, i32 12276
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %146
  %156 = getelementptr i8, ptr %0, i32 14144
  tail call void @_set_bit(i32 noundef 0, ptr noundef %156) #16
  %157 = getelementptr i8, ptr %0, i32 14148
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  tail call void @destroy_workqueue(ptr noundef nonnull %158) #16
  br label %161

161:                                              ; preds = %160, %155
  %162 = getelementptr i8, ptr %0, i32 1572
  %163 = load ptr, ptr %162, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %163, ptr noundef nonnull @.str.134) #17
  br label %164

164:                                              ; preds = %161, %146
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_napi_del(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 29
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 30
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %41, %1
  %12 = phi i32 [ %44, %41 ], [ %6, %1 ]
  %13 = phi ptr [ %42, %41 ], [ %4, %1 ]
  %14 = phi i32 [ %39, %41 ], [ 0, %1 ]
  %15 = icmp ult i32 %14, %12
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %14
  tail call void @__netif_napi_del(ptr noundef %17) #16
  tail call void @synchronize_net() #16
  %18 = load ptr, ptr %3, align 64
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %18, %16 ], [ %13, %11 ]
  %21 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %20, i32 0, i32 30
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %14, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %14, i32 2
  tail call void @__netif_napi_del(ptr noundef %25) #16
  tail call void @synchronize_net() #16
  %26 = load ptr, ptr %3, align 64
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ %26, %24 ], [ %20, %19 ]
  %29 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %28, i32 0, i32 29
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %14, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %28, i32 0, i32 30
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %14, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %14, i32 4
  tail call void @__netif_napi_del(ptr noundef %37) #16
  tail call void @synchronize_net() #16
  br label %38

38:                                               ; preds = %36, %32, %27
  %39 = add nuw i32 %14, 1
  %40 = icmp eq i32 %39, %9
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %3, align 64
  %43 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %42, i32 0, i32 29
  %44 = load i32, ptr %43, align 4
  br label %11

45:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_napi_add(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 29
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 30
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %46, %1
  %12 = phi ptr [ %47, %46 ], [ %4, %1 ]
  %13 = phi i32 [ %44, %46 ], [ 0, %1 ]
  %14 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %13, i32 5
  store ptr %2, ptr %14, align 8
  %15 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %13, i32 7
  store i32 %13, ptr %15, align 32
  %16 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %13, i32 6
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %12, i32 0, i32 29
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %13
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %21, ptr noundef nonnull @stmmac_napi_poll_rx, i32 noundef 64) #16
  %22 = load ptr, ptr %3, align 64
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi ptr [ %22, %20 ], [ %12, %11 ]
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %24, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %13, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %13, i32 2
  %30 = getelementptr inbounds %struct.napi_struct, ptr %29, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %30) #16
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %29, ptr noundef nonnull @stmmac_napi_poll_tx, i32 noundef 64) #16
  %31 = load ptr, ptr %3, align 64
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi ptr [ %31, %28 ], [ %24, %23 ]
  %34 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %33, i32 0, i32 29
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %13, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %33, i32 0, i32 30
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %13, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %13, i32 4
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %42, ptr noundef nonnull @stmmac_napi_poll_rxtx, i32 noundef 64) #16
  br label %43

43:                                               ; preds = %41, %37, %32
  %44 = add nuw i32 %13, 1
  %45 = icmp eq i32 %44, %9
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 64
  br label %11

48:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_open(ptr noundef %0) #0 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 1576
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #16, !srcloc !16
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #16, !srcloc !25
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %312, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  br label %312

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 1580
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %21, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %24 [
    i32 4, label %77
    i32 8, label %77
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mac_device_info, ptr %21, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @xpcs_get_an_mode(ptr noundef nonnull %26, i32 noundef %7) #16
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %77, label %31

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %4, align 64
  %33 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %0, i32 11048
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @phylink_of_phy_connect(ptr noundef %38, ptr noundef nonnull %34, i32 noundef 0) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 64
  br label %43

43:                                               ; preds = %41, %31
  %44 = phi ptr [ %42, %41 ], [ %32, %31 ]
  %45 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %0, i32 11020
  %48 = load ptr, ptr %47, align 4
  %49 = tail call ptr @mdiobus_get_phy(ptr noundef %48, i32 noundef %46) #16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = getelementptr i8, ptr %0, i32 1572
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.53, i32 noundef %46) #17
  br label %73

54:                                               ; preds = %43
  %55 = getelementptr i8, ptr %0, i32 11048
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 @phylink_connect_phy(ptr noundef %56, ptr noundef nonnull %49) #16
  br label %58

58:                                               ; preds = %54, %36
  %59 = phi i32 [ %57, %54 ], [ 0, %36 ]
  %60 = load ptr, ptr %4, align 64
  %61 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %60, i32 0, i32 18
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.stmmac_init_phy.wol, i32 20, i1 false) #16
  %65 = getelementptr i8, ptr %0, i32 11048
  %66 = load ptr, ptr %65, align 8
  call void @phylink_ethtool_get_wol(ptr noundef %66, ptr noundef nonnull %2) #16
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp ne i32 %69, 0
  call void @device_set_wakeup_capable(ptr noundef %67, i1 noundef zeroext %70) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %71

71:                                               ; preds = %64, %58
  %72 = icmp eq i32 %59, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %71, %51
  %74 = phi i32 [ -19, %51 ], [ %59, %71 ]
  %75 = getelementptr i8, ptr %0, i32 1572
  %76 = load ptr, ptr %75, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %76, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.stmmac_open, i32 noundef %74) #17
  br label %308

77:                                               ; preds = %71, %28, %19, %19
  %78 = getelementptr i8, ptr %0, i32 11072
  call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(640) %78, i8 0, i32 640, i1 false)
  %79 = load i32, ptr @tc, align 4
  %80 = getelementptr i8, ptr %0, i32 11224
  store i32 %79, ptr %80, align 8
  %81 = load ptr, ptr %20, align 4
  %82 = getelementptr inbounds %struct.mac_device_info, ptr %81, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.stmmac_mode_ops, ptr %83, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %91 = load i32, ptr %90, align 4
  %92 = call i32 %87(i32 noundef %91) #16
  br label %93

93:                                               ; preds = %89, %85, %77
  %94 = phi i32 [ %92, %89 ], [ -22, %85 ], [ -22, %77 ]
  %95 = call i32 @llvm.smax.i32(i32 %94, i32 0)
  %96 = icmp ult i32 %95, 16368
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %99, 8187
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = icmp sgt i32 %99, 4095
  br i1 %102, label %108, label %103

103:                                              ; preds = %101
  %104 = icmp sgt i32 %99, 2047
  br i1 %104, label %108, label %105

105:                                              ; preds = %103
  %106 = icmp sgt i32 %99, 1536
  %107 = select i1 %106, i32 2048, i32 1536
  br label %108

108:                                              ; preds = %105, %103, %101, %97, %93
  %109 = phi i32 [ %95, %93 ], [ 16368, %97 ], [ 8188, %101 ], [ 4096, %103 ], [ %107, %105 ]
  %110 = getelementptr i8, ptr %0, i32 1524
  store i32 %109, ptr %110, align 4
  store i32 %109, ptr @buf_sz, align 4
  %111 = getelementptr i8, ptr %0, i32 1528
  store i32 256, ptr %111, align 8
  %112 = getelementptr i8, ptr %0, i32 4800
  %113 = load i32, ptr %112, align 64
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 512, ptr %112, align 64
  br label %116

116:                                              ; preds = %115, %108
  %117 = getelementptr i8, ptr %0, i32 3712
  %118 = load i32, ptr %117, align 64
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 512, ptr %117, align 64
  br label %121

121:                                              ; preds = %120, %116
  %122 = load ptr, ptr %4, align 64
  %123 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %122, i32 0, i32 30
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %126, %121
  %127 = phi i32 [ %135, %126 ], [ 0, %121 ]
  %128 = getelementptr %struct.plat_stmmacenet_data, ptr %122, i32 0, i32 34, i32 %127, i32 8
  %129 = load i32, ptr %128, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %127, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, ptr %132, align 4
  %135 = add nuw i32 %127, 1
  %136 = load i32, ptr %123, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %126, label %138

138:                                              ; preds = %126, %121
  %139 = call fastcc i32 @alloc_dma_desc_resources(ptr noundef %3)
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = getelementptr i8, ptr %0, i32 1572
  %143 = load ptr, ptr %142, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %143, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stmmac_open) #17
  br label %304

144:                                              ; preds = %138
  %145 = call fastcc i32 @init_dma_desc_rings(ptr noundef %0)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr i8, ptr %0, i32 1572
  %149 = load ptr, ptr %148, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %149, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.stmmac_open) #17
  br label %283

150:                                              ; preds = %144
  %151 = call fastcc i32 @stmmac_hw_setup(ptr noundef %0, i1 noundef zeroext true)
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = getelementptr i8, ptr %0, i32 1572
  %155 = load ptr, ptr %154, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %155, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.stmmac_open) #17
  br label %283

156:                                              ; preds = %150
  %157 = load ptr, ptr %4, align 64
  %158 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %157, i32 0, i32 30
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %157, i32 0, i32 29
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %168, %156
  %164 = icmp eq i32 %161, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %163
  %166 = getelementptr i8, ptr %0, i32 1472
  %167 = shl nuw i32 %161, 2
  call void @llvm.memset.p0.i32(ptr align 4 %166, i8 0, i32 %167, i1 false) #16
  br label %176

168:                                              ; preds = %168, %156
  %169 = phi i32 [ %174, %168 ], [ 0, %156 ]
  %170 = getelementptr [8 x i32], ptr %3, i32 0, i32 %169
  store i32 25, ptr %170, align 4
  %171 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 1, i32 %169
  store i32 1000, ptr %171, align 4
  %172 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %169, i32 2
  call void @hrtimer_init(ptr noundef %172, i32 noundef 1, i32 noundef 1) #16
  %173 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %169, i32 2, i32 2
  store ptr @stmmac_tx_timer, ptr %173, align 8
  %174 = add nuw i32 %169, 1
  %175 = icmp eq i32 %174, %159
  br i1 %175, label %163, label %168

176:                                              ; preds = %165, %163
  %177 = getelementptr i8, ptr %0, i32 11048
  %178 = load ptr, ptr %177, align 8
  call void @phylink_start(ptr noundef %178) #16
  %179 = load ptr, ptr %177, align 8
  %180 = call i32 @phylink_speed_up(ptr noundef %179) #16
  %181 = call fastcc i32 @stmmac_request_irq(ptr noundef %0)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %264

183:                                              ; preds = %176
  %184 = load ptr, ptr %4, align 64
  %185 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %184, i32 0, i32 29
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %184, i32 0, i32 30
  %188 = load i32, ptr %187, align 4
  %189 = call i32 @llvm.umax.i32(i32 %186, i32 %188) #16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %222, label %191

191:                                              ; preds = %183
  %192 = getelementptr i8, ptr %0, i32 15472
  %193 = getelementptr i8, ptr %0, i32 15468
  br label %194

194:                                              ; preds = %219, %191
  %195 = phi i32 [ 0, %191 ], [ %220, %219 ]
  %196 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %195
  %197 = load ptr, ptr %192, align 16
  %198 = icmp eq ptr %197, null
  br i1 %198, label %210, label %199

199:                                              ; preds = %194
  %200 = load ptr, ptr %193, align 4
  %201 = lshr i32 %195, 5
  %202 = getelementptr i32, ptr %200, i32 %201
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %195, 31
  %205 = shl nuw i32 1, %204
  %206 = and i32 %203, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %199
  %209 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %195, i32 4
  br label %217

210:                                              ; preds = %199, %194
  %211 = icmp ult i32 %195, %186
  br i1 %211, label %212, label %213

212:                                              ; preds = %210
  call void @napi_enable(ptr noundef %196) #16
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp ult i32 %195, %188
  br i1 %214, label %215, label %219

215:                                              ; preds = %213
  %216 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %195, i32 2
  br label %217

217:                                              ; preds = %215, %208
  %218 = phi ptr [ %216, %215 ], [ %209, %208 ]
  call void @napi_enable(ptr noundef %218) #16
  br label %219

219:                                              ; preds = %217, %213
  %220 = add nuw i32 %195, 1
  %221 = icmp eq i32 %220, %189
  br i1 %221, label %222, label %194

222:                                              ; preds = %219, %183
  %223 = getelementptr i8, ptr %0, i32 1572
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.net_device, ptr %224, i32 0, i32 88
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.net_device, ptr %224, i32 0, i32 87
  br label %230

230:                                              ; preds = %230, %228
  %231 = phi i32 [ 0, %228 ], [ %234, %230 ]
  %232 = load ptr, ptr %229, align 64
  %233 = getelementptr %struct.netdev_queue, ptr %232, i32 %231, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %233) #16
  %234 = add nuw i32 %231, 1
  %235 = load i32, ptr %225, align 4
  %236 = icmp ult i32 %234, %235
  br i1 %236, label %230, label %237

237:                                              ; preds = %230, %222
  %238 = load ptr, ptr %4, align 64
  %239 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %238, i32 0, i32 29
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %238, i32 0, i32 30
  %242 = load i32, ptr %241, align 4
  %243 = call i32 @llvm.umax.i32(i32 %240, i32 %242) #16
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %312, label %245

245:                                              ; preds = %237
  %246 = getelementptr i8, ptr %0, i32 1568
  br label %247

247:                                              ; preds = %261, %245
  %248 = phi i32 [ 0, %245 ], [ %262, %261 ]
  %249 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 26, i32 %248, i32 6
  %250 = call i32 @_raw_spin_lock_irqsave(ptr noundef %249) #16
  %251 = load ptr, ptr %20, align 4
  %252 = getelementptr inbounds %struct.mac_device_info, ptr %251, i32 0, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %261, label %255

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %253, i32 0, i32 11
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr %246, align 32
  call void %257(ptr noundef %260, i32 noundef %248, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %261

261:                                              ; preds = %259, %255, %247
  call void @_raw_spin_unlock_irqrestore(ptr noundef %249, i32 noundef %250) #16
  %262 = add nuw i32 %248, 1
  %263 = icmp eq i32 %262, %243
  br i1 %263, label %312, label %247

264:                                              ; preds = %176
  %265 = load ptr, ptr %177, align 8
  call void @phylink_stop(ptr noundef %265) #16
  %266 = load ptr, ptr %4, align 64
  %267 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %266, i32 0, i32 30
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %270, %264
  %271 = phi i32 [ %274, %270 ], [ 0, %264 ]
  %272 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %271, i32 2
  %273 = call i32 @hrtimer_cancel(ptr noundef %272) #16
  %274 = add nuw i32 %271, 1
  %275 = load ptr, ptr %4, align 64
  %276 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %275, i32 0, i32 30
  %277 = load i32, ptr %276, align 4
  %278 = icmp ult i32 %274, %277
  br i1 %278, label %270, label %279

279:                                              ; preds = %270, %264
  %280 = phi ptr [ %266, %264 ], [ %275, %270 ]
  %281 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %280, i32 0, i32 49
  %282 = load ptr, ptr %281, align 4
  call void @clk_disable(ptr noundef %282) #16
  call void @clk_unprepare(ptr noundef %282) #16
  br label %283

283:                                              ; preds = %279, %153, %147
  %284 = phi i32 [ %145, %147 ], [ %151, %153 ], [ %181, %279 ]
  %285 = load ptr, ptr %4, align 64
  %286 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %285, i32 0, i32 30
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %289, %283
  %290 = phi i32 [ %291, %289 ], [ 0, %283 ]
  call fastcc void @__free_dma_tx_desc_resources(ptr noundef %3, i32 noundef %290) #16
  %291 = add nuw i32 %290, 1
  %292 = icmp eq i32 %291, %287
  br i1 %292, label %293, label %289

293:                                              ; preds = %289
  %294 = load ptr, ptr %4, align 64
  br label %295

295:                                              ; preds = %293, %283
  %296 = phi ptr [ %294, %293 ], [ %285, %283 ]
  %297 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %296, i32 0, i32 29
  %298 = load i32, ptr %297, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %300, %295
  %301 = phi i32 [ %302, %300 ], [ 0, %295 ]
  call fastcc void @__free_dma_rx_desc_resources(ptr noundef %3, i32 noundef %301) #16
  %302 = add nuw i32 %301, 1
  %303 = icmp eq i32 %302, %298
  br i1 %303, label %304, label %300

304:                                              ; preds = %300, %295, %141
  %305 = phi i32 [ %139, %141 ], [ %284, %295 ], [ %284, %300 ]
  %306 = getelementptr i8, ptr %0, i32 11048
  %307 = load ptr, ptr %306, align 8
  call void @phylink_disconnect_phy(ptr noundef %307) #16
  br label %308

308:                                              ; preds = %304, %73
  %309 = phi i32 [ %74, %73 ], [ %305, %304 ]
  %310 = load ptr, ptr %8, align 8
  %311 = call i32 @__pm_runtime_idle(ptr noundef %310, i32 noundef 5) #16
  br label %312

312:                                              ; preds = %308, %261, %237, %18, %12
  %313 = phi i32 [ %309, %308 ], [ %10, %12 ], [ %10, %18 ], [ 0, %237 ], [ 0, %261 ]
  ret i32 %313
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_reinit_ringparam(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @stmmac_release(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr i8, ptr %0, i32 3712
  store i32 %1, ptr %11, align 64
  %12 = getelementptr i8, ptr %0, i32 4800
  store i32 %2, ptr %12, align 64
  %13 = load volatile i32, ptr %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @stmmac_open(ptr noundef %0)
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %17, %16 ], [ 0, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_fpe_handshake(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 1, !range !9
  %10 = icmp eq i8 %9, %3
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  br i1 %1, label %12, label %24

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stmmac_ops, ptr %15, i32 0, i32 49
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %23 = load ptr, ptr %22, align 32
  tail call void %19(ptr noundef %23, i32 noundef 0) #16
  br label %30

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %7, i32 0, i32 3
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %4, align 64
  %27 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %26, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %28, i32 0, i32 2
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %21, %17, %12
  %31 = load ptr, ptr %4, align 64
  %32 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %31, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %33, i32 0, i32 1
  store i8 %3, ptr %34, align 1
  br label %35

35:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_dvr_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 4
  %6 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %0, i32 noundef 14080, i32 noundef 8, i32 noundef 8) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %766, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 111, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr i8, ptr %6, i32 1408
  %11 = getelementptr i8, ptr %6, i32 1576
  store ptr %0, ptr %11, align 8
  %12 = getelementptr i8, ptr %6, i32 1572
  store ptr %6, ptr %12, align 4
  tail call void @stmmac_set_ethtool_ops(ptr noundef nonnull %6) #16
  %13 = load i32, ptr @pause, align 4
  %14 = getelementptr i8, ptr %6, i32 11016
  store i32 %13, ptr %14, align 8
  %15 = getelementptr i8, ptr %6, i32 12096
  store ptr %1, ptr %15, align 64
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %6, i32 1568
  store ptr %16, ptr %17, align 32
  %18 = load ptr, ptr %2, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 5
  store i32 %19, ptr %21, align 32
  %22 = load ptr, ptr %15, align 64
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 73
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %26, i32 0, i32 8
  store i8 %24, ptr %27, align 2
  %28 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 59
  store i32 %29, ptr %31, align 8
  %32 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %6, i32 12644
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %6, i32 12672
  store i32 %36, ptr %37, align 64
  %38 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %6, i32 13404
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %6, i32 13408
  store i32 %42, ptr %43, align 32
  %44 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 0
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %6, i32 13412
  store i32 %45, ptr %46, align 4
  %47 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %6, i32 13416
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %6, i32 13420
  store i32 %51, ptr %52, align 4
  %53 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %6, i32 13424
  store i32 %54, ptr %55, align 4
  %56 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %6, i32 13428
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %6, i32 13432
  store i32 %60, ptr %61, align 4
  %62 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %6, i32 13436
  store i32 %63, ptr %64, align 4
  %65 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 7, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %6, i32 13440
  store i32 %66, ptr %67, align 4
  %68 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 0
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %6, i32 13444
  store i32 %69, ptr %70, align 4
  %71 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %6, i32 13448
  store i32 %72, ptr %73, align 4
  %74 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %6, i32 13452
  store i32 %75, ptr %76, align 4
  %77 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %6, i32 13456
  store i32 %78, ptr %79, align 4
  %80 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %6, i32 13460
  store i32 %81, ptr %82, align 4
  %83 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %6, i32 13464
  store i32 %84, ptr %85, align 4
  %86 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %6, i32 13468
  store i32 %87, ptr %88, align 4
  %89 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 8, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %6, i32 13472
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr %struct.stmmac_resources, ptr %2, i32 0, i32 1, i32 4
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  %97 = or i32 %93, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %8
  %100 = load ptr, ptr %12, align 4
  tail call void @dev_addr_mod(ptr noundef %100, i32 noundef 0, ptr noundef %92, i32 noundef 6) #16
  br label %101

101:                                              ; preds = %99, %8
  %102 = load ptr, ptr %12, align 4
  %103 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %102, ptr %103, align 8
  %104 = load i32, ptr @watchdog, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107, !prof !14

106:                                              ; preds = %101
  store i32 5000, ptr @watchdog, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = load i32, ptr @buf_sz, align 4
  %109 = add i32 %108, -16369
  %110 = icmp ult i32 %109, -14833
  br i1 %110, label %111, label %112, !prof !14

111:                                              ; preds = %107
  store i32 1536, ptr @buf_sz, align 4
  br label %112

112:                                              ; preds = %111, %107
  %113 = load i32, ptr @flow_ctrl, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %117, label %115, !prof !14

115:                                              ; preds = %112
  %116 = icmp slt i32 %113, 0
  br i1 %116, label %117, label %119, !prof !11

117:                                              ; preds = %115, %112
  %118 = phi i32 [ 3, %112 ], [ 0, %115 ]
  store i32 %118, ptr @flow_ctrl, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = load i32, ptr @pause, align 4
  %121 = icmp ugt i32 %120, 65535
  br i1 %121, label %122, label %123, !prof !14

122:                                              ; preds = %119
  store i32 65535, ptr @pause, align 4
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i32, ptr @eee_timer, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1000, ptr @eee_timer, align 4
  br label %127

127:                                              ; preds = %126, %123
  %128 = tail call ptr @bitmap_zalloc(i32 noundef 8, i32 noundef 3264) #16
  %129 = getelementptr i8, ptr %6, i32 15468
  store ptr %128, ptr %129, align 4
  %130 = icmp eq ptr %128, null
  br i1 %130, label %766, label %131

131:                                              ; preds = %127
  %132 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.8) #16
  %133 = getelementptr i8, ptr %6, i32 14124
  store ptr %132, ptr %133, align 4
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.9) #17
  br label %766

137:                                              ; preds = %131
  %138 = getelementptr i8, ptr %6, i32 14128
  store i32 -32, ptr %138, align 16
  %139 = getelementptr i8, ptr %6, i32 14132
  store volatile ptr %139, ptr %139, align 4
  %140 = getelementptr i8, ptr %6, i32 14136
  store ptr %139, ptr %140, align 4
  %141 = getelementptr i8, ptr %6, i32 14140
  store ptr @stmmac_service_task, ptr %141, align 4
  %142 = getelementptr i8, ptr %6, i32 14152
  store i32 -32, ptr %142, align 8
  %143 = getelementptr i8, ptr %6, i32 14156
  store volatile ptr %143, ptr %143, align 4
  %144 = getelementptr i8, ptr %6, i32 14160
  store ptr %143, ptr %144, align 4
  %145 = getelementptr i8, ptr %6, i32 14164
  store ptr @stmmac_fpe_lp_task, ptr %145, align 4
  %146 = load i32, ptr @phyaddr, align 4
  %147 = icmp ult i32 %146, 32
  br i1 %147, label %148, label %151

148:                                              ; preds = %137
  %149 = load ptr, ptr %15, align 64
  %150 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %149, i32 0, i32 1
  store i32 %146, ptr %150, align 4
  br label %151

151:                                              ; preds = %148, %137
  %152 = load ptr, ptr %15, align 64
  %153 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %152, i32 0, i32 55
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156

156:                                              ; preds = %151
  %157 = tail call i32 @reset_control_assert(ptr noundef nonnull %154) #16
  %158 = load ptr, ptr %15, align 64
  %159 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %158, i32 0, i32 55
  %160 = load ptr, ptr %159, align 4
  %161 = tail call i32 @reset_control_deassert(ptr noundef %160) #16
  %162 = icmp eq i32 %157, -524
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load ptr, ptr %15, align 64
  %165 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %164, i32 0, i32 55
  %166 = load ptr, ptr %165, align 4
  %167 = tail call i32 @reset_control_reset(ptr noundef %166) #16
  br label %168

168:                                              ; preds = %163, %156, %151
  %169 = load ptr, ptr %15, align 64
  %170 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %169, i32 0, i32 56
  %171 = load ptr, ptr %170, align 4
  %172 = tail call i32 @reset_control_deassert(ptr noundef %171) #16
  %173 = icmp eq i32 %172, -524
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.10, ptr noundef nonnull inttoptr (i32 -524 to ptr)) #17
  br label %176

176:                                              ; preds = %174, %168
  %177 = load ptr, ptr %15, align 64
  %178 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %177, i32 0, i32 59
  %179 = load i8, ptr %178, align 4, !range !9
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, ptr @chain_mode, align 4
  br label %184

183:                                              ; preds = %176
  store i32 1, ptr @chain_mode, align 4
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 1, %183 ]
  %186 = getelementptr i8, ptr %6, i32 12704
  store i32 %185, ptr %186, align 32
  %187 = tail call i32 @stmmac_hwif_init(ptr noundef %10) #16
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %762

189:                                              ; preds = %184
  %190 = getelementptr i8, ptr %6, i32 1580
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.mac_device_info, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %193, i32 0, i32 18
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %195, %189
  %200 = getelementptr i8, ptr %6, i32 12628
  store i32 0, ptr %200, align 4
  br label %274

201:                                              ; preds = %195
  %202 = load ptr, ptr %17, align 32
  %203 = getelementptr i8, ptr %6, i32 12100
  %204 = tail call i32 %197(ptr noundef %202, ptr noundef %203) #16
  %205 = icmp eq i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = getelementptr i8, ptr %6, i32 12628
  store i32 %206, ptr %207, align 4
  br i1 %205, label %208, label %274

208:                                              ; preds = %201
  %209 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %209, ptr noundef nonnull @.str.58) #17
  %210 = getelementptr i8, ptr %6, i32 12204
  %211 = load i32, ptr %210, align 4
  %212 = load ptr, ptr %15, align 64
  %213 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %212, i32 0, i32 14
  store i32 %211, ptr %213, align 4
  %214 = getelementptr i8, ptr %6, i32 12128
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  %217 = load ptr, ptr %15, align 64
  br i1 %216, label %223, label %218

218:                                              ; preds = %208
  %219 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %217, i32 0, i32 81
  %220 = load i8, ptr %219, align 4, !range !9
  %221 = xor i8 %220, 1
  %222 = zext i8 %221 to i32
  br label %223

223:                                              ; preds = %218, %208
  %224 = phi i32 [ %222, %218 ], [ 0, %208 ]
  %225 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %217, i32 0, i32 18
  store i32 %224, ptr %225, align 4
  %226 = load ptr, ptr %15, align 64
  %227 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %226, i32 0, i32 18
  %228 = load i32, ptr %227, align 4
  %229 = load ptr, ptr %190, align 4
  %230 = getelementptr inbounds %struct.mac_device_info, ptr %229, i32 0, i32 16
  store i32 %228, ptr %230, align 4
  %231 = getelementptr i8, ptr %6, i32 12156
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %223
  %235 = shl i32 32, %232
  %236 = load ptr, ptr %190, align 4
  %237 = getelementptr inbounds %struct.mac_device_info, ptr %236, i32 0, i32 11
  store i32 %235, ptr %237, align 4
  %238 = load ptr, ptr %190, align 4
  %239 = getelementptr inbounds %struct.mac_device_info, ptr %238, i32 0, i32 11
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  %242 = tail call i32 @llvm.ctlz.i32(i32 %240, i1 false) #16, !range !13
  %243 = sub nsw i32 31, %242
  %244 = select i1 %241, i32 -1, i32 %243
  %245 = getelementptr inbounds %struct.mac_device_info, ptr %238, i32 0, i32 13
  store i32 %244, ptr %245, align 4
  br label %246

246:                                              ; preds = %234, %223
  %247 = load ptr, ptr %15, align 64
  %248 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %247, i32 0, i32 20
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = getelementptr i8, ptr %6, i32 12164
  %253 = load i32, ptr %252, align 4
  br label %254

254:                                              ; preds = %251, %246
  %255 = phi i32 [ %253, %251 ], [ 0, %246 ]
  %256 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %247, i32 0, i32 15
  store i32 %255, ptr %256, align 4
  %257 = getelementptr i8, ptr %6, i32 12168
  %258 = load i32, ptr %257, align 4
  %259 = load ptr, ptr %15, align 64
  %260 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %259, i32 0, i32 16
  store i32 %258, ptr %260, align 4
  %261 = getelementptr i8, ptr %6, i32 12176
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %254
  %265 = load ptr, ptr %15, align 64
  %266 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %265, i32 0, i32 16
  store i32 2, ptr %266, align 4
  br label %276

267:                                              ; preds = %254
  %268 = getelementptr i8, ptr %6, i32 12172
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %267
  %272 = load ptr, ptr %15, align 64
  %273 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %272, i32 0, i32 16
  store i32 1, ptr %273, align 4
  br label %276

274:                                              ; preds = %201, %199
  %275 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %275, ptr noundef nonnull @.str.59) #17
  br label %276

276:                                              ; preds = %274, %271, %267, %264
  %277 = load ptr, ptr %15, align 64
  %278 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %277, i32 0, i32 16
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %293, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %190, align 4
  %283 = getelementptr inbounds %struct.mac_device_info, ptr %282, i32 0, i32 14
  store i32 %279, ptr %283, align 4
  %284 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %284, ptr noundef nonnull @.str.60) #17
  %285 = getelementptr i8, ptr %6, i32 12632
  %286 = load i32, ptr %285, align 8
  %287 = icmp slt i32 %286, 64
  br i1 %287, label %288, label %293

288:                                              ; preds = %281
  %289 = load ptr, ptr %11, align 8
  %290 = load ptr, ptr %190, align 4
  %291 = getelementptr inbounds %struct.mac_device_info, ptr %290, i32 0, i32 14
  %292 = load i32, ptr %291, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %289, ptr noundef nonnull @.str.61, i32 noundef %292) #17
  br label %293

293:                                              ; preds = %288, %281, %276
  %294 = load ptr, ptr %15, align 64
  %295 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %294, i32 0, i32 15
  %296 = load i32, ptr %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %293
  %299 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %299, ptr noundef nonnull @.str.62) #17
  %300 = load ptr, ptr %15, align 64
  br label %301

301:                                              ; preds = %298, %293
  %302 = phi ptr [ %300, %298 ], [ %294, %293 ]
  %303 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %302, i32 0, i32 18
  %304 = load i32, ptr %303, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %301
  %307 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %307, ptr noundef nonnull @.str.63) #17
  %308 = load ptr, ptr %11, align 8
  tail call void @device_set_wakeup_capable(ptr noundef %308, i1 noundef zeroext true) #16
  br label %309

309:                                              ; preds = %306, %301
  %310 = getelementptr i8, ptr %6, i32 12160
  %311 = load i32, ptr %310, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %309
  %314 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %314, ptr noundef nonnull @.str.64) #17
  br label %315

315:                                              ; preds = %313, %309
  %316 = load ptr, ptr %15, align 64
  %317 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %316, i32 0, i32 65
  %318 = load i8, ptr %317, align 4, !range !9
  %319 = load ptr, ptr %190, align 4
  %320 = getelementptr inbounds %struct.mac_device_info, ptr %319, i32 0, i32 22
  store i8 %318, ptr %320, align 4
  %321 = load ptr, ptr %15, align 64
  %322 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %321, i32 0, i32 66
  %323 = load i8, ptr %322, align 1
  %324 = load ptr, ptr %190, align 4
  %325 = getelementptr inbounds %struct.mac_device_info, ptr %324, i32 0, i32 23
  store i8 %323, ptr %325, align 1
  %326 = getelementptr i8, ptr %6, i32 1584
  %327 = load ptr, ptr %326, align 16
  %328 = icmp eq ptr %327, null
  br i1 %328, label %332, label %329

329:                                              ; preds = %315
  %330 = tail call i32 %327(ptr noundef %10) #16
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %762

332:                                              ; preds = %329, %315
  %333 = getelementptr i8, ptr %6, i32 12632
  %334 = load i32, ptr %333, align 8
  %335 = icmp sgt i32 %334, 52
  %336 = load ptr, ptr %15, align 64
  br i1 %335, label %341, label %337

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %336, i32 0, i32 64
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %352, label %341

341:                                              ; preds = %337, %332
  %342 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %336, i32 0, i32 21
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %341
  %346 = getelementptr i8, ptr %6, i32 12852
  store i32 1, ptr %346, align 4
  %347 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %347, ptr noundef nonnull @.str.65) #17
  %348 = load i32, ptr %333, align 8
  br label %349

349:                                              ; preds = %345, %341
  %350 = phi i32 [ %348, %345 ], [ %334, %341 ]
  %351 = icmp slt i32 %350, 82
  br i1 %351, label %352, label %357

352:                                              ; preds = %349, %337
  %353 = load ptr, ptr %15, align 64
  %354 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %353, i32 0, i32 8
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %355, i32 0, i32 9
  store i8 0, ptr %356, align 1
  br label %357

357:                                              ; preds = %352, %349
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %5, i8 0, i32 6, i1 false) #16, !annotation !10
  %358 = load ptr, ptr %12, align 4
  %359 = getelementptr inbounds %struct.net_device, ptr %358, i32 0, i32 72
  %360 = load ptr, ptr %359, align 32
  %361 = load i32, ptr %360, align 4
  %362 = and i32 %361, 1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %357
  %365 = getelementptr i8, ptr %360, i32 4
  %366 = load i16, ptr %365, align 2
  %367 = zext i16 %366 to i32
  %368 = or i32 %361, %367
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %404

370:                                              ; preds = %364, %357
  %371 = load ptr, ptr %190, align 4
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %385, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.stmmac_ops, ptr %372, i32 0, i32 19
  %376 = load ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %385, label %378

378:                                              ; preds = %374
  call void %376(ptr noundef %371, ptr noundef nonnull %5, i32 noundef 0) #16
  %379 = load i32, ptr %5, align 4
  %380 = and i32 %379, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %393

382:                                              ; preds = %378
  %383 = getelementptr inbounds i8, ptr %5, i32 4
  %384 = load i16, ptr %383, align 4
  br label %385

385:                                              ; preds = %382, %374, %370
  %386 = phi i16 [ %384, %382 ], [ 0, %374 ], [ 0, %370 ]
  %387 = phi i32 [ %379, %382 ], [ 0, %374 ], [ 0, %370 ]
  %388 = zext i16 %386 to i32
  %389 = or i32 %387, %388
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %385
  %392 = load ptr, ptr %12, align 4
  call void @dev_addr_mod(ptr noundef %392, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 6) #16
  br label %399

393:                                              ; preds = %385, %378
  %394 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #16, !annotation !10
  call void @get_random_bytes(ptr noundef nonnull %4, i32 noundef 6) #16
  %395 = load i8, ptr %4, align 1
  %396 = and i8 %395, -4
  %397 = or i8 %396, 2
  store i8 %397, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %394, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 6) #16
  %398 = getelementptr inbounds %struct.net_device, ptr %394, i32 0, i32 50
  store i8 1, ptr %398, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #16
  br label %399

399:                                              ; preds = %393, %391
  %400 = load ptr, ptr %11, align 8
  %401 = load ptr, ptr %12, align 4
  %402 = getelementptr inbounds %struct.net_device, ptr %401, i32 0, i32 72
  %403 = load ptr, ptr %402, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %400, ptr noundef nonnull @.str.66, ptr noundef %403) #17
  br label %404

404:                                              ; preds = %399, %364
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #16
  %405 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  store ptr @stmmac_netdev_ops, ptr %405, align 8
  %406 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 24
  store i64 1099511627795, ptr %406, align 8
  %407 = load ptr, ptr %190, align 4
  %408 = getelementptr inbounds %struct.mac_device_info, ptr %407, i32 0, i32 5
  %409 = load ptr, ptr %408, align 4
  %410 = icmp eq ptr %409, null
  br i1 %410, label %420, label %411

411:                                              ; preds = %404
  %412 = load ptr, ptr %409, align 4
  %413 = icmp eq ptr %412, null
  br i1 %413, label %420, label %414

414:                                              ; preds = %411
  %415 = call i32 %412(ptr noundef %10) #16
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %414
  %418 = load i64, ptr %406, align 8
  %419 = or i64 %418, 562949953421312
  store i64 %419, ptr %406, align 8
  br label %420

420:                                              ; preds = %417, %414, %411, %404
  %421 = load ptr, ptr %15, align 64
  %422 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %421, i32 0, i32 60
  %423 = load i8, ptr %422, align 1, !range !9
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %439, label %425

425:                                              ; preds = %420
  %426 = load i32, ptr %310, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %439, label %428

428:                                              ; preds = %425
  %429 = load i64, ptr %406, align 8
  %430 = or i64 %429, 1114112
  store i64 %430, ptr %406, align 8
  %431 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %421, i32 0, i32 58
  %432 = load i32, ptr %431, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %428
  %435 = or i64 %429, 8591048704
  store i64 %435, ptr %406, align 8
  br label %436

436:                                              ; preds = %434, %428
  %437 = getelementptr i8, ptr %6, i32 1509
  store i8 1, ptr %437, align 1
  %438 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %438, ptr noundef nonnull @.str.11) #17
  br label %439

439:                                              ; preds = %436, %425, %420
  %440 = getelementptr i8, ptr %6, i32 12244
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %449, label %443

443:                                              ; preds = %439
  %444 = load i64, ptr %406, align 8
  %445 = or i64 %444, 16384
  store i64 %445, ptr %406, align 8
  %446 = getelementptr i8, ptr %6, i32 1516
  store i32 1, ptr %446, align 4
  %447 = getelementptr i8, ptr %6, i32 1512
  store i32 1, ptr %447, align 8
  %448 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %448, ptr noundef nonnull @.str.12) #17
  br label %449

449:                                              ; preds = %443, %439
  %450 = load ptr, ptr %15, align 64
  %451 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %450, i32 0, i32 28
  %452 = load i32, ptr %451, align 4
  %453 = icmp eq i32 %452, 0
  %454 = getelementptr i8, ptr %6, i32 12232
  br i1 %453, label %455, label %457

455:                                              ; preds = %449
  %456 = load i32, ptr %454, align 4
  br label %458

457:                                              ; preds = %449
  store i32 %452, ptr %454, align 4
  br label %458

458:                                              ; preds = %457, %455
  %459 = phi i32 [ %456, %455 ], [ %452, %457 ]
  %460 = getelementptr i8, ptr %6, i32 12232
  switch i32 %459, label %461 [
    i32 0, label %480
    i32 64, label %465
  ]

461:                                              ; preds = %458
  %462 = zext i32 %459 to i64
  %463 = shl nsw i64 -1, %462
  %464 = xor i64 %463, -1
  br label %465

465:                                              ; preds = %461, %458
  %466 = phi i64 [ %464, %461 ], [ -1, %458 ]
  %467 = call i32 @dma_set_mask(ptr noundef %0, i64 noundef %466) #16
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %473

469:                                              ; preds = %465
  %470 = call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef %466) #16
  %471 = load ptr, ptr %11, align 8
  %472 = load i32, ptr %460, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %471, ptr noundef nonnull @.str.13, i32 noundef %472) #17
  br label %480

473:                                              ; preds = %465
  %474 = call i32 @dma_set_mask(ptr noundef %0, i64 noundef 4294967295) #16
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %478, label %476

476:                                              ; preds = %473
  %477 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %477, ptr noundef nonnull @.str.14) #17
  br label %762

478:                                              ; preds = %473
  %479 = call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef 4294967295) #16
  store i32 32, ptr %460, align 4
  br label %480

480:                                              ; preds = %478, %469, %458
  %481 = load i64, ptr %406, align 8
  %482 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %483 = load i64, ptr %482, align 16
  %484 = or i64 %481, %483
  %485 = or i64 %484, 32
  store i64 %485, ptr %482, align 16
  %486 = load i32, ptr @watchdog, align 4
  %487 = call i32 @__msecs_to_jiffies(i32 noundef %486) #16
  %488 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 96
  store i32 %487, ptr %488, align 8
  %489 = load i32, ptr @debug, align 4
  %490 = icmp ugt i32 %489, 31
  br i1 %490, label %496, label %491

491:                                              ; preds = %480
  %492 = icmp eq i32 %489, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %491
  %494 = shl nsw i32 -1, %489
  %495 = xor i32 %494, -1
  br label %496

496:                                              ; preds = %493, %491, %480
  %497 = phi i32 [ %495, %493 ], [ 63, %480 ], [ 0, %491 ]
  %498 = getelementptr i8, ptr %6, i32 12636
  store i32 %497, ptr %498, align 4
  %499 = load ptr, ptr %15, align 64
  %500 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %499, i32 0, i32 29
  %501 = load i32, ptr %500, align 4
  %502 = getelementptr i8, ptr %6, i32 14404
  call void @netdev_rss_key_fill(ptr noundef %502, i32 noundef 40) #16
  br label %503

503:                                              ; preds = %503, %496
  %504 = phi i32 [ 0, %496 ], [ %507, %503 ]
  %505 = urem i32 %504, %501
  %506 = getelementptr %struct.stmmac_priv, ptr %10, i32 0, i32 99, i32 2, i32 %504
  store i32 %505, ptr %506, align 4
  %507 = add nuw nsw i32 %504, 1
  %508 = icmp eq i32 %507, 256
  br i1 %508, label %509, label %503

509:                                              ; preds = %503
  %510 = getelementptr i8, ptr %6, i32 12236
  %511 = load i32, ptr %510, align 4
  %512 = icmp eq i32 %511, 0
  %513 = load ptr, ptr %15, align 64
  br i1 %512, label %521, label %514

514:                                              ; preds = %509
  %515 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %513, i32 0, i32 61
  %516 = load i32, ptr %515, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %521, label %518

518:                                              ; preds = %514
  %519 = load i64, ptr %482, align 16
  %520 = or i64 %519, 549755813888
  store i64 %520, ptr %482, align 16
  br label %521

521:                                              ; preds = %518, %514, %509
  %522 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 30
  store i32 46, ptr %522, align 8
  %523 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %513, i32 0, i32 64
  %524 = load i32, ptr %523, align 4
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %534

526:                                              ; preds = %521
  %527 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %513, i32 0, i32 14
  %528 = load i32, ptr %527, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %526
  %531 = load i32, ptr %333, align 8
  %532 = icmp sgt i32 %531, 63
  %533 = select i1 %532, i32 9000, i32 3774
  br label %534

534:                                              ; preds = %530, %526, %521
  %535 = phi i32 [ 16368, %521 ], [ 9000, %526 ], [ %533, %530 ]
  %536 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 31
  store i32 %535, ptr %536, align 4
  %537 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %513, i32 0, i32 23
  %538 = load i32, ptr %537, align 4
  %539 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 31
  %540 = icmp ult i32 %538, %535
  %541 = icmp ult i32 %538, 46
  br i1 %540, label %542, label %544

542:                                              ; preds = %534
  br i1 %541, label %545, label %543

543:                                              ; preds = %542
  store i32 %538, ptr %539, align 4
  br label %547

544:                                              ; preds = %534
  br i1 %541, label %545, label %547

545:                                              ; preds = %544, %542
  %546 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %546, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.stmmac_dvr_probe, i32 noundef %538) #17
  br label %547

547:                                              ; preds = %545, %544, %543
  %548 = load i32, ptr @flow_ctrl, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %552, label %550

550:                                              ; preds = %547
  %551 = getelementptr i8, ptr %6, i32 11012
  store i32 3, ptr %551, align 4
  br label %552

552:                                              ; preds = %550, %547
  call fastcc void @stmmac_napi_add(ptr noundef %6)
  %553 = getelementptr i8, ptr %6, i32 1588
  call void @__mutex_init(ptr noundef %553, ptr noundef nonnull @.str.16, ptr noundef nonnull @stmmac_dvr_probe.__key) #16
  %554 = load ptr, ptr %15, align 64
  %555 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %554, i32 0, i32 12
  %556 = load i32, ptr %555, align 4
  %557 = icmp sgt i32 %556, -1
  br i1 %557, label %558, label %560

558:                                              ; preds = %552
  %559 = getelementptr i8, ptr %6, i32 12648
  store i32 %556, ptr %559, align 8
  br label %613

560:                                              ; preds = %552
  %561 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %554, i32 0, i32 47
  %562 = load ptr, ptr %561, align 4
  %563 = call i32 @clk_get_rate(ptr noundef %562) #16
  %564 = getelementptr i8, ptr %6, i32 12648
  %565 = load i32, ptr %564, align 8
  %566 = and i32 %565, 32
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %582

568:                                              ; preds = %560
  %569 = icmp ult i32 %563, 35000000
  br i1 %569, label %580, label %570

570:                                              ; preds = %568
  %571 = icmp ult i32 %563, 60000000
  br i1 %571, label %580, label %572

572:                                              ; preds = %570
  %573 = icmp ult i32 %563, 100000000
  br i1 %573, label %580, label %574

574:                                              ; preds = %572
  %575 = icmp ult i32 %563, 150000000
  br i1 %575, label %580, label %576

576:                                              ; preds = %574
  %577 = icmp ult i32 %563, 250000000
  br i1 %577, label %580, label %578

578:                                              ; preds = %576
  %579 = icmp ult i32 %563, 300000001
  br i1 %579, label %580, label %582

580:                                              ; preds = %578, %576, %574, %572, %570, %568
  %581 = phi i32 [ 2, %568 ], [ 3, %570 ], [ 0, %572 ], [ 1, %574 ], [ 4, %576 ], [ 5, %578 ]
  store i32 %581, ptr %564, align 8
  br label %582

582:                                              ; preds = %580, %578, %560
  %583 = load ptr, ptr %15, align 64
  %584 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %583, i32 0, i32 59
  %585 = load i8, ptr %584, align 4, !range !9
  %586 = icmp eq i8 %585, 0
  br i1 %586, label %596, label %587

587:                                              ; preds = %582
  %588 = icmp ugt i32 %563, 160000000
  br i1 %588, label %594, label %589

589:                                              ; preds = %587
  %590 = icmp ugt i32 %563, 80000000
  br i1 %590, label %594, label %591

591:                                              ; preds = %589
  %592 = icmp ugt i32 %563, 40000000
  %593 = zext i1 %592 to i32
  br label %594

594:                                              ; preds = %591, %589, %587
  %595 = phi i32 [ 3, %587 ], [ 2, %589 ], [ %593, %591 ]
  store i32 %595, ptr %564, align 8
  br label %596

596:                                              ; preds = %594, %582
  %597 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %583, i32 0, i32 64
  %598 = load i32, ptr %597, align 4
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %613, label %600

600:                                              ; preds = %596
  %601 = icmp ugt i32 %563, 400000000
  br i1 %601, label %611, label %602

602:                                              ; preds = %600
  %603 = icmp ugt i32 %563, 350000000
  br i1 %603, label %611, label %604

604:                                              ; preds = %602
  %605 = icmp ugt i32 %563, 300000000
  br i1 %605, label %611, label %606

606:                                              ; preds = %604
  %607 = icmp ugt i32 %563, 250000000
  br i1 %607, label %611, label %608

608:                                              ; preds = %606
  %609 = icmp ugt i32 %563, 150000000
  %610 = zext i1 %609 to i32
  br label %611

611:                                              ; preds = %608, %606, %604, %602, %600
  %612 = phi i32 [ 5, %600 ], [ 4, %602 ], [ 3, %604 ], [ 2, %606 ], [ %610, %608 ]
  store i32 %612, ptr %564, align 8
  br label %613

613:                                              ; preds = %611, %596, %558
  %614 = phi ptr [ %583, %611 ], [ %583, %596 ], [ %554, %558 ]
  %615 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %614, i32 0, i32 2
  %616 = load i32, ptr %615, align 4
  %617 = getelementptr i8, ptr %6, i32 12120
  %618 = load i32, ptr %617, align 4
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %629, label %620

620:                                              ; preds = %613
  %621 = add i32 %616, -9
  %622 = icmp ult i32 %621, 4
  br i1 %622, label %625, label %623

623:                                              ; preds = %620
  %624 = icmp eq i32 %616, 4
  br i1 %624, label %625, label %629

625:                                              ; preds = %623, %620
  %626 = phi i32 [ 1, %620 ], [ 2, %623 ]
  %627 = load ptr, ptr %190, align 4
  %628 = getelementptr inbounds %struct.mac_device_info, ptr %627, i32 0, i32 15
  store i32 %626, ptr %628, align 4
  br label %629

629:                                              ; preds = %625, %623, %613
  %630 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %630) #16, !srcloc !16
  %631 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %630, ptr %630, i32 1, ptr elementtype(i32) %630) #16, !srcloc !27
  %632 = call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #16
  %633 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %634 = load i16, ptr %633, align 8
  %635 = and i16 %634, 7
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %638, label %637

637:                                              ; preds = %629
  call void @pm_runtime_enable(ptr noundef %0) #16
  br label %638

638:                                              ; preds = %637, %629
  %639 = load ptr, ptr %190, align 4
  %640 = getelementptr inbounds %struct.mac_device_info, ptr %639, i32 0, i32 15
  %641 = load i32, ptr %640, align 4
  switch i32 %641, label %642 [
    i32 4, label %649
    i32 8, label %649
  ]

642:                                              ; preds = %638
  %643 = call i32 @stmmac_mdio_register(ptr noundef %6) #16
  %644 = icmp slt i32 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %642
  %646 = load ptr, ptr %11, align 8
  %647 = load ptr, ptr %15, align 64
  %648 = load i32, ptr %647, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %646, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.stmmac_dvr_probe, i32 noundef %648) #17
  br label %760

649:                                              ; preds = %642, %638, %638
  %650 = load ptr, ptr %15, align 64
  %651 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %650, i32 0, i32 38
  %652 = load ptr, ptr %651, align 4
  %653 = icmp eq ptr %652, null
  br i1 %653, label %658, label %654

654:                                              ; preds = %649
  %655 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %650, i32 0, i32 46
  %656 = load ptr, ptr %655, align 4
  call void %652(ptr noundef %6, ptr noundef %656) #16
  %657 = load ptr, ptr %15, align 64
  br label %658

658:                                              ; preds = %654, %649
  %659 = phi ptr [ %657, %654 ], [ %650, %649 ]
  %660 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %659, i32 0, i32 4
  %661 = load ptr, ptr %660, align 4
  %662 = icmp eq ptr %661, null
  br i1 %662, label %676, label %663

663:                                              ; preds = %658
  %664 = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %661, i32 0, i32 1
  %665 = load i32, ptr %664, align 4
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %676, label %667

667:                                              ; preds = %663
  %668 = getelementptr i8, ptr %6, i32 11020
  %669 = load ptr, ptr %668, align 4
  %670 = call i32 @stmmac_xpcs_setup(ptr noundef %669) #16
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %753

672:                                              ; preds = %667
  %673 = load ptr, ptr %15, align 64
  %674 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %673, i32 0, i32 4
  %675 = load ptr, ptr %674, align 4
  br label %676

676:                                              ; preds = %672, %663, %658
  %677 = phi ptr [ %675, %672 ], [ %661, %663 ], [ null, %658 ]
  %678 = phi ptr [ %673, %672 ], [ %659, %663 ], [ %659, %658 ]
  %679 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %678, i32 0, i32 4
  %680 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %678, i32 0, i32 6
  %681 = load ptr, ptr %680, align 4
  %682 = icmp eq ptr %681, null
  %683 = getelementptr inbounds %struct.device_node, ptr %681, i32 0, i32 3
  %684 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %678, i32 0, i32 3
  %685 = load i32, ptr %684, align 4
  %686 = load ptr, ptr %12, align 4
  %687 = getelementptr inbounds %struct.net_device, ptr %686, i32 0, i32 111
  %688 = getelementptr i8, ptr %6, i32 11024
  store ptr %687, ptr %688, align 16
  %689 = getelementptr i8, ptr %6, i32 11028
  store i32 0, ptr %689, align 4
  %690 = getelementptr i8, ptr %6, i32 11033
  store i8 1, ptr %690, align 1
  %691 = load ptr, ptr %679, align 4
  %692 = icmp eq ptr %691, null
  br i1 %692, label %699, label %693

693:                                              ; preds = %676
  %694 = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %677, i32 0, i32 2
  %695 = load i32, ptr %694, align 4
  %696 = icmp ne i32 %695, 0
  %697 = getelementptr i8, ptr %6, i32 11035
  %698 = zext i1 %696 to i8
  store i8 %698, ptr %697, align 1
  br label %699

699:                                              ; preds = %693, %676
  br i1 %682, label %700, label %703

700:                                              ; preds = %699
  %701 = load ptr, ptr %11, align 8
  %702 = call ptr @dev_fwnode(ptr noundef %701) #16
  br label %703

703:                                              ; preds = %700, %699
  %704 = phi ptr [ %683, %699 ], [ %702, %700 ]
  %705 = call ptr @phylink_create(ptr noundef %688, ptr noundef %704, i32 noundef %685, ptr noundef nonnull @stmmac_phylink_mac_ops) #16
  %706 = icmp ugt ptr %705, inttoptr (i32 -4096 to ptr)
  br i1 %706, label %718, label %707

707:                                              ; preds = %703
  %708 = load ptr, ptr %190, align 4
  %709 = getelementptr inbounds %struct.mac_device_info, ptr %708, i32 0, i32 7
  %710 = load ptr, ptr %709, align 4
  %711 = icmp eq ptr %710, null
  br i1 %711, label %714, label %712

712:                                              ; preds = %707
  %713 = getelementptr inbounds %struct.dw_xpcs, ptr %710, i32 0, i32 2
  call void @phylink_set_pcs(ptr noundef %705, ptr noundef %713) #16
  br label %714

714:                                              ; preds = %712, %707
  %715 = getelementptr i8, ptr %6, i32 11048
  store ptr %705, ptr %715, align 8
  %716 = call i32 @register_netdev(ptr noundef %6) #16
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %722, label %720

718:                                              ; preds = %703
  %719 = ptrtoint ptr %705 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef %719) #17
  br label %753

720:                                              ; preds = %714
  %721 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %721, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.stmmac_dvr_probe, i32 noundef %716) #17
  br label %750

722:                                              ; preds = %714
  %723 = load ptr, ptr %15, align 64
  %724 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %723, i32 0, i32 36
  %725 = load ptr, ptr %724, align 4
  %726 = icmp eq ptr %725, null
  br i1 %726, label %732, label %727

727:                                              ; preds = %722
  %728 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %723, i32 0, i32 46
  %729 = load ptr, ptr %728, align 4
  %730 = call i32 %725(ptr noundef %6, ptr noundef %729) #16
  %731 = icmp slt i32 %730, 0
  br i1 %731, label %749, label %732

732:                                              ; preds = %727, %722
  %733 = phi i32 [ %730, %727 ], [ 0, %722 ]
  call void @rtnl_lock() #16
  %734 = load ptr, ptr @stmmac_fs_dir, align 4
  %735 = call ptr @debugfs_create_dir(ptr noundef %6, ptr noundef %734) #16
  %736 = getelementptr i8, ptr %6, i32 14116
  store ptr %735, ptr %736, align 4
  %737 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 292, ptr noundef %735, ptr noundef %6, ptr noundef nonnull @stmmac_rings_status_fops) #16
  %738 = load ptr, ptr %736, align 4
  %739 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.80, i16 noundef zeroext 292, ptr noundef %738, ptr noundef %6, ptr noundef nonnull @stmmac_dma_cap_fops) #16
  call void @rtnl_unlock() #16
  %740 = load ptr, ptr %15, align 64
  %741 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %740, i32 0, i32 45
  %742 = load ptr, ptr %741, align 4
  %743 = icmp eq ptr %742, null
  br i1 %743, label %747, label %744

744:                                              ; preds = %732
  %745 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %740, i32 0, i32 46
  %746 = load ptr, ptr %745, align 4
  call void %742(ptr noundef %746) #16
  br label %747

747:                                              ; preds = %744, %732
  %748 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #16
  br label %766

749:                                              ; preds = %727
  call void @unregister_netdev(ptr noundef %6) #16
  br label %750

750:                                              ; preds = %749, %720
  %751 = phi i32 [ %716, %720 ], [ %730, %749 ]
  %752 = load ptr, ptr %715, align 8
  call void @phylink_destroy(ptr noundef %752) #16
  br label %753

753:                                              ; preds = %750, %718, %667
  %754 = phi i32 [ %670, %667 ], [ %719, %718 ], [ %751, %750 ]
  %755 = load ptr, ptr %190, align 4
  %756 = getelementptr inbounds %struct.mac_device_info, ptr %755, i32 0, i32 15
  %757 = load i32, ptr %756, align 4
  switch i32 %757, label %758 [
    i32 4, label %760
    i32 8, label %760
  ]

758:                                              ; preds = %753
  %759 = call i32 @stmmac_mdio_unregister(ptr noundef %6) #16
  br label %760

760:                                              ; preds = %758, %753, %753, %645
  %761 = phi i32 [ %643, %645 ], [ %754, %758 ], [ %754, %753 ], [ %754, %753 ]
  call fastcc void @stmmac_napi_del(ptr noundef %6)
  br label %762

762:                                              ; preds = %760, %476, %329, %184
  %763 = phi i32 [ %474, %476 ], [ %761, %760 ], [ %187, %184 ], [ %330, %329 ]
  %764 = load ptr, ptr %133, align 4
  call void @destroy_workqueue(ptr noundef %764) #16
  %765 = load ptr, ptr %129, align 4
  call void @bitmap_free(ptr noundef %765) #16
  br label %766

766:                                              ; preds = %762, %747, %135, %127, %3
  %767 = phi i32 [ %763, %762 ], [ %733, %747 ], [ -12, %135 ], [ -12, %3 ], [ -12, %127 ]
  ret i32 %767
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_ethtool_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_service_task(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -12556
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.54) #17
  tail call void @rtnl_lock() #16
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 87
  %14 = load ptr, ptr %13, align 64
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 11
  %17 = load volatile i32, ptr %16, align 8
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  store volatile i32 %15, ptr %16, align 8
  br label %20

20:                                               ; preds = %19, %9
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %2) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %23, %20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  %24 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %2) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %23

26:                                               ; preds = %23, %20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %2) #16
  %27 = load ptr, ptr %10, align 4
  tail call void @dev_close(ptr noundef %27) #16
  %28 = load ptr, ptr %10, align 4
  %29 = tail call i32 @dev_open(ptr noundef %28, ptr noundef null) #16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %2) #16
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %2) #16
  tail call void @rtnl_unlock() #16
  br label %30

30:                                               ; preds = %26, %5, %1
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_fpe_lp_task(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2056
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %5, i32 0, i32 1
  %9 = getelementptr i8, ptr %0, i32 -12580
  %10 = getelementptr i8, ptr %0, i32 -12572
  %11 = getelementptr i8, ptr %0, i32 -12584
  br label %12

12:                                               ; preds = %63, %1
  %13 = phi i32 [ 19, %1 ], [ %64, %63 ]
  %14 = load i32, ptr %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %12
  %17 = load i8, ptr %8, align 1, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %66, label %19

19:                                               ; preds = %16
  %20 = icmp eq i32 %14, 2
  br i1 %20, label %21, label %44

21:                                               ; preds = %19
  %22 = load i32, ptr %7, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load ptr, ptr %10, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stmmac_ops, ptr %26, i32 0, i32 48
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %11, align 32
  %34 = load ptr, ptr %2, align 64
  %35 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %34, i32 0, i32 30
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %34, i32 0, i32 29
  %38 = load i32, ptr %37, align 4
  %39 = load i8, ptr %5, align 1, !range !9
  %40 = icmp ne i8 %39, 0
  tail call void %30(ptr noundef %33, i32 noundef %36, i32 noundef %38, i1 noundef zeroext %40) #16
  br label %41

41:                                               ; preds = %32, %28, %24
  %42 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %42, ptr noundef nonnull @.str.55) #17
  store i32 3, ptr %6, align 4
  store i32 3, ptr %7, align 4
  %43 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %43, ptr noundef nonnull @.str.56) #17
  br label %66

44:                                               ; preds = %19
  %45 = add i32 %14, -1
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32, ptr %7, align 4
  br label %49

49:                                               ; preds = %47, %21
  %50 = phi i32 [ %48, %47 ], [ %22, %21 ]
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %53, ptr noundef nonnull @.str.57, i32 noundef %14, i32 noundef %50) #17
  %54 = load ptr, ptr %10, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.stmmac_ops, ptr %55, i32 0, i32 49
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %11, align 32
  tail call void %59(ptr noundef %62, i32 noundef 0) #16
  br label %63

63:                                               ; preds = %61, %57, %52, %49, %44
  tail call void @msleep(i32 noundef 500) #16
  %64 = add nsw i32 %13, -1
  %65 = icmp eq i32 %13, 0
  br i1 %65, label %66, label %12

66:                                               ; preds = %63, %41, %16, %12
  %67 = getelementptr i8, ptr %0, i32 -8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %67) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_mdio_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_xpcs_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_mdio_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_dvr_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1572
  %5 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.stmmac_dvr_remove) #17
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #16
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #16
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #16, !srcloc !25
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr i8, ptr %3, i32 12096
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 29
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 30
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %3, i32 1580
  %22 = getelementptr i8, ptr %3, i32 1568
  br label %28

23:                                               ; preds = %40, %12
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %3, i32 1580
  %27 = getelementptr i8, ptr %3, i32 1568
  br label %43

28:                                               ; preds = %40, %20
  %29 = phi i32 [ 0, %20 ], [ %41, %40 ]
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %32, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %22, align 32
  tail call void %36(ptr noundef %39, i32 noundef %29) #16
  br label %40

40:                                               ; preds = %38, %34, %28
  %41 = add nuw i32 %29, 1
  %42 = icmp eq i32 %41, %16
  br i1 %42, label %23, label %28

43:                                               ; preds = %55, %25
  %44 = phi i32 [ 0, %25 ], [ %56, %55 ]
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr inbounds %struct.mac_device_info, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %47, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %27, align 32
  tail call void %51(ptr noundef %54, i32 noundef %44) #16
  br label %55

55:                                               ; preds = %53, %49, %43
  %56 = add nuw i32 %44, 1
  %57 = icmp eq i32 %56, %18
  br i1 %57, label %58, label %43

58:                                               ; preds = %55, %23
  %59 = getelementptr i8, ptr %3, i32 1580
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.stmmac_ops, ptr %61, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %3, i32 1568
  %69 = load ptr, ptr %68, align 32
  tail call void %65(ptr noundef %69, i1 noundef zeroext false) #16
  br label %70

70:                                               ; preds = %67, %63, %58
  tail call void @netif_carrier_off(ptr noundef %3) #16
  tail call void @unregister_netdev(ptr noundef %3) #16
  %71 = load ptr, ptr %13, align 64
  %72 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %71, i32 0, i32 37
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %71, i32 0, i32 46
  %77 = load ptr, ptr %76, align 4
  tail call void %73(ptr noundef %3, ptr noundef %77) #16
  br label %78

78:                                               ; preds = %75, %70
  %79 = getelementptr i8, ptr %3, i32 14116
  %80 = load ptr, ptr %79, align 4
  tail call void @debugfs_remove(ptr noundef %80) #16
  %81 = getelementptr i8, ptr %3, i32 11048
  %82 = load ptr, ptr %81, align 8
  tail call void @phylink_destroy(ptr noundef %82) #16
  %83 = load ptr, ptr %13, align 64
  %84 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %83, i32 0, i32 55
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = tail call i32 @reset_control_assert(ptr noundef nonnull %85) #16
  %89 = load ptr, ptr %13, align 64
  br label %90

90:                                               ; preds = %87, %78
  %91 = phi ptr [ %89, %87 ], [ %83, %78 ]
  %92 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %91, i32 0, i32 56
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @reset_control_assert(ptr noundef %93) #16
  %95 = load ptr, ptr %59, align 4
  %96 = getelementptr inbounds %struct.mac_device_info, ptr %95, i32 0, i32 15
  %97 = load i32, ptr %96, align 4
  switch i32 %97, label %98 [
    i32 4, label %100
    i32 8, label %100
  ]

98:                                               ; preds = %90
  %99 = tail call i32 @stmmac_mdio_unregister(ptr noundef %3) #16
  br label %100

100:                                              ; preds = %98, %90, %90
  %101 = getelementptr i8, ptr %3, i32 14124
  %102 = load ptr, ptr %101, align 4
  tail call void @destroy_workqueue(ptr noundef %102) #16
  %103 = getelementptr i8, ptr %3, i32 15468
  %104 = load ptr, ptr %103, align 4
  tail call void @bitmap_free(ptr noundef %104) #16
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = icmp eq ptr %3, null
  br i1 %5, label %208, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %208, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %3, i32 1588
  tail call void @mutex_lock(ptr noundef %12) #16
  tail call void @netif_device_detach(ptr noundef nonnull %3) #16
  tail call fastcc void @stmmac_disable_all_queues(ptr noundef %4)
  %13 = getelementptr i8, ptr %3, i32 12096
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 30
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %11
  %19 = phi i32 [ %22, %18 ], [ 0, %11 ]
  %20 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %19, i32 2
  %21 = tail call i32 @hrtimer_cancel(ptr noundef %20) #16
  %22 = add nuw i32 %19, 1
  %23 = load ptr, ptr %13, align 64
  %24 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %18, label %27

27:                                               ; preds = %18, %11
  %28 = phi ptr [ %14, %11 ], [ %23, %18 ]
  %29 = getelementptr i8, ptr %3, i32 12676
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %3, i32 1508
  store i8 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %3, i32 12652
  %35 = tail call i32 @del_timer_sync(ptr noundef %34) #16
  %36 = load ptr, ptr %13, align 64
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi ptr [ %36, %32 ], [ %28, %27 ]
  %39 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %38, i32 0, i32 29
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %38, i32 0, i32 30
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = getelementptr i8, ptr %3, i32 1580
  %46 = getelementptr i8, ptr %3, i32 1568
  br label %52

47:                                               ; preds = %64, %37
  %48 = icmp eq i32 %42, 0
  br i1 %48, label %82, label %49

49:                                               ; preds = %47
  %50 = getelementptr i8, ptr %3, i32 1580
  %51 = getelementptr i8, ptr %3, i32 1568
  br label %67

52:                                               ; preds = %64, %44
  %53 = phi i32 [ 0, %44 ], [ %65, %64 ]
  %54 = load ptr, ptr %45, align 4
  %55 = getelementptr inbounds %struct.mac_device_info, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %56, i32 0, i32 16
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %46, align 32
  tail call void %60(ptr noundef %63, i32 noundef %53) #16
  br label %64

64:                                               ; preds = %62, %58, %52
  %65 = add nuw i32 %53, 1
  %66 = icmp eq i32 %65, %40
  br i1 %66, label %47, label %52

67:                                               ; preds = %79, %49
  %68 = phi i32 [ 0, %49 ], [ %80, %79 ]
  %69 = load ptr, ptr %50, align 4
  %70 = getelementptr inbounds %struct.mac_device_info, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %71, i32 0, i32 14
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %51, align 32
  tail call void %75(ptr noundef %78, i32 noundef %68) #16
  br label %79

79:                                               ; preds = %77, %73, %67
  %80 = add nuw i32 %68, 1
  %81 = icmp eq i32 %80, %42
  br i1 %81, label %82, label %67

82:                                               ; preds = %79, %47
  %83 = load ptr, ptr %13, align 64
  %84 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %83, i32 0, i32 37
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %83, i32 0, i32 46
  %89 = load ptr, ptr %88, align 4
  tail call void %85(ptr noundef nonnull %3, ptr noundef %89) #16
  br label %90

90:                                               ; preds = %87, %82
  %91 = getelementptr i8, ptr %3, i32 1576
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 11, i32 1
  %94 = load i16, ptr %93, align 4
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %120, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 11, i32 6
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %120, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %13, align 64
  %103 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %102, i32 0, i32 18
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %101
  %107 = getelementptr i8, ptr %3, i32 1580
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.stmmac_ops, ptr %109, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %3, i32 12640
  %117 = load i32, ptr %116, align 32
  tail call void %113(ptr noundef %108, i32 noundef %117) #16
  br label %118

118:                                              ; preds = %115, %111, %106
  %119 = getelementptr i8, ptr %3, i32 12856
  store i32 1, ptr %119, align 8
  br label %136

120:                                              ; preds = %101, %97, %90
  %121 = getelementptr i8, ptr %3, i32 1580
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.stmmac_ops, ptr %123, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %3, i32 1568
  %131 = load ptr, ptr %130, align 32
  tail call void %127(ptr noundef %131, i1 noundef zeroext false) #16
  %132 = load ptr, ptr %91, align 8
  br label %133

133:                                              ; preds = %129, %125, %120
  %134 = phi ptr [ %132, %129 ], [ %92, %125 ], [ %92, %120 ]
  %135 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %134) #16
  br label %136

136:                                              ; preds = %133, %118
  tail call void @mutex_unlock(ptr noundef %12) #16
  tail call void @rtnl_lock() #16
  %137 = load ptr, ptr %91, align 8
  %138 = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 11, i32 1
  %139 = load i16, ptr %138, align 4
  %140 = and i16 %139, 1
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 11, i32 6
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %13, align 64
  %148 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %147, i32 0, i32 18
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  %151 = getelementptr i8, ptr %3, i32 11048
  %152 = load ptr, ptr %151, align 8
  br i1 %150, label %154, label %153

153:                                              ; preds = %146
  tail call void @phylink_suspend(ptr noundef %152, i1 noundef zeroext true) #16
  br label %159

154:                                              ; preds = %146
  %155 = tail call i32 @phylink_speed_down(ptr noundef %152, i1 noundef zeroext false) #16
  br label %156

156:                                              ; preds = %154, %142, %136
  %157 = getelementptr i8, ptr %3, i32 11048
  %158 = load ptr, ptr %157, align 8
  tail call void @phylink_suspend(ptr noundef %158, i1 noundef zeroext false) #16
  br label %159

159:                                              ; preds = %156, %153
  tail call void @rtnl_unlock() #16
  %160 = getelementptr i8, ptr %3, i32 12276
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %206, label %163

163:                                              ; preds = %159
  %164 = getelementptr i8, ptr %3, i32 1580
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %180, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.stmmac_ops, ptr %166, i32 0, i32 48
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = getelementptr i8, ptr %3, i32 1568
  %174 = load ptr, ptr %173, align 32
  %175 = load ptr, ptr %13, align 64
  %176 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %175, i32 0, i32 30
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %175, i32 0, i32 29
  %179 = load i32, ptr %178, align 4
  tail call void %170(ptr noundef %174, i32 noundef %177, i32 noundef %179, i1 noundef zeroext false) #16
  br label %180

180:                                              ; preds = %172, %168, %163
  %181 = load ptr, ptr %13, align 64
  %182 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %181, i32 0, i32 10
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %183, i32 0, i32 1
  %185 = load i8, ptr %184, align 1, !range !9
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %197, label %187

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %183, i32 0, i32 3
  store i32 0, ptr %188, align 4
  %189 = load ptr, ptr %13, align 64
  %190 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %189, i32 0, i32 10
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %191, i32 0, i32 2
  store i32 0, ptr %192, align 4
  %193 = load ptr, ptr %13, align 64
  %194 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %193, i32 0, i32 10
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %195, i32 0, i32 1
  store i8 0, ptr %196, align 1
  br label %197

197:                                              ; preds = %187, %180
  %198 = getelementptr i8, ptr %3, i32 14144
  tail call void @_set_bit(i32 noundef 0, ptr noundef %198) #16
  %199 = getelementptr i8, ptr %3, i32 14148
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  tail call void @destroy_workqueue(ptr noundef nonnull %200) #16
  br label %203

203:                                              ; preds = %202, %197
  %204 = getelementptr i8, ptr %3, i32 1572
  %205 = load ptr, ptr %204, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %205, ptr noundef nonnull @.str.134) #17
  br label %206

206:                                              ; preds = %203, %159
  %207 = getelementptr i8, ptr %3, i32 11008
  store i32 -1, ptr %207, align 64
  br label %208

208:                                              ; preds = %206, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_speed_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %239, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 1576
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %3, i32 12096
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 18
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %3, i32 1588
  tail call void @mutex_lock(ptr noundef %27) #16
  %28 = getelementptr i8, ptr %3, i32 1580
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.stmmac_ops, ptr %30, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef %29, i32 noundef 0) #16
  br label %37

37:                                               ; preds = %36, %32, %26
  tail call void @mutex_unlock(ptr noundef %27) #16
  %38 = getelementptr i8, ptr %3, i32 12856
  store i32 0, ptr %38, align 8
  br label %46

39:                                               ; preds = %20, %16, %9
  %40 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %11) #16
  %41 = getelementptr i8, ptr %3, i32 11020
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @stmmac_mdio_reset(ptr noundef nonnull %42) #16
  br label %46

46:                                               ; preds = %44, %39, %37
  %47 = getelementptr i8, ptr %3, i32 12096
  %48 = load ptr, ptr %47, align 64
  %49 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %48, i32 0, i32 36
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %48, i32 0, i32 46
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %50(ptr noundef %3, ptr noundef %54) #16
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %239, label %57

57:                                               ; preds = %52, %46
  tail call void @rtnl_lock() #16
  %58 = load ptr, ptr %10, align 8
  %59 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 11, i32 1
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 11, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %47, align 64
  %69 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %68, i32 0, i32 18
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %3, i32 11048
  %74 = load ptr, ptr %73, align 8
  tail call void @phylink_resume(ptr noundef %74) #16
  br label %90

75:                                               ; preds = %67, %63, %57
  %76 = getelementptr i8, ptr %3, i32 11048
  %77 = load ptr, ptr %76, align 8
  tail call void @phylink_resume(ptr noundef %77) #16
  %78 = load ptr, ptr %10, align 8
  %79 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 11, i32 1
  %80 = load i16, ptr %79, align 4
  %81 = and i16 %80, 1
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 11, i32 6
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %76, align 8
  %89 = tail call i32 @phylink_speed_up(ptr noundef %88) #16
  br label %90

90:                                               ; preds = %87, %83, %75, %72
  tail call void @rtnl_unlock() #16
  tail call void @rtnl_lock() #16
  %91 = getelementptr i8, ptr %3, i32 1588
  tail call void @mutex_lock(ptr noundef %91) #16
  %92 = load ptr, ptr %47, align 64
  %93 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %92, i32 0, i32 29
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %92, i32 0, i32 30
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %94, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %102, %90
  %99 = icmp eq i32 %96, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %98
  %101 = getelementptr i8, ptr %3, i32 1572
  br label %108

102:                                              ; preds = %102, %90
  %103 = phi i32 [ %106, %102 ], [ 0, %90 ]
  %104 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 20, i32 %103, i32 11
  store i32 0, ptr %104, align 4
  %105 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 20, i32 %103, i32 12
  store i32 0, ptr %105, align 8
  %106 = add nuw i32 %103, 1
  %107 = icmp eq i32 %106, %94
  br i1 %107, label %98, label %102

108:                                              ; preds = %108, %100
  %109 = phi i32 [ 0, %100 ], [ %118, %108 ]
  %110 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %109, i32 12
  store i32 0, ptr %110, align 4
  %111 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %109, i32 13
  store i32 0, ptr %111, align 32
  %112 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %109, i32 16
  store i32 0, ptr %112, align 4
  %113 = load ptr, ptr %101, align 4
  %114 = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 87
  %115 = load ptr, ptr %114, align 64
  %116 = getelementptr %struct.netdev_queue, ptr %115, i32 %109, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %116) #16
  %117 = getelementptr %struct.netdev_queue, ptr %115, i32 %109, i32 14
  tail call void @dql_reset(ptr noundef %117) #16
  %118 = add nuw i32 %109, 1
  %119 = icmp eq i32 %118, %96
  br i1 %119, label %120, label %108

120:                                              ; preds = %108
  %121 = load ptr, ptr %47, align 64
  br label %122

122:                                              ; preds = %120, %98
  %123 = phi ptr [ %121, %120 ], [ %92, %98 ]
  %124 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %123, i32 0, i32 30
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %127, %122
  %128 = phi i32 [ %129, %127 ], [ 0, %122 ]
  tail call fastcc void @dma_free_tx_skbufs(ptr noundef %4, i32 noundef %128) #16
  %129 = add nuw i32 %128, 1
  %130 = icmp eq i32 %129, %125
  br i1 %130, label %131, label %127

131:                                              ; preds = %127, %122
  tail call fastcc void @stmmac_clear_descriptors(ptr noundef %4)
  %132 = tail call fastcc i32 @stmmac_hw_setup(ptr noundef %3, i1 noundef zeroext false)
  %133 = load ptr, ptr %47, align 64
  %134 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %133, i32 0, i32 30
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %133, i32 0, i32 29
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %135, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %144, %131
  %140 = icmp eq i32 %137, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %139
  %142 = getelementptr i8, ptr %3, i32 1472
  %143 = shl nuw i32 %137, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %142, i8 0, i32 %143, i1 false) #16
  br label %152

144:                                              ; preds = %144, %131
  %145 = phi i32 [ %150, %144 ], [ 0, %131 ]
  %146 = getelementptr [8 x i32], ptr %4, i32 0, i32 %145
  store i32 25, ptr %146, align 4
  %147 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 1, i32 %145
  store i32 1000, ptr %147, align 4
  %148 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %145, i32 2
  tail call void @hrtimer_init(ptr noundef %148, i32 noundef 1, i32 noundef 1) #16
  %149 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %145, i32 2, i32 2
  store ptr @stmmac_tx_timer, ptr %149, align 8
  %150 = add nuw i32 %145, 1
  %151 = icmp eq i32 %150, %135
  br i1 %151, label %139, label %144

152:                                              ; preds = %141, %139
  %153 = getelementptr i8, ptr %3, i32 1580
  %154 = load ptr, ptr %153, align 4
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %172, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.stmmac_ops, ptr %155, i32 0, i32 15
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  tail call void %159(ptr noundef %154, ptr noundef %3) #16
  %162 = load ptr, ptr %153, align 4
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %161, %157
  %166 = phi ptr [ %162, %161 ], [ %154, %157 ]
  %167 = phi ptr [ %163, %161 ], [ %155, %157 ]
  %168 = getelementptr inbounds %struct.stmmac_ops, ptr %167, i32 0, i32 40
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %165
  tail call void %169(ptr noundef %3, ptr noundef %166) #16
  br label %172

172:                                              ; preds = %171, %165, %161, %152
  %173 = load ptr, ptr %47, align 64
  %174 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %173, i32 0, i32 29
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %173, i32 0, i32 30
  %177 = load i32, ptr %176, align 4
  %178 = tail call i32 @llvm.umax.i32(i32 %175, i32 %177) #16
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %238, label %180

180:                                              ; preds = %172
  %181 = getelementptr i8, ptr %3, i32 15472
  %182 = getelementptr i8, ptr %3, i32 15468
  br label %183

183:                                              ; preds = %208, %180
  %184 = phi i32 [ 0, %180 ], [ %209, %208 ]
  %185 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 26, i32 %184
  %186 = load ptr, ptr %181, align 16
  %187 = icmp eq ptr %186, null
  br i1 %187, label %199, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr %182, align 4
  %190 = lshr i32 %184, 5
  %191 = getelementptr i32, ptr %189, i32 %190
  %192 = load volatile i32, ptr %191, align 4
  %193 = and i32 %184, 31
  %194 = shl nuw i32 1, %193
  %195 = and i32 %192, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %188
  %198 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 26, i32 %184, i32 4
  br label %206

199:                                              ; preds = %188, %183
  %200 = icmp ult i32 %184, %175
  br i1 %200, label %201, label %202

201:                                              ; preds = %199
  tail call void @napi_enable(ptr noundef %185) #16
  br label %202

202:                                              ; preds = %201, %199
  %203 = icmp ult i32 %184, %177
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  %205 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 26, i32 %184, i32 2
  br label %206

206:                                              ; preds = %204, %197
  %207 = phi ptr [ %205, %204 ], [ %198, %197 ]
  tail call void @napi_enable(ptr noundef %207) #16
  br label %208

208:                                              ; preds = %206, %202
  %209 = add nuw i32 %184, 1
  %210 = icmp eq i32 %209, %178
  br i1 %210, label %211, label %183

211:                                              ; preds = %208
  %212 = load ptr, ptr %47, align 64
  %213 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %212, i32 0, i32 29
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %212, i32 0, i32 30
  %216 = load i32, ptr %215, align 4
  %217 = tail call i32 @llvm.umax.i32(i32 %214, i32 %216) #16
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %238, label %219

219:                                              ; preds = %211
  %220 = getelementptr i8, ptr %3, i32 1568
  br label %221

221:                                              ; preds = %235, %219
  %222 = phi i32 [ 0, %219 ], [ %236, %235 ]
  %223 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 26, i32 %222, i32 6
  %224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %223) #16
  %225 = load ptr, ptr %153, align 4
  %226 = getelementptr inbounds %struct.mac_device_info, ptr %225, i32 0, i32 2
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %235, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %227, i32 0, i32 11
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %220, align 32
  tail call void %231(ptr noundef %234, i32 noundef %222, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %235

235:                                              ; preds = %233, %229, %221
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %223, i32 noundef %224) #16
  %236 = add nuw i32 %222, 1
  %237 = icmp eq i32 %236, %217
  br i1 %237, label %238, label %221

238:                                              ; preds = %235, %211, %172
  tail call void @mutex_unlock(ptr noundef %91) #16
  tail call void @rtnl_unlock() #16
  tail call void @netif_device_attach(ptr noundef %3) #16
  br label %239

239:                                              ; preds = %238, %52, %1
  %240 = phi i32 [ 0, %238 ], [ 0, %1 ], [ %55, %52 ]
  ret i32 %240
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_mdio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_speed_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_clear_descriptors(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 21
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 63
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %10, align 64
  br label %25

17:                                               ; preds = %71, %1
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %128, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %21 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %22 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %23 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %24 = load i32, ptr %20, align 64
  br label %75

25:                                               ; preds = %71, %9
  %26 = phi i32 [ %16, %9 ], [ %72, %71 ]
  %27 = phi i32 [ 0, %9 ], [ %73, %71 ]
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %27, i32 8
  %31 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %27, i32 10
  br label %32

32:                                               ; preds = %67, %29
  %33 = phi i32 [ %26, %29 ], [ %69, %67 ]
  %34 = phi i32 [ 0, %29 ], [ %68, %67 ]
  %35 = load i32, ptr %11, align 4
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.mac_device_info, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %36, label %54, label %41

41:                                               ; preds = %32
  br i1 %40, label %67, label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %39, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %30, align 16
  %47 = getelementptr %struct.dma_extended_desc, ptr %46, i32 %34
  %48 = load i32, ptr %13, align 4
  %49 = load i32, ptr %14, align 4
  %50 = add i32 %33, -1
  %51 = icmp eq i32 %34, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, ptr %15, align 4
  tail call void %43(ptr noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %52, i32 noundef %53) #16
  br label %67

54:                                               ; preds = %32
  br i1 %40, label %67, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %39, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %31, align 64
  %60 = getelementptr %struct.dma_desc, ptr %59, i32 %34
  %61 = load i32, ptr %13, align 4
  %62 = load i32, ptr %14, align 4
  %63 = add i32 %33, -1
  %64 = icmp eq i32 %34, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, ptr %15, align 4
  tail call void %56(ptr noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %65, i32 noundef %66) #16
  br label %67

67:                                               ; preds = %58, %55, %54, %45, %42, %41
  %68 = add nuw i32 %34, 1
  %69 = load i32, ptr %10, align 64
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %32, label %71

71:                                               ; preds = %67, %25
  %72 = phi i32 [ 0, %25 ], [ %69, %67 ]
  %73 = add nuw i32 %27, 1
  %74 = icmp eq i32 %73, %5
  br i1 %74, label %17, label %25

75:                                               ; preds = %124, %19
  %76 = phi i32 [ %24, %19 ], [ %125, %124 ]
  %77 = phi i32 [ 0, %19 ], [ %126, %124 ]
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %77, i32 5
  %81 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %77, i32 1
  %82 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %77, i32 6
  %83 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %77, i32 7
  br label %84

84:                                               ; preds = %119, %79
  %85 = phi i32 [ %76, %79 ], [ %120, %119 ]
  %86 = phi i32 [ %76, %79 ], [ %121, %119 ]
  %87 = phi i32 [ 0, %79 ], [ %122, %119 ]
  %88 = add i32 %86, -1
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, ptr %21, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load ptr, ptr %80, align 64
  %95 = getelementptr %struct.dma_extended_desc, ptr %94, i32 %87
  br label %106

96:                                               ; preds = %84
  %97 = load i32, ptr %81, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %82, align 4
  %102 = getelementptr %struct.dma_edesc, ptr %101, i32 %87, i32 4
  br label %106

103:                                              ; preds = %96
  %104 = load ptr, ptr %83, align 8
  %105 = getelementptr %struct.dma_desc, ptr %104, i32 %87
  br label %106

106:                                              ; preds = %103, %100, %93
  %107 = phi ptr [ %95, %93 ], [ %102, %100 ], [ %105, %103 ]
  %108 = load ptr, ptr %22, align 4
  %109 = getelementptr inbounds %struct.mac_device_info, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %110, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %23, align 4
  tail call void %114(ptr noundef %107, i32 noundef %117, i32 noundef %90) #16
  %118 = load i32, ptr %20, align 64
  br label %119

119:                                              ; preds = %116, %112, %106
  %120 = phi i32 [ %118, %116 ], [ %85, %112 ], [ %85, %106 ]
  %121 = phi i32 [ %118, %116 ], [ %86, %112 ], [ %86, %106 ]
  %122 = add nuw i32 %87, 1
  %123 = icmp ult i32 %122, %121
  br i1 %123, label %84, label %124

124:                                              ; preds = %119, %75
  %125 = phi i32 [ 0, %75 ], [ %120, %119 ]
  %126 = add nuw i32 %77, 1
  %127 = icmp eq i32 %126, %7
  br i1 %127, label %128, label %75

128:                                              ; preds = %124, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_hw_setup(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 29
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 30
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9) #16
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %180, label %14

14:                                               ; preds = %2
  %15 = load i32, ptr %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %180, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i32 12708
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 12700
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %21 ]
  %28 = getelementptr i8, ptr %0, i32 1580
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mac_device_info, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %180, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %31, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %180, label %36

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %0, i32 1568
  %38 = load ptr, ptr %37, align 32
  %39 = tail call i32 %34(ptr noundef %38) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %184

41:                                               ; preds = %36
  %42 = load ptr, ptr %28, align 4
  %43 = getelementptr inbounds %struct.mac_device_info, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %37, align 32
  %52 = load ptr, ptr %4, align 64
  %53 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %48(ptr noundef %51, ptr noundef %54, i32 noundef %27) #16
  br label %55

55:                                               ; preds = %50, %46, %41
  %56 = load ptr, ptr %4, align 64
  %57 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %56, i32 0, i32 57
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %28, align 4
  %62 = getelementptr inbounds %struct.mac_device_info, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %63, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %37, align 32
  tail call void %67(ptr noundef %70, ptr noundef nonnull %58) #16
  br label %71

71:                                               ; preds = %69, %65, %60, %55
  %72 = icmp eq i32 %10, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %101, %71
  %74 = icmp eq i32 %7, 0
  br i1 %74, label %104, label %106

75:                                               ; preds = %101, %71
  %76 = phi i32 [ %102, %101 ], [ 0, %71 ]
  %77 = load ptr, ptr %28, align 4
  %78 = getelementptr inbounds %struct.mac_device_info, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %101, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %79, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %37, align 32
  %87 = load ptr, ptr %4, align 64
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %87, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  tail call void %83(ptr noundef %86, ptr noundef %89, i32 noundef %76) #16
  %90 = load ptr, ptr %28, align 4
  %91 = getelementptr inbounds %struct.mac_device_info, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %85, %81
  %95 = phi ptr [ %92, %85 ], [ %79, %81 ]
  %96 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %95, i32 0, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %37, align 32
  tail call void %97(ptr noundef %100, i32 noundef %76, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %101

101:                                              ; preds = %99, %94, %85, %75
  %102 = add nuw i32 %76, 1
  %103 = icmp eq i32 %102, %10
  br i1 %103, label %73, label %75

104:                                              ; preds = %142, %73
  %105 = icmp eq i32 %9, 0
  br i1 %105, label %192, label %145

106:                                              ; preds = %142, %73
  %107 = phi i32 [ %143, %142 ], [ 0, %73 ]
  %108 = load ptr, ptr %28, align 4
  %109 = getelementptr inbounds %struct.mac_device_info, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %110, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %37, align 32
  %118 = load ptr, ptr %4, align 64
  %119 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %118, i32 0, i32 8
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 20, i32 %107, i32 15
  %122 = load i32, ptr %121, align 4
  tail call void %114(ptr noundef %117, ptr noundef %120, i32 noundef %122, i32 noundef %107) #16
  %123 = load ptr, ptr %28, align 4
  br label %124

124:                                              ; preds = %116, %112, %106
  %125 = phi ptr [ %123, %116 ], [ %108, %112 ], [ %108, %106 ]
  %126 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 20, i32 %107, i32 15
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 20, i32 %107, i32 13
  %129 = load i32, ptr %128, align 4
  %130 = shl i32 %129, 4
  %131 = add i32 %130, %127
  %132 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 20, i32 %107, i32 16
  store i32 %131, ptr %132, align 8
  %133 = getelementptr inbounds %struct.mac_device_info, ptr %125, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %124
  %137 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %134, i32 0, i32 22
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %37, align 32
  tail call void %138(ptr noundef %141, i32 noundef %131, i32 noundef %107) #16
  br label %142

142:                                              ; preds = %140, %136, %124
  %143 = add nuw i32 %107, 1
  %144 = icmp eq i32 %143, %7
  br i1 %144, label %104, label %106

145:                                              ; preds = %177, %104
  %146 = phi i32 [ %178, %177 ], [ 0, %104 ]
  %147 = load ptr, ptr %28, align 4
  %148 = getelementptr inbounds %struct.mac_device_info, ptr %147, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %149, i32 0, i32 4
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr %37, align 32
  %157 = load ptr, ptr %4, align 64
  %158 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %157, i32 0, i32 8
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %146, i32 14
  %161 = load i32, ptr %160, align 4
  tail call void %153(ptr noundef %156, ptr noundef %159, i32 noundef %161, i32 noundef %146) #16
  %162 = load ptr, ptr %28, align 4
  br label %163

163:                                              ; preds = %155, %151, %145
  %164 = phi ptr [ %162, %155 ], [ %147, %151 ], [ %147, %145 ]
  %165 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %146, i32 14
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %146, i32 15
  store i32 %166, ptr %167, align 8
  %168 = getelementptr inbounds %struct.mac_device_info, ptr %164, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %169, i32 0, i32 23
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr %37, align 32
  tail call void %173(ptr noundef %176, i32 noundef %166, i32 noundef %146) #16
  br label %177

177:                                              ; preds = %175, %171, %163
  %178 = add nuw i32 %146, 1
  %179 = icmp eq i32 %178, %9
  br i1 %179, label %192, label %145

180:                                              ; preds = %33, %26, %14, %2
  %181 = phi ptr [ @.str.141, %33 ], [ @.str.141, %26 ], [ @.str.140, %14 ], [ @.str.140, %2 ]
  %182 = getelementptr i8, ptr %0, i32 1576
  %183 = load ptr, ptr %182, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull %181) #17
  br label %188

184:                                              ; preds = %36
  %185 = getelementptr i8, ptr %0, i32 1576
  %186 = load ptr, ptr %185, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.141) #17
  %187 = icmp slt i32 %39, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184, %180
  %189 = phi i32 [ -22, %180 ], [ %39, %184 ]
  %190 = getelementptr i8, ptr %0, i32 1572
  %191 = load ptr, ptr %190, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %191, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.stmmac_hw_setup) #17
  br label %994

192:                                              ; preds = %184, %177, %104
  %193 = load ptr, ptr %28, align 4
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %204, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.stmmac_ops, ptr %194, i32 0, i32 18
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %202 = load ptr, ptr %201, align 32
  tail call void %198(ptr noundef %193, ptr noundef %202, i32 noundef 0) #16
  %203 = load ptr, ptr %28, align 4
  br label %204

204:                                              ; preds = %200, %196, %192
  %205 = phi ptr [ %203, %200 ], [ %193, %196 ], [ %193, %192 ]
  %206 = getelementptr inbounds %struct.mac_device_info, ptr %205, i32 0, i32 15
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %204
  %210 = load ptr, ptr %4, align 64
  %211 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %210, i32 0, i32 62
  %212 = load i32, ptr %211, align 4
  switch i32 %212, label %213 [
    i32 1000, label %217
    i32 100, label %217
    i32 10, label %217
  ]

213:                                              ; preds = %209
  %214 = getelementptr i8, ptr %0, i32 1576
  %215 = load ptr, ptr %214, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %215, ptr noundef nonnull @.str.136) #17
  %216 = load ptr, ptr %28, align 4
  br label %217

217:                                              ; preds = %213, %209, %209, %209
  %218 = phi ptr [ %216, %213 ], [ %205, %209 ], [ %205, %209 ], [ %205, %209 ]
  %219 = phi i32 [ 0, %213 ], [ %212, %209 ], [ %212, %209 ], [ %212, %209 ]
  %220 = getelementptr inbounds %struct.mac_device_info, ptr %218, i32 0, i32 17
  store i32 %219, ptr %220, align 4
  br label %221

221:                                              ; preds = %217, %204
  %222 = load ptr, ptr %28, align 4
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %223, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  tail call void %226(ptr noundef %222, ptr noundef %0) #16
  br label %229

229:                                              ; preds = %228, %225, %221
  %230 = load ptr, ptr %4, align 64
  %231 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %230, i32 0, i32 29
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %230, i32 0, i32 30
  %234 = load i32, ptr %233, align 4
  %235 = icmp ugt i32 %234, 1
  br i1 %235, label %236, label %254

236:                                              ; preds = %252, %229
  %237 = phi ptr [ %253, %252 ], [ %230, %229 ]
  %238 = phi i32 [ %250, %252 ], [ 0, %229 ]
  %239 = getelementptr %struct.plat_stmmacenet_data, ptr %237, i32 0, i32 34, i32 %238
  %240 = load i32, ptr %239, align 4
  %241 = load ptr, ptr %28, align 4
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.stmmac_ops, ptr %242, i32 0, i32 9
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %244
  tail call void %246(ptr noundef %241, i32 noundef %240, i32 noundef %238) #16
  br label %249

249:                                              ; preds = %248, %244, %236
  %250 = add nuw i32 %238, 1
  %251 = icmp eq i32 %250, %234
  br i1 %251, label %254, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr %4, align 64
  br label %236

254:                                              ; preds = %249, %229
  %255 = icmp ugt i32 %232, 1
  br i1 %255, label %256, label %269

256:                                              ; preds = %254
  %257 = load ptr, ptr %28, align 4
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %269, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.stmmac_ops, ptr %258, i32 0, i32 7
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %269, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr %4, align 64
  %266 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %265, i32 0, i32 31
  %267 = load i8, ptr %266, align 4
  %268 = zext i8 %267 to i32
  tail call void %262(ptr noundef %257, i32 noundef %268) #16
  br label %269

269:                                              ; preds = %264, %260, %256, %254
  br i1 %235, label %270, label %316

270:                                              ; preds = %269
  %271 = load ptr, ptr %28, align 4
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %283, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.stmmac_ops, ptr %272, i32 0, i32 8
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = load ptr, ptr %4, align 64
  %280 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %279, i32 0, i32 32
  %281 = load i8, ptr %280, align 1
  %282 = zext i8 %281 to i32
  tail call void %276(ptr noundef %271, i32 noundef %282) #16
  br label %283

283:                                              ; preds = %278, %274, %270
  %284 = load ptr, ptr %4, align 64
  %285 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %284, i32 0, i32 30
  %286 = load i32, ptr %285, align 4
  %287 = icmp ugt i32 %286, 1
  br i1 %287, label %288, label %316

288:                                              ; preds = %314, %283
  %289 = phi ptr [ %315, %314 ], [ %284, %283 ]
  %290 = phi i32 [ %312, %314 ], [ 1, %283 ]
  %291 = getelementptr %struct.plat_stmmacenet_data, ptr %289, i32 0, i32 34, i32 %290, i32 1
  %292 = load i8, ptr %291, align 4
  %293 = icmp eq i8 %292, 1
  br i1 %293, label %311, label %294

294:                                              ; preds = %288
  %295 = load ptr, ptr %28, align 4
  %296 = load ptr, ptr %295, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %311, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.stmmac_ops, ptr %296, i32 0, i32 11
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %311, label %302

302:                                              ; preds = %298
  %303 = getelementptr %struct.plat_stmmacenet_data, ptr %289, i32 0, i32 34, i32 %290, i32 2
  %304 = load i32, ptr %303, align 4
  %305 = getelementptr %struct.plat_stmmacenet_data, ptr %289, i32 0, i32 34, i32 %290, i32 3
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr %struct.plat_stmmacenet_data, ptr %289, i32 0, i32 34, i32 %290, i32 4
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr %struct.plat_stmmacenet_data, ptr %289, i32 0, i32 34, i32 %290, i32 5
  %310 = load i32, ptr %309, align 4
  tail call void %300(ptr noundef %295, i32 noundef %304, i32 noundef %306, i32 noundef %308, i32 noundef %310, i32 noundef %290) #16
  br label %311

311:                                              ; preds = %302, %298, %294, %288
  %312 = add nuw i32 %290, 1
  %313 = icmp eq i32 %312, %286
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %4, align 64
  br label %288

316:                                              ; preds = %311, %283, %269
  %317 = load ptr, ptr %4, align 64
  %318 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %317, i32 0, i32 29
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %361, label %321

321:                                              ; preds = %335, %316
  %322 = phi ptr [ %336, %335 ], [ %317, %316 ]
  %323 = phi i32 [ %337, %335 ], [ 0, %316 ]
  %324 = getelementptr %struct.plat_stmmacenet_data, ptr %322, i32 0, i32 33, i32 %323, i32 1
  %325 = load i32, ptr %324, align 4
  %326 = load ptr, ptr %28, align 4
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %335, label %329

329:                                              ; preds = %321
  %330 = getelementptr inbounds %struct.stmmac_ops, ptr %327, i32 0, i32 10
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  tail call void %331(ptr noundef %326, i32 noundef %323, i32 noundef %325) #16
  %334 = load ptr, ptr %4, align 64
  br label %335

335:                                              ; preds = %333, %329, %321
  %336 = phi ptr [ %334, %333 ], [ %322, %329 ], [ %322, %321 ]
  %337 = add nuw i32 %323, 1
  %338 = icmp eq i32 %337, %319
  br i1 %338, label %339, label %321

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %336, i32 0, i32 29
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %361, label %343

343:                                              ; preds = %359, %339
  %344 = phi ptr [ %360, %359 ], [ %336, %339 ]
  %345 = phi i32 [ %357, %359 ], [ 0, %339 ]
  %346 = getelementptr %struct.plat_stmmacenet_data, ptr %344, i32 0, i32 33, i32 %345
  %347 = load i8, ptr %346, align 4
  %348 = load ptr, ptr %28, align 4
  %349 = load ptr, ptr %348, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %356, label %351

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.stmmac_ops, ptr %349, i32 0, i32 3
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %356, label %355

355:                                              ; preds = %351
  tail call void %353(ptr noundef %348, i8 noundef zeroext %347, i32 noundef %345) #16
  br label %356

356:                                              ; preds = %355, %351, %343
  %357 = add nuw i32 %345, 1
  %358 = icmp eq i32 %357, %341
  br i1 %358, label %361, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr %4, align 64
  br label %343

361:                                              ; preds = %356, %339, %316
  br i1 %255, label %362, label %389

362:                                              ; preds = %361
  %363 = load ptr, ptr %4, align 64
  %364 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %363, i32 0, i32 29
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %389, label %367

367:                                              ; preds = %387, %362
  %368 = phi ptr [ %388, %387 ], [ %363, %362 ]
  %369 = phi i32 [ %385, %387 ], [ 0, %362 ]
  %370 = getelementptr %struct.plat_stmmacenet_data, ptr %368, i32 0, i32 33, i32 %369, i32 3
  %371 = load i8, ptr %370, align 1, !range !9
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %384, label %373

373:                                              ; preds = %367
  %374 = getelementptr %struct.plat_stmmacenet_data, ptr %368, i32 0, i32 33, i32 %369, i32 4
  %375 = load i32, ptr %374, align 4
  %376 = load ptr, ptr %28, align 4
  %377 = load ptr, ptr %376, align 4
  %378 = icmp eq ptr %377, null
  br i1 %378, label %384, label %379

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.stmmac_ops, ptr %377, i32 0, i32 4
  %381 = load ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, null
  br i1 %382, label %384, label %383

383:                                              ; preds = %379
  tail call void %381(ptr noundef %376, i32 noundef %375, i32 noundef %369) #16
  br label %384

384:                                              ; preds = %383, %379, %373, %367
  %385 = add nuw i32 %369, 1
  %386 = icmp eq i32 %385, %365
  br i1 %386, label %389, label %387

387:                                              ; preds = %384
  %388 = load ptr, ptr %4, align 64
  br label %367

389:                                              ; preds = %384, %362, %361
  br i1 %235, label %390, label %417

390:                                              ; preds = %389
  %391 = load ptr, ptr %4, align 64
  %392 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %391, i32 0, i32 30
  %393 = load i32, ptr %392, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %417, label %395

395:                                              ; preds = %415, %390
  %396 = phi ptr [ %416, %415 ], [ %391, %390 ]
  %397 = phi i32 [ %413, %415 ], [ 0, %390 ]
  %398 = getelementptr %struct.plat_stmmacenet_data, ptr %396, i32 0, i32 34, i32 %397, i32 6
  %399 = load i8, ptr %398, align 4, !range !9
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %412, label %401

401:                                              ; preds = %395
  %402 = getelementptr %struct.plat_stmmacenet_data, ptr %396, i32 0, i32 34, i32 %397, i32 7
  %403 = load i32, ptr %402, align 4
  %404 = load ptr, ptr %28, align 4
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %412, label %407

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.stmmac_ops, ptr %405, i32 0, i32 5
  %409 = load ptr, ptr %408, align 4
  %410 = icmp eq ptr %409, null
  br i1 %410, label %412, label %411

411:                                              ; preds = %407
  tail call void %409(ptr noundef %404, i32 noundef %403, i32 noundef %397) #16
  br label %412

412:                                              ; preds = %411, %407, %401, %395
  %413 = add nuw i32 %397, 1
  %414 = icmp eq i32 %413, %393
  br i1 %414, label %417, label %415

415:                                              ; preds = %412
  %416 = load ptr, ptr %4, align 64
  br label %395

417:                                              ; preds = %412, %390, %389
  br i1 %255, label %418, label %474

418:                                              ; preds = %417
  %419 = load ptr, ptr %4, align 64
  %420 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %419, i32 0, i32 29
  %421 = load i32, ptr %420, align 4
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %443, label %423

423:                                              ; preds = %441, %418
  %424 = phi ptr [ %442, %441 ], [ %419, %418 ]
  %425 = phi i32 [ %439, %441 ], [ 0, %418 ]
  %426 = getelementptr %struct.plat_stmmacenet_data, ptr %424, i32 0, i32 33, i32 %425, i32 2
  %427 = load i8, ptr %426, align 4
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %438, label %429

429:                                              ; preds = %423
  %430 = load ptr, ptr %28, align 4
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %438, label %433

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.stmmac_ops, ptr %431, i32 0, i32 6
  %435 = load ptr, ptr %434, align 4
  %436 = icmp eq ptr %435, null
  br i1 %436, label %438, label %437

437:                                              ; preds = %433
  tail call void %435(ptr noundef %430, i8 noundef zeroext %427, i32 noundef %425) #16
  br label %438

438:                                              ; preds = %437, %433, %429, %423
  %439 = add nuw i32 %425, 1
  %440 = icmp eq i32 %439, %421
  br i1 %440, label %443, label %441

441:                                              ; preds = %438
  %442 = load ptr, ptr %4, align 64
  br label %423

443:                                              ; preds = %438, %418
  %444 = getelementptr i8, ptr %0, i32 12236
  %445 = load i32, ptr %444, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %452, label %447

447:                                              ; preds = %443
  %448 = load ptr, ptr %4, align 64
  %449 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %448, i32 0, i32 61
  %450 = load i32, ptr %449, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %447, %443
  %453 = getelementptr i8, ptr %0, i32 14400
  store i32 0, ptr %453, align 64
  br label %474

454:                                              ; preds = %447
  %455 = getelementptr i8, ptr %0, i32 1572
  %456 = load ptr, ptr %455, align 4
  %457 = getelementptr inbounds %struct.net_device, ptr %456, i32 0, i32 23
  %458 = load i64, ptr %457, align 16
  %459 = lshr i64 %458, 39
  %460 = trunc i64 %459 to i32
  %461 = and i32 %460, 1
  %462 = getelementptr i8, ptr %0, i32 14400
  store i32 %461, ptr %462, align 64
  %463 = load ptr, ptr %28, align 4
  %464 = load ptr, ptr %463, align 4
  %465 = icmp eq ptr %464, null
  br i1 %465, label %474, label %466

466:                                              ; preds = %454
  %467 = getelementptr inbounds %struct.stmmac_ops, ptr %464, i32 0, i32 35
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, null
  br i1 %469, label %474, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %448, i32 0, i32 29
  %472 = load i32, ptr %471, align 4
  %473 = tail call i32 %468(ptr noundef %463, ptr noundef %462, i32 noundef %472) #16
  br label %474

474:                                              ; preds = %470, %466, %454, %452, %417
  %475 = getelementptr i8, ptr %0, i32 12216
  %476 = load i32, ptr %475, align 4
  %477 = icmp eq i32 %476, 0
  %478 = getelementptr i8, ptr %0, i32 1572
  %479 = load ptr, ptr %478, align 4
  br i1 %477, label %495, label %480

480:                                              ; preds = %474
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %479, ptr noundef nonnull @.str.142) #17
  %481 = load ptr, ptr %28, align 4
  %482 = load ptr, ptr %481, align 4
  %483 = icmp eq ptr %482, null
  br i1 %483, label %496, label %484

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.stmmac_ops, ptr %482, i32 0, i32 29
  %486 = load ptr, ptr %485, align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %496, label %488

488:                                              ; preds = %484
  %489 = load ptr, ptr %37, align 32
  %490 = load i32, ptr %475, align 4
  %491 = load ptr, ptr %4, align 64
  %492 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %491, i32 0, i32 11
  %493 = load ptr, ptr %492, align 4
  %494 = tail call i32 %486(ptr noundef %489, i32 noundef %490, ptr noundef %493) #16
  br label %496

495:                                              ; preds = %474
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %479, ptr noundef nonnull @.str.143) #17
  br label %496

496:                                              ; preds = %495, %488, %484, %480
  %497 = load ptr, ptr %28, align 4
  %498 = load ptr, ptr %497, align 4
  %499 = icmp eq ptr %498, null
  br i1 %499, label %513, label %500

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.stmmac_ops, ptr %498, i32 0, i32 2
  %502 = load ptr, ptr %501, align 4
  %503 = icmp eq ptr %502, null
  br i1 %503, label %513, label %504

504:                                              ; preds = %500
  %505 = tail call i32 %502(ptr noundef %497) #16
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %513

507:                                              ; preds = %504
  %508 = load ptr, ptr %478, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %508, ptr noundef nonnull @.str.137) #17
  %509 = load ptr, ptr %4, align 64
  %510 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %509, i32 0, i32 16
  store i32 0, ptr %510, align 4
  %511 = load ptr, ptr %28, align 4
  %512 = getelementptr inbounds %struct.mac_device_info, ptr %511, i32 0, i32 14
  store i32 0, ptr %512, align 4
  br label %513

513:                                              ; preds = %507, %504, %500, %496
  %514 = load ptr, ptr %28, align 4
  %515 = load ptr, ptr %514, align 4
  %516 = icmp eq ptr %515, null
  br i1 %516, label %523, label %517

517:                                              ; preds = %513
  %518 = getelementptr inbounds %struct.stmmac_ops, ptr %515, i32 0, i32 1
  %519 = load ptr, ptr %518, align 4
  %520 = icmp eq ptr %519, null
  br i1 %520, label %523, label %521

521:                                              ; preds = %517
  %522 = load ptr, ptr %37, align 32
  tail call void %519(ptr noundef %522, i1 noundef zeroext true) #16
  br label %523

523:                                              ; preds = %521, %517, %513
  %524 = load ptr, ptr %4, align 64
  %525 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %524, i32 0, i32 29
  %526 = load i32, ptr %525, align 4
  %527 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %524, i32 0, i32 30
  %528 = load i32, ptr %527, align 4
  %529 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %524, i32 0, i32 27
  %530 = load i32, ptr %529, align 4
  %531 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %524, i32 0, i32 26
  %532 = load i32, ptr %531, align 4
  %533 = icmp eq i32 %530, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %523
  %535 = getelementptr i8, ptr %0, i32 12212
  %536 = load i32, ptr %535, align 4
  br label %537

537:                                              ; preds = %534, %523
  %538 = phi i32 [ %536, %534 ], [ %530, %523 ]
  %539 = icmp eq i32 %532, 0
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = getelementptr i8, ptr %0, i32 12208
  %542 = load i32, ptr %541, align 4
  br label %543

543:                                              ; preds = %540, %537
  %544 = phi i32 [ %542, %540 ], [ %532, %537 ]
  %545 = udiv i32 %538, %526
  %546 = udiv i32 %544, %528
  %547 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %524, i32 0, i32 20
  %548 = load i32, ptr %547, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %552, label %550

550:                                              ; preds = %543
  %551 = load i32, ptr @tc, align 4
  br label %564

552:                                              ; preds = %543
  %553 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %524, i32 0, i32 19
  %554 = load i32, ptr %553, align 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %560

556:                                              ; preds = %552
  %557 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %524, i32 0, i32 15
  %558 = load i32, ptr %557, align 4
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %562, label %560

560:                                              ; preds = %556, %552
  %561 = getelementptr i8, ptr %0, i32 11224
  store i32 1, ptr %561, align 8
  br label %564

562:                                              ; preds = %556
  %563 = load i32, ptr @tc, align 4
  br label %564

564:                                              ; preds = %562, %560, %550
  %565 = phi i32 [ %551, %550 ], [ 1, %560 ], [ %563, %562 ]
  %566 = phi i32 [ %551, %550 ], [ 1, %560 ], [ 1, %562 ]
  %567 = icmp eq i32 %526, 0
  br i1 %567, label %570, label %568

568:                                              ; preds = %564
  %569 = getelementptr i8, ptr %0, i32 1524
  br label %572

570:                                              ; preds = %611, %564
  %571 = icmp eq i32 %528, 0
  br i1 %571, label %634, label %616

572:                                              ; preds = %614, %568
  %573 = phi ptr [ %524, %568 ], [ %615, %614 ]
  %574 = phi i32 [ 0, %568 ], [ %612, %614 ]
  %575 = getelementptr %struct.plat_stmmacenet_data, ptr %573, i32 0, i32 33, i32 %574
  %576 = load i8, ptr %575, align 4
  %577 = load ptr, ptr %28, align 4
  %578 = getelementptr inbounds %struct.mac_device_info, ptr %577, i32 0, i32 2
  %579 = load ptr, ptr %578, align 4
  %580 = icmp eq ptr %579, null
  br i1 %580, label %590, label %581

581:                                              ; preds = %572
  %582 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %579, i32 0, i32 7
  %583 = load ptr, ptr %582, align 4
  %584 = icmp eq ptr %583, null
  br i1 %584, label %590, label %585

585:                                              ; preds = %581
  %586 = load ptr, ptr %37, align 32
  tail call void %583(ptr noundef %586, i32 noundef %566, i32 noundef %574, i32 noundef %545, i8 noundef zeroext %576) #16
  %587 = load ptr, ptr %28, align 4
  %588 = getelementptr inbounds %struct.mac_device_info, ptr %587, i32 0, i32 2
  %589 = load ptr, ptr %588, align 4
  br label %590

590:                                              ; preds = %585, %581, %572
  %591 = phi ptr [ %589, %585 ], [ %579, %581 ], [ null, %572 ]
  %592 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 20, i32 %574, i32 4
  %593 = load ptr, ptr %592, align 64
  %594 = icmp eq ptr %593, null
  %595 = icmp eq ptr %591, null
  br i1 %594, label %603, label %596

596:                                              ; preds = %590
  br i1 %595, label %611, label %597

597:                                              ; preds = %596
  %598 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %591, i32 0, i32 26
  %599 = load ptr, ptr %598, align 4
  %600 = icmp eq ptr %599, null
  br i1 %600, label %611, label %601

601:                                              ; preds = %597
  %602 = load ptr, ptr %37, align 32
  tail call void %599(ptr noundef %602, i32 noundef 0, i32 noundef %574) #16
  br label %611

603:                                              ; preds = %590
  br i1 %595, label %611, label %604

604:                                              ; preds = %603
  %605 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %591, i32 0, i32 26
  %606 = load ptr, ptr %605, align 4
  %607 = icmp eq ptr %606, null
  br i1 %607, label %611, label %608

608:                                              ; preds = %604
  %609 = load ptr, ptr %37, align 32
  %610 = load i32, ptr %569, align 4
  tail call void %606(ptr noundef %609, i32 noundef %610, i32 noundef %574) #16
  br label %611

611:                                              ; preds = %608, %604, %603, %601, %597, %596
  %612 = add nuw i32 %574, 1
  %613 = icmp eq i32 %612, %526
  br i1 %613, label %570, label %614

614:                                              ; preds = %611
  %615 = load ptr, ptr %4, align 64
  br label %572

616:                                              ; preds = %631, %570
  %617 = phi i32 [ %632, %631 ], [ 0, %570 ]
  %618 = load ptr, ptr %4, align 64
  %619 = getelementptr %struct.plat_stmmacenet_data, ptr %618, i32 0, i32 34, i32 %617, i32 1
  %620 = load i8, ptr %619, align 4
  %621 = load ptr, ptr %28, align 4
  %622 = getelementptr inbounds %struct.mac_device_info, ptr %621, i32 0, i32 2
  %623 = load ptr, ptr %622, align 4
  %624 = icmp eq ptr %623, null
  br i1 %624, label %631, label %625

625:                                              ; preds = %616
  %626 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %623, i32 0, i32 8
  %627 = load ptr, ptr %626, align 4
  %628 = icmp eq ptr %627, null
  br i1 %628, label %631, label %629

629:                                              ; preds = %625
  %630 = load ptr, ptr %37, align 32
  tail call void %627(ptr noundef %630, i32 noundef %565, i32 noundef %617, i32 noundef %546, i8 noundef zeroext %620) #16
  br label %631

631:                                              ; preds = %629, %625, %616
  %632 = add nuw i32 %617, 1
  %633 = icmp eq i32 %632, %528
  br i1 %633, label %634, label %616

634:                                              ; preds = %631, %570
  %635 = load ptr, ptr %28, align 4
  %636 = getelementptr inbounds %struct.mac_device_info, ptr %635, i32 0, i32 6
  %637 = load ptr, ptr %636, align 4
  %638 = icmp eq ptr %637, null
  br i1 %638, label %646, label %639

639:                                              ; preds = %634
  %640 = getelementptr inbounds %struct.stmmac_mmc_ops, ptr %637, i32 0, i32 1
  %641 = load ptr, ptr %640, align 4
  %642 = icmp eq ptr %641, null
  br i1 %642, label %646, label %643

643:                                              ; preds = %639
  %644 = getelementptr i8, ptr %0, i32 12884
  %645 = load ptr, ptr %644, align 4
  tail call void %641(ptr noundef %645) #16
  br label %646

646:                                              ; preds = %643, %639, %634
  %647 = getelementptr i8, ptr %0, i32 12136
  %648 = load i32, ptr %647, align 4
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %663, label %650

650:                                              ; preds = %646
  %651 = load ptr, ptr %28, align 4
  %652 = getelementptr inbounds %struct.mac_device_info, ptr %651, i32 0, i32 6
  %653 = load ptr, ptr %652, align 4
  %654 = icmp eq ptr %653, null
  br i1 %654, label %661, label %655

655:                                              ; preds = %650
  %656 = load ptr, ptr %653, align 4
  %657 = icmp eq ptr %656, null
  br i1 %657, label %661, label %658

658:                                              ; preds = %655
  %659 = getelementptr i8, ptr %0, i32 12884
  %660 = load ptr, ptr %659, align 4
  tail call void %656(ptr noundef %660, i32 noundef 53) #16
  br label %661

661:                                              ; preds = %658, %655, %650
  %662 = getelementptr i8, ptr %0, i32 12288
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(340) %662, i8 0, i32 340, i1 false) #16
  br label %665

663:                                              ; preds = %646
  %664 = load ptr, ptr %478, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %664, ptr noundef nonnull @.str.144) #17
  br label %665

665:                                              ; preds = %663, %661
  %666 = load ptr, ptr %4, align 64
  %667 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %666, i32 0, i32 58
  %668 = load i32, ptr %667, align 4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %674

670:                                              ; preds = %665
  %671 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %666, i32 0, i32 64
  %672 = load i32, ptr %671, align 4
  %673 = icmp ne i32 %672, 0
  br label %674

674:                                              ; preds = %670, %665
  %675 = phi i1 [ true, %665 ], [ %673, %670 ]
  %676 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %666, i32 0, i32 39
  %677 = load ptr, ptr %676, align 4
  %678 = icmp eq ptr %677, null
  br i1 %678, label %680, label %679

679:                                              ; preds = %674
  tail call void %677(ptr noundef %3) #16
  br label %680

680:                                              ; preds = %679, %674
  %681 = tail call i32 @stmmac_init_tstamp_counter(ptr noundef %3, i32 noundef 515) #16
  switch i32 %681, label %714 [
    i32 0, label %682
    i32 -95, label %712
  ]

682:                                              ; preds = %680
  %683 = getelementptr i8, ptr %0, i32 12848
  store i32 0, ptr %683, align 16
  br i1 %675, label %684, label %688

684:                                              ; preds = %682
  %685 = getelementptr i8, ptr %0, i32 12144
  %686 = load i32, ptr %685, align 4
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %695

688:                                              ; preds = %684, %682
  %689 = load i32, ptr %18, align 4
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %696, label %691

691:                                              ; preds = %688
  %692 = getelementptr i8, ptr %0, i32 12144
  %693 = load i32, ptr %692, align 4
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %696, label %695

695:                                              ; preds = %691, %684
  store i32 1, ptr %683, align 16
  br label %696

696:                                              ; preds = %695, %691, %688
  %697 = phi i32 [ 0, %688 ], [ 0, %691 ], [ 1, %695 ]
  %698 = getelementptr i8, ptr %0, i32 12140
  %699 = load i32, ptr %698, align 4
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %704, label %701

701:                                              ; preds = %696
  %702 = load ptr, ptr %478, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %702, ptr noundef nonnull @.str.145) #17
  %703 = load i32, ptr %683, align 16
  br label %704

704:                                              ; preds = %701, %696
  %705 = phi i32 [ %703, %701 ], [ %697, %696 ]
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %709, label %707

707:                                              ; preds = %704
  %708 = load ptr, ptr %478, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %708, ptr noundef nonnull @.str.146) #17
  br label %709

709:                                              ; preds = %707, %704
  %710 = getelementptr i8, ptr %0, i32 1504
  store i32 0, ptr %710, align 32
  %711 = getelementptr i8, ptr %0, i32 1564
  store i32 0, ptr %711, align 4
  br i1 %1, label %716, label %717

712:                                              ; preds = %680
  %713 = load ptr, ptr %478, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %713, ptr noundef nonnull @.str.138) #17
  br label %717

714:                                              ; preds = %680
  %715 = load ptr, ptr %478, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %715, ptr noundef nonnull @.str.139) #17
  br label %717

716:                                              ; preds = %709
  tail call void @stmmac_ptp_register(ptr noundef %3) #16
  br label %717

717:                                              ; preds = %716, %714, %712, %709
  %718 = getelementptr i8, ptr %0, i32 12692
  store i32 30, ptr %718, align 4
  %719 = getelementptr i8, ptr %0, i32 12684
  %720 = load i32, ptr %719, align 4
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %725

722:                                              ; preds = %717
  %723 = load i32, ptr @eee_timer, align 4
  %724 = mul i32 %723, 1000
  store i32 %724, ptr %719, align 4
  br label %725

725:                                              ; preds = %722, %717
  %726 = getelementptr i8, ptr %0, i32 12852
  %727 = load i32, ptr %726, align 4
  %728 = icmp ne i32 %727, 0
  %729 = icmp ne i32 %7, 0
  %730 = select i1 %728, i1 %729, i1 false
  br i1 %730, label %731, label %752

731:                                              ; preds = %749, %725
  %732 = phi i32 [ %750, %749 ], [ 0, %725 ]
  %733 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 11, i32 %732
  %734 = load i32, ptr %733, align 4
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %737

736:                                              ; preds = %731
  store i32 160, ptr %733, align 4
  br label %737

737:                                              ; preds = %736, %731
  %738 = phi i32 [ 160, %736 ], [ %734, %731 ]
  %739 = load ptr, ptr %28, align 4
  %740 = getelementptr inbounds %struct.mac_device_info, ptr %739, i32 0, i32 2
  %741 = load ptr, ptr %740, align 4
  %742 = icmp eq ptr %741, null
  br i1 %742, label %749, label %743

743:                                              ; preds = %737
  %744 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %741, i32 0, i32 19
  %745 = load ptr, ptr %744, align 4
  %746 = icmp eq ptr %745, null
  br i1 %746, label %749, label %747

747:                                              ; preds = %743
  %748 = load ptr, ptr %37, align 32
  tail call void %745(ptr noundef %748, i32 noundef %738, i32 noundef %732) #16
  br label %749

749:                                              ; preds = %747, %743, %737
  %750 = add nuw i32 %732, 1
  %751 = icmp eq i32 %750, %7
  br i1 %751, label %752, label %731

752:                                              ; preds = %749, %725
  %753 = load ptr, ptr %28, align 4
  %754 = getelementptr inbounds %struct.mac_device_info, ptr %753, i32 0, i32 15
  %755 = load i32, ptr %754, align 4
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %769, label %757

757:                                              ; preds = %752
  %758 = load ptr, ptr %753, align 4
  %759 = icmp eq ptr %758, null
  br i1 %759, label %769, label %760

760:                                              ; preds = %757
  %761 = getelementptr inbounds %struct.stmmac_ops, ptr %758, i32 0, i32 26
  %762 = load ptr, ptr %761, align 4
  %763 = icmp eq ptr %762, null
  br i1 %763, label %769, label %764

764:                                              ; preds = %760
  %765 = load ptr, ptr %37, align 32
  %766 = getelementptr inbounds %struct.mac_device_info, ptr %753, i32 0, i32 17
  %767 = load i32, ptr %766, align 4
  %768 = icmp ne i32 %767, 0
  tail call void %762(ptr noundef %765, i1 noundef zeroext true, i1 noundef zeroext %768, i1 noundef zeroext false) #16
  br label %769

769:                                              ; preds = %764, %760, %757, %752
  %770 = load ptr, ptr %4, align 64
  %771 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %770, i32 0, i32 29
  %772 = load i32, ptr %771, align 4
  %773 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %770, i32 0, i32 30
  %774 = load i32, ptr %773, align 4
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %778, label %776

776:                                              ; preds = %769
  %777 = getelementptr i8, ptr %0, i32 4800
  br label %782

778:                                              ; preds = %796, %769
  %779 = icmp eq i32 %772, 0
  br i1 %779, label %816, label %780

780:                                              ; preds = %778
  %781 = getelementptr i8, ptr %0, i32 3712
  br label %799

782:                                              ; preds = %796, %776
  %783 = phi i32 [ 0, %776 ], [ %797, %796 ]
  %784 = load ptr, ptr %28, align 4
  %785 = getelementptr inbounds %struct.mac_device_info, ptr %784, i32 0, i32 2
  %786 = load ptr, ptr %785, align 4
  %787 = icmp eq ptr %786, null
  br i1 %787, label %796, label %788

788:                                              ; preds = %782
  %789 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %786, i32 0, i32 20
  %790 = load ptr, ptr %789, align 4
  %791 = icmp eq ptr %790, null
  br i1 %791, label %796, label %792

792:                                              ; preds = %788
  %793 = load ptr, ptr %37, align 32
  %794 = load i32, ptr %777, align 64
  %795 = add i32 %794, -1
  tail call void %790(ptr noundef %793, i32 noundef %795, i32 noundef %783) #16
  br label %796

796:                                              ; preds = %792, %788, %782
  %797 = add nuw i32 %783, 1
  %798 = icmp eq i32 %797, %774
  br i1 %798, label %778, label %782

799:                                              ; preds = %813, %780
  %800 = phi i32 [ 0, %780 ], [ %814, %813 ]
  %801 = load ptr, ptr %28, align 4
  %802 = getelementptr inbounds %struct.mac_device_info, ptr %801, i32 0, i32 2
  %803 = load ptr, ptr %802, align 4
  %804 = icmp eq ptr %803, null
  br i1 %804, label %813, label %805

805:                                              ; preds = %799
  %806 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %803, i32 0, i32 21
  %807 = load ptr, ptr %806, align 4
  %808 = icmp eq ptr %807, null
  br i1 %808, label %813, label %809

809:                                              ; preds = %805
  %810 = load ptr, ptr %37, align 32
  %811 = load i32, ptr %781, align 64
  %812 = add i32 %811, -1
  tail call void %807(ptr noundef %810, i32 noundef %812, i32 noundef %800) #16
  br label %813

813:                                              ; preds = %809, %805, %799
  %814 = add nuw i32 %800, 1
  %815 = icmp eq i32 %814, %772
  br i1 %815, label %816, label %799

816:                                              ; preds = %813, %778
  %817 = getelementptr i8, ptr %0, i32 1509
  %818 = load i8, ptr %817, align 1, !range !9
  %819 = icmp ne i8 %818, 0
  %820 = icmp ne i32 %9, 0
  %821 = select i1 %819, i1 %820, i1 false
  br i1 %821, label %822, label %842

822:                                              ; preds = %839, %816
  %823 = phi i32 [ %840, %839 ], [ 0, %816 ]
  %824 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %823, i32 1
  %825 = load i32, ptr %824, align 4
  %826 = and i32 %825, 1
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %839

828:                                              ; preds = %822
  %829 = load ptr, ptr %28, align 4
  %830 = getelementptr inbounds %struct.mac_device_info, ptr %829, i32 0, i32 2
  %831 = load ptr, ptr %830, align 4
  %832 = icmp eq ptr %831, null
  br i1 %832, label %839, label %833

833:                                              ; preds = %828
  %834 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %831, i32 0, i32 24
  %835 = load ptr, ptr %834, align 4
  %836 = icmp eq ptr %835, null
  br i1 %836, label %839, label %837

837:                                              ; preds = %833
  %838 = load ptr, ptr %37, align 32
  tail call void %835(ptr noundef %838, i1 noundef zeroext true, i32 noundef %823) #16
  br label %839

839:                                              ; preds = %837, %833, %828, %822
  %840 = add nuw i32 %823, 1
  %841 = icmp eq i32 %840, %9
  br i1 %841, label %842, label %822

842:                                              ; preds = %839, %816
  %843 = load ptr, ptr %28, align 4
  %844 = getelementptr inbounds %struct.mac_device_info, ptr %843, i32 0, i32 14
  %845 = load i32, ptr %844, align 4
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %851, label %847

847:                                              ; preds = %842
  %848 = getelementptr i8, ptr %0, i32 1512
  %849 = load i32, ptr %848, align 8
  %850 = icmp ne i32 %849, 0
  br label %851

851:                                              ; preds = %847, %842
  %852 = phi i1 [ false, %842 ], [ %850, %847 ]
  %853 = icmp eq i32 %7, 0
  br i1 %853, label %871, label %854

854:                                              ; preds = %869, %851
  %855 = phi ptr [ %870, %869 ], [ %843, %851 ]
  %856 = phi i32 [ %867, %869 ], [ 0, %851 ]
  %857 = getelementptr inbounds %struct.mac_device_info, ptr %855, i32 0, i32 2
  %858 = load ptr, ptr %857, align 4
  %859 = icmp eq ptr %858, null
  br i1 %859, label %866, label %860

860:                                              ; preds = %854
  %861 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %858, i32 0, i32 27
  %862 = load ptr, ptr %861, align 4
  %863 = icmp eq ptr %862, null
  br i1 %863, label %866, label %864

864:                                              ; preds = %860
  %865 = load ptr, ptr %37, align 32
  tail call void %862(ptr noundef %865, i1 noundef zeroext %852, i32 noundef %856) #16
  br label %866

866:                                              ; preds = %864, %860, %854
  %867 = add nuw i32 %856, 1
  %868 = icmp eq i32 %867, %7
  br i1 %868, label %871, label %869

869:                                              ; preds = %866
  %870 = load ptr, ptr %28, align 4
  br label %854

871:                                              ; preds = %866, %851
  %872 = getelementptr i8, ptr %0, i32 12248
  %873 = load i32, ptr %872, align 4
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %884, label %875

875:                                              ; preds = %871
  %876 = load ptr, ptr %28, align 4
  %877 = load ptr, ptr %876, align 4
  %878 = icmp eq ptr %877, null
  br i1 %878, label %884, label %879

879:                                              ; preds = %875
  %880 = getelementptr inbounds %struct.stmmac_ops, ptr %877, i32 0, i32 37
  %881 = load ptr, ptr %880, align 4
  %882 = icmp eq ptr %881, null
  br i1 %882, label %884, label %883

883:                                              ; preds = %879
  tail call void %881(ptr noundef %876, i32 noundef 2) #16
  br label %884

884:                                              ; preds = %883, %879, %875, %871
  %885 = icmp eq i32 %9, 0
  br i1 %885, label %906, label %886

886:                                              ; preds = %903, %884
  %887 = phi i32 [ %904, %903 ], [ 0, %884 ]
  %888 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %887, i32 1
  %889 = load i32, ptr %888, align 4
  %890 = and i32 %889, 1
  %891 = load ptr, ptr %28, align 4
  %892 = getelementptr inbounds %struct.mac_device_info, ptr %891, i32 0, i32 2
  %893 = load ptr, ptr %892, align 4
  %894 = icmp eq ptr %893, null
  br i1 %894, label %903, label %895

895:                                              ; preds = %886
  %896 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %893, i32 0, i32 28
  %897 = load ptr, ptr %896, align 4
  %898 = icmp eq ptr %897, null
  br i1 %898, label %903, label %899

899:                                              ; preds = %895
  %900 = load ptr, ptr %37, align 32
  %901 = icmp ne i32 %890, 0
  %902 = tail call i32 %897(ptr noundef %900, i1 noundef zeroext %901, i32 noundef %887) #16
  br label %903

903:                                              ; preds = %899, %895, %886
  %904 = add nuw i32 %887, 1
  %905 = icmp eq i32 %904, %9
  br i1 %905, label %906, label %886

906:                                              ; preds = %903, %884
  %907 = load ptr, ptr %4, align 64
  %908 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %907, i32 0, i32 29
  %909 = load i32, ptr %908, align 4
  %910 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %0, i32 noundef %909) #16
  %911 = load ptr, ptr %4, align 64
  %912 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %911, i32 0, i32 30
  %913 = load i32, ptr %912, align 4
  %914 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %0, i32 noundef %913) #16
  %915 = load ptr, ptr %4, align 64
  %916 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %915, i32 0, i32 29
  %917 = load i32, ptr %916, align 4
  %918 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %915, i32 0, i32 30
  %919 = load i32, ptr %918, align 4
  %920 = icmp eq i32 %917, 0
  br i1 %920, label %921, label %923

921:                                              ; preds = %935, %906
  %922 = icmp eq i32 %919, 0
  br i1 %922, label %953, label %938

923:                                              ; preds = %935, %906
  %924 = phi i32 [ %936, %935 ], [ 0, %906 ]
  %925 = load ptr, ptr %28, align 4
  %926 = getelementptr inbounds %struct.mac_device_info, ptr %925, i32 0, i32 2
  %927 = load ptr, ptr %926, align 4
  %928 = icmp eq ptr %927, null
  br i1 %928, label %935, label %929

929:                                              ; preds = %923
  %930 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %927, i32 0, i32 15
  %931 = load ptr, ptr %930, align 4
  %932 = icmp eq ptr %931, null
  br i1 %932, label %935, label %933

933:                                              ; preds = %929
  %934 = load ptr, ptr %37, align 32
  tail call void %931(ptr noundef %934, i32 noundef %924) #16
  br label %935

935:                                              ; preds = %933, %929, %923
  %936 = add nuw i32 %924, 1
  %937 = icmp eq i32 %936, %917
  br i1 %937, label %921, label %923

938:                                              ; preds = %950, %921
  %939 = phi i32 [ %951, %950 ], [ 0, %921 ]
  %940 = load ptr, ptr %28, align 4
  %941 = getelementptr inbounds %struct.mac_device_info, ptr %940, i32 0, i32 2
  %942 = load ptr, ptr %941, align 4
  %943 = icmp eq ptr %942, null
  br i1 %943, label %950, label %944

944:                                              ; preds = %938
  %945 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %942, i32 0, i32 13
  %946 = load ptr, ptr %945, align 4
  %947 = icmp eq ptr %946, null
  br i1 %947, label %950, label %948

948:                                              ; preds = %944
  %949 = load ptr, ptr %37, align 32
  tail call void %946(ptr noundef %949, i32 noundef %939) #16
  br label %950

950:                                              ; preds = %948, %944, %938
  %951 = add nuw i32 %939, 1
  %952 = icmp eq i32 %951, %919
  br i1 %952, label %953, label %938

953:                                              ; preds = %950, %921
  %954 = getelementptr i8, ptr %0, i32 12276
  %955 = load i32, ptr %954, align 4
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %994, label %957

957:                                              ; preds = %953
  %958 = getelementptr i8, ptr %0, i32 14144
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %958) #16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %958) #16
  %959 = getelementptr i8, ptr %0, i32 14168
  %960 = load ptr, ptr %478, align 4
  %961 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %959, ptr noundef nonnull @.str.147, ptr noundef %960) #16
  %962 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 917514, i32 noundef 1, ptr noundef %959) #16
  %963 = getelementptr i8, ptr %0, i32 14148
  store ptr %962, ptr %963, align 4
  %964 = icmp eq ptr %962, null
  %965 = load ptr, ptr %478, align 4
  br i1 %964, label %966, label %967

966:                                              ; preds = %957
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %965, ptr noundef nonnull @.str.148, ptr noundef %959) #17
  br label %968

967:                                              ; preds = %957
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %965, ptr noundef nonnull @.str.149) #17
  br label %968

968:                                              ; preds = %967, %966
  %969 = load ptr, ptr %4, align 64
  %970 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %969, i32 0, i32 10
  %971 = load ptr, ptr %970, align 4
  %972 = load i8, ptr %971, align 4, !range !9
  %973 = icmp eq i8 %972, 0
  br i1 %973, label %994, label %974

974:                                              ; preds = %968
  %975 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %971, i32 0, i32 1
  %976 = load i8, ptr %975, align 1, !range !9
  %977 = icmp eq i8 %976, 1
  br i1 %977, label %994, label %978

978:                                              ; preds = %974
  %979 = load ptr, ptr %28, align 4
  %980 = load ptr, ptr %979, align 4
  %981 = icmp eq ptr %980, null
  br i1 %981, label %991, label %982

982:                                              ; preds = %978
  %983 = getelementptr inbounds %struct.stmmac_ops, ptr %980, i32 0, i32 49
  %984 = load ptr, ptr %983, align 4
  %985 = icmp eq ptr %984, null
  br i1 %985, label %991, label %986

986:                                              ; preds = %982
  %987 = load ptr, ptr %37, align 32
  tail call void %984(ptr noundef %987, i32 noundef 0) #16
  %988 = load ptr, ptr %4, align 64
  %989 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %988, i32 0, i32 10
  %990 = load ptr, ptr %989, align 4
  br label %991

991:                                              ; preds = %986, %982, %978
  %992 = phi ptr [ %990, %986 ], [ %971, %982 ], [ %971, %978 ]
  %993 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %992, i32 0, i32 1
  store i8 1, ptr %993, align 1
  br label %994

994:                                              ; preds = %991, %974, %968, %953, %188
  %995 = phi i32 [ %189, %188 ], [ 0, %968 ], [ 0, %953 ], [ 0, %974 ], [ 0, %991 ]
  ret i32 %995
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_set_rx_mode(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1580
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stmmac_ops, ptr %4, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %3, ptr noundef %0) #16
  br label %11

11:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stmmac_cmdline_opt(ptr noundef %0) #6 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %79, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %79, label %7

7:                                                ; preds = %4
  %8 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.150) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %74, %7
  %11 = phi ptr [ %75, %74 ], [ %8, %7 ]
  %12 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(7) @.str.151, i32 noundef 6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %11, i32 6
  %16 = call i32 @kstrtoint(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @debug) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %74, label %77

18:                                               ; preds = %10
  %19 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(9) @.str.152, i32 noundef 8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %11, i32 8
  %23 = call i32 @kstrtoint(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @phyaddr) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %74, label %77

25:                                               ; preds = %18
  %26 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(8) @.str.153, i32 noundef 7)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %11, i32 7
  %30 = call i32 @kstrtoint(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @buf_sz) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %74, label %77

32:                                               ; preds = %25
  %33 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(4) @.str.154, i32 noundef 3)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %11, i32 3
  %37 = call i32 @kstrtoint(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @tc) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %74, label %77

39:                                               ; preds = %32
  %40 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(10) @.str.155, i32 noundef 9)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %11, i32 9
  %44 = call i32 @kstrtoint(ptr noundef %43, i32 noundef 0, ptr noundef nonnull @watchdog) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %74, label %77

46:                                               ; preds = %39
  %47 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(11) @.str.156, i32 noundef 10)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %11, i32 10
  %51 = call i32 @kstrtoint(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @flow_ctrl) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %77

53:                                               ; preds = %46
  %54 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(7) @.str.157, i32 noundef 6)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %11, i32 6
  %58 = call i32 @kstrtoint(ptr noundef %57, i32 noundef 0, ptr noundef nonnull @pause) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %77

60:                                               ; preds = %53
  %61 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(11) @.str.158, i32 noundef 10)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %11, i32 10
  %65 = call i32 @kstrtoint(ptr noundef %64, i32 noundef 0, ptr noundef nonnull @eee_timer) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %77

67:                                               ; preds = %60
  %68 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(12) @.str.159, i32 noundef 11)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %11, i32 11
  %72 = call i32 @kstrtoint(ptr noundef %71, i32 noundef 0, ptr noundef nonnull @chain_mode) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %67, %63, %56, %49, %42, %35, %28, %21, %14
  %75 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.150) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %10

77:                                               ; preds = %70, %63, %56, %49, %42, %35, %28, %21, %14
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.stmmac_cmdline_opt) #17
  br label %79

79:                                               ; preds = %77, %74, %7, %4, %1
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stmmac_exit() #6 section ".exit.text" {
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @stmmac_notifier) #16
  %2 = load ptr, ptr @stmmac_fs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stmmac_init() #6 section ".init.text" {
  %1 = load ptr, ptr @stmmac_fs_dir, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.161, ptr noundef null) #16
  store ptr %4, ptr @stmmac_fs_dir, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @stmmac_notifier) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg_mem_model(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_free_tx_skbufs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 11
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %5 = load i32, ptr %4, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 9
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %10 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 8
  br label %11

11:                                               ; preds = %59, %7
  %12 = phi i32 [ 0, %7 ], [ %64, %59 ]
  %13 = load ptr, ptr %8, align 16
  %14 = getelementptr %struct.stmmac_tx_info, ptr %13, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.stmmac_tx_info, ptr %13, i32 %12, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr %struct.stmmac_tx_info, ptr %13, i32 %12, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %15, i32 noundef %24, i32 noundef 1, i32 noundef 0) #16
  br label %25

25:                                               ; preds = %21, %17, %11
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr ptr, ptr %26, i32 %12
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %8, align 16
  %32 = getelementptr %struct.stmmac_tx_info, ptr %31, i32 %12, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  tail call void @xdp_return_frame(ptr noundef nonnull %28) #16
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr ptr, ptr %37, i32 %12
  store ptr null, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %30, %25
  %40 = load ptr, ptr %8, align 16
  %41 = getelementptr %struct.stmmac_tx_info, ptr %40, i32 %12, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, ptr %3, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %3, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load ptr, ptr %10, align 4
  %49 = getelementptr ptr, ptr %48, i32 %12
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %41, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %50, i32 noundef 1) #16
  %56 = load ptr, ptr %10, align 4
  %57 = getelementptr ptr, ptr %56, i32 %12
  store ptr null, ptr %57, align 4
  %58 = load ptr, ptr %8, align 16
  br label %59

59:                                               ; preds = %55, %52, %47
  %60 = phi ptr [ %58, %55 ], [ %40, %52 ], [ %40, %47 ]
  %61 = getelementptr %struct.stmmac_tx_info, ptr %60, i32 %12
  store i32 0, ptr %61, align 4
  %62 = load ptr, ptr %8, align 16
  %63 = getelementptr %struct.stmmac_tx_info, ptr %62, i32 %12, i32 1
  store i8 0, ptr %63, align 4
  %64 = add nuw i32 %12, 1
  %65 = load i32, ptr %4, align 64
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %11, label %67

67:                                               ; preds = %59, %2
  %68 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %3, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, ptr %3, align 8
  store ptr null, ptr %68, align 4
  br label %75

75:                                               ; preds = %74, %71, %67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_mac_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7, !prof !14

5:                                                ; preds = %2
  %6 = load ptr, ptr inttoptr (i32 1572 to ptr), align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.stmmac_mac_interrupt) #17
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 14120
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @stmmac_common_interrupt(ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %7, %5
  %14 = phi i32 [ 0, %5 ], [ 1, %12 ], [ 1, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_safety_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7, !prof !14

5:                                                ; preds = %2
  %6 = load ptr, ptr inttoptr (i32 1572 to ptr), align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.stmmac_safety_interrupt) #17
  br label %14

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 14120
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i1 @stmmac_safety_feat_interrupt(ptr noundef %3)
  br label %14

14:                                               ; preds = %12, %7, %5
  %15 = phi i32 [ 0, %5 ], [ 1, %12 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_msi_intr_rx(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stmmac_rx_queue, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, -256
  %6 = add i32 %5, -256
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %12, !prof !14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stmmac_priv, ptr %7, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.stmmac_msi_intr_rx) #17
  br label %19

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %7, i32 0, i32 82
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %7, i32 noundef %4, i32 noundef 1)
  br label %19

19:                                               ; preds = %17, %12, %9
  %20 = phi i32 [ 0, %9 ], [ 1, %17 ], [ 1, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_msi_intr_tx(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = mul i32 %4, -128
  %6 = add i32 %5, -2368
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %12, !prof !14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stmmac_priv, ptr %7, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.stmmac_msi_intr_tx) #17
  br label %25

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %7, i32 0, i32 82
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %7, i32 noundef %4, i32 noundef 2)
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !11

21:                                               ; preds = %17
  tail call fastcc void @stmmac_bump_dma_threshold(ptr noundef %7, i32 noundef %4)
  br label %25

22:                                               ; preds = %17
  %23 = icmp eq i32 %18, 1
  br i1 %23, label %24, label %25, !prof !14

24:                                               ; preds = %22
  tail call fastcc void @stmmac_tx_err(ptr noundef %7, i32 noundef %4)
  br label %25

25:                                               ; preds = %24, %22, %21, %12, %9
  %26 = phi i32 [ 0, %9 ], [ 1, %12 ], [ 1, %22 ], [ 1, %24 ], [ 1, %21 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_common_interrupt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 58
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 64
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ true, %1 ], [ %14, %11 ]
  %17 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %18 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 64
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  tail call void @pm_wakeup_dev_event(ptr noundef %23, i32 noundef 0, i1 noundef zeroext false) #16
  br label %24

24:                                               ; preds = %21, %15
  %25 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 43
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.stmmac_ops, ptr %31, i32 0, i32 47
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %39 = load ptr, ptr %38, align 32
  %40 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34
  tail call void %35(ptr noundef %39, ptr noundef %41, ptr noundef %42, i32 noundef %7) #16
  br label %43

43:                                               ; preds = %37, %33, %28, %24
  %44 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 44
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %121, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.stmmac_ops, ptr %50, i32 0, i32 50
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %58 = load ptr, ptr %57, align 32
  %59 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %54(ptr noundef %58, ptr noundef %60) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %121, label %63

63:                                               ; preds = %56, %52, %47
  %64 = phi i32 [ %61, %56 ], [ -22, %52 ], [ -22, %47 ]
  %65 = load ptr, ptr %2, align 64
  %66 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %65, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %67, i32 0, i32 2
  %70 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %67, i32 0, i32 1
  %71 = load i8, ptr %70, align 1, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %63
  %74 = and i32 %64, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %69, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, ptr %69, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load ptr, ptr %48, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.stmmac_ops, ptr %82, i32 0, i32 49
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %90 = load ptr, ptr %89, align 32
  tail call void %86(ptr noundef %90, i32 noundef 1) #16
  br label %91

91:                                               ; preds = %88, %84, %80, %73
  %92 = and i32 %64, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %68, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 1, ptr %68, align 4
  br label %98

98:                                               ; preds = %97, %94, %91
  %99 = and i32 %64, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 2, ptr %69, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = and i32 %64, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 2, ptr %68, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 85
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %107) #16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 86
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 87
  %120 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef nonnull %116, ptr noundef %119) #16
  br label %121

121:                                              ; preds = %118, %114, %111, %106, %63, %56, %43
  %122 = load ptr, ptr %2, align 64
  %123 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %122, i32 0, i32 13
  %124 = load i32, ptr %123, align 4
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %125, i1 true, i1 %16
  br i1 %126, label %127, label %189

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %148, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.stmmac_ops, ptr %130, i32 0, i32 13
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34
  %138 = tail call i32 %134(ptr noundef %129, ptr noundef %137) #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %150, label %140, !prof !11

140:                                              ; preds = %136
  %141 = and i32 %138, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 4
  store i8 1, ptr %144, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = and i32 %138, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145, %132, %127
  %149 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 4
  store i8 0, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %145, %136
  %151 = icmp eq i32 %17, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %163, %150
  %153 = phi i32 [ %164, %163 ], [ 0, %150 ]
  %154 = load ptr, ptr %128, align 4
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.stmmac_ops, ptr %155, i32 0, i32 14
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = tail call i32 %159(ptr noundef %154, i32 noundef %153) #16
  br label %163

163:                                              ; preds = %161, %157, %152
  %164 = add nuw i32 %153, 1
  %165 = icmp eq i32 %164, %17
  br i1 %165, label %166, label %152

166:                                              ; preds = %163, %150
  %167 = load ptr, ptr %128, align 4
  %168 = getelementptr inbounds %struct.mac_device_info, ptr %167, i32 0, i32 15
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34, i32 84
  %173 = load i32, ptr %172, align 16
  %174 = icmp eq i32 %173, 0
  %175 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %176 = load ptr, ptr %175, align 4
  br i1 %174, label %178, label %177

177:                                              ; preds = %171
  tail call void @netif_carrier_on(ptr noundef %176) #16
  br label %179

178:                                              ; preds = %171
  tail call void @netif_carrier_off(ptr noundef %176) #16
  br label %179

179:                                              ; preds = %178, %177, %166
  %180 = load ptr, ptr %128, align 4
  %181 = getelementptr inbounds %struct.mac_device_info, ptr %180, i32 0, i32 4
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %182, i32 0, i32 7
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  tail call void %186(ptr noundef %0) #16
  br label %189

189:                                              ; preds = %188, %184, %179, %121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @stmmac_safety_feat_interrupt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stmmac_ops, ptr %4, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 32
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 29
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 35
  %18 = tail call i32 %8(ptr noundef %12, ptr noundef %14, i32 noundef %16, ptr noundef %17) #16
  %19 = icmp ne i32 %18, 0
  %20 = icmp ne i32 %18, -22
  %21 = and i1 %19, %20
  switch i32 %18, label %22 [
    i32 -22, label %36
    i32 0, label %36
  ]

22:                                               ; preds = %10
  %23 = load ptr, ptr %11, align 4
  tail call void @netif_carrier_off(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 82
  tail call void @_set_bit(i32 noundef 1, ptr noundef %24) #16
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %24) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 83
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 84
  %35 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %33, ptr noundef %34) #16
  br label %36

36:                                               ; preds = %31, %28, %22, %10, %10, %6, %1
  %37 = phi i1 [ %21, %10 ], [ %21, %10 ], [ %21, %22 ], [ %21, %28 ], [ %21, %31 ], [ false, %6 ], [ false, %1 ]
  ret i1 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_napi_check(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %7, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 32
  %16 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34
  %17 = tail call i32 %11(ptr noundef %15, ptr noundef %16, i32 noundef %1, i32 noundef %2) #16
  br label %18

18:                                               ; preds = %13, %9, %3
  %19 = phi i32 [ %17, %13 ], [ -22, %9 ], [ -22, %3 ]
  %20 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1
  %21 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 20, i32 %1, i32 4
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, null
  %24 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 4
  %25 = select i1 %23, ptr %20, ptr %24
  %26 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 2
  %30 = select i1 %28, ptr %29, ptr %24
  %31 = and i32 %19, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %35 = load ptr, ptr %34, align 64
  %36 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %35, i32 0, i32 29
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, %1
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %25) #16
  br i1 %40, label %41, label %56

41:                                               ; preds = %39
  %42 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 6
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #16
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.mac_device_info, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %46, i32 0, i32 12
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %54 = load ptr, ptr %53, align 32
  tail call void %50(ptr noundef %54, i32 noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #16
  br label %55

55:                                               ; preds = %52, %48, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #16
  tail call void @__napi_schedule(ptr noundef %25) #16
  br label %56

56:                                               ; preds = %55, %39, %33, %18
  %57 = and i32 %19, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %61 = load ptr, ptr %60, align 64
  %62 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 30
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, %1
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %30) #16
  br i1 %66, label %67, label %82

67:                                               ; preds = %65
  %68 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 26, i32 %1, i32 6
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %68) #16
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds %struct.mac_device_info, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %72, i32 0, i32 12
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %80 = load ptr, ptr %79, align 32
  tail call void %76(ptr noundef %80, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #16
  br label %81

81:                                               ; preds = %78, %74, %67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %68, i32 noundef %69) #16
  tail call void @__napi_schedule(ptr noundef %30) #16
  br label %82

82:                                               ; preds = %81, %65, %59, %56
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_bump_dma_threshold(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34, i32 38
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %18, label %6, !prof !11

6:                                                ; preds = %2
  %7 = load i32, ptr @tc, align 4
  %8 = icmp slt i32 %7, 257
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = add nsw i32 %7, 64
  store i32 %10, ptr @tc, align 4
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %12, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1, i32 %10
  tail call fastcc void @stmmac_set_dma_operation_mode(ptr noundef %0, i32 noundef %10, i32 noundef %16, i32 noundef %1)
  %17 = load i32, ptr @tc, align 4
  store i32 %17, ptr %3, align 8
  br label %18

18:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_tx_err(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 87
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr %struct.netdev_queue, ptr %6, i32 %1, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mac_device_info, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %11, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 32
  tail call void %15(ptr noundef %19, i32 noundef %1) #16
  br label %20

20:                                               ; preds = %17, %13, %2
  tail call fastcc void @dma_free_tx_skbufs(ptr noundef %0, i32 noundef %1)
  %21 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %22 = load i32, ptr %21, align 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %26 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 5
  %27 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %28 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 6
  %29 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 7
  %30 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  br label %31

31:                                               ; preds = %65, %24
  %32 = phi i32 [ %22, %24 ], [ %66, %65 ]
  %33 = phi i32 [ 0, %24 ], [ %67, %65 ]
  %34 = add i32 %32, -1
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, ptr %25, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %26, align 64
  %41 = getelementptr %struct.dma_extended_desc, ptr %40, i32 %33
  br label %52

42:                                               ; preds = %31
  %43 = load i32, ptr %27, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %28, align 4
  %48 = getelementptr %struct.dma_edesc, ptr %47, i32 %33, i32 4
  br label %52

49:                                               ; preds = %42
  %50 = load ptr, ptr %29, align 8
  %51 = getelementptr %struct.dma_desc, ptr %50, i32 %33
  br label %52

52:                                               ; preds = %49, %46, %39
  %53 = phi ptr [ %41, %39 ], [ %48, %46 ], [ %51, %49 ]
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr inbounds %struct.mac_device_info, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %56, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %30, align 4
  tail call void %60(ptr noundef %53, i32 noundef %63, i32 noundef %36) #16
  %64 = load i32, ptr %21, align 64
  br label %65

65:                                               ; preds = %62, %58, %52
  %66 = phi i32 [ %64, %62 ], [ %32, %58 ], [ %32, %52 ]
  %67 = add nuw i32 %33, 1
  %68 = icmp ult i32 %67, %66
  br i1 %68, label %31, label %69

69:                                               ; preds = %65, %20
  %70 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 13
  store i32 0, ptr %70, align 32
  %71 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 12
  store i32 0, ptr %71, align 4
  %72 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 16
  store i32 0, ptr %72, align 4
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 87
  %75 = load ptr, ptr %74, align 64
  %76 = getelementptr %struct.netdev_queue, ptr %75, i32 %1, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %76) #16
  %77 = getelementptr %struct.netdev_queue, ptr %75, i32 %1, i32 14
  tail call void @dql_reset(ptr noundef %77) #16
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr inbounds %struct.mac_device_info, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %107, label %82

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %80, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %99, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %88 = load ptr, ptr %87, align 32
  %89 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %90 = load ptr, ptr %89, align 64
  %91 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %90, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 14
  %94 = load i32, ptr %93, align 4
  tail call void %84(ptr noundef %88, ptr noundef %92, i32 noundef %94, i32 noundef %1) #16
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr inbounds %struct.mac_device_info, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %86, %82
  %100 = phi ptr [ %97, %86 ], [ %80, %82 ]
  %101 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %100, i32 0, i32 13
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %106 = load ptr, ptr %105, align 32
  tail call void %102(ptr noundef %106, i32 noundef %1) #16
  br label %107

107:                                              ; preds = %104, %99, %86, %69
  %108 = load ptr, ptr %3, align 4
  %109 = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 36, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  %112 = load ptr, ptr %3, align 4
  %113 = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 87
  %114 = load ptr, ptr %113, align 64
  %115 = getelementptr %struct.netdev_queue, ptr %114, i32 %1
  tail call void @netif_tx_wake_queue(ptr noundef %115) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_set_dma_operation_mode(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 33, i32 %3
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 34, i32 %3, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 29
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 30
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 27
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 26
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 28
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = phi i32 [ %22, %20 ], [ %16, %4 ]
  %25 = icmp eq i32 %18, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 27
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %28, %26 ], [ %18, %23 ]
  %31 = udiv i32 %24, %12
  %32 = udiv i32 %30, %14
  %33 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mac_device_info, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %36, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %44 = load ptr, ptr %43, align 32
  tail call void %40(ptr noundef %44, i32 noundef %2, i32 noundef %3, i32 noundef %31, i8 noundef zeroext %8) #16
  %45 = load ptr, ptr %33, align 4
  %46 = getelementptr inbounds %struct.mac_device_info, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %42, %38
  %50 = phi ptr [ %47, %42 ], [ %36, %38 ]
  %51 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %50, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %56 = load ptr, ptr %55, align 32
  tail call void %52(ptr noundef %56, i32 noundef %1, i32 noundef %3, i32 noundef %32, i8 noundef zeroext %10) #16
  br label %57

57:                                               ; preds = %54, %49, %42, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [8 x i32], align 4
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 14120
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %138

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i1 @stmmac_safety_feat_interrupt(ptr noundef %4)
  br i1 %10, label %138, label %11

11:                                               ; preds = %9
  tail call fastcc void @stmmac_common_interrupt(ptr noundef %4)
  %12 = getelementptr i8, ptr %1, i32 12096
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 30
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 29
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %15, i32 %17) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #16, !annotation !10
  %19 = icmp ugt i32 %18, 8
  %20 = load i1, ptr @stmmac_dma_interrupt.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !14

23:                                               ; preds = %11
  store i1 true, ptr @stmmac_dma_interrupt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 2812, i32 noundef 9, ptr noundef null) #16
  br label %24

24:                                               ; preds = %23, %11
  %25 = tail call i32 @llvm.umin.i32(i32 %18, i32 8) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %62, %58, %54, %50, %46, %42, %38, %35, %24
  %28 = icmp eq i32 %15, 0
  br i1 %28, label %137, label %29

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %1, i32 11224
  %31 = getelementptr i8, ptr %1, i32 12212
  %32 = getelementptr i8, ptr %1, i32 12208
  %33 = getelementptr i8, ptr %1, i32 1580
  %34 = getelementptr i8, ptr %1, i32 1568
  br label %65

35:                                               ; preds = %24
  %36 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 0, i32 noundef 3) #16
  store i32 %36, ptr %3, align 4
  %37 = icmp eq i32 %25, 1
  br i1 %37, label %27, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 1, i32 noundef 3) #16
  %40 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = icmp eq i32 %25, 2
  br i1 %41, label %27, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 2, i32 noundef 3) #16
  %44 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = icmp eq i32 %25, 3
  br i1 %45, label %27, label %46

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 3, i32 noundef 3) #16
  %48 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = icmp eq i32 %25, 4
  br i1 %49, label %27, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 4, i32 noundef 3) #16
  %52 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = icmp eq i32 %25, 5
  br i1 %53, label %27, label %54

54:                                               ; preds = %50
  %55 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 5, i32 noundef 3) #16
  %56 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 5
  store i32 %55, ptr %56, align 4
  %57 = icmp eq i32 %25, 6
  br i1 %57, label %27, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 6, i32 noundef 3) #16
  %60 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = icmp eq i32 %25, 7
  br i1 %61, label %27, label %62

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @stmmac_napi_check(ptr noundef %4, i32 noundef 7, i32 noundef 3) #16
  %64 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 7
  store i32 %63, ptr %64, align 4
  br label %27

65:                                               ; preds = %134, %29
  %66 = phi i32 [ %135, %134 ], [ 0, %29 ]
  %67 = getelementptr [8 x i32], ptr %3, i32 0, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %131, label %71, !prof !11

71:                                               ; preds = %65
  %72 = load i32, ptr %30, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %134, label %74, !prof !11

74:                                               ; preds = %71
  %75 = load i32, ptr @tc, align 4
  %76 = icmp slt i32 %75, 257
  br i1 %76, label %77, label %134

77:                                               ; preds = %74
  %78 = add nsw i32 %75, 64
  store i32 %78, ptr @tc, align 4
  %79 = load ptr, ptr %12, align 64
  %80 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 20
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 1, i32 %78
  %84 = getelementptr %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 33, i32 %66
  %85 = load i8, ptr %84, align 4
  %86 = getelementptr %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 34, i32 %66, i32 1
  %87 = load i8, ptr %86, align 4
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 29
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 30
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 27
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %79, i32 0, i32 26
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %93, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %77
  %98 = load i32, ptr %31, align 4
  br label %99

99:                                               ; preds = %97, %77
  %100 = phi i32 [ %98, %97 ], [ %93, %77 ]
  %101 = icmp eq i32 %95, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, ptr %32, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ %103, %102 ], [ %95, %99 ]
  %106 = udiv i32 %100, %89
  %107 = udiv i32 %105, %91
  %108 = load ptr, ptr %33, align 4
  %109 = getelementptr inbounds %struct.mac_device_info, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %129, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %110, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %34, align 32
  tail call void %114(ptr noundef %117, i32 noundef %83, i32 noundef %66, i32 noundef %106, i8 noundef zeroext %85) #16
  %118 = load ptr, ptr %33, align 4
  %119 = getelementptr inbounds %struct.mac_device_info, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %116, %112
  %123 = phi ptr [ %120, %116 ], [ %110, %112 ]
  %124 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %123, i32 0, i32 8
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %34, align 32
  tail call void %125(ptr noundef %128, i32 noundef %78, i32 noundef %66, i32 noundef %107, i8 noundef zeroext %87) #16
  br label %129

129:                                              ; preds = %127, %122, %116, %104
  %130 = load i32, ptr @tc, align 4
  store i32 %130, ptr %30, align 8
  br label %134

131:                                              ; preds = %65
  %132 = icmp eq i32 %68, 1
  br i1 %132, label %133, label %134, !prof !14

133:                                              ; preds = %131
  tail call fastcc void @stmmac_tx_err(ptr noundef %4, i32 noundef %66) #16
  br label %134

134:                                              ; preds = %133, %131, %129, %74, %71
  %135 = add nuw i32 %66, 1
  %136 = icmp eq i32 %135, %15
  br i1 %136, label %137, label %65

137:                                              ; preds = %134, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %138

138:                                              ; preds = %137, %9, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_ptp_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_napi_poll_rx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_buff, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.stmmac_channel, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.stmmac_channel, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 32
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 34, i32 43
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 26, i32 %11
  %16 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mac_device_info, ptr %17, i32 0, i32 14
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 11
  %21 = load i32, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #16, !annotation !10
  %22 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.page_pool_params, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 4095
  %29 = and i32 %28, -4096
  %30 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 41
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 55
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 8
  %39 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 10
  %40 = select i1 %37, i32 16, i32 32
  %41 = select i1 %37, ptr %39, ptr %38
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr inbounds %struct.mac_device_info, ptr %17, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %44, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 21
  %52 = load i32, ptr %51, align 64
  %53 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 15
  %54 = load i32, ptr %53, align 4
  tail call void %48(ptr noundef %42, i32 noundef %52, i1 noundef zeroext true, i32 noundef %54, i32 noundef %40) #16
  br label %55

55:                                               ; preds = %50, %46, %34, %2
  %56 = icmp eq i32 %1, 0
  br i1 %56, label %569, label %57

57:                                               ; preds = %55
  %58 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 17
  %59 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 18
  %60 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 18, i32 2
  %61 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 18, i32 1
  %62 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 6
  %63 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 55
  %64 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 8
  %65 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 10
  %66 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 14
  %67 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 34
  %68 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 21
  %69 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 6
  %70 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 34, i32 27
  %71 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 40
  %72 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 15
  %73 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 3
  %74 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 6
  %75 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 4
  %76 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 3
  %77 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 1
  %78 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 2
  %79 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 101
  %80 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 12
  %81 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 36
  %82 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 62
  %83 = icmp eq i32 %19, 0
  %84 = trunc i32 %11 to i16
  %85 = add i16 %84, 1
  br label %86

86:                                               ; preds = %563, %57
  %87 = phi i32 [ 0, %57 ], [ %567, %563 ]
  %88 = phi i32 [ %21, %57 ], [ %147, %563 ]
  %89 = phi i32 [ 0, %57 ], [ %564, %563 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !10
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, ptr %58, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %59, align 32
  %96 = load i32, ptr %60, align 8
  %97 = load i32, ptr %61, align 4
  br label %99

98:                                               ; preds = %91, %86
  store i32 0, ptr %58, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi ptr [ %95, %94 ], [ null, %98 ]
  %101 = phi i32 [ %97, %94 ], [ 0, %98 ]
  %102 = phi i32 [ %96, %94 ], [ 0, %98 ]
  br label %103

103:                                              ; preds = %432, %99
  %104 = phi ptr [ null, %432 ], [ %100, %99 ]
  %105 = phi i32 [ %147, %432 ], [ %88, %99 ]
  %106 = phi i32 [ %311, %432 ], [ %101, %99 ]
  %107 = phi i32 [ 0, %432 ], [ %102, %99 ]
  %108 = phi i32 [ %437, %432 ], [ %87, %99 ]
  br label %109

109:                                              ; preds = %430, %103
  %110 = phi ptr [ %104, %103 ], [ %431, %430 ]
  %111 = phi i32 [ %105, %103 ], [ %147, %430 ]
  %112 = phi i32 [ %106, %103 ], [ %311, %430 ]
  %113 = phi i32 [ %107, %103 ], [ 0, %430 ]
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %187, %109
  %116 = phi i32 [ %147, %187 ], [ %111, %109 ]
  %117 = load ptr, ptr %62, align 8
  %118 = load i32, ptr %63, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %64, align 16
  %122 = getelementptr %struct.dma_extended_desc, ptr %121, i32 %116
  br label %126

123:                                              ; preds = %115
  %124 = load ptr, ptr %65, align 64
  %125 = getelementptr %struct.dma_desc, ptr %124, i32 %116
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi ptr [ %122, %120 ], [ %125, %123 ]
  %128 = load ptr, ptr %16, align 4
  %129 = getelementptr inbounds %struct.mac_device_info, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %559, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %130, i32 0, i32 13
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %559, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %66, align 4
  %138 = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 36
  %139 = call i32 %134(ptr noundef %138, ptr noundef %67, ptr noundef %127) #16
  %140 = and i32 %139, 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %559, !prof !11

142:                                              ; preds = %136
  %143 = load i32, ptr %20, align 4
  %144 = add i32 %143, 1
  %145 = load i32, ptr %68, align 64
  %146 = add i32 %145, -1
  %147 = and i32 %146, %144
  store i32 %147, ptr %20, align 4
  %148 = load i32, ptr %63, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %142
  %151 = load ptr, ptr %64, align 16
  %152 = getelementptr %struct.dma_extended_desc, ptr %151, i32 %147
  br label %156

153:                                              ; preds = %142
  %154 = load ptr, ptr %65, align 64
  %155 = getelementptr %struct.dma_desc, ptr %154, i32 %147
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi ptr [ %152, %150 ], [ %155, %153 ]
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %157) #16, !srcloc !28
  %158 = load i32, ptr %63, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %16, align 4
  %162 = getelementptr inbounds %struct.mac_device_info, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %163, i32 0, i32 14
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %66, align 4
  %171 = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 36
  %172 = load ptr, ptr %64, align 16
  %173 = getelementptr %struct.dma_extended_desc, ptr %172, i32 %116
  call void %167(ptr noundef %171, ptr noundef %67, ptr noundef %173) #16
  br label %174

174:                                              ; preds = %169, %165, %160, %156
  %175 = icmp eq i32 %139, 1
  br i1 %175, label %176, label %187, !prof !14

176:                                              ; preds = %174
  %177 = getelementptr %struct.stmmac_rx_buffer, ptr %117, i32 %116
  %178 = load ptr, ptr %22, align 4
  %179 = load ptr, ptr %177, align 4
  call void @page_pool_put_page(ptr noundef %178, ptr noundef %179, i32 noundef -1, i1 noundef zeroext true) #16
  store ptr null, ptr %177, align 4
  %180 = load i32, ptr %80, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = load ptr, ptr %66, align 4
  %184 = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 36, i32 4
  %185 = load i32, ptr %184, align 8
  %186 = add i32 %185, 1
  store i32 %186, ptr %184, align 8
  br label %193

187:                                              ; preds = %174
  %188 = and i32 %139, 16
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %114, i1 %189, i1 false
  br i1 %190, label %115, label %191, !prof !14

191:                                              ; preds = %187
  %192 = getelementptr %struct.stmmac_rx_buffer, ptr %117, i32 %116
  br i1 %114, label %193, label %196, !prof !14

193:                                              ; preds = %191, %182, %176
  %194 = phi i32 [ 1, %182 ], [ 1, %176 ], [ %113, %191 ]
  call void @consume_skb(ptr noundef %110) #16
  %195 = add i32 %108, 1
  br label %563

196:                                              ; preds = %191
  %197 = load ptr, ptr %192, align 4
  %198 = call ptr @page_address(ptr noundef %197) #16
  %199 = getelementptr inbounds %struct.anon.199, ptr %192, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr i8, ptr %198, i32 %200
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %201) #16, !srcloc !28
  %202 = getelementptr %struct.stmmac_rx_buffer, ptr %117, i32 %116, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %196
  %206 = call ptr @page_address(ptr noundef nonnull %203) #16
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %206) #16, !srcloc !28
  br label %207

207:                                              ; preds = %205, %196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4
  %208 = load ptr, ptr %16, align 4
  %209 = getelementptr inbounds %struct.mac_device_info, ptr %208, i32 0, i32 14
  %210 = load i32, ptr %209, align 4
  %211 = load i32, ptr %69, align 8
  %212 = icmp ne i32 %211, 0
  %213 = icmp ne i32 %112, 0
  %214 = and i1 %213, %212
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %267

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.mac_device_info, ptr %208, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %234, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %218, i32 0, i32 25
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %234, label %224

224:                                              ; preds = %220
  call void %222(ptr noundef %127, ptr noundef nonnull %4) #16
  %225 = load i32, ptr %69, align 8
  %226 = load i32, ptr %4, align 4
  %227 = icmp ne i32 %225, 0
  %228 = icmp ne i32 %226, 0
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load i32, ptr %70, align 4
  %232 = add i32 %231, 1
  store i32 %232, ptr %70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %233 = add i32 %226, %112
  br label %261

234:                                              ; preds = %224, %220, %216
  %235 = phi i32 [ %225, %224 ], [ %211, %220 ], [ %211, %216 ]
  %236 = icmp eq i32 %188, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %234
  %238 = load i32, ptr %26, align 4
  br label %256

239:                                              ; preds = %234
  %240 = load ptr, ptr %16, align 4
  %241 = getelementptr inbounds %struct.mac_device_info, ptr %240, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %251, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %242, i32 0, i32 12
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = call i32 %246(ptr noundef %127, i32 noundef %210) #16
  %250 = load i32, ptr %69, align 8
  br label %251

251:                                              ; preds = %248, %244, %239
  %252 = phi i32 [ %250, %248 ], [ %235, %244 ], [ %235, %239 ]
  %253 = phi i32 [ %249, %248 ], [ -22, %244 ], [ -22, %239 ]
  %254 = load i32, ptr %26, align 4
  %255 = call i32 @llvm.umin.i32(i32 %254, i32 %253) #16
  br label %256

256:                                              ; preds = %251, %237
  %257 = phi i32 [ %252, %251 ], [ %235, %237 ]
  %258 = phi i32 [ %255, %251 ], [ %238, %237 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %259 = add i32 %258, %112
  %260 = icmp eq i32 %257, 0
  br i1 %260, label %288, label %261

261:                                              ; preds = %256, %230
  %262 = phi i32 [ %233, %230 ], [ %259, %256 ]
  %263 = phi i32 [ %226, %230 ], [ %258, %256 ]
  %264 = load ptr, ptr %16, align 4
  %265 = getelementptr inbounds %struct.mac_device_info, ptr %264, i32 0, i32 14
  %266 = load i32, ptr %265, align 4
  br label %267

267:                                              ; preds = %261, %215
  %268 = phi i32 [ %210, %215 ], [ %266, %261 ]
  %269 = phi ptr [ %208, %215 ], [ %264, %261 ]
  %270 = phi i32 [ %112, %215 ], [ %262, %261 ]
  %271 = phi i32 [ 0, %215 ], [ %263, %261 ]
  %272 = icmp eq i32 %188, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %267
  %274 = load i32, ptr %26, align 4
  br label %288

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.mac_device_info, ptr %269, i32 0, i32 1
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %277, i32 0, i32 12
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = call i32 %281(ptr noundef %127, i32 noundef %268) #16
  br label %285

285:                                              ; preds = %283, %279, %275
  %286 = phi i32 [ %284, %283 ], [ -22, %279 ], [ -22, %275 ]
  %287 = sub i32 %286, %270
  br label %288

288:                                              ; preds = %285, %273, %256
  %289 = phi i32 [ %270, %273 ], [ %270, %285 ], [ %259, %256 ]
  %290 = phi i32 [ %271, %273 ], [ %271, %285 ], [ %258, %256 ]
  %291 = phi i32 [ %274, %273 ], [ %287, %285 ], [ 0, %256 ]
  %292 = add i32 %291, %289
  br i1 %189, label %308, label %293, !prof !14

293:                                              ; preds = %288
  %294 = load i32, ptr %71, align 8
  %295 = icmp sgt i32 %294, 63
  br i1 %295, label %298, label %296, !prof !11

296:                                              ; preds = %293
  %297 = icmp eq i32 %139, 4
  br i1 %297, label %308, label %298, !prof !11

298:                                              ; preds = %296, %293
  %299 = icmp eq i32 %291, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %298
  %301 = add i32 %291, -4
  %302 = add i32 %292, -4
  br label %308

303:                                              ; preds = %298
  %304 = icmp eq i32 %290, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %303
  %306 = add i32 %290, -4
  %307 = add i32 %292, -4
  br label %308

308:                                              ; preds = %305, %303, %300, %296, %288
  %309 = phi i32 [ %290, %300 ], [ %306, %305 ], [ 0, %303 ], [ %290, %296 ], [ %290, %288 ]
  %310 = phi i32 [ %301, %300 ], [ 0, %305 ], [ 0, %303 ], [ %291, %296 ], [ %291, %288 ]
  %311 = phi i32 [ %302, %300 ], [ %307, %305 ], [ %292, %303 ], [ %292, %296 ], [ %292, %288 ]
  %312 = icmp eq ptr %110, null
  br i1 %312, label %313, label %394

313:                                              ; preds = %308
  %314 = load ptr, ptr %72, align 8
  %315 = getelementptr inbounds %struct.anon.199, ptr %192, i32 0, i32 1
  %316 = load i32, ptr %315, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %314, i32 noundef %316, i32 noundef %309, i32 noundef %25) #16
  store i32 %29, ptr %74, align 4
  store ptr %73, ptr %75, align 4
  %317 = load ptr, ptr %192, align 4
  %318 = call ptr @page_address(ptr noundef %317) #16
  %319 = load i32, ptr %199, align 4
  %320 = getelementptr i8, ptr %318, i32 %319
  store ptr %318, ptr %76, align 4
  store ptr %320, ptr %5, align 4
  %321 = getelementptr i8, ptr %320, i32 %309
  store ptr %321, ptr %77, align 4
  %322 = getelementptr i8, ptr %320, i32 1
  store ptr %322, ptr %78, align 4
  %323 = ptrtoint ptr %321 to i32
  %324 = ptrtoint ptr %318 to i32
  %325 = load i32, ptr %199, align 4
  %326 = add i32 %325, %324
  %327 = sub i32 %323, %326
  %328 = load volatile ptr, ptr %79, align 16
  %329 = icmp eq ptr %328, null
  br i1 %329, label %339, label %330

330:                                              ; preds = %313
  %331 = call fastcc i32 @__stmmac_xdp_run_prog(ptr noundef %9, ptr noundef nonnull %328, ptr noundef nonnull %5) #16
  %332 = load ptr, ptr %77, align 4
  %333 = load ptr, ptr %76, align 4
  %334 = load i32, ptr %199, align 4
  %335 = ptrtoint ptr %332 to i32
  %336 = ptrtoint ptr %333 to i32
  %337 = add i32 %334, %336
  %338 = sub i32 %335, %337
  br label %339

339:                                              ; preds = %330, %313
  %340 = phi i32 [ %327, %313 ], [ %338, %330 ]
  %341 = phi i32 [ %323, %313 ], [ %335, %330 ]
  %342 = phi i32 [ 0, %313 ], [ %331, %330 ]
  %343 = sub i32 0, %342
  %344 = inttoptr i32 %343 to ptr
  %345 = call i32 @llvm.umax.i32(i32 %340, i32 %327) #16
  %346 = icmp ugt ptr %344, inttoptr (i32 -4096 to ptr)
  br i1 %346, label %347, label %379

347:                                              ; preds = %339
  %348 = and i32 %342, 1
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %373, label %350

350:                                              ; preds = %347
  %351 = load ptr, ptr %22, align 4
  %352 = load ptr, ptr %5, align 4
  %353 = load ptr, ptr @mem_map, align 4
  %354 = ptrtoint ptr %352 to i32
  %355 = add i32 %354, 1073741824
  %356 = lshr i32 %355, 12
  %357 = getelementptr %struct.page, ptr %353, i32 %356, i32 1
  %358 = load volatile i32, ptr %357, align 4
  %359 = and i32 %358, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361, !prof !11

361:                                              ; preds = %350
  %362 = add i32 %358, -1
  br label %366

363:                                              ; preds = %350
  %364 = getelementptr %struct.page, ptr %353, i32 %356
  %365 = ptrtoint ptr %364 to i32
  br label %366

366:                                              ; preds = %363, %361
  %367 = phi i32 [ %362, %361 ], [ %365, %363 ]
  %368 = inttoptr i32 %367 to ptr
  call void @page_pool_put_page(ptr noundef %351, ptr noundef %368, i32 noundef %345, i1 noundef zeroext true) #16
  store ptr null, ptr %192, align 4
  %369 = load ptr, ptr %66, align 4
  %370 = getelementptr inbounds %struct.net_device, ptr %369, i32 0, i32 36, i32 6
  %371 = load i32, ptr %370, align 8
  %372 = add i32 %371, 1
  store i32 %372, ptr %370, align 8
  br i1 %189, label %430, label %561

373:                                              ; preds = %347
  %374 = and i32 %342, 6
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %373
  %377 = or i32 %342, %89
  store ptr null, ptr %192, align 4
  %378 = add i32 %108, 1
  br label %563

379:                                              ; preds = %373, %339
  %380 = icmp eq i32 %342, 0
  br i1 %380, label %381, label %394

381:                                              ; preds = %379
  %382 = load ptr, ptr %5, align 4
  %383 = ptrtoint ptr %382 to i32
  %384 = sub i32 %341, %383
  %385 = call ptr @__napi_alloc_skb(ptr noundef %15, i32 noundef %384, i32 noundef 2592) #16
  %386 = icmp eq ptr %385, null
  br i1 %386, label %432, label %387

387:                                              ; preds = %381
  %388 = load ptr, ptr %5, align 4
  %389 = getelementptr inbounds %struct.sk_buff, ptr %385, i32 0, i32 17
  %390 = load ptr, ptr %389, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %390, ptr align 1 %388, i32 %384, i1 false) #16
  %391 = call ptr @skb_put(ptr noundef nonnull %385, i32 noundef %384) #16
  %392 = load ptr, ptr %22, align 4
  %393 = load ptr, ptr %192, align 4
  call void @page_pool_put_page(ptr noundef %392, ptr noundef %393, i32 noundef -1, i1 noundef zeroext true) #16
  br label %411

394:                                              ; preds = %379, %308
  %395 = phi ptr [ %344, %379 ], [ %110, %308 ]
  %396 = icmp eq i32 %309, 0
  br i1 %396, label %413, label %397

397:                                              ; preds = %394
  %398 = load ptr, ptr %72, align 8
  %399 = getelementptr inbounds %struct.anon.199, ptr %192, i32 0, i32 1
  %400 = load i32, ptr %399, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %398, i32 noundef %400, i32 noundef %309, i32 noundef %25) #16
  %401 = getelementptr inbounds %struct.sk_buff, ptr %395, i32 0, i32 15
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.skb_shared_info, ptr %402, i32 0, i32 2
  %404 = load i8, ptr %403, align 2
  %405 = zext i8 %404 to i32
  %406 = load ptr, ptr %192, align 4
  %407 = load i32, ptr %199, align 4
  %408 = load i32, ptr %26, align 4
  call void @skb_add_rx_frag(ptr noundef nonnull %395, i32 noundef %405, ptr noundef %406, i32 noundef %407, i32 noundef %309, i32 noundef %408) #16
  %409 = load ptr, ptr %22, align 4
  %410 = load ptr, ptr %192, align 4
  call void @page_pool_release_page(ptr noundef %409, ptr noundef %410) #16
  br label %411

411:                                              ; preds = %397, %387
  %412 = phi ptr [ %385, %387 ], [ %395, %397 ]
  store ptr null, ptr %192, align 4
  br label %413

413:                                              ; preds = %411, %394
  %414 = phi ptr [ %395, %394 ], [ %412, %411 ]
  %415 = icmp eq i32 %310, 0
  br i1 %415, label %429, label %416

416:                                              ; preds = %413
  %417 = load ptr, ptr %72, align 8
  %418 = getelementptr %struct.stmmac_rx_buffer, ptr %117, i32 %116, i32 2
  %419 = load i32, ptr %418, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %417, i32 noundef %419, i32 noundef %310, i32 noundef %25) #16
  %420 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 15
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr inbounds %struct.skb_shared_info, ptr %421, i32 0, i32 2
  %423 = load i8, ptr %422, align 2
  %424 = zext i8 %423 to i32
  %425 = load ptr, ptr %202, align 4
  %426 = load i32, ptr %26, align 4
  call void @skb_add_rx_frag(ptr noundef nonnull %414, i32 noundef %424, ptr noundef %425, i32 noundef 0, i32 noundef %310, i32 noundef %426) #16
  %427 = load ptr, ptr %22, align 4
  %428 = load ptr, ptr %202, align 4
  call void @page_pool_release_page(ptr noundef %427, ptr noundef %428) #16
  store ptr null, ptr %202, align 4
  br label %429

429:                                              ; preds = %416, %413
  br i1 %189, label %430, label %438, !prof !11

430:                                              ; preds = %429, %366
  %431 = phi ptr [ null, %366 ], [ %414, %429 ]
  br label %109

432:                                              ; preds = %381
  %433 = load ptr, ptr %66, align 4
  %434 = getelementptr inbounds %struct.net_device, ptr %433, i32 0, i32 36, i32 6
  %435 = load i32, ptr %434, align 8
  %436 = add i32 %435, 1
  store i32 %436, ptr %434, align 8
  %437 = add i32 %108, 1
  br i1 %189, label %103, label %563, !prof !11

438:                                              ; preds = %429
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %439 = load i32, ptr %80, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %488, label %441

441:                                              ; preds = %438
  %442 = load ptr, ptr %81, align 64
  %443 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %442, i32 0, i32 58
  %444 = load i32, ptr %443, align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %442, i32 0, i32 64
  %448 = load i32, ptr %447, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %446, %441
  br label %451

451:                                              ; preds = %450, %446
  %452 = phi ptr [ %157, %450 ], [ %127, %446 ]
  %453 = load ptr, ptr %16, align 4
  %454 = getelementptr inbounds %struct.mac_device_info, ptr %453, i32 0, i32 1
  %455 = load ptr, ptr %454, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %478, label %457

457:                                              ; preds = %451
  %458 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %455, i32 0, i32 18
  %459 = load ptr, ptr %458, align 4
  %460 = icmp eq ptr %459, null
  br i1 %460, label %470, label %461

461:                                              ; preds = %457
  %462 = load i32, ptr %82, align 16
  %463 = call i32 %459(ptr noundef %127, ptr noundef %157, i32 noundef %462) #16
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %488, label %465

465:                                              ; preds = %461
  %466 = load ptr, ptr %16, align 4
  %467 = getelementptr inbounds %struct.mac_device_info, ptr %466, i32 0, i32 1
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, null
  br i1 %469, label %478, label %470

470:                                              ; preds = %465, %457
  %471 = phi ptr [ %468, %465 ], [ %455, %457 ]
  %472 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %471, i32 0, i32 17
  %473 = load ptr, ptr %472, align 4
  %474 = icmp eq ptr %473, null
  br i1 %474, label %478, label %475

475:                                              ; preds = %470
  %476 = load i32, ptr %82, align 16
  call void %473(ptr noundef %452, i32 noundef %476, ptr noundef nonnull %3) #16
  %477 = load i64, ptr %3, align 8
  br label %478

478:                                              ; preds = %475, %470, %465, %451
  %479 = phi i64 [ %477, %475 ], [ 0, %470 ], [ 0, %465 ], [ 0, %451 ]
  %480 = load ptr, ptr %81, align 64
  %481 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %480, i32 0, i32 54
  %482 = load i32, ptr %481, align 4
  %483 = zext i32 %482 to i64
  %484 = sub i64 %479, %483
  %485 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 15
  %486 = load ptr, ptr %485, align 4
  %487 = getelementptr inbounds %struct.skb_shared_info, ptr %486, i32 0, i32 7
  store i64 %484, ptr %487, align 8
  br label %488

488:                                              ; preds = %478, %461, %438
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %489 = load ptr, ptr %66, align 4
  %490 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 17
  %491 = load ptr, ptr %490, align 4
  %492 = getelementptr inbounds %struct.vlan_ethhdr, ptr %491, i32 0, i32 1
  %493 = load i16, ptr %492, align 2
  switch i16 %493, label %516 [
    i16 129, label %494
    i16 -22392, label %499
  ]

494:                                              ; preds = %488
  %495 = getelementptr inbounds %struct.net_device, ptr %489, i32 0, i32 23
  %496 = load i64, ptr %495, align 16
  %497 = and i64 %496, 256
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %516, label %504

499:                                              ; preds = %488
  %500 = getelementptr inbounds %struct.net_device, ptr %489, i32 0, i32 23
  %501 = load i64, ptr %500, align 16
  %502 = and i64 %501, 70368744177664
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %516, label %504

504:                                              ; preds = %499, %494
  %505 = getelementptr inbounds %struct.vlan_ethhdr, ptr %491, i32 0, i32 2
  %506 = load i16, ptr %505, align 2
  %507 = call i16 @llvm.bswap.i16(i16 %506) #16
  %508 = getelementptr i8, ptr %491, i32 4
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %508, ptr noundef align 2 dereferenceable(12) %491, i32 12, i1 false) #16
  %509 = call ptr @skb_pull(ptr noundef nonnull %414, i32 noundef 4) #16
  %510 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 13, i32 0, i32 8
  store i16 %493, ptr %510, align 4
  %511 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 13, i32 0, i32 9
  store i16 %507, ptr %511, align 2
  %512 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 13, i32 0, i32 3
  %513 = load i16, ptr %512, align 2
  %514 = or i16 %513, 1
  store i16 %514, ptr %512, align 2
  %515 = load ptr, ptr %66, align 4
  br label %516

516:                                              ; preds = %504, %499, %494, %488
  %517 = phi ptr [ %489, %488 ], [ %489, %494 ], [ %489, %499 ], [ %515, %504 ]
  %518 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %414, ptr noundef %517) #16
  %519 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 13, i32 0, i32 16
  store i16 %518, ptr %519, align 8
  br i1 %83, label %525, label %520, !prof !14

520:                                              ; preds = %516
  %521 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 13
  %522 = load i16, ptr %521, align 8
  %523 = and i16 %522, -97
  %524 = or i16 %523, 32
  store i16 %524, ptr %521, align 8
  br label %525

525:                                              ; preds = %520, %516
  %526 = load ptr, ptr %16, align 4
  %527 = getelementptr inbounds %struct.mac_device_info, ptr %526, i32 0, i32 1
  %528 = load ptr, ptr %527, align 4
  %529 = icmp eq ptr %528, null
  br i1 %529, label %547, label %530

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %528, i32 0, i32 24
  %532 = load ptr, ptr %531, align 4
  %533 = icmp eq ptr %532, null
  br i1 %533, label %547, label %534

534:                                              ; preds = %530
  %535 = call i32 %532(ptr noundef %127, ptr noundef nonnull %7, ptr noundef nonnull %6) #16
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %547

537:                                              ; preds = %534
  %538 = load i32, ptr %7, align 4
  %539 = load i32, ptr %6, align 4
  %540 = icmp eq i32 %539, 3
  %541 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 13
  %542 = load i16, ptr %541, align 8
  %543 = select i1 %540, i16 256, i16 0
  %544 = and i16 %542, -769
  %545 = or i16 %544, %543
  store i16 %545, ptr %541, align 8
  %546 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 13, i32 0, i32 7
  store i32 %538, ptr %546, align 8
  br label %547

547:                                              ; preds = %537, %534, %530, %525
  %548 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 9
  store i16 %85, ptr %548, align 4
  %549 = call i32 @napi_gro_receive(ptr noundef %15, ptr noundef nonnull %414) #16
  %550 = load ptr, ptr %66, align 4
  %551 = getelementptr inbounds %struct.net_device, ptr %550, i32 0, i32 36
  %552 = load i32, ptr %551, align 8
  %553 = add i32 %552, 1
  store i32 %553, ptr %551, align 8
  %554 = load ptr, ptr %66, align 4
  %555 = getelementptr inbounds %struct.net_device, ptr %554, i32 0, i32 36, i32 2
  %556 = load i32, ptr %555, align 8
  %557 = add i32 %556, %311
  store i32 %557, ptr %555, align 8
  %558 = add i32 %108, 1
  br label %563

559:                                              ; preds = %136, %132, %126
  %560 = phi i32 [ %139, %136 ], [ -22, %132 ], [ -22, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %569

561:                                              ; preds = %366
  %562 = add i32 %108, 1
  br label %563

563:                                              ; preds = %561, %547, %432, %376, %193
  %564 = phi i32 [ %89, %193 ], [ %89, %547 ], [ %377, %376 ], [ %89, %561 ], [ %89, %432 ]
  %565 = phi i32 [ %112, %193 ], [ %311, %547 ], [ %311, %376 ], [ %311, %561 ], [ %311, %432 ]
  %566 = phi i32 [ %194, %193 ], [ 0, %547 ], [ 0, %376 ], [ 0, %561 ], [ 0, %432 ]
  %567 = phi i32 [ %195, %193 ], [ %558, %547 ], [ %378, %376 ], [ %562, %561 ], [ %437, %432 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %568 = icmp ult i32 %567, %1
  br i1 %568, label %86, label %569

569:                                              ; preds = %563, %559, %55
  %570 = phi i32 [ %89, %559 ], [ 0, %55 ], [ %564, %563 ]
  %571 = phi ptr [ %110, %559 ], [ null, %55 ], [ null, %563 ]
  %572 = phi i32 [ %560, %559 ], [ 0, %55 ], [ %139, %563 ]
  %573 = phi i32 [ %112, %559 ], [ 0, %55 ], [ %565, %563 ]
  %574 = phi i32 [ %113, %559 ], [ 0, %55 ], [ %566, %563 ]
  %575 = phi i32 [ %108, %559 ], [ 0, %55 ], [ %567, %563 ]
  %576 = and i32 %572, 16
  %577 = icmp ne i32 %576, 0
  %578 = icmp ne ptr %571, null
  %579 = select i1 %577, i1 true, i1 %578
  br i1 %579, label %580, label %585

580:                                              ; preds = %569
  %581 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 17
  store i32 1, ptr %581, align 4
  %582 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 18
  store ptr %571, ptr %582, align 32
  %583 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 18, i32 2
  store i32 %574, ptr %583, align 8
  %584 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 18, i32 1
  store i32 %573, ptr %584, align 4
  br label %585

585:                                              ; preds = %580, %569
  %586 = tail call ptr @llvm.thread.pointer() #16
  %587 = getelementptr inbounds %struct.thread_info, ptr %586, i32 0, i32 2
  %588 = load i32, ptr %587, align 8
  %589 = icmp slt i32 %588, 0
  br i1 %589, label %590, label %591, !prof !14

590:                                              ; preds = %585
  br label %591

591:                                              ; preds = %590, %585
  %592 = phi i32 [ 0, %590 ], [ %588, %585 ]
  %593 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 36
  %594 = load ptr, ptr %593, align 64
  %595 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %594, i32 0, i32 30
  %596 = load i32, ptr %595, align 4
  br label %597

597:                                              ; preds = %597, %591
  %598 = phi i32 [ %592, %591 ], [ %600, %597 ]
  %599 = icmp ult i32 %598, %596
  %600 = sub i32 %598, %596
  br i1 %599, label %601, label %597

601:                                              ; preds = %597
  %602 = and i32 %570, 2
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %610, label %604

604:                                              ; preds = %601
  %605 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 23, i32 %598, i32 2
  %606 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 1, i32 %598
  %607 = load i32, ptr %606, align 4
  %608 = mul i32 %607, 1000
  %609 = zext i32 %608 to i64
  call void @hrtimer_start_range_ns(ptr noundef %605, i64 noundef %609, i64 noundef 0, i32 noundef 1) #16
  br label %610

610:                                              ; preds = %604, %601
  %611 = and i32 %570, 4
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %614, label %613

613:                                              ; preds = %610
  call void @xdp_do_flush() #16
  br label %614

614:                                              ; preds = %613, %610
  %615 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11
  %616 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 12
  %617 = load i32, ptr %616, align 8
  %618 = load i32, ptr %20, align 4
  %619 = icmp ult i32 %618, %617
  br i1 %619, label %622, label %620

620:                                              ; preds = %614
  %621 = sub i32 %618, %617
  br label %627

622:                                              ; preds = %614
  %623 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 21
  %624 = load i32, ptr %623, align 64
  %625 = sub i32 %618, %617
  %626 = add i32 %625, %624
  br label %627

627:                                              ; preds = %622, %620
  %628 = phi i32 [ %621, %620 ], [ %626, %622 ]
  %629 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 37, i32 33
  %630 = load i32, ptr %629, align 4
  %631 = icmp ult i32 %630, 33
  %632 = select i1 %631, i32 10788, i32 10784
  %633 = icmp sgt i32 %628, 0
  br i1 %633, label %634, label %764

634:                                              ; preds = %627
  %635 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 6
  %636 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 55
  %637 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 8
  %638 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 10
  %639 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 6
  %640 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 2, i32 %11
  %641 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 63
  %642 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 21
  br label %643

643:                                              ; preds = %758, %634
  %644 = phi i32 [ %628, %634 ], [ %646, %758 ]
  %645 = phi i32 [ %617, %634 ], [ %762, %758 ]
  %646 = add nsw i32 %644, -1
  %647 = load ptr, ptr %635, align 8
  %648 = getelementptr %struct.stmmac_rx_buffer, ptr %647, i32 %645
  %649 = load i32, ptr %636, align 4
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %654, label %651

651:                                              ; preds = %643
  %652 = load ptr, ptr %637, align 16
  %653 = getelementptr %struct.dma_extended_desc, ptr %652, i32 %645
  br label %657

654:                                              ; preds = %643
  %655 = load ptr, ptr %638, align 64
  %656 = getelementptr %struct.dma_desc, ptr %655, i32 %645
  br label %657

657:                                              ; preds = %654, %651
  %658 = phi ptr [ %653, %651 ], [ %656, %654 ]
  %659 = load ptr, ptr %648, align 4
  %660 = icmp eq ptr %659, null
  br i1 %660, label %661, label %665

661:                                              ; preds = %657
  %662 = load ptr, ptr %22, align 4
  %663 = call ptr @page_pool_alloc_pages(ptr noundef %662, i32 noundef %632) #16
  store ptr %663, ptr %648, align 4
  %664 = icmp eq ptr %663, null
  br i1 %664, label %764, label %665

665:                                              ; preds = %661, %657
  %666 = phi ptr [ %663, %661 ], [ %659, %657 ]
  %667 = load i32, ptr %639, align 8
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %682, label %669

669:                                              ; preds = %665
  %670 = getelementptr %struct.stmmac_rx_buffer, ptr %647, i32 %645, i32 1
  %671 = load ptr, ptr %670, align 4
  %672 = icmp eq ptr %671, null
  br i1 %672, label %673, label %682

673:                                              ; preds = %669
  %674 = load ptr, ptr %22, align 4
  %675 = call ptr @page_pool_alloc_pages(ptr noundef %674, i32 noundef %632) #16
  store ptr %675, ptr %670, align 4
  %676 = icmp eq ptr %675, null
  br i1 %676, label %764, label %677

677:                                              ; preds = %673
  %678 = getelementptr inbounds %struct.page, ptr %675, i32 0, i32 1, i32 0, i32 2
  %679 = load i32, ptr %678, align 4
  %680 = getelementptr %struct.stmmac_rx_buffer, ptr %647, i32 %645, i32 2
  store i32 %679, ptr %680, align 4
  %681 = load ptr, ptr %648, align 4
  br label %682

682:                                              ; preds = %677, %669, %665
  %683 = phi ptr [ %681, %677 ], [ %666, %669 ], [ %666, %665 ]
  %684 = getelementptr inbounds %struct.page, ptr %683, i32 0, i32 1, i32 0, i32 2
  %685 = load i32, ptr %684, align 4
  %686 = getelementptr inbounds %struct.anon.199, ptr %648, i32 0, i32 2
  %687 = load i32, ptr %686, align 4
  %688 = add i32 %687, %685
  %689 = getelementptr inbounds %struct.anon.199, ptr %648, i32 0, i32 1
  store i32 %688, ptr %689, align 4
  %690 = load ptr, ptr %16, align 4
  %691 = getelementptr inbounds %struct.mac_device_info, ptr %690, i32 0, i32 1
  %692 = load ptr, ptr %691, align 4
  %693 = icmp eq ptr %692, null
  br i1 %693, label %702, label %694

694:                                              ; preds = %682
  %695 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %692, i32 0, i32 22
  %696 = load ptr, ptr %695, align 4
  %697 = icmp eq ptr %696, null
  br i1 %697, label %702, label %698

698:                                              ; preds = %694
  call void %696(ptr noundef %658, i32 noundef %688) #16
  %699 = load ptr, ptr %16, align 4
  %700 = getelementptr inbounds %struct.mac_device_info, ptr %699, i32 0, i32 1
  %701 = load ptr, ptr %700, align 4
  br label %702

702:                                              ; preds = %698, %694, %682
  %703 = phi ptr [ %701, %698 ], [ %692, %694 ], [ null, %682 ]
  %704 = load i32, ptr %639, align 8
  %705 = icmp eq i32 %704, 0
  %706 = icmp eq ptr %703, null
  br i1 %705, label %715, label %707

707:                                              ; preds = %702
  br i1 %706, label %723, label %708

708:                                              ; preds = %707
  %709 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %703, i32 0, i32 26
  %710 = load ptr, ptr %709, align 4
  %711 = icmp eq ptr %710, null
  br i1 %711, label %723, label %712

712:                                              ; preds = %708
  %713 = getelementptr %struct.stmmac_rx_buffer, ptr %647, i32 %645, i32 2
  %714 = load i32, ptr %713, align 4
  call void %710(ptr noundef %658, i32 noundef %714, i1 noundef zeroext true) #16
  br label %723

715:                                              ; preds = %702
  br i1 %706, label %723, label %716

716:                                              ; preds = %715
  %717 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %703, i32 0, i32 26
  %718 = load ptr, ptr %717, align 4
  %719 = icmp eq ptr %718, null
  br i1 %719, label %723, label %720

720:                                              ; preds = %716
  %721 = getelementptr %struct.stmmac_rx_buffer, ptr %647, i32 %645, i32 2
  %722 = load i32, ptr %721, align 4
  call void %718(ptr noundef %658, i32 noundef %722, i1 noundef zeroext false) #16
  br label %723

723:                                              ; preds = %720, %716, %715, %712, %708, %707
  %724 = load ptr, ptr %16, align 4
  %725 = getelementptr inbounds %struct.mac_device_info, ptr %724, i32 0, i32 3
  %726 = load ptr, ptr %725, align 4
  %727 = icmp eq ptr %726, null
  br i1 %727, label %733, label %728

728:                                              ; preds = %723
  %729 = getelementptr inbounds %struct.stmmac_mode_ops, ptr %726, i32 0, i32 5
  %730 = load ptr, ptr %729, align 4
  %731 = icmp eq ptr %730, null
  br i1 %731, label %733, label %732

732:                                              ; preds = %728
  call void %730(ptr noundef %615, ptr noundef %658) #16
  br label %733

733:                                              ; preds = %732, %728, %723
  %734 = load i32, ptr %615, align 64
  %735 = add i32 %734, 1
  store i32 %735, ptr %615, align 64
  %736 = load i32, ptr %640, align 4
  %737 = add i32 %736, %735
  store i32 %737, ptr %615, align 64
  %738 = load i32, ptr %640, align 4
  %739 = icmp ugt i32 %737, %738
  %740 = select i1 %739, i32 0, i32 %737
  store i32 %740, ptr %615, align 64
  %741 = load i32, ptr %640, align 4
  %742 = icmp eq i32 %741, 0
  %743 = icmp ne i32 %740, 0
  %744 = or i1 %742, %743
  %745 = load i32, ptr %641, align 4
  %746 = icmp ne i32 %745, 0
  %747 = select i1 %746, i1 %744, i1 false
  call void asm sideeffect "dmb oshst", "~{memory}"() #16, !srcloc !29
  %748 = load ptr, ptr %16, align 4
  %749 = getelementptr inbounds %struct.mac_device_info, ptr %748, i32 0, i32 1
  %750 = load ptr, ptr %749, align 4
  %751 = icmp eq ptr %750, null
  br i1 %751, label %758, label %752

752:                                              ; preds = %733
  %753 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %750, i32 0, i32 11
  %754 = load ptr, ptr %753, align 4
  %755 = icmp eq ptr %754, null
  br i1 %755, label %758, label %756

756:                                              ; preds = %752
  %757 = zext i1 %747 to i32
  call void %754(ptr noundef %658, i32 noundef %757) #16
  br label %758

758:                                              ; preds = %756, %752, %733
  %759 = add i32 %645, 1
  %760 = load i32, ptr %642, align 64
  %761 = add i32 %760, -1
  %762 = and i32 %761, %759
  %763 = icmp ugt i32 %644, 1
  br i1 %763, label %643, label %764

764:                                              ; preds = %758, %673, %661, %627
  %765 = phi i32 [ %617, %627 ], [ %645, %673 ], [ %645, %661 ], [ %762, %758 ]
  store i32 %765, ptr %616, align 8
  %766 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 15
  %767 = load i32, ptr %766, align 4
  %768 = shl i32 %765, 4
  %769 = add i32 %767, %768
  %770 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %11, i32 16
  store i32 %769, ptr %770, align 8
  %771 = load ptr, ptr %16, align 4
  %772 = getelementptr inbounds %struct.mac_device_info, ptr %771, i32 0, i32 2
  %773 = load ptr, ptr %772, align 4
  %774 = icmp eq ptr %773, null
  br i1 %774, label %782, label %775

775:                                              ; preds = %764
  %776 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %773, i32 0, i32 22
  %777 = load ptr, ptr %776, align 4
  %778 = icmp eq ptr %777, null
  br i1 %778, label %782, label %779

779:                                              ; preds = %775
  %780 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 13
  %781 = load ptr, ptr %780, align 32
  call void %777(ptr noundef %781, i32 noundef %769, i32 noundef %11) #16
  br label %782

782:                                              ; preds = %779, %775, %764
  %783 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 34, i32 40
  %784 = load i32, ptr %783, align 32
  %785 = add i32 %784, %575
  store i32 %785, ptr %783, align 32
  %786 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 34, i32 119, i32 %11
  %787 = load i32, ptr %786, align 8
  %788 = add i32 %787, %575
  store i32 %788, ptr %786, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #16
  %789 = icmp slt i32 %575, %1
  br i1 %789, label %790, label %807

790:                                              ; preds = %782
  %791 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %575) #16
  br i1 %791, label %792, label %807

792:                                              ; preds = %790
  %793 = getelementptr inbounds %struct.stmmac_channel, ptr %0, i32 0, i32 6
  %794 = call i32 @_raw_spin_lock_irqsave(ptr noundef %793) #16
  %795 = load ptr, ptr %16, align 4
  %796 = getelementptr inbounds %struct.mac_device_info, ptr %795, i32 0, i32 2
  %797 = load ptr, ptr %796, align 4
  %798 = icmp eq ptr %797, null
  br i1 %798, label %806, label %799

799:                                              ; preds = %792
  %800 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %797, i32 0, i32 11
  %801 = load ptr, ptr %800, align 4
  %802 = icmp eq ptr %801, null
  br i1 %802, label %806, label %803

803:                                              ; preds = %799
  %804 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 13
  %805 = load ptr, ptr %804, align 32
  call void %801(ptr noundef %805, i32 noundef %11, i1 noundef zeroext true, i1 noundef zeroext false) #16
  br label %806

806:                                              ; preds = %803, %799, %792
  call void @_raw_spin_unlock_irqrestore(ptr noundef %793, i32 noundef %794) #16
  br label %807

807:                                              ; preds = %806, %790, %782
  ret i32 %575
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_napi_poll_tx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 472
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 480
  %6 = load i32, ptr %5, align 32
  %7 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 34, i32 43
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = tail call fastcc i32 @stmmac_tx_clean(ptr noundef %4, i32 noundef %1, i32 noundef %6)
  %11 = icmp slt i32 %10, %1
  %12 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  br i1 %11, label %13, label %31

13:                                               ; preds = %2
  %14 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %12) #16
  br i1 %14, label %15, label %31

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %0, i32 476
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #16
  %18 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mac_device_info, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %21, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 13
  %29 = load ptr, ptr %28, align 32
  tail call void %25(ptr noundef %29, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext true) #16
  br label %30

30:                                               ; preds = %27, %23, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #16
  br label %31

31:                                               ; preds = %30, %13, %2
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_napi_poll_rxtx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 216
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 224
  %10 = load i32, ptr %9, align 32
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 34, i32 43
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = tail call fastcc i32 @stmmac_tx_clean(ptr noundef %8, i32 noundef %1, i32 noundef %10)
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %1)
  %16 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 12
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %17
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = sub i32 %19, %17
  br label %28

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 21
  %25 = load i32, ptr %24, align 64
  %26 = sub i32 %19, %17
  %27 = add i32 %26, %25
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %27, %23 ]
  %30 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 41
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 55
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 8
  %39 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 10
  %40 = select i1 %37, i32 16, i32 32
  %41 = select i1 %37, ptr %39, ptr %38
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 16
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mac_device_info, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %46, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 21
  %54 = load i32, ptr %53, align 64
  %55 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 15
  %56 = load i32, ptr %55, align 4
  tail call void %50(ptr noundef %42, i32 noundef %54, i1 noundef zeroext true, i32 noundef %56, i32 noundef %40) #16
  br label %57

57:                                               ; preds = %52, %48, %34, %28
  %58 = icmp eq i32 %1, 0
  br i1 %58, label %598, label %59

59:                                               ; preds = %57
  %60 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 17
  %61 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 18, i32 2
  %62 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 18, i32 1
  %63 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 6
  %64 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10
  %65 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 21
  %66 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 55
  %67 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 8
  %68 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 10
  %69 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 16
  %70 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 2, i32 %10
  %71 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 63
  %72 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 15
  %73 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 20, i32 %10, i32 16
  %74 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 13
  %75 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 14
  %76 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 34
  %77 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 6
  %78 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 34, i32 27
  %79 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 9
  %80 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 40
  %81 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 101
  %82 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 26, i32 %10, i32 4
  %83 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 12
  %84 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 36
  %85 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 62
  %86 = trunc i32 %10 to i16
  %87 = add i16 %86, 1
  br label %88

88:                                               ; preds = %581, %59
  %89 = phi i32 [ 0, %59 ], [ %587, %581 ]
  %90 = phi i32 [ 0, %59 ], [ %585, %581 ]
  %91 = phi i1 [ false, %59 ], [ %255, %581 ]
  %92 = phi i32 [ %19, %59 ], [ %285, %581 ]
  %93 = phi i32 [ %29, %59 ], [ %584, %581 ]
  %94 = icmp eq i32 %89, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, ptr %60, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %61, align 8
  %100 = load i32, ptr %62, align 4
  br label %102

101:                                              ; preds = %95, %88
  store i32 0, ptr %60, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ 0, %101 ], [ %100, %98 ]
  %104 = phi i32 [ 0, %101 ], [ %99, %98 ]
  br label %105

105:                                              ; preds = %332, %102
  %106 = phi i32 [ %333, %332 ], [ %93, %102 ]
  %107 = phi i32 [ %285, %332 ], [ %92, %102 ]
  %108 = phi i1 [ %255, %332 ], [ %91, %102 ]
  %109 = phi i32 [ 0, %332 ], [ %104, %102 ]
  %110 = phi i32 [ %334, %332 ], [ %89, %102 ]
  %111 = icmp ne i32 %109, 0
  br label %112

112:                                              ; preds = %326, %105
  %113 = phi i32 [ %254, %326 ], [ %106, %105 ]
  %114 = phi i32 [ %285, %326 ], [ %107, %105 ]
  %115 = phi i1 [ %255, %326 ], [ %108, %105 ]
  %116 = load ptr, ptr %63, align 8
  %117 = getelementptr %struct.stmmac_rx_buffer, ptr %116, i32 %114
  %118 = icmp slt i32 %113, 16
  %119 = select i1 %118, i1 true, i1 %115
  %120 = select i1 %118, i32 %113, i32 0
  %121 = xor i1 %118, true
  %122 = select i1 %121, i1 true, i1 %115
  br i1 %119, label %253, label %123

123:                                              ; preds = %112
  %124 = load i32, ptr %16, align 8
  %125 = load i32, ptr %18, align 4
  %126 = icmp ult i32 %125, %124
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = sub i32 %125, %124
  br label %133

129:                                              ; preds = %123
  %130 = load i32, ptr %65, align 64
  %131 = sub i32 %125, %124
  %132 = add i32 %131, %130
  br label %133

133:                                              ; preds = %129, %127
  %134 = phi i32 [ %128, %127 ], [ %132, %129 ]
  %135 = call i32 @llvm.umin.i32(i32 %134, i32 %113) #16
  %136 = icmp eq i32 %135, 0
  %137 = icmp eq i32 %125, %124
  %138 = select i1 %136, i1 true, i1 %137
  br i1 %138, label %250, label %139

139:                                              ; preds = %133
  %140 = getelementptr %struct.stmmac_rx_buffer, ptr %116, i32 %124
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %226, %139
  %144 = phi ptr [ null, %139 ], [ %160, %226 ]
  %145 = phi i32 [ %124, %139 ], [ %221, %226 ]
  %146 = phi ptr [ %140, %139 ], [ %228, %226 ]
  store ptr null, ptr %146, align 4
  br label %231

147:                                              ; preds = %226, %139
  %148 = phi i32 [ %150, %226 ], [ %135, %139 ]
  %149 = phi i32 [ %221, %226 ], [ %124, %139 ]
  %150 = add i32 %148, -1
  %151 = load i32, ptr %66, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load ptr, ptr %67, align 16
  %155 = getelementptr %struct.dma_extended_desc, ptr %154, i32 %149
  br label %159

156:                                              ; preds = %147
  %157 = load ptr, ptr %68, align 64
  %158 = getelementptr %struct.dma_desc, ptr %157, i32 %149
  br label %159

159:                                              ; preds = %156, %153
  %160 = phi ptr [ %155, %153 ], [ %158, %156 ]
  %161 = load ptr, ptr %69, align 4
  %162 = getelementptr inbounds %struct.mac_device_info, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %182, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %163, i32 0, i32 22
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  call void %167(ptr noundef %160, i32 noundef 0) #16
  %170 = load ptr, ptr %69, align 4
  %171 = getelementptr inbounds %struct.mac_device_info, ptr %170, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %169, %165
  %175 = phi ptr [ %170, %169 ], [ %161, %165 ]
  %176 = phi ptr [ %172, %169 ], [ %163, %165 ]
  %177 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %176, i32 0, i32 26
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  call void %178(ptr noundef %160, i32 noundef 0, i1 noundef zeroext false) #16
  %181 = load ptr, ptr %69, align 4
  br label %182

182:                                              ; preds = %180, %174, %169, %159
  %183 = phi ptr [ %181, %180 ], [ %175, %174 ], [ %170, %169 ], [ %161, %159 ]
  %184 = getelementptr inbounds %struct.mac_device_info, ptr %183, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.stmmac_mode_ops, ptr %185, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  call void %189(ptr noundef %64, ptr noundef %160) #16
  br label %192

192:                                              ; preds = %191, %187, %182
  %193 = load i32, ptr %64, align 64
  %194 = add i32 %193, 1
  store i32 %194, ptr %64, align 64
  %195 = load i32, ptr %70, align 4
  %196 = add i32 %195, %194
  store i32 %196, ptr %64, align 64
  %197 = load i32, ptr %70, align 4
  %198 = icmp ugt i32 %196, %197
  %199 = select i1 %198, i32 0, i32 %196
  store i32 %199, ptr %64, align 64
  %200 = load i32, ptr %70, align 4
  %201 = icmp eq i32 %200, 0
  %202 = icmp ne i32 %199, 0
  %203 = or i1 %201, %202
  %204 = load i32, ptr %71, align 4
  %205 = icmp ne i32 %204, 0
  %206 = select i1 %205, i1 %203, i1 false
  call void asm sideeffect "dmb oshst", "~{memory}"() #16, !srcloc !30
  %207 = load ptr, ptr %69, align 4
  %208 = getelementptr inbounds %struct.mac_device_info, ptr %207, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %192
  %212 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %209, i32 0, i32 11
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = zext i1 %206 to i32
  call void %213(ptr noundef %160, i32 noundef %216) #16
  br label %217

217:                                              ; preds = %215, %211, %192
  %218 = add i32 %149, 1
  %219 = load i32, ptr %65, align 64
  %220 = add i32 %219, -1
  %221 = and i32 %220, %218
  %222 = icmp eq i32 %150, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %217
  %224 = load i32, ptr %18, align 4
  %225 = icmp eq i32 %221, %224
  br i1 %225, label %231, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr %63, align 8
  %228 = getelementptr %struct.stmmac_rx_buffer, ptr %227, i32 %221
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %143, label %147

231:                                              ; preds = %223, %217, %143
  %232 = phi i1 [ false, %143 ], [ true, %217 ], [ true, %223 ]
  %233 = phi ptr [ %144, %143 ], [ %160, %217 ], [ %160, %223 ]
  %234 = phi i32 [ %145, %143 ], [ %221, %217 ], [ %221, %223 ]
  %235 = icmp eq ptr %233, null
  br i1 %235, label %250, label %236

236:                                              ; preds = %231
  store i32 %234, ptr %16, align 8
  %237 = load i32, ptr %72, align 4
  %238 = shl i32 %234, 4
  %239 = add i32 %237, %238
  store i32 %239, ptr %73, align 8
  %240 = load ptr, ptr %69, align 4
  %241 = getelementptr inbounds %struct.mac_device_info, ptr %240, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %250, label %244

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %242, i32 0, i32 22
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %74, align 32
  call void %246(ptr noundef %249, i32 noundef %239, i32 noundef %10) #16
  br label %250

250:                                              ; preds = %248, %244, %236, %231, %133
  %251 = phi i1 [ %232, %236 ], [ %232, %244 ], [ %232, %248 ], [ %232, %231 ], [ true, %133 ]
  %252 = xor i1 %251, true
  br label %253

253:                                              ; preds = %250, %112
  %254 = phi i32 [ %120, %112 ], [ 0, %250 ]
  %255 = phi i1 [ %122, %112 ], [ %252, %250 ]
  %256 = load i32, ptr %66, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %253
  %259 = load ptr, ptr %67, align 16
  %260 = getelementptr %struct.dma_extended_desc, ptr %259, i32 %114
  br label %264

261:                                              ; preds = %253
  %262 = load ptr, ptr %68, align 64
  %263 = getelementptr %struct.dma_desc, ptr %262, i32 %114
  br label %264

264:                                              ; preds = %261, %258
  %265 = phi ptr [ %260, %258 ], [ %263, %261 ]
  %266 = load ptr, ptr %69, align 4
  %267 = getelementptr inbounds %struct.mac_device_info, ptr %266, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %598, label %270

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %268, i32 0, i32 13
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %598, label %274

274:                                              ; preds = %270
  %275 = load ptr, ptr %75, align 4
  %276 = getelementptr inbounds %struct.net_device, ptr %275, i32 0, i32 36
  %277 = call i32 %272(ptr noundef %276, ptr noundef %76, ptr noundef %265) #16
  %278 = and i32 %277, 8
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %589, !prof !11

280:                                              ; preds = %274
  %281 = load i32, ptr %18, align 4
  %282 = add i32 %281, 1
  %283 = load i32, ptr %65, align 64
  %284 = add i32 %283, -1
  %285 = and i32 %284, %282
  store i32 %285, ptr %18, align 4
  %286 = load i32, ptr %66, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %280
  %289 = load ptr, ptr %67, align 16
  %290 = getelementptr %struct.dma_extended_desc, ptr %289, i32 %285
  br label %294

291:                                              ; preds = %280
  %292 = load ptr, ptr %68, align 64
  %293 = getelementptr %struct.dma_desc, ptr %292, i32 %285
  br label %294

294:                                              ; preds = %291, %288
  %295 = phi ptr [ %290, %288 ], [ %293, %291 ]
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %295) #16, !srcloc !28
  %296 = load ptr, ptr %117, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %589, label %298

298:                                              ; preds = %294
  %299 = load i32, ptr %66, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %315, label %301

301:                                              ; preds = %298
  %302 = load ptr, ptr %69, align 4
  %303 = getelementptr inbounds %struct.mac_device_info, ptr %302, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %315, label %306

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %304, i32 0, i32 14
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %315, label %310

310:                                              ; preds = %306
  %311 = load ptr, ptr %75, align 4
  %312 = getelementptr inbounds %struct.net_device, ptr %311, i32 0, i32 36
  %313 = load ptr, ptr %67, align 16
  %314 = getelementptr %struct.dma_extended_desc, ptr %313, i32 %114
  call void %308(ptr noundef %312, ptr noundef %76, ptr noundef %314) #16
  br label %315

315:                                              ; preds = %310, %306, %301, %298
  %316 = icmp eq i32 %277, 1
  br i1 %316, label %317, label %326, !prof !14

317:                                              ; preds = %315
  store ptr null, ptr %117, align 4
  %318 = add nsw i32 %254, 1
  %319 = load i32, ptr %83, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %581

321:                                              ; preds = %317
  %322 = load ptr, ptr %75, align 4
  %323 = getelementptr inbounds %struct.net_device, ptr %322, i32 0, i32 36, i32 4
  %324 = load i32, ptr %323, align 8
  %325 = add i32 %324, 1
  store i32 %325, ptr %323, align 8
  br label %581

326:                                              ; preds = %315
  %327 = and i32 %277, 16
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %111, i1 %328, i1 false
  br i1 %329, label %112, label %330, !prof !14

330:                                              ; preds = %326
  br i1 %111, label %581, label %331, !prof !14

331:                                              ; preds = %330
  br i1 %328, label %332, label %335, !prof !11

332:                                              ; preds = %331
  store ptr null, ptr %117, align 4
  %333 = add nsw i32 %254, 1
  %334 = add i32 %110, 1
  br label %105

335:                                              ; preds = %331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4
  %336 = load ptr, ptr %69, align 4
  %337 = getelementptr inbounds %struct.mac_device_info, ptr %336, i32 0, i32 14
  %338 = load i32, ptr %337, align 4
  %339 = load i32, ptr %77, align 8
  %340 = icmp ne i32 %339, 0
  %341 = icmp ne i32 %103, 0
  %342 = and i1 %341, %340
  br i1 %342, label %376, label %343

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.mac_device_info, ptr %336, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %372, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %345, i32 0, i32 25
  %349 = load ptr, ptr %348, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %365, label %351

351:                                              ; preds = %347
  call void %349(ptr noundef %265, ptr noundef nonnull %6) #16
  %352 = load i32, ptr %77, align 8
  %353 = load i32, ptr %6, align 4
  %354 = icmp ne i32 %352, 0
  %355 = icmp ne i32 %353, 0
  %356 = select i1 %354, i1 %355, i1 false
  br i1 %356, label %357, label %360

357:                                              ; preds = %351
  %358 = load i32, ptr %78, align 4
  %359 = add i32 %358, 1
  store i32 %359, ptr %78, align 4
  br label %376

360:                                              ; preds = %351
  %361 = load ptr, ptr %69, align 4
  %362 = getelementptr inbounds %struct.mac_device_info, ptr %361, i32 0, i32 1
  %363 = load ptr, ptr %362, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %372, label %365

365:                                              ; preds = %360, %347
  %366 = phi ptr [ %363, %360 ], [ %345, %347 ]
  %367 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %366, i32 0, i32 12
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %372, label %370

370:                                              ; preds = %365
  %371 = call i32 %368(ptr noundef %265, i32 noundef %338) #16
  br label %372

372:                                              ; preds = %370, %365, %360, %343
  %373 = phi i32 [ %371, %370 ], [ -22, %365 ], [ -22, %360 ], [ -22, %343 ]
  %374 = load i32, ptr %79, align 4
  %375 = call i32 @llvm.umin.i32(i32 %374, i32 %373) #16
  br label %376

376:                                              ; preds = %372, %357, %335
  %377 = phi i32 [ %353, %357 ], [ %375, %372 ], [ 0, %335 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %378 = add i32 %377, %103
  %379 = load i32, ptr %80, align 8
  %380 = icmp sgt i32 %379, 63
  br i1 %380, label %383, label %381, !prof !11

381:                                              ; preds = %376
  %382 = icmp eq i32 %277, 4
  br i1 %382, label %386, label %383, !prof !11

383:                                              ; preds = %381, %376
  %384 = add i32 %377, -4
  %385 = add i32 %378, -4
  br label %386

386:                                              ; preds = %383, %381
  %387 = phi i32 [ %385, %383 ], [ %378, %381 ]
  %388 = phi i32 [ %384, %383 ], [ %377, %381 ]
  %389 = load ptr, ptr %117, align 4
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr i8, ptr %390, i32 %388
  %392 = getelementptr inbounds %struct.xdp_buff, ptr %389, i32 0, i32 1
  store ptr %391, ptr %392, align 4
  %393 = load volatile ptr, ptr %81, align 16
  %394 = load ptr, ptr %117, align 4
  %395 = call fastcc i32 @__stmmac_xdp_run_prog(ptr noundef %8, ptr noundef %393, ptr noundef %394) #16
  switch i32 %395, label %578 [
    i32 0, label %396
    i32 1, label %571
    i32 2, label %576
    i32 4, label %576
  ]

396:                                              ; preds = %386
  %397 = load ptr, ptr %117, align 4
  %398 = getelementptr inbounds %struct.xdp_buff, ptr %397, i32 0, i32 1
  %399 = load ptr, ptr %398, align 4
  %400 = load ptr, ptr %397, align 4
  %401 = ptrtoint ptr %399 to i32
  %402 = ptrtoint ptr %400 to i32
  %403 = sub i32 %401, %402
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !10
  %404 = load ptr, ptr %69, align 4
  %405 = getelementptr inbounds %struct.mac_device_info, ptr %404, i32 0, i32 14
  %406 = load i32, ptr %405, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !10
  %407 = getelementptr inbounds %struct.xdp_buff, ptr %397, i32 0, i32 2
  %408 = load ptr, ptr %407, align 4
  %409 = ptrtoint ptr %408 to i32
  %410 = sub i32 %402, %409
  %411 = getelementptr inbounds %struct.xdp_buff, ptr %397, i32 0, i32 3
  %412 = load ptr, ptr %411, align 4
  %413 = ptrtoint ptr %412 to i32
  %414 = sub i32 %401, %413
  %415 = call ptr @__napi_alloc_skb(ptr noundef %82, i32 noundef %414, i32 noundef 10784) #16
  %416 = icmp eq ptr %415, null
  br i1 %416, label %445, label %417, !prof !14

417:                                              ; preds = %396
  %418 = load ptr, ptr %397, align 4
  %419 = load ptr, ptr %411, align 4
  %420 = ptrtoint ptr %418 to i32
  %421 = ptrtoint ptr %419 to i32
  %422 = sub i32 %420, %421
  %423 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 17
  %424 = load ptr, ptr %423, align 4
  %425 = getelementptr i8, ptr %424, i32 %422
  store ptr %425, ptr %423, align 4
  %426 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 14
  %427 = load ptr, ptr %426, align 8
  %428 = getelementptr i8, ptr %427, i32 %422
  store ptr %428, ptr %426, align 8
  %429 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 6
  %430 = load i32, ptr %429, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %433, label %432, !prof !11

432:                                              ; preds = %417
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #16, !srcloc !31
  unreachable

433:                                              ; preds = %417
  %434 = getelementptr i8, ptr %428, i32 %403
  store ptr %434, ptr %426, align 8
  %435 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 5
  %436 = load i32, ptr %435, align 8
  %437 = add i32 %436, %403
  store i32 %437, ptr %435, align 8
  %438 = load ptr, ptr %397, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %428, ptr align 1 %438, i32 %403, i1 false) #16
  %439 = icmp eq ptr %400, %408
  br i1 %439, label %448, label %440

440:                                              ; preds = %433
  %441 = trunc i32 %410 to i8
  %442 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 15
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr inbounds %struct.skb_shared_info, ptr %443, i32 0, i32 1
  store i8 %441, ptr %444, align 1
  br label %448

445:                                              ; preds = %396
  %446 = load ptr, ptr %75, align 4
  %447 = getelementptr inbounds %struct.net_device, ptr %446, i32 0, i32 36, i32 6
  br label %566

448:                                              ; preds = %440, %433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %449 = load i32, ptr %83, align 4
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %498, label %451

451:                                              ; preds = %448
  %452 = load ptr, ptr %84, align 64
  %453 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %452, i32 0, i32 58
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %451
  %457 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %452, i32 0, i32 64
  %458 = load i32, ptr %457, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %461, label %460

460:                                              ; preds = %456, %451
  br label %461

461:                                              ; preds = %460, %456
  %462 = phi ptr [ %295, %460 ], [ %265, %456 ]
  %463 = load ptr, ptr %69, align 4
  %464 = getelementptr inbounds %struct.mac_device_info, ptr %463, i32 0, i32 1
  %465 = load ptr, ptr %464, align 4
  %466 = icmp eq ptr %465, null
  br i1 %466, label %488, label %467

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %465, i32 0, i32 18
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %480, label %471

471:                                              ; preds = %467
  %472 = load i32, ptr %85, align 16
  %473 = call i32 %469(ptr noundef %265, ptr noundef %295, i32 noundef %472) #16
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %498, label %475

475:                                              ; preds = %471
  %476 = load ptr, ptr %69, align 4
  %477 = getelementptr inbounds %struct.mac_device_info, ptr %476, i32 0, i32 1
  %478 = load ptr, ptr %477, align 4
  %479 = icmp eq ptr %478, null
  br i1 %479, label %488, label %480

480:                                              ; preds = %475, %467
  %481 = phi ptr [ %478, %475 ], [ %465, %467 ]
  %482 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %481, i32 0, i32 17
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %488, label %485

485:                                              ; preds = %480
  %486 = load i32, ptr %85, align 16
  call void %483(ptr noundef %462, i32 noundef %486, ptr noundef nonnull %3) #16
  %487 = load i64, ptr %3, align 8
  br label %488

488:                                              ; preds = %485, %480, %475, %461
  %489 = phi i64 [ %487, %485 ], [ 0, %480 ], [ 0, %475 ], [ 0, %461 ]
  %490 = load ptr, ptr %84, align 64
  %491 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %490, i32 0, i32 54
  %492 = load i32, ptr %491, align 4
  %493 = zext i32 %492 to i64
  %494 = sub i64 %489, %493
  %495 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 15
  %496 = load ptr, ptr %495, align 4
  %497 = getelementptr inbounds %struct.skb_shared_info, ptr %496, i32 0, i32 7
  store i64 %494, ptr %497, align 8
  br label %498

498:                                              ; preds = %488, %471, %448
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %499 = load ptr, ptr %75, align 4
  %500 = load ptr, ptr %423, align 4
  %501 = getelementptr inbounds %struct.vlan_ethhdr, ptr %500, i32 0, i32 1
  %502 = load i16, ptr %501, align 2
  switch i16 %502, label %525 [
    i16 129, label %503
    i16 -22392, label %508
  ]

503:                                              ; preds = %498
  %504 = getelementptr inbounds %struct.net_device, ptr %499, i32 0, i32 23
  %505 = load i64, ptr %504, align 16
  %506 = and i64 %505, 256
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %525, label %513

508:                                              ; preds = %498
  %509 = getelementptr inbounds %struct.net_device, ptr %499, i32 0, i32 23
  %510 = load i64, ptr %509, align 16
  %511 = and i64 %510, 70368744177664
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %525, label %513

513:                                              ; preds = %508, %503
  %514 = getelementptr inbounds %struct.vlan_ethhdr, ptr %500, i32 0, i32 2
  %515 = load i16, ptr %514, align 2
  %516 = call i16 @llvm.bswap.i16(i16 %515) #16
  %517 = getelementptr i8, ptr %500, i32 4
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %517, ptr noundef align 2 dereferenceable(12) %500, i32 12, i1 false) #16
  %518 = call ptr @skb_pull(ptr noundef nonnull %415, i32 noundef 4) #16
  %519 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 13, i32 0, i32 8
  store i16 %502, ptr %519, align 4
  %520 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 13, i32 0, i32 9
  store i16 %516, ptr %520, align 2
  %521 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 13, i32 0, i32 3
  %522 = load i16, ptr %521, align 2
  %523 = or i16 %522, 1
  store i16 %523, ptr %521, align 2
  %524 = load ptr, ptr %75, align 4
  br label %525

525:                                              ; preds = %513, %508, %503, %498
  %526 = phi ptr [ %499, %498 ], [ %499, %503 ], [ %499, %508 ], [ %524, %513 ]
  %527 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %415, ptr noundef %526) #16
  %528 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 13, i32 0, i32 16
  store i16 %527, ptr %528, align 8
  %529 = icmp eq i32 %406, 0
  br i1 %529, label %535, label %530, !prof !14

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 13
  %532 = load i16, ptr %531, align 8
  %533 = and i16 %532, -97
  %534 = or i16 %533, 32
  store i16 %534, ptr %531, align 8
  br label %535

535:                                              ; preds = %530, %525
  %536 = load ptr, ptr %69, align 4
  %537 = getelementptr inbounds %struct.mac_device_info, ptr %536, i32 0, i32 1
  %538 = load ptr, ptr %537, align 4
  %539 = icmp eq ptr %538, null
  br i1 %539, label %557, label %540

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %538, i32 0, i32 24
  %542 = load ptr, ptr %541, align 4
  %543 = icmp eq ptr %542, null
  br i1 %543, label %557, label %544

544:                                              ; preds = %540
  %545 = call i32 %542(ptr noundef %265, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %557

547:                                              ; preds = %544
  %548 = load i32, ptr %5, align 4
  %549 = load i32, ptr %4, align 4
  %550 = icmp eq i32 %549, 3
  %551 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 13
  %552 = load i16, ptr %551, align 8
  %553 = select i1 %550, i16 256, i16 0
  %554 = and i16 %552, -769
  %555 = or i16 %554, %553
  store i16 %555, ptr %551, align 8
  %556 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 13, i32 0, i32 7
  store i32 %548, ptr %556, align 8
  br label %557

557:                                              ; preds = %547, %544, %540, %535
  %558 = getelementptr inbounds %struct.sk_buff, ptr %415, i32 0, i32 9
  store i16 %87, ptr %558, align 4
  %559 = call i32 @napi_gro_receive(ptr noundef %82, ptr noundef nonnull %415) #16
  %560 = load ptr, ptr %75, align 4
  %561 = getelementptr inbounds %struct.net_device, ptr %560, i32 0, i32 36
  %562 = load i32, ptr %561, align 8
  %563 = add i32 %562, 1
  store i32 %563, ptr %561, align 8
  %564 = load ptr, ptr %75, align 4
  %565 = getelementptr inbounds %struct.net_device, ptr %564, i32 0, i32 36, i32 2
  br label %566

566:                                              ; preds = %557, %445
  %567 = phi ptr [ %565, %557 ], [ %447, %445 ]
  %568 = phi i32 [ %403, %557 ], [ 1, %445 ]
  %569 = load i32, ptr %567, align 8
  %570 = add i32 %569, %568
  store i32 %570, ptr %567, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %578

571:                                              ; preds = %386
  %572 = load ptr, ptr %75, align 4
  %573 = getelementptr inbounds %struct.net_device, ptr %572, i32 0, i32 36, i32 6
  %574 = load i32, ptr %573, align 8
  %575 = add i32 %574, 1
  store i32 %575, ptr %573, align 8
  br label %578

576:                                              ; preds = %386, %386
  %577 = or i32 %395, %90
  br label %578

578:                                              ; preds = %576, %571, %566, %386
  %579 = phi i32 [ %90, %386 ], [ %577, %576 ], [ %90, %571 ], [ %90, %566 ]
  store ptr null, ptr %117, align 4
  %580 = add nsw i32 %254, 1
  br label %581

581:                                              ; preds = %578, %330, %321, %317
  %582 = phi i32 [ %277, %578 ], [ 1, %317 ], [ 1, %321 ], [ %277, %330 ]
  %583 = phi i32 [ %387, %578 ], [ %103, %317 ], [ %103, %321 ], [ %103, %330 ]
  %584 = phi i32 [ %580, %578 ], [ %318, %317 ], [ %318, %321 ], [ %254, %330 ]
  %585 = phi i32 [ %579, %578 ], [ %90, %317 ], [ %90, %321 ], [ %90, %330 ]
  %586 = phi i32 [ 0, %578 ], [ 1, %317 ], [ 1, %321 ], [ %109, %330 ]
  %587 = add i32 %110, 1
  %588 = icmp ult i32 %587, %1
  br i1 %588, label %88, label %589

589:                                              ; preds = %581, %294, %274
  %590 = phi i32 [ %277, %274 ], [ %277, %294 ], [ %582, %581 ]
  %591 = phi i32 [ %90, %274 ], [ %90, %294 ], [ %585, %581 ]
  %592 = phi i32 [ %103, %274 ], [ %103, %294 ], [ %583, %581 ]
  %593 = phi i32 [ %109, %274 ], [ %109, %294 ], [ %586, %581 ]
  %594 = phi i32 [ %110, %274 ], [ %110, %294 ], [ %587, %581 ]
  %595 = and i32 %590, 16
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %598, label %597

597:                                              ; preds = %589
  store i32 1, ptr %60, align 4
  store i32 %593, ptr %61, align 8
  store i32 %592, ptr %62, align 4
  br label %598

598:                                              ; preds = %597, %589, %270, %264, %57
  %599 = phi i32 [ %591, %597 ], [ %591, %589 ], [ 0, %57 ], [ %90, %264 ], [ %90, %270 ]
  %600 = phi i32 [ %594, %597 ], [ %594, %589 ], [ 0, %57 ], [ %110, %264 ], [ %110, %270 ]
  %601 = phi i1 [ %255, %597 ], [ %255, %589 ], [ false, %57 ], [ %255, %264 ], [ %255, %270 ]
  %602 = tail call ptr @llvm.thread.pointer() #16
  %603 = getelementptr inbounds %struct.thread_info, ptr %602, i32 0, i32 2
  %604 = load i32, ptr %603, align 8
  %605 = icmp slt i32 %604, 0
  br i1 %605, label %606, label %607, !prof !14

606:                                              ; preds = %598
  br label %607

607:                                              ; preds = %606, %598
  %608 = phi i32 [ 0, %606 ], [ %604, %598 ]
  %609 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 36
  %610 = load ptr, ptr %609, align 64
  %611 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %610, i32 0, i32 30
  %612 = load i32, ptr %611, align 4
  br label %613

613:                                              ; preds = %613, %607
  %614 = phi i32 [ %608, %607 ], [ %616, %613 ]
  %615 = icmp ult i32 %614, %612
  %616 = sub i32 %614, %612
  br i1 %615, label %617, label %613

617:                                              ; preds = %613
  %618 = and i32 %599, 2
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %626, label %620

620:                                              ; preds = %617
  %621 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 23, i32 %614, i32 2
  %622 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 1, i32 %614
  %623 = load i32, ptr %622, align 4
  %624 = mul i32 %623, 1000
  %625 = zext i32 %624 to i64
  call void @hrtimer_start_range_ns(ptr noundef %621, i64 noundef %625, i64 noundef 0, i32 noundef 1) #16
  br label %626

626:                                              ; preds = %620, %617
  %627 = and i32 %599, 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %630, label %629

629:                                              ; preds = %626
  call void @xdp_do_flush() #16
  br label %630

630:                                              ; preds = %629, %626
  %631 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 34, i32 40
  %632 = load i32, ptr %631, align 32
  %633 = add i32 %632, %600
  store i32 %633, ptr %631, align 32
  %634 = getelementptr %struct.stmmac_priv, ptr %8, i32 0, i32 34, i32 119, i32 %10
  %635 = load i32, ptr %634, align 8
  %636 = add i32 %635, %600
  store i32 %636, ptr %634, align 8
  %637 = select i1 %601, i32 %1, i32 %600
  %638 = call i32 @llvm.smax.i32(i32 %15, i32 %637)
  %639 = icmp slt i32 %638, %1
  br i1 %639, label %640, label %661

640:                                              ; preds = %630
  %641 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %638) #16
  br i1 %641, label %642, label %658

642:                                              ; preds = %640
  %643 = getelementptr i8, ptr %0, i32 220
  %644 = call i32 @_raw_spin_lock_irqsave(ptr noundef %643) #16
  %645 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 16
  %646 = load ptr, ptr %645, align 4
  %647 = getelementptr inbounds %struct.mac_device_info, ptr %646, i32 0, i32 2
  %648 = load ptr, ptr %647, align 4
  %649 = icmp eq ptr %648, null
  br i1 %649, label %657, label %650

650:                                              ; preds = %642
  %651 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %648, i32 0, i32 11
  %652 = load ptr, ptr %651, align 4
  %653 = icmp eq ptr %652, null
  br i1 %653, label %657, label %654

654:                                              ; preds = %650
  %655 = getelementptr inbounds %struct.stmmac_priv, ptr %8, i32 0, i32 13
  %656 = load ptr, ptr %655, align 32
  call void %652(ptr noundef %656, i32 noundef %10, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %657

657:                                              ; preds = %654, %650, %642
  call void @_raw_spin_unlock_irqrestore(ptr noundef %643, i32 noundef %644) #16
  br label %658

658:                                              ; preds = %657, %640
  %659 = add nsw i32 %1, -1
  %660 = call i32 @llvm.smin.i32(i32 %638, i32 %659)
  br label %661

661:                                              ; preds = %658, %630
  %662 = phi i32 [ %660, %658 ], [ %1, %630 ]
  ret i32 %662
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_release_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_xdp_run_prog(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %34, !prof !14

6:                                                ; preds = %3
  %7 = tail call i64 @sched_clock() #16
  %8 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %9 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %2, ptr noundef %8) #16
  %12 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #12, !srcloc !32
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.bpf_prog_stats, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !33
  %22 = load i32, ptr %20, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !34
  %24 = load i64, ptr %19, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %19, align 8
  %26 = getelementptr inbounds %struct.bpf_prog_stats, ptr %19, i32 0, i32 1
  %27 = tail call i64 @sched_clock() #16
  %28 = sub i64 %27, %7
  %29 = and i64 %28, 4294967295
  %30 = load i64, ptr %26, align 8
  %31 = add i64 %29, %30
  store i64 %31, ptr %26, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !35
  %32 = load i32, ptr %20, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %20, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #16, !srcloc !36
  br label %39

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %36 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %2, ptr noundef %35) #16
  br label %39

39:                                               ; preds = %34, %6
  %40 = phi i32 [ %11, %6 ], [ %38, %34 ]
  %41 = load volatile i32, ptr @bpf_master_redirect_enabled_key, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %60, !prof !14

43:                                               ; preds = %39
  %44 = icmp eq i32 %40, 3
  br i1 %44, label %45, label %60

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 64
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 14
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 2048
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 15
  %55 = load i64, ptr %54, align 16
  %56 = and i64 %55, 4
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @xdp_master_redirect(ptr noundef %2) #16
  br label %60

60:                                               ; preds = %58, %43, %39
  %61 = phi i32 [ %59, %58 ], [ %40, %43 ], [ %40, %39 ]
  switch i32 %61, label %193 [
    i32 2, label %215
    i32 3, label %62
    i32 4, label %187
    i32 0, label %196
    i32 1, label %214
  ]

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %53, %45
  %66 = phi ptr [ %64, %62 ], [ %47, %45 ], [ %47, %53 ]
  %67 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 4
  %68 = getelementptr inbounds %struct.xdp_rxq_info, ptr %66, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %2) #16
  br label %119

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %2, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = ptrtoint ptr %75 to i32
  %79 = sub i32 %77, %78
  %80 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = ptrtoint ptr %81 to i32
  %83 = sub i32 %77, %82
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0) #16
  %85 = sub i32 %79, %84
  %86 = icmp ult i32 %85, 24
  br i1 %86, label %215, label %87, !prof !14

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr i8, ptr %75, i32 %91
  %93 = getelementptr i8, ptr %92, i32 -256
  %94 = icmp ugt ptr %89, %93
  br i1 %94, label %95, label %96, !prof !14

95:                                               ; preds = %87
  tail call void @xdp_warn(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #16
  br label %215

96:                                               ; preds = %87
  store ptr %76, ptr %75, align 4
  %97 = load ptr, ptr %88, align 4
  %98 = load ptr, ptr %2, align 4
  %99 = ptrtoint ptr %97 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds %struct.xdp_frame, ptr %75, i32 0, i32 1
  store i16 %102, ptr %103, align 4
  %104 = trunc i32 %79 to i16
  %105 = add i16 %104, -24
  %106 = getelementptr inbounds %struct.xdp_frame, ptr %75, i32 0, i32 2
  store i16 %105, ptr %106, align 2
  %107 = getelementptr inbounds %struct.xdp_frame, ptr %75, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %84, 255
  %110 = and i32 %108, -256
  %111 = or i32 %110, %109
  store i32 %111, ptr %107, align 4
  %112 = load i32, ptr %90, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %113, %109
  store i32 %114, ptr %107, align 4
  %115 = getelementptr inbounds %struct.xdp_frame, ptr %75, i32 0, i32 4
  %116 = load ptr, ptr %67, align 4
  %117 = getelementptr inbounds %struct.xdp_rxq_info, ptr %116, i32 0, i32 3
  %118 = load i64, ptr %117, align 4
  store i64 %118, ptr %115, align 4
  br label %119

119:                                              ; preds = %96, %71
  %120 = phi ptr [ %72, %71 ], [ %75, %96 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %215, label %122, !prof !14

122:                                              ; preds = %119
  %123 = tail call ptr @llvm.thread.pointer() #16
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128, !prof !14

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %122
  %129 = phi i32 [ 0, %127 ], [ %125, %122 ]
  %130 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %131 = load ptr, ptr %130, align 64
  %132 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %131, i32 0, i32 30
  %133 = load i32, ptr %132, align 4
  br label %134

134:                                              ; preds = %134, %128
  %135 = phi i32 [ %129, %128 ], [ %137, %134 ]
  %136 = icmp ult i32 %135, %133
  %137 = sub i32 %135, %133
  br i1 %136, label %138, label %134

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.net_device, ptr %140, i32 0, i32 87
  %142 = load ptr, ptr %141, align 64
  %143 = getelementptr %struct.netdev_queue, ptr %142, i32 %135, i32 9
  tail call void @_raw_spin_lock(ptr noundef %143) #16
  %144 = getelementptr %struct.netdev_queue, ptr %142, i32 %135, i32 10
  store volatile i32 %125, ptr %144, align 4
  %145 = load volatile i32, ptr @jiffies, align 64
  %146 = getelementptr %struct.netdev_queue, ptr %142, i32 %135, i32 11
  %147 = load volatile i32, ptr %146, align 8
  %148 = icmp eq i32 %147, %145
  br i1 %148, label %150, label %149

149:                                              ; preds = %138
  store volatile i32 %145, ptr %146, align 8
  br label %150

150:                                              ; preds = %149, %138
  %151 = tail call fastcc i32 @stmmac_xdp_xmit_xdpf(ptr noundef %0, i32 noundef %135, ptr noundef nonnull %120, i1 noundef zeroext false) #16
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %184

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163, !prof !14

157:                                              ; preds = %153
  %158 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %135, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 16, i32 32
  br label %163

163:                                              ; preds = %157, %153
  %164 = phi i32 [ 32, %153 ], [ %162, %157 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !37
  tail call void @arm_heavy_mb() #16
  %165 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %135, i32 14
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %135, i32 12
  %168 = load i32, ptr %167, align 4
  %169 = mul i32 %168, %164
  %170 = add i32 %169, %166
  %171 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %135, i32 15
  store i32 %170, ptr %171, align 8
  %172 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.mac_device_info, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %163
  %178 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %175, i32 0, i32 23
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %183 = load ptr, ptr %182, align 32
  tail call void %179(ptr noundef %183, i32 noundef %170, i32 noundef %135) #16
  br label %184

184:                                              ; preds = %181, %177, %163, %150
  store volatile i32 -1, ptr %144, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %185 = load i16, ptr %143, align 4
  %186 = add i16 %185, 1
  store i16 %186, ptr %143, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %215

187:                                              ; preds = %60
  %188 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %189 = load ptr, ptr %188, align 4
  %190 = tail call i32 @xdp_do_redirect(ptr noundef %189, ptr noundef %2, ptr noundef %1) #16
  %191 = icmp slt i32 %190, 0
  %192 = select i1 %191, i32 1, i32 4
  br label %215

193:                                              ; preds = %60
  %194 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %195 = load ptr, ptr %194, align 4
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %195, ptr noundef %1, i32 noundef %61) #16
  br label %196

196:                                              ; preds = %193, %60
  %197 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %198 = load ptr, ptr %197, align 4
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %196
  %202 = tail call ptr @llvm.thread.pointer() #16
  %203 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 5
  %206 = getelementptr i32, ptr @__cpu_online_mask, i32 %205
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %204, 31
  %209 = shl nuw i32 1, %208
  %210 = and i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %201
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %213 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %198, ptr noundef %1, i32 noundef %61) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  br label %214

214:                                              ; preds = %212, %201, %196, %60
  br label %215

215:                                              ; preds = %214, %187, %184, %119, %95, %73, %60
  %216 = phi i32 [ 1, %214 ], [ 0, %60 ], [ %192, %187 ], [ %151, %184 ], [ 1, %119 ], [ 1, %95 ], [ 1, %73 ]
  ret i32 %216
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_xdp_xmit_xdpf(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1
  %6 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 13
  %9 = load i32, ptr %8, align 32
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = xor i32 %7, -1
  %13 = add i32 %9, %12
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %15 = load i32, ptr %14, align 64
  br label %22

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 64
  %19 = xor i32 %7, -1
  %20 = add i32 %9, %19
  %21 = add i32 %20, %18
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i32 [ %15, %11 ], [ %18, %16 ]
  %24 = phi i32 [ %13, %11 ], [ %21, %16 ]
  %25 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %26 = lshr i32 %23, 2
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %184, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !14

32:                                               ; preds = %28
  %33 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 5
  %34 = load ptr, ptr %33, align 64
  %35 = getelementptr %struct.dma_extended_desc, ptr %34, i32 %7
  br label %49

36:                                               ; preds = %28
  %37 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.dma_edesc, ptr %43, i32 %7, i32 4
  br label %49

45:                                               ; preds = %36
  %46 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 7
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr %struct.dma_desc, ptr %47, i32 %7
  br label %49

49:                                               ; preds = %45, %41, %32
  %50 = phi ptr [ %35, %32 ], [ %44, %41 ], [ %48, %45 ]
  br i1 %3, label %51, label %81

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 1
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %54) #16
  %59 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %71, !prof !14

62:                                               ; preds = %51
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %63 = tail call ptr @dev_driver_string(ptr noundef %53) #16
  %64 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %53, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %68, %67 ], [ %65, %62 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %63, ptr noundef %70) #16
  br label %71

71:                                               ; preds = %69, %51
  br i1 %58, label %184, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr @mem_map, align 4
  %74 = ptrtoint ptr %54 to i32
  %75 = add i32 %74, 1073741824
  %76 = lshr i32 %75, 12
  %77 = getelementptr %struct.page, ptr %73, i32 %76
  %78 = and i32 %74, 4095
  %79 = tail call i32 @dma_map_page_attrs(ptr noundef %53, ptr noundef %77, i32 noundef %78, i32 noundef %57, i32 noundef 1, i32 noundef 0) #16
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %184, label %99

81:                                               ; preds = %49
  %82 = load ptr, ptr @mem_map, align 4
  %83 = load ptr, ptr %2, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = add i32 %84, 1073741824
  %86 = lshr i32 %85, 12
  %87 = getelementptr %struct.page, ptr %82, i32 %86, i32 1, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 24
  %90 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 2
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = add i32 %89, %92
  %94 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 1
  %97 = load i16, ptr %96, align 4
  %98 = zext i16 %97 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %95, i32 noundef %93, i32 noundef %98, i32 noundef 0) #16
  br label %99

99:                                               ; preds = %81, %72
  %100 = phi i32 [ 1, %81 ], [ 2, %72 ]
  %101 = phi i32 [ %93, %81 ], [ %79, %72 ]
  %102 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 9
  %103 = load ptr, ptr %102, align 16
  %104 = getelementptr %struct.stmmac_tx_info, ptr %103, i32 %7, i32 5
  store i32 %100, ptr %104, align 4
  %105 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 9
  %106 = load ptr, ptr %105, align 16
  %107 = getelementptr %struct.stmmac_tx_info, ptr %106, i32 %7
  store i32 %101, ptr %107, align 4
  %108 = load ptr, ptr %105, align 16
  %109 = getelementptr %struct.stmmac_tx_info, ptr %108, i32 %7, i32 1
  store i8 0, ptr %109, align 4
  %110 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 1
  %111 = load i16, ptr %110, align 4
  %112 = zext i16 %111 to i32
  %113 = load ptr, ptr %105, align 16
  %114 = getelementptr %struct.stmmac_tx_info, ptr %113, i32 %7, i32 2
  store i32 %112, ptr %114, align 4
  %115 = load ptr, ptr %105, align 16
  %116 = getelementptr %struct.stmmac_tx_info, ptr %115, i32 %7, i32 3
  store i8 1, ptr %116, align 4
  %117 = load ptr, ptr %105, align 16
  %118 = getelementptr %struct.stmmac_tx_info, ptr %117, i32 %7, i32 4
  store i8 0, ptr %118, align 1
  %119 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %1, i32 8
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr ptr, ptr %120, i32 %7
  store ptr %2, ptr %121, align 4
  %122 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.mac_device_info, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %146, label %127

127:                                              ; preds = %99
  %128 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %125, i32 0, i32 22
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  tail call void %129(ptr noundef %50, i32 noundef %101) #16
  %132 = load ptr, ptr %122, align 4
  %133 = getelementptr inbounds %struct.mac_device_info, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %146, label %136

136:                                              ; preds = %131, %127
  %137 = phi ptr [ %134, %131 ], [ %125, %127 ]
  %138 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load i16, ptr %110, align 4
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %145 = load i32, ptr %144, align 4
  tail call void %139(ptr noundef %50, i32 noundef 1, i32 noundef %143, i1 noundef zeroext true, i32 noundef %145, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %143) #16
  br label %146

146:                                              ; preds = %141, %136, %131, %99
  %147 = load i32, ptr %5, align 64
  %148 = add i32 %147, 1
  store i32 %148, ptr %5, align 64
  %149 = getelementptr [8 x i32], ptr %0, i32 0, i32 %1
  %150 = load i32, ptr %149, align 4
  %151 = urem i32 %148, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %146
  store i32 0, ptr %5, align 64
  %154 = load ptr, ptr %122, align 4
  %155 = getelementptr inbounds %struct.mac_device_info, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %156, i32 0, i32 7
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call void %160(ptr noundef %50) #16
  br label %163

163:                                              ; preds = %162, %158, %153
  %164 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34, i32 46
  %165 = load i32, ptr %164, align 8
  %166 = add i32 %165, 1
  store i32 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %163, %146
  %168 = load ptr, ptr %122, align 4
  %169 = getelementptr inbounds %struct.mac_device_info, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %170, i32 0, i32 10
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %178 = load ptr, ptr %177, align 32
  tail call void %174(ptr noundef %178) #16
  br label %179

179:                                              ; preds = %176, %172, %167
  %180 = add i32 %7, 1
  %181 = load i32, ptr %25, align 64
  %182 = add i32 %181, -1
  %183 = and i32 %182, %180
  store i32 %183, ptr %6, align 4
  br label %184

184:                                              ; preds = %179, %72, %71, %22
  %185 = phi i32 [ 2, %179 ], [ 1, %22 ], [ 1, %72 ], [ 1, %71 ]
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_tx_clean(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.skb_shared_hwtstamps, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2
  %7 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr %struct.netdev_queue, ptr %10, i32 %2, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #16
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr %struct.netdev_queue, ptr %10, i32 %2, i32 10
  store volatile i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34, i32 45
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 11
  store i32 0, ptr %20, align 8
  %21 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 13
  %22 = load i32, ptr %21, align 32
  %23 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %24 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %288, label %27

27:                                               ; preds = %3
  %28 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 9
  %29 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 8
  %30 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  %31 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 5
  %32 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 1
  %33 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 6
  %34 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 7
  %35 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %36 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %37 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 34, i32 39
  %38 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 34, i32 118, i32 %2
  %39 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 62
  %41 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %42 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %43 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  %44 = load i32, ptr %23, align 64
  br label %45

45:                                               ; preds = %260, %27
  %46 = phi i32 [ %44, %27 ], [ %262, %260 ]
  %47 = phi i32 [ 0, %27 ], [ %249, %260 ]
  %48 = phi i32 [ %22, %27 ], [ %264, %260 ]
  %49 = phi i32 [ 0, %27 ], [ %100, %260 ]
  %50 = icmp ult i32 %49, %46
  br i1 %50, label %51, label %267

51:                                               ; preds = %45
  %52 = load ptr, ptr %28, align 16
  %53 = getelementptr %struct.stmmac_tx_info, ptr %52, i32 %48, i32 5
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %63 [
    i32 1, label %55
    i32 2, label %55
    i32 0, label %59
  ]

55:                                               ; preds = %51, %51
  %56 = load ptr, ptr %29, align 4
  %57 = getelementptr ptr, ptr %56, i32 %48
  %58 = load ptr, ptr %57, align 4
  br label %63

59:                                               ; preds = %51
  %60 = load ptr, ptr %29, align 4
  %61 = getelementptr ptr, ptr %60, i32 %48
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %59, %55, %51
  %64 = phi ptr [ null, %55 ], [ %62, %59 ], [ null, %51 ]
  %65 = phi ptr [ %58, %55 ], [ null, %59 ], [ null, %51 ]
  %66 = load i32, ptr %30, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %31, align 64
  %70 = getelementptr %struct.dma_extended_desc, ptr %69, i32 %48
  br label %81

71:                                               ; preds = %63
  %72 = load i32, ptr %32, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %33, align 4
  %77 = getelementptr %struct.dma_edesc, ptr %76, i32 %48, i32 4
  br label %81

78:                                               ; preds = %71
  %79 = load ptr, ptr %34, align 8
  %80 = getelementptr %struct.dma_desc, ptr %79, i32 %48
  br label %81

81:                                               ; preds = %78, %75, %68
  %82 = phi ptr [ %70, %68 ], [ %77, %75 ], [ %80, %78 ]
  %83 = load ptr, ptr %35, align 4
  %84 = getelementptr inbounds %struct.mac_device_info, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %85, i32 0, i32 9
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %7, align 4
  %93 = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 36
  %94 = load ptr, ptr %36, align 32
  %95 = call i32 %89(ptr noundef %93, ptr noundef %16, ptr noundef %82, ptr noundef %94) #16
  %96 = and i32 %95, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %267, !prof !11

98:                                               ; preds = %91, %87, %81
  %99 = phi i32 [ %95, %91 ], [ -22, %87 ], [ -22, %81 ]
  %100 = add nuw i32 %49, 1
  call void asm sideeffect "dmb osh", "~{memory}"() #16, !srcloc !40
  %101 = and i32 %99, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %176, !prof !11

103:                                              ; preds = %98
  %104 = and i32 %99, 2
  %105 = icmp eq i32 %104, 0
  %106 = load ptr, ptr %7, align 4
  br i1 %105, label %114, label %107, !prof !11

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 36, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  %111 = and i32 %99, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113, !prof !11

113:                                              ; preds = %107
  call fastcc void @stmmac_bump_dma_threshold(ptr noundef %0, i32 noundef %2)
  br label %122

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 36, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, 1
  store i32 %117, ptr %115, align 4
  %118 = load i32, ptr %37, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %37, align 4
  %120 = load i32, ptr %38, align 8
  %121 = add i32 %120, 1
  store i32 %121, ptr %38, align 8
  br label %122

122:                                              ; preds = %114, %113, %107
  %123 = icmp eq ptr %64, null
  br i1 %123, label %176, label %124

124:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  %125 = load i32, ptr %39, align 32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %175, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 15
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.skb_shared_info, ptr %129, i32 0, i32 3
  %131 = load i8, ptr %130, align 1
  %132 = and i8 %131, 4
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %175, label %134, !prof !11

134:                                              ; preds = %127
  %135 = load ptr, ptr %35, align 4
  %136 = getelementptr inbounds %struct.mac_device_info, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %168, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %137, i32 0, i32 16
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = call i32 %141(ptr noundef %82) #16
  %145 = icmp eq i32 %144, 0
  %146 = load ptr, ptr %35, align 4
  br i1 %145, label %158, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.mac_device_info, ptr %146, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %168, label %151

151:                                              ; preds = %147, %139
  %152 = phi ptr [ %149, %147 ], [ %137, %139 ]
  %153 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %152, i32 0, i32 17
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %40, align 16
  call void %154(ptr noundef %82, i32 noundef %157, ptr noundef nonnull %5) #16
  br label %168

158:                                              ; preds = %143
  %159 = load ptr, ptr %146, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %175, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.stmmac_ops, ptr %159, i32 0, i32 41
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %175, label %165

165:                                              ; preds = %161
  %166 = call i32 %163(ptr noundef %146, ptr noundef nonnull %5) #16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %165, %156, %151, %147, %134
  %169 = load ptr, ptr %41, align 64
  %170 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %169, i32 0, i32 54
  %171 = load i32, ptr %170, align 4
  %172 = zext i32 %171 to i64
  %173 = load i64, ptr %5, align 8
  %174 = sub i64 %173, %172
  store i64 %174, ptr %5, align 8
  store i64 %174, ptr %4, align 8
  call void @skb_tstamp_tx(ptr noundef nonnull %64, ptr noundef nonnull %4) #16
  br label %175

175:                                              ; preds = %168, %165, %161, %158, %127, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %176

176:                                              ; preds = %175, %122, %98
  %177 = load ptr, ptr %28, align 16
  %178 = getelementptr %struct.stmmac_tx_info, ptr %177, i32 %48
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %195, label %181, !prof !14

181:                                              ; preds = %176
  %182 = getelementptr %struct.stmmac_tx_info, ptr %177, i32 %48, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %195, label %185, !prof !14

185:                                              ; preds = %181
  %186 = load ptr, ptr %42, align 8
  %187 = getelementptr %struct.stmmac_tx_info, ptr %177, i32 %48, i32 2
  %188 = load i32, ptr %187, align 4
  call void @dma_unmap_page_attrs(ptr noundef %186, i32 noundef %179, i32 noundef %188, i32 noundef 1, i32 noundef 0) #16
  %189 = load ptr, ptr %28, align 16
  %190 = getelementptr %struct.stmmac_tx_info, ptr %189, i32 %48
  store i32 0, ptr %190, align 4
  %191 = load ptr, ptr %28, align 16
  %192 = getelementptr %struct.stmmac_tx_info, ptr %191, i32 %48, i32 2
  store i32 0, ptr %192, align 4
  %193 = load ptr, ptr %28, align 16
  %194 = getelementptr %struct.stmmac_tx_info, ptr %193, i32 %48, i32 1
  store i8 0, ptr %194, align 4
  br label %195

195:                                              ; preds = %185, %181, %176
  %196 = load ptr, ptr %35, align 4
  %197 = getelementptr inbounds %struct.mac_device_info, ptr %196, i32 0, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.stmmac_mode_ops, ptr %198, i32 0, i32 6
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  call void %202(ptr noundef %6, ptr noundef %82) #16
  br label %205

205:                                              ; preds = %204, %200, %195
  %206 = load ptr, ptr %28, align 16
  %207 = getelementptr %struct.stmmac_tx_info, ptr %206, i32 %48, i32 3
  store i8 0, ptr %207, align 4
  %208 = load ptr, ptr %28, align 16
  %209 = getelementptr %struct.stmmac_tx_info, ptr %208, i32 %48, i32 4
  store i8 0, ptr %209, align 1
  %210 = icmp eq ptr %65, null
  br i1 %210, label %228, label %211

211:                                              ; preds = %205
  %212 = load ptr, ptr %28, align 16
  %213 = getelementptr %struct.stmmac_tx_info, ptr %212, i32 %48, i32 5
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  call void @xdp_return_frame_rx_napi(ptr noundef nonnull %65) #16
  %217 = load ptr, ptr %29, align 4
  %218 = getelementptr ptr, ptr %217, i32 %48
  store ptr null, ptr %218, align 4
  %219 = load ptr, ptr %28, align 16
  %220 = getelementptr %struct.stmmac_tx_info, ptr %219, i32 %48, i32 5
  %221 = load i32, ptr %220, align 4
  br label %222

222:                                              ; preds = %216, %211
  %223 = phi i32 [ %214, %211 ], [ %221, %216 ]
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  call void @xdp_return_frame(ptr noundef nonnull %65) #16
  %226 = load ptr, ptr %29, align 4
  %227 = getelementptr ptr, ptr %226, i32 %48
  store ptr null, ptr %227, align 4
  br label %228

228:                                              ; preds = %225, %222, %205
  %229 = load ptr, ptr %28, align 16
  %230 = getelementptr %struct.stmmac_tx_info, ptr %229, i32 %48, i32 5
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 3
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32, ptr %20, align 8
  %235 = add i32 %234, 1
  store i32 %235, ptr %20, align 8
  %236 = load i32, ptr %230, align 4
  br label %237

237:                                              ; preds = %233, %228
  %238 = phi i32 [ %236, %233 ], [ %231, %228 ]
  %239 = icmp ne i32 %238, 0
  %240 = icmp eq ptr %64, null
  %241 = select i1 %239, i1 true, i1 %240
  br i1 %241, label %248, label %242, !prof !41

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 5
  %244 = load i32, ptr %243, align 8
  %245 = add i32 %244, %47
  call void @__dev_kfree_skb_any(ptr noundef nonnull %64, i32 noundef 0) #16
  %246 = load ptr, ptr %29, align 4
  %247 = getelementptr ptr, ptr %246, i32 %48
  store ptr null, ptr %247, align 4
  br label %248

248:                                              ; preds = %242, %237
  %249 = phi i32 [ %245, %242 ], [ %47, %237 ]
  %250 = load ptr, ptr %35, align 4
  %251 = getelementptr inbounds %struct.mac_device_info, ptr %250, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %252, i32 0, i32 6
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  %259 = load i32, ptr %43, align 4
  call void %256(ptr noundef %82, i32 noundef %259) #16
  br label %260

260:                                              ; preds = %258, %254, %248
  %261 = add i32 %48, 1
  %262 = load i32, ptr %23, align 64
  %263 = add i32 %262, -1
  %264 = and i32 %263, %261
  %265 = load i32, ptr %24, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %45

267:                                              ; preds = %260, %91, %45
  %268 = phi i32 [ %49, %45 ], [ %100, %260 ], [ %49, %91 ]
  %269 = phi i32 [ %48, %45 ], [ %264, %260 ], [ %48, %91 ]
  %270 = phi i32 [ %47, %45 ], [ %249, %260 ], [ %47, %91 ]
  store i32 %269, ptr %21, align 32
  %271 = load ptr, ptr %7, align 4
  %272 = getelementptr inbounds %struct.net_device, ptr %271, i32 0, i32 87
  %273 = load ptr, ptr %272, align 64
  %274 = getelementptr %struct.netdev_queue, ptr %273, i32 %2
  %275 = icmp eq i32 %270, 0
  br i1 %275, label %288, label %276, !prof !14

276:                                              ; preds = %267
  %277 = getelementptr %struct.netdev_queue, ptr %273, i32 %2, i32 14
  call void @dql_completed(ptr noundef %277, i32 noundef %270) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !42
  %278 = getelementptr %struct.netdev_queue, ptr %273, i32 %2, i32 14, i32 1
  %279 = load volatile i32, ptr %278, align 4
  %280 = load volatile i32, ptr %277, align 64
  %281 = sub i32 %279, %280
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %288, label %283, !prof !14

283:                                              ; preds = %276
  %284 = getelementptr %struct.netdev_queue, ptr %273, i32 %2, i32 12
  %285 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %284) #16
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  call void @netif_schedule_queue(ptr noundef %274) #16
  br label %288

288:                                              ; preds = %287, %283, %276, %267, %3
  %289 = phi i32 [ %268, %267 ], [ %268, %276 ], [ %268, %283 ], [ %268, %287 ], [ 0, %3 ]
  %290 = load ptr, ptr %7, align 4
  %291 = getelementptr inbounds %struct.net_device, ptr %290, i32 0, i32 87
  %292 = load ptr, ptr %291, align 64
  %293 = getelementptr %struct.netdev_queue, ptr %292, i32 %2
  %294 = getelementptr %struct.netdev_queue, ptr %292, i32 %2, i32 12
  %295 = load volatile i32, ptr %294, align 4
  %296 = and i32 %295, 1
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %317, label %298, !prof !11

298:                                              ; preds = %288
  %299 = load i32, ptr %21, align 32
  %300 = load i32, ptr %24, align 4
  %301 = icmp ugt i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = xor i32 %300, -1
  %304 = add i32 %299, %303
  %305 = load i32, ptr %23, align 64
  br label %311

306:                                              ; preds = %298
  %307 = load i32, ptr %23, align 64
  %308 = xor i32 %300, -1
  %309 = add i32 %299, %308
  %310 = add i32 %309, %307
  br label %311

311:                                              ; preds = %306, %302
  %312 = phi i32 [ %305, %302 ], [ %307, %306 ]
  %313 = phi i32 [ %304, %302 ], [ %310, %306 ]
  %314 = lshr i32 %312, 2
  %315 = icmp ugt i32 %313, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  call void @netif_tx_wake_queue(ptr noundef %293) #16
  br label %317

317:                                              ; preds = %316, %311, %288
  %318 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 10
  %319 = load ptr, ptr %318, align 4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %363, label %321

321:                                              ; preds = %317
  %322 = load ptr, ptr %7, align 4
  %323 = getelementptr inbounds %struct.net_device, ptr %322, i32 0, i32 87
  %324 = load ptr, ptr %323, align 64
  %325 = load volatile i32, ptr @jiffies, align 64
  %326 = getelementptr %struct.netdev_queue, ptr %324, i32 %2, i32 11
  %327 = load volatile i32, ptr %326, align 8
  %328 = icmp eq i32 %327, %325
  br i1 %328, label %330, label %329

329:                                              ; preds = %321
  store volatile i32 %325, ptr %326, align 8
  br label %330

330:                                              ; preds = %329, %321
  %331 = load i32, ptr %21, align 32
  %332 = load i32, ptr %24, align 4
  %333 = icmp ugt i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %330
  %335 = xor i32 %332, -1
  %336 = add i32 %331, %335
  %337 = call i32 @llvm.umin.i32(i32 %336, i32 256) #16
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %356, label %346

339:                                              ; preds = %330
  %340 = load i32, ptr %23, align 64
  %341 = xor i32 %332, -1
  %342 = add i32 %331, %341
  %343 = add i32 %342, %340
  %344 = call i32 @llvm.umin.i32(i32 %343, i32 256) #16
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %356, label %346

346:                                              ; preds = %339, %334
  %347 = phi i32 [ %337, %334 ], [ %344, %339 ]
  %348 = phi i32 [ %336, %334 ], [ %343, %339 ]
  %349 = icmp ult i32 %348, 16
  br i1 %349, label %356, label %350, !prof !14

350:                                              ; preds = %346
  %351 = load ptr, ptr %7, align 4
  %352 = getelementptr inbounds %struct.net_device, ptr %351, i32 0, i32 6
  %353 = load volatile i32, ptr %352, align 4
  %354 = and i32 %353, 4
  %355 = icmp eq i32 %354, 0
  br label %356

356:                                              ; preds = %350, %346, %339, %334
  %357 = phi i32 [ 0, %334 ], [ %347, %346 ], [ 0, %339 ], [ %347, %350 ]
  %358 = phi i1 [ true, %334 ], [ false, %346 ], [ true, %339 ], [ %355, %350 ]
  %359 = icmp ne i32 %357, 1
  %360 = and i1 %359, %358
  %361 = sext i1 %360 to i32
  %362 = add i32 %361, %1
  br label %363

363:                                              ; preds = %356, %317
  %364 = phi i32 [ %362, %356 ], [ 0, %317 ]
  %365 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 47
  %366 = load i32, ptr %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %413, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 4
  %370 = load i8, ptr %369, align 4, !range !9
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %413

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 52
  %374 = load i8, ptr %373, align 8, !range !9
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %413, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %378 = load ptr, ptr %377, align 64
  %379 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %378, i32 0, i32 30
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %392, label %385

382:                                              ; preds = %385
  %383 = add nuw i32 %386, 1
  %384 = icmp eq i32 %383, %380
  br i1 %384, label %392, label %385

385:                                              ; preds = %382, %376
  %386 = phi i32 [ %383, %382 ], [ 0, %376 ]
  %387 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %386, i32 13
  %388 = load i32, ptr %387, align 32
  %389 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %386, i32 12
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %388, %390
  br i1 %391, label %382, label %405

392:                                              ; preds = %382, %376
  %393 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %394 = load ptr, ptr %393, align 4
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %413, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.stmmac_ops, ptr %395, i32 0, i32 20
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %413, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %378, i32 0, i32 63
  %403 = load i8, ptr %402, align 4, !range !9
  %404 = icmp ne i8 %403, 0
  call void %399(ptr noundef %394, i1 noundef zeroext %404) #16
  br label %413

405:                                              ; preds = %385
  %406 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 45
  %407 = load volatile i32, ptr @jiffies, align 64
  %408 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 49
  %409 = load i32, ptr %408, align 4
  %410 = call i32 @__usecs_to_jiffies(i32 noundef %409) #16
  %411 = add i32 %410, %407
  %412 = call i32 @mod_timer(ptr noundef %406, i32 noundef %411) #16
  br label %413

413:                                              ; preds = %405, %401, %397, %392, %372, %368, %363
  %414 = load i32, ptr %21, align 32
  %415 = load i32, ptr %24, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %423, label %417

417:                                              ; preds = %413
  %418 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %2, i32 2
  %419 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 1, i32 %2
  %420 = load i32, ptr %419, align 4
  %421 = mul i32 %420, 1000
  %422 = zext i32 %421 to i64
  call void @hrtimer_start_range_ns(ptr noundef %418, i64 noundef %422, i64 noundef 0, i32 noundef 1) #16
  br label %423

423:                                              ; preds = %417, %413
  %424 = load ptr, ptr %7, align 4
  %425 = getelementptr inbounds %struct.net_device, ptr %424, i32 0, i32 87
  %426 = load ptr, ptr %425, align 64
  %427 = getelementptr %struct.netdev_queue, ptr %426, i32 %2, i32 10
  store volatile i32 -1, ptr %427, align 4
  %428 = getelementptr %struct.netdev_queue, ptr %426, i32 %2, i32 9
  call void @_raw_spin_unlock_bh(ptr noundef %428) #16
  %429 = call i32 @llvm.umax.i32(i32 %289, i32 %364)
  ret i32 %429
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_get_an_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_connect_phy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_hwif_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12
  %21 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %1, i32 1508
  %24 = load i8, ptr %23, align 4, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %2
  %27 = getelementptr i8, ptr %1, i32 12696
  %28 = load i8, ptr %27, align 8, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %1, i32 1580
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stmmac_ops, ptr %33, i32 0, i32 21
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void %37(ptr noundef %32) #16
  br label %40

40:                                               ; preds = %39, %35, %30
  %41 = getelementptr i8, ptr %1, i32 12652
  %42 = tail call i32 @del_timer_sync(ptr noundef %41) #16
  store i8 0, ptr %23, align 4
  %43 = load ptr, ptr %13, align 4
  br label %44

44:                                               ; preds = %40, %26, %2
  %45 = phi ptr [ %43, %40 ], [ %14, %26 ], [ %14, %2 ]
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 4
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %1, i32 1509
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = and i32 %19, 17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc i32 @stmmac_tso_xmit(ptr noundef %0, ptr noundef %1)
  br label %639

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %1, i32 12096
  %60 = load ptr, ptr %59, align 64
  %61 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %60, i32 0, i32 58
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %19, 131072
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = tail call fastcc i32 @stmmac_tso_xmit(ptr noundef %0, ptr noundef %1)
  br label %639

69:                                               ; preds = %58, %49, %44
  %70 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 13
  %71 = load i32, ptr %70, align 32
  %72 = load i32, ptr %21, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = xor i32 %72, -1
  %76 = add i32 %71, %75
  br label %83

77:                                               ; preds = %69
  %78 = getelementptr i8, ptr %1, i32 4800
  %79 = load i32, ptr %78, align 64
  %80 = xor i32 %72, -1
  %81 = add i32 %71, %80
  %82 = add i32 %81, %79
  br label %83

83:                                               ; preds = %77, %74
  %84 = phi i32 [ %76, %74 ], [ %82, %77 ]
  %85 = icmp ugt i32 %84, %17
  br i1 %85, label %100, label %86, !prof !11

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %88 = load ptr, ptr %87, align 64
  %89 = getelementptr %struct.netdev_queue, ptr %88, i32 %12, i32 12
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %639

93:                                               ; preds = %86
  %94 = getelementptr i8, ptr %1, i32 1572
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 87
  %97 = load ptr, ptr %96, align 64
  %98 = getelementptr %struct.netdev_queue, ptr %97, i32 %12, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %98) #16
  %99 = load ptr, ptr %94, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.stmmac_xmit) #17
  br label %639

100:                                              ; preds = %83
  %101 = getelementptr i8, ptr %1, i32 12248
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %158, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %106 = load i16, ptr %105, align 2
  %107 = and i16 %106, 1
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %158, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  %111 = load i16, ptr %110, align 4
  %112 = icmp eq i16 %111, -22392
  %113 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %114 = load i16, ptr %113, align 2
  %115 = select i1 %112, i16 %114, i16 0
  %116 = select i1 %112, i32 2, i32 0
  %117 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %20, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %20, i32 0, i32 6
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr %struct.dma_edesc, ptr %123, i32 %72, i32 4
  br label %129

125:                                              ; preds = %109
  %126 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %20, i32 0, i32 7
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr %struct.dma_desc, ptr %127, i32 %72
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi ptr [ %124, %121 ], [ %128, %125 ]
  %131 = getelementptr i8, ptr %1, i32 1580
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.mac_device_info, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %158, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %134, i32 0, i32 28
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %158, label %140

140:                                              ; preds = %136
  tail call void %138(ptr noundef %130, i16 noundef zeroext %114, i16 noundef zeroext %115, i32 noundef %116) #16
  %141 = load ptr, ptr %131, align 4
  %142 = getelementptr inbounds %struct.mac_device_info, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %143, i32 0, i32 4
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  tail call void %147(ptr noundef %130) #16
  br label %150

150:                                              ; preds = %149, %145, %140
  %151 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %20, i32 0, i32 12
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, 1
  %154 = getelementptr i8, ptr %1, i32 4800
  %155 = load i32, ptr %154, align 64
  %156 = add i32 %155, -1
  %157 = and i32 %156, %153
  store i32 %157, ptr %151, align 4
  br label %158

158:                                              ; preds = %150, %136, %129, %104, %100
  %159 = phi i32 [ %157, %150 ], [ %72, %100 ], [ %72, %104 ], [ %72, %129 ], [ %72, %136 ]
  %160 = phi i1 [ true, %150 ], [ false, %100 ], [ false, %104 ], [ false, %129 ], [ false, %136 ]
  %161 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 8
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr ptr, ptr %162, i32 %159
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166, !prof !11

166:                                              ; preds = %158
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 4283, i32 noundef 9, ptr noundef null) #16
  br label %167

167:                                              ; preds = %166, %158
  %168 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %169 = load i16, ptr %168, align 8
  %170 = and i16 %169, 96
  %171 = icmp eq i16 %170, 96
  %172 = zext i1 %171 to i32
  %173 = getelementptr i8, ptr %1, i32 12708
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176, !prof !14

176:                                              ; preds = %167
  %177 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 5
  %178 = load ptr, ptr %177, align 64
  %179 = getelementptr %struct.dma_extended_desc, ptr %178, i32 %159
  br label %193

180:                                              ; preds = %167
  %181 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %180
  %186 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 6
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr %struct.dma_edesc, ptr %187, i32 %159, i32 4
  br label %193

189:                                              ; preds = %180
  %190 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 7
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr %struct.dma_desc, ptr %191, i32 %159
  br label %193

193:                                              ; preds = %189, %185, %176
  %194 = phi ptr [ %179, %176 ], [ %188, %185 ], [ %192, %189 ]
  br i1 %160, label %195, label %206

195:                                              ; preds = %193
  %196 = getelementptr i8, ptr %1, i32 1580
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.mac_device_info, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %199, i32 0, i32 29
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  tail call void %203(ptr noundef %194, i32 noundef 2) #16
  br label %206

206:                                              ; preds = %205, %201, %195, %193
  %207 = getelementptr i8, ptr %1, i32 12096
  %208 = load ptr, ptr %207, align 64
  %209 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %208, i32 0, i32 14
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %241, label %212

212:                                              ; preds = %206
  %213 = getelementptr i8, ptr %1, i32 1580
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.mac_device_info, ptr %214, i32 0, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %241, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.stmmac_mode_ops, ptr %216, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %231, label %222

222:                                              ; preds = %218
  %223 = load i32, ptr %5, align 8
  %224 = tail call i32 %220(i32 noundef %223, i32 noundef %210) #16
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %241, label %226, !prof !11

226:                                              ; preds = %222
  %227 = load ptr, ptr %213, align 4
  %228 = getelementptr inbounds %struct.mac_device_info, ptr %227, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %241, label %231

231:                                              ; preds = %226, %218
  %232 = phi ptr [ %229, %226 ], [ %216, %218 ]
  %233 = getelementptr inbounds %struct.stmmac_mode_ops, ptr %232, i32 0, i32 2
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = tail call i32 %234(ptr noundef %20, ptr noundef %0, i32 noundef %172) #16
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241, !prof !14

239:                                              ; preds = %236
  %240 = icmp eq i32 %237, -22
  br i1 %240, label %241, label %632

241:                                              ; preds = %239, %236, %231, %226, %222, %212, %206
  %242 = phi i1 [ false, %239 ], [ false, %236 ], [ true, %222 ], [ true, %206 ], [ false, %226 ], [ false, %231 ], [ false, %212 ]
  %243 = phi i32 [ -22, %239 ], [ %237, %236 ], [ %159, %222 ], [ %159, %206 ], [ -22, %226 ], [ -22, %231 ], [ -22, %212 ]
  %244 = icmp eq i8 %16, 0
  br i1 %244, label %333, label %245

245:                                              ; preds = %241
  %246 = add nsw i32 %17, -1
  %247 = getelementptr i8, ptr %1, i32 4800
  %248 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 5
  %249 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 1
  %250 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 6
  %251 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 7
  %252 = getelementptr i8, ptr %1, i32 1576
  %253 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 9
  %254 = getelementptr i8, ptr %1, i32 1580
  %255 = getelementptr i8, ptr %1, i32 12700
  br label %256

256:                                              ; preds = %330, %245
  %257 = phi i32 [ 0, %245 ], [ %331, %330 ]
  %258 = phi i32 [ %243, %245 ], [ %268, %330 ]
  %259 = load ptr, ptr %13, align 4
  %260 = getelementptr %struct.skb_shared_info, ptr %259, i32 0, i32 12, i32 %257
  %261 = getelementptr %struct.skb_shared_info, ptr %259, i32 0, i32 12, i32 %257, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %257, %246
  %264 = zext i1 %263 to i8
  %265 = add i32 %258, 1
  %266 = load i32, ptr %247, align 64
  %267 = add i32 %266, -1
  %268 = and i32 %267, %265
  %269 = load ptr, ptr %161, align 4
  %270 = getelementptr ptr, ptr %269, i32 %268
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273, !prof !11

273:                                              ; preds = %256
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 4316, i32 noundef 9, ptr noundef null) #16
  br label %274

274:                                              ; preds = %273, %256
  %275 = load i32, ptr %173, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277, !prof !14

277:                                              ; preds = %274
  %278 = load ptr, ptr %248, align 64
  %279 = getelementptr %struct.dma_extended_desc, ptr %278, i32 %268
  br label %290

280:                                              ; preds = %274
  %281 = load i32, ptr %249, align 4
  %282 = and i32 %281, 1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = load ptr, ptr %250, align 4
  %286 = getelementptr %struct.dma_edesc, ptr %285, i32 %268, i32 4
  br label %290

287:                                              ; preds = %280
  %288 = load ptr, ptr %251, align 8
  %289 = getelementptr %struct.dma_desc, ptr %288, i32 %268
  br label %290

290:                                              ; preds = %287, %284, %277
  %291 = phi ptr [ %279, %277 ], [ %286, %284 ], [ %289, %287 ]
  %292 = load ptr, ptr %252, align 8
  %293 = load ptr, ptr %260, align 4
  %294 = getelementptr %struct.skb_shared_info, ptr %259, i32 0, i32 12, i32 %257, i32 2
  %295 = load i32, ptr %294, align 4
  %296 = tail call i32 @dma_map_page_attrs(ptr noundef %292, ptr noundef %293, i32 noundef %295, i32 noundef %262, i32 noundef 1, i32 noundef 0) #16
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %632, label %298

298:                                              ; preds = %290
  %299 = load ptr, ptr %253, align 16
  %300 = getelementptr %struct.stmmac_tx_info, ptr %299, i32 %268
  store i32 %296, ptr %300, align 4
  %301 = load ptr, ptr %254, align 4
  %302 = getelementptr inbounds %struct.mac_device_info, ptr %301, i32 0, i32 1
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %310, label %305

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %303, i32 0, i32 22
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %310, label %309

309:                                              ; preds = %305
  tail call void %307(ptr noundef %291, i32 noundef %296) #16
  br label %310

310:                                              ; preds = %309, %305, %298
  %311 = load ptr, ptr %253, align 16
  %312 = getelementptr %struct.stmmac_tx_info, ptr %311, i32 %268, i32 1
  store i8 1, ptr %312, align 4
  %313 = load ptr, ptr %253, align 16
  %314 = getelementptr %struct.stmmac_tx_info, ptr %313, i32 %268, i32 2
  store i32 %262, ptr %314, align 4
  %315 = load ptr, ptr %253, align 16
  %316 = getelementptr %struct.stmmac_tx_info, ptr %315, i32 %268, i32 3
  store i8 %264, ptr %316, align 4
  %317 = load ptr, ptr %253, align 16
  %318 = getelementptr %struct.stmmac_tx_info, ptr %317, i32 %268, i32 5
  store i32 0, ptr %318, align 4
  %319 = load ptr, ptr %254, align 4
  %320 = getelementptr inbounds %struct.mac_device_info, ptr %319, i32 0, i32 1
  %321 = load ptr, ptr %320, align 4
  %322 = icmp eq ptr %321, null
  br i1 %322, label %330, label %323

323:                                              ; preds = %310
  %324 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %321, i32 0, i32 2
  %325 = load ptr, ptr %324, align 4
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %323
  %328 = load i32, ptr %255, align 4
  %329 = load i32, ptr %5, align 8
  tail call void %325(ptr noundef %291, i32 noundef 0, i32 noundef %262, i1 noundef zeroext %171, i32 noundef %328, i1 noundef zeroext true, i1 noundef zeroext %263, i32 noundef %329) #16
  br label %330

330:                                              ; preds = %327, %323, %310
  %331 = add nuw nsw i32 %257, 1
  %332 = icmp eq i32 %331, %17
  br i1 %332, label %333, label %256

333:                                              ; preds = %330, %241
  %334 = phi i32 [ %243, %241 ], [ %268, %330 ]
  %335 = load ptr, ptr %161, align 4
  %336 = getelementptr ptr, ptr %335, i32 %334
  store ptr %0, ptr %336, align 4
  %337 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 9
  %338 = load ptr, ptr %337, align 16
  %339 = getelementptr %struct.stmmac_tx_info, ptr %338, i32 %334, i32 5
  store i32 0, ptr %339, align 4
  %340 = add i32 %334, 1
  %341 = sub i32 %340, %22
  %342 = load i32, ptr %20, align 64
  %343 = add i32 %342, %341
  store i32 %343, ptr %20, align 64
  %344 = load ptr, ptr %13, align 4
  %345 = getelementptr inbounds %struct.skb_shared_info, ptr %344, i32 0, i32 3
  %346 = load i8, ptr %345, align 1
  %347 = and i8 %346, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %333
  %350 = getelementptr i8, ptr %1, i32 1504
  %351 = load i32, ptr %350, align 32
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %349, %333
  %354 = getelementptr [8 x i32], ptr %4, i32 0, i32 %12
  %355 = load i32, ptr %354, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %398, label %357

357:                                              ; preds = %353
  %358 = icmp ugt i32 %341, %355
  br i1 %358, label %362, label %359

359:                                              ; preds = %357
  %360 = urem i32 %343, %355
  %361 = icmp ult i32 %360, %341
  br i1 %361, label %362, label %398

362:                                              ; preds = %359, %357, %349
  %363 = load i32, ptr %173, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %369, label %365, !prof !14

365:                                              ; preds = %362
  %366 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 5
  %367 = load ptr, ptr %366, align 64
  %368 = getelementptr %struct.dma_extended_desc, ptr %367, i32 %334
  br label %382

369:                                              ; preds = %362
  %370 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = and i32 %371, 1
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %369
  %375 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 6
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr %struct.dma_edesc, ptr %376, i32 %334, i32 4
  br label %382

378:                                              ; preds = %369
  %379 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 7
  %380 = load ptr, ptr %379, align 8
  %381 = getelementptr %struct.dma_desc, ptr %380, i32 %334
  br label %382

382:                                              ; preds = %378, %374, %365
  %383 = phi ptr [ %368, %365 ], [ %377, %374 ], [ %381, %378 ]
  store i32 0, ptr %20, align 64
  %384 = getelementptr i8, ptr %1, i32 1580
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.mac_device_info, ptr %385, i32 0, i32 1
  %387 = load ptr, ptr %386, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %394, label %389

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %387, i32 0, i32 7
  %391 = load ptr, ptr %390, align 4
  %392 = icmp eq ptr %391, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %389
  tail call void %391(ptr noundef %383) #16
  br label %394

394:                                              ; preds = %393, %389, %382
  %395 = getelementptr i8, ptr %1, i32 11256
  %396 = load i32, ptr %395, align 8
  %397 = add i32 %396, 1
  store i32 %397, ptr %395, align 8
  br label %398

398:                                              ; preds = %394, %359, %353
  %399 = getelementptr i8, ptr %1, i32 4800
  %400 = load i32, ptr %399, align 64
  %401 = add i32 %400, -1
  %402 = and i32 %401, %340
  store i32 %402, ptr %21, align 4
  %403 = load i32, ptr %70, align 32
  %404 = icmp ugt i32 %403, %402
  %405 = xor i32 %402, -1
  %406 = select i1 %404, i32 0, i32 %400
  %407 = add i32 %406, %405
  %408 = add i32 %403, %407
  %409 = icmp ult i32 %408, 19
  br i1 %409, label %410, label %416, !prof !14

410:                                              ; preds = %398
  %411 = getelementptr i8, ptr %1, i32 1572
  %412 = load ptr, ptr %411, align 4
  %413 = getelementptr inbounds %struct.net_device, ptr %412, i32 0, i32 87
  %414 = load ptr, ptr %413, align 64
  %415 = getelementptr %struct.netdev_queue, ptr %414, i32 %12, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %415) #16
  br label %416

416:                                              ; preds = %410, %398
  %417 = load i32, ptr %5, align 8
  %418 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %419 = load i32, ptr %418, align 4
  %420 = add i32 %419, %417
  store i32 %420, ptr %418, align 4
  %421 = getelementptr i8, ptr %1, i32 1520
  %422 = load i32, ptr %421, align 16
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %435, label %424

424:                                              ; preds = %416
  %425 = getelementptr i8, ptr %1, i32 1580
  %426 = load ptr, ptr %425, align 4
  %427 = getelementptr inbounds %struct.mac_device_info, ptr %426, i32 0, i32 1
  %428 = load ptr, ptr %427, align 4
  %429 = icmp eq ptr %428, null
  br i1 %429, label %435, label %430

430:                                              ; preds = %424
  %431 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %428, i32 0, i32 27
  %432 = load ptr, ptr %431, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %435, label %434

434:                                              ; preds = %430
  tail call void %432(ptr noundef %194, i32 noundef %422) #16
  br label %435

435:                                              ; preds = %434, %430, %424, %416
  %436 = load ptr, ptr %13, align 4
  %437 = getelementptr inbounds %struct.skb_shared_info, ptr %436, i32 0, i32 3
  %438 = load i8, ptr %437, align 1
  %439 = and i8 %438, 2
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %435
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #16
  br label %442

442:                                              ; preds = %441, %435
  br i1 %242, label %443, label %527, !prof !11

443:                                              ; preds = %442
  %444 = zext i1 %244 to i8
  %445 = getelementptr i8, ptr %1, i32 1576
  %446 = load ptr, ptr %445, align 8
  %447 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %448 = load ptr, ptr %447, align 4
  %449 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %448) #16
  %450 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %451 = xor i1 %450, true
  %452 = select i1 %449, i1 %451, i1 false
  br i1 %452, label %453, label %462, !prof !14

453:                                              ; preds = %443
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %454 = tail call ptr @dev_driver_string(ptr noundef %446) #16
  %455 = getelementptr inbounds %struct.device, ptr %446, i32 0, i32 3
  %456 = load ptr, ptr %455, align 4
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %460

458:                                              ; preds = %453
  %459 = load ptr, ptr %446, align 4
  br label %460

460:                                              ; preds = %458, %453
  %461 = phi ptr [ %459, %458 ], [ %456, %453 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %454, ptr noundef %461) #16
  br label %462

462:                                              ; preds = %460, %443
  br i1 %449, label %632, label %463

463:                                              ; preds = %462
  %464 = load ptr, ptr @mem_map, align 4
  %465 = ptrtoint ptr %448 to i32
  %466 = add i32 %465, 1073741824
  %467 = lshr i32 %466, 12
  %468 = getelementptr %struct.page, ptr %464, i32 %467
  %469 = and i32 %465, 4095
  %470 = tail call i32 @dma_map_page_attrs(ptr noundef %446, ptr noundef %468, i32 noundef %469, i32 noundef %9, i32 noundef 1, i32 noundef 0) #16
  %471 = icmp eq i32 %470, -1
  br i1 %471, label %632, label %472

472:                                              ; preds = %463
  %473 = load ptr, ptr %337, align 16
  %474 = getelementptr %struct.stmmac_tx_info, ptr %473, i32 %159
  store i32 %470, ptr %474, align 4
  %475 = load ptr, ptr %337, align 16
  %476 = getelementptr %struct.stmmac_tx_info, ptr %475, i32 %159, i32 5
  store i32 0, ptr %476, align 4
  %477 = load ptr, ptr %337, align 16
  %478 = getelementptr %struct.stmmac_tx_info, ptr %477, i32 %159, i32 1
  store i8 0, ptr %478, align 4
  %479 = getelementptr i8, ptr %1, i32 1580
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr inbounds %struct.mac_device_info, ptr %480, i32 0, i32 1
  %482 = load ptr, ptr %481, align 4
  %483 = icmp eq ptr %482, null
  br i1 %483, label %489, label %484

484:                                              ; preds = %472
  %485 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %482, i32 0, i32 22
  %486 = load ptr, ptr %485, align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %489, label %488

488:                                              ; preds = %484
  tail call void %486(ptr noundef %194, i32 noundef %470) #16
  br label %489

489:                                              ; preds = %488, %484, %472
  %490 = load ptr, ptr %337, align 16
  %491 = getelementptr %struct.stmmac_tx_info, ptr %490, i32 %159, i32 2
  store i32 %9, ptr %491, align 4
  %492 = load ptr, ptr %337, align 16
  %493 = getelementptr %struct.stmmac_tx_info, ptr %492, i32 %159, i32 3
  store i8 %444, ptr %493, align 4
  %494 = load ptr, ptr %13, align 4
  %495 = getelementptr inbounds %struct.skb_shared_info, ptr %494, i32 0, i32 3
  %496 = load i8, ptr %495, align 1
  %497 = and i8 %496, 1
  %498 = icmp eq i8 %497, 0
  br i1 %498, label %514, label %499

499:                                              ; preds = %489
  %500 = getelementptr i8, ptr %1, i32 1504
  %501 = load i32, ptr %500, align 32
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %514, label %503, !prof !11

503:                                              ; preds = %499
  %504 = or i8 %496, 4
  store i8 %504, ptr %495, align 1
  %505 = load ptr, ptr %479, align 4
  %506 = getelementptr inbounds %struct.mac_device_info, ptr %505, i32 0, i32 1
  %507 = load ptr, ptr %506, align 4
  %508 = icmp eq ptr %507, null
  br i1 %508, label %514, label %509

509:                                              ; preds = %503
  %510 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %507, i32 0, i32 15
  %511 = load ptr, ptr %510, align 4
  %512 = icmp eq ptr %511, null
  br i1 %512, label %514, label %513

513:                                              ; preds = %509
  tail call void %511(ptr noundef %194) #16
  br label %514

514:                                              ; preds = %513, %509, %503, %499, %489
  %515 = load ptr, ptr %479, align 4
  %516 = getelementptr inbounds %struct.mac_device_info, ptr %515, i32 0, i32 1
  %517 = load ptr, ptr %516, align 4
  %518 = icmp eq ptr %517, null
  br i1 %518, label %527, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %517, i32 0, i32 2
  %521 = load ptr, ptr %520, align 4
  %522 = icmp eq ptr %521, null
  br i1 %522, label %527, label %523

523:                                              ; preds = %519
  %524 = getelementptr i8, ptr %1, i32 12700
  %525 = load i32, ptr %524, align 4
  %526 = load i32, ptr %5, align 8
  tail call void %521(ptr noundef %194, i32 noundef 1, i32 noundef %9, i1 noundef zeroext %171, i32 noundef %525, i1 noundef zeroext false, i1 noundef zeroext %244, i32 noundef %526) #16
  br label %527

527:                                              ; preds = %523, %519, %514, %442
  %528 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 1
  %529 = load i32, ptr %528, align 4
  %530 = and i32 %529, 2
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %553, label %532

532:                                              ; preds = %527
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  %533 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %534 = load i64, ptr %533, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %534) #16
  %535 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 6
  %536 = load ptr, ptr %535, align 4
  %537 = getelementptr %struct.dma_edesc, ptr %536, i32 %159
  %538 = getelementptr i8, ptr %1, i32 1580
  %539 = load ptr, ptr %538, align 4
  %540 = getelementptr inbounds %struct.mac_device_info, ptr %539, i32 0, i32 1
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %552, label %543

543:                                              ; preds = %532
  %544 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %541, i32 0, i32 30
  %545 = load ptr, ptr %544, align 4
  %546 = icmp eq ptr %545, null
  br i1 %546, label %552, label %547

547:                                              ; preds = %543
  %548 = load i64, ptr %3, align 8
  %549 = trunc i64 %548 to i32
  %550 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %551 = load i32, ptr %550, align 8
  call void %545(ptr noundef %537, i32 noundef %549, i32 noundef %551) #16
  br label %552

552:                                              ; preds = %547, %543, %532
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  br label %553

553:                                              ; preds = %552, %527
  %554 = getelementptr i8, ptr %1, i32 1580
  %555 = load ptr, ptr %554, align 4
  %556 = getelementptr inbounds %struct.mac_device_info, ptr %555, i32 0, i32 1
  %557 = load ptr, ptr %556, align 4
  %558 = icmp eq ptr %557, null
  br i1 %558, label %564, label %559

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %557, i32 0, i32 4
  %561 = load ptr, ptr %560, align 4
  %562 = icmp eq ptr %561, null
  br i1 %562, label %564, label %563

563:                                              ; preds = %559
  call void %561(ptr noundef %194) #16
  br label %564

564:                                              ; preds = %563, %559, %553
  %565 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %566 = load ptr, ptr %565, align 64
  %567 = load i32, ptr %5, align 8
  %568 = getelementptr %struct.netdev_queue, ptr %566, i32 %12, i32 14
  %569 = icmp ugt i32 %567, 268435455
  br i1 %569, label %570, label %571, !prof !14

570:                                              ; preds = %564
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !43
  unreachable

571:                                              ; preds = %564
  %572 = getelementptr %struct.netdev_queue, ptr %566, i32 %12, i32 14, i32 2
  store i32 %567, ptr %572, align 8
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %573 = load i32, ptr %568, align 64
  %574 = add i32 %573, %567
  store i32 %574, ptr %568, align 64
  %575 = getelementptr %struct.netdev_queue, ptr %566, i32 %12, i32 14, i32 1
  %576 = load volatile i32, ptr %575, align 4
  %577 = load volatile i32, ptr %568, align 64
  %578 = sub i32 %576, %577
  %579 = icmp sgt i32 %578, -1
  br i1 %579, label %587, label %580, !prof !11

580:                                              ; preds = %571
  %581 = getelementptr %struct.netdev_queue, ptr %566, i32 %12, i32 12
  call void @_set_bit(i32 noundef 1, ptr noundef %581) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !45
  %582 = load volatile i32, ptr %575, align 4
  %583 = load volatile i32, ptr %568, align 64
  %584 = sub i32 %582, %583
  %585 = icmp sgt i32 %584, -1
  br i1 %585, label %586, label %587, !prof !14

586:                                              ; preds = %580
  call void @_clear_bit(i32 noundef 1, ptr noundef %581) #16
  br label %587

587:                                              ; preds = %586, %580, %571
  %588 = load ptr, ptr %554, align 4
  %589 = getelementptr inbounds %struct.mac_device_info, ptr %588, i32 0, i32 2
  %590 = load ptr, ptr %589, align 4
  %591 = icmp eq ptr %590, null
  br i1 %591, label %599, label %592

592:                                              ; preds = %587
  %593 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %590, i32 0, i32 10
  %594 = load ptr, ptr %593, align 4
  %595 = icmp eq ptr %594, null
  br i1 %595, label %599, label %596

596:                                              ; preds = %592
  %597 = getelementptr i8, ptr %1, i32 1568
  %598 = load ptr, ptr %597, align 32
  call void %594(ptr noundef %598) #16
  br label %599

599:                                              ; preds = %596, %592, %587
  %600 = load i32, ptr %173, align 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %607, !prof !14

602:                                              ; preds = %599
  %603 = load i32, ptr %528, align 4
  %604 = and i32 %603, 1
  %605 = icmp eq i32 %604, 0
  %606 = select i1 %605, i32 16, i32 32
  br label %607

607:                                              ; preds = %602, %599
  %608 = phi i32 [ 32, %599 ], [ %606, %602 ]
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !37
  call void @arm_heavy_mb() #16
  %609 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 14
  %610 = load i32, ptr %609, align 4
  %611 = load i32, ptr %21, align 4
  %612 = mul i32 %611, %608
  %613 = add i32 %612, %610
  %614 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 15
  store i32 %613, ptr %614, align 8
  %615 = load ptr, ptr %554, align 4
  %616 = getelementptr inbounds %struct.mac_device_info, ptr %615, i32 0, i32 2
  %617 = load ptr, ptr %616, align 4
  %618 = icmp eq ptr %617, null
  br i1 %618, label %626, label %619

619:                                              ; preds = %607
  %620 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %617, i32 0, i32 23
  %621 = load ptr, ptr %620, align 4
  %622 = icmp eq ptr %621, null
  br i1 %622, label %626, label %623

623:                                              ; preds = %619
  %624 = getelementptr i8, ptr %1, i32 1568
  %625 = load ptr, ptr %624, align 32
  call void %621(ptr noundef %625, i32 noundef %613, i32 noundef %12) #16
  br label %626

626:                                              ; preds = %623, %619, %607
  %627 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 23, i32 %12, i32 2
  %628 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 1, i32 %12
  %629 = load i32, ptr %628, align 4
  %630 = mul i32 %629, 1000
  %631 = zext i32 %630 to i64
  call void @hrtimer_start_range_ns(ptr noundef %627, i64 noundef %631, i64 noundef 0, i32 noundef 1) #16
  br label %639

632:                                              ; preds = %463, %462, %290, %239
  %633 = getelementptr i8, ptr %1, i32 1572
  %634 = load ptr, ptr %633, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %634, ptr noundef nonnull @.str.68) #17
  tail call void @consume_skb(ptr noundef %0) #16
  %635 = load ptr, ptr %633, align 4
  %636 = getelementptr inbounds %struct.net_device, ptr %635, i32 0, i32 36, i32 7
  %637 = load i32, ptr %636, align 4
  %638 = add i32 %637, 1
  store i32 %638, ptr %636, align 4
  br label %639

639:                                              ; preds = %632, %626, %93, %86, %67, %56
  %640 = phi i32 [ %57, %56 ], [ %68, %67 ], [ 0, %632 ], [ 0, %626 ], [ 16, %93 ], [ 16, %86 ]
  ret i32 %640
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @stmmac_select_queue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 131089
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %0, ptr noundef %1, ptr noundef null) #16
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 89
  %14 = load i32, ptr %13, align 8
  %15 = urem i32 %12, %14
  %16 = trunc i32 %15 to i16
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi i16 [ %16, %10 ], [ 0, %3 ]
  ret i16 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_mac_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1576
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #16
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #16, !srcloc !25
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  br label %32

14:                                               ; preds = %2
  %15 = tail call i32 @eth_mac_addr(ptr noundef %0, ptr noundef %1) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i32 1580
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stmmac_ops, ptr %20, i32 0, i32 18
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %28 = load ptr, ptr %27, align 32
  tail call void %24(ptr noundef %19, ptr noundef %28, i32 noundef 0) #16
  br label %29

29:                                               ; preds = %26, %22, %17, %14
  %30 = load ptr, ptr %3, align 8
  %31 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 5) #16
  br label %32

32:                                               ; preds = %29, %13, %7
  %33 = phi i32 [ %15, %29 ], [ %5, %7 ], [ %5, %13 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.hwtstamp_config, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %152, label %9

9:                                                ; preds = %3
  switch i32 %2, label %152 [
    i32 35143, label %10
    i32 35144, label %10
    i32 35145, label %10
    i32 35248, label %14
    i32 35249, label %128
  ]

10:                                               ; preds = %9, %9, %9
  %11 = getelementptr i8, ptr %0, i32 11048
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @phylink_mii_ioctl(ptr noundef %12, ptr noundef %1, i32 noundef %2) #16
  br label %152

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #16, !annotation !10
  %15 = getelementptr i8, ptr %0, i32 12140
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 12848
  %20 = load i32, ptr %19, align 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 1572
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %24, ptr noundef nonnull @.str.75) #17
  %25 = getelementptr i8, ptr %0, i32 1504
  store i32 0, ptr %25, align 32
  %26 = getelementptr i8, ptr %0, i32 1564
  store i32 0, ptr %26, align 4
  br label %126

27:                                               ; preds = %18, %14
  %28 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 12, i32 -1090519040) #18, !srcloc !46
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41, !prof !11

33:                                               ; preds = %27
  %34 = tail call ptr @llvm.thread.pointer() #16
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #12, !srcloc !47
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #16, !srcloc !48
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !49
  %39 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %29, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #16, !srcloc !48
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !49
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !11

41:                                               ; preds = %33, %27
  %42 = phi i32 [ %39, %33 ], [ 12, %27 ]
  %43 = sub i32 12, %42
  %44 = getelementptr i8, ptr %4, i32 %43
  call void @llvm.memset.p0.i32(ptr align 1 %44, i8 0, i32 %42, i1 false) #16
  br label %126

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.hwtstamp_config, ptr %4, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %126, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %0, i32 12848
  %51 = load i32, ptr %50, align 16
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.hwtstamp_config, ptr %4, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  br i1 %52, label %71, label %55

55:                                               ; preds = %49
  switch i32 %54, label %126 [
    i32 0, label %56
    i32 3, label %57
    i32 4, label %58
    i32 5, label %59
    i32 6, label %60
    i32 7, label %61
    i32 8, label %62
    i32 12, label %63
    i32 13, label %68
    i32 14, label %69
    i32 15, label %70
    i32 1, label %70
  ]

56:                                               ; preds = %55
  store i32 0, ptr %53, align 4
  br label %75

57:                                               ; preds = %55
  store i32 3, ptr %53, align 4
  br label %75

58:                                               ; preds = %55
  store i32 4, ptr %53, align 4
  br label %75

59:                                               ; preds = %55
  store i32 5, ptr %53, align 4
  br label %75

60:                                               ; preds = %55
  store i32 6, ptr %53, align 4
  br label %75

61:                                               ; preds = %55
  store i32 7, ptr %53, align 4
  br label %75

62:                                               ; preds = %55
  store i32 8, ptr %53, align 4
  br label %75

63:                                               ; preds = %55
  store i32 12, ptr %53, align 4
  %64 = getelementptr i8, ptr %0, i32 12632
  %65 = load i32, ptr %64, align 8
  %66 = icmp slt i32 %65, 65
  %67 = select i1 %66, i32 16384, i32 0
  br label %75

68:                                               ; preds = %55
  store i32 13, ptr %53, align 4
  br label %75

69:                                               ; preds = %55
  store i32 14, ptr %53, align 4
  br label %75

70:                                               ; preds = %55, %55
  store i32 1, ptr %53, align 4
  br label %75

71:                                               ; preds = %49
  %72 = icmp eq i32 %54, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  store i32 0, ptr %53, align 4
  br label %75

74:                                               ; preds = %71
  store i32 3, ptr %53, align 4
  br label %75

75:                                               ; preds = %74, %73, %70, %69, %68, %63, %62, %61, %60, %59, %58, %57, %56
  %76 = phi i1 [ false, %73 ], [ true, %74 ], [ false, %56 ], [ true, %57 ], [ true, %58 ], [ true, %59 ], [ true, %60 ], [ true, %61 ], [ true, %62 ], [ true, %63 ], [ true, %68 ], [ true, %69 ], [ true, %70 ]
  %77 = phi i32 [ 515, %73 ], [ 515, %74 ], [ 515, %56 ], [ 515, %57 ], [ 515, %58 ], [ 515, %59 ], [ 1539, %60 ], [ 1539, %61 ], [ 1539, %62 ], [ 1539, %63 ], [ 1539, %68 ], [ 1539, %69 ], [ 515, %70 ]
  %78 = phi i32 [ 0, %73 ], [ 0, %74 ], [ 0, %56 ], [ 0, %57 ], [ 0, %58 ], [ 0, %59 ], [ 0, %60 ], [ 0, %61 ], [ 0, %62 ], [ 0, %63 ], [ 0, %68 ], [ 0, %69 ], [ 256, %70 ]
  %79 = phi i32 [ 0, %73 ], [ 0, %74 ], [ 0, %56 ], [ 8192, %57 ], [ 8192, %58 ], [ 8192, %59 ], [ 8192, %60 ], [ 8192, %61 ], [ 8192, %62 ], [ 8192, %63 ], [ 8192, %68 ], [ 8192, %69 ], [ 0, %70 ]
  %80 = phi i32 [ 0, %73 ], [ 0, %74 ], [ 0, %56 ], [ 4096, %57 ], [ 4096, %58 ], [ 4096, %59 ], [ 4096, %60 ], [ 4096, %61 ], [ 4096, %62 ], [ 4096, %63 ], [ 4096, %68 ], [ 4096, %69 ], [ 0, %70 ]
  %81 = phi i32 [ 0, %73 ], [ 0, %74 ], [ 0, %56 ], [ 0, %57 ], [ 0, %58 ], [ 0, %59 ], [ 0, %60 ], [ 0, %61 ], [ 0, %62 ], [ 2048, %63 ], [ 2048, %68 ], [ 2048, %69 ], [ 0, %70 ]
  %82 = phi i32 [ 0, %73 ], [ 0, %74 ], [ 0, %56 ], [ 65536, %57 ], [ 0, %58 ], [ 0, %59 ], [ 65536, %60 ], [ 0, %61 ], [ 0, %62 ], [ 65536, %63 ], [ 0, %68 ], [ 0, %69 ], [ 0, %70 ]
  %83 = phi i32 [ 0, %73 ], [ 0, %74 ], [ 0, %56 ], [ 0, %57 ], [ 0, %58 ], [ 32768, %59 ], [ 0, %60 ], [ 0, %61 ], [ 32768, %62 ], [ 0, %63 ], [ 0, %68 ], [ 32768, %69 ], [ 0, %70 ]
  %84 = phi i32 [ 0, %73 ], [ 0, %74 ], [ 0, %56 ], [ 0, %57 ], [ 16384, %58 ], [ 16384, %59 ], [ 0, %60 ], [ 16384, %61 ], [ 16384, %62 ], [ %67, %63 ], [ 16384, %68 ], [ 16384, %69 ], [ 0, %70 ]
  %85 = zext i1 %76 to i32
  %86 = getelementptr i8, ptr %0, i32 1564
  store i32 %85, ptr %86, align 4
  %87 = icmp eq i32 %47, 1
  %88 = zext i1 %87 to i32
  %89 = getelementptr i8, ptr %0, i32 1504
  store i32 %88, ptr %89, align 32
  %90 = getelementptr i8, ptr %0, i32 12844
  %91 = or i1 %87, %76
  br i1 %91, label %92, label %100

92:                                               ; preds = %75
  %93 = or i32 %78, %77
  %94 = or i32 %93, %79
  %95 = or i32 %94, %80
  %96 = or i32 %95, %81
  %97 = or i32 %96, %82
  %98 = or i32 %97, %83
  %99 = or i32 %98, %84
  br label %100

100:                                              ; preds = %92, %75
  %101 = phi i32 [ %99, %92 ], [ 515, %75 ]
  store i32 %101, ptr %90, align 4
  %102 = getelementptr i8, ptr %0, i32 1580
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.mac_device_info, ptr %103, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr %105, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = getelementptr i8, ptr %0, i32 12888
  %112 = load ptr, ptr %111, align 8
  call void %108(ptr noundef %112, i32 noundef %101) #16
  br label %113

113:                                              ; preds = %110, %107, %100
  %114 = getelementptr i8, ptr %0, i32 12712
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %114, ptr noundef nonnull align 4 dereferenceable(12) %4, i32 12, i1 false) #16
  %115 = load ptr, ptr %28, align 4
  %116 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %115, i32 12, i32 -1090519040) #18, !srcloc !50
  %117 = extractvalue { i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #12, !srcloc !47
  %121 = and i32 %120, -13
  %122 = or i32 %121, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #16, !srcloc !48
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !49
  %123 = call i32 @arm_copy_to_user(ptr noundef %115, ptr noundef nonnull %4, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #16, !srcloc !48
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !49
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 0, i32 -14
  br label %126

126:                                              ; preds = %119, %113, %55, %45, %41, %22
  %127 = phi i32 [ -95, %22 ], [ -34, %45 ], [ -34, %55 ], [ -14, %41 ], [ -14, %113 ], [ %125, %119 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %152

128:                                              ; preds = %9
  %129 = getelementptr i8, ptr %0, i32 12712
  %130 = getelementptr i8, ptr %0, i32 12140
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = getelementptr i8, ptr %0, i32 12144
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %133, %128
  %138 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %139, i32 12, i32 -1090519040) #18, !srcloc !50
  %141 = extractvalue { i32, i32 } %140, 0
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = tail call ptr @llvm.thread.pointer() #16
  %145 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 3
  %146 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %145) #12, !srcloc !47
  %147 = and i32 %146, -13
  %148 = or i32 %147, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #16, !srcloc !48
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !49
  %149 = tail call i32 @arm_copy_to_user(ptr noundef %139, ptr noundef %129, i32 noundef 12) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #16, !srcloc !48
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !49
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, i32 0, i32 -14
  br label %152

152:                                              ; preds = %143, %137, %133, %126, %10, %9, %3
  %153 = phi i32 [ -22, %3 ], [ -95, %9 ], [ %127, %126 ], [ %13, %10 ], [ -95, %133 ], [ -14, %137 ], [ %151, %143 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_change_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 12208
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 30
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %12, %14
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %0, i32 1572
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.78) #17
  br label %37

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %0, i32 15472
  %25 = load ptr, ptr %24, align 16
  %26 = icmp ne ptr %25, null
  %27 = icmp sgt i32 %1, 1500
  %28 = and i1 %27, %26
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = add i32 %1, 63
  %31 = and i32 %30, -64
  %32 = icmp slt i32 %15, %31
  %33 = icmp sgt i32 %31, 16368
  %34 = or i1 %33, %32
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %36, align 4
  tail call void @netdev_update_features(ptr noundef %0) #16
  br label %37

37:                                               ; preds = %35, %29, %23, %20
  %38 = phi i32 [ -16, %20 ], [ 0, %35 ], [ -22, %23 ], [ -22, %29 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_tx_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1572
  %4 = load ptr, ptr %3, align 4
  tail call void @netif_carrier_off(ptr noundef %4) #16
  %5 = getelementptr i8, ptr %0, i32 14120
  tail call void @_set_bit(i32 noundef 1, ptr noundef %5) #16
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 14124
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 14128
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %15) #16
  br label %17

17:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_vlan_rx_add_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = icmp eq i16 %1, -22392
  %6 = zext i16 %2 to i32
  %7 = getelementptr i8, ptr %0, i32 12892
  tail call void @_set_bit(i32 noundef %6, ptr noundef %7) #16
  %8 = tail call fastcc i32 @stmmac_vlan_update(ptr noundef %4, i1 noundef zeroext %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %7) #16
  br label %28

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 1580
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mac_device_info, ptr %13, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.stmmac_ops, ptr %18, i32 0, i32 38
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %0, ptr noundef %13, i16 noundef zeroext %1, i16 noundef zeroext %2) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %11
  br label %28

28:                                               ; preds = %27, %24, %20, %17, %10
  %29 = phi i32 [ %8, %10 ], [ 0, %27 ], [ %25, %24 ], [ -22, %20 ], [ -22, %17 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_vlan_rx_kill_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1576
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #16
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #16, !srcloc !25
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  br label %41

16:                                               ; preds = %3
  %17 = icmp eq i16 %1, -22392
  %18 = zext i16 %2 to i32
  %19 = getelementptr i8, ptr %0, i32 12892
  tail call void @_clear_bit(i32 noundef %18, ptr noundef %19) #16
  %20 = getelementptr i8, ptr %0, i32 1580
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %21, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.stmmac_ops, ptr %26, i32 0, i32 39
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %0, ptr noundef %21, i16 noundef zeroext %1, i16 noundef zeroext %2) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %16
  %36 = tail call fastcc i32 @stmmac_vlan_update(ptr noundef %4, i1 noundef zeroext %17)
  br label %37

37:                                               ; preds = %35, %32, %28, %25
  %38 = phi i32 [ %33, %32 ], [ %36, %35 ], [ -22, %28 ], [ -22, %25 ]
  %39 = load ptr, ptr %5, align 8
  %40 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #16
  br label %41

41:                                               ; preds = %37, %15, %9
  %42 = phi i32 [ %38, %37 ], [ %7, %9 ], [ %7, %15 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_setup_tc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  switch i32 %1, label %43 [
    i32 5, label %5
    i32 6, label %7
    i32 13, label %19
    i32 10, label %31
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %2, ptr noundef nonnull @stmmac_block_cb_list, ptr noundef nonnull @stmmac_setup_tc_block_cb, ptr noundef %4, ptr noundef %4, i1 noundef zeroext true) #16
  br label %43

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1580
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mac_device_info, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %4, ptr noundef %2) #16
  br label %43

19:                                               ; preds = %3
  %20 = getelementptr i8, ptr %0, i32 1580
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %23, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef %4, ptr noundef %2) #16
  br label %43

31:                                               ; preds = %3
  %32 = getelementptr i8, ptr %0, i32 1580
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mac_device_info, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %35, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call i32 %39(ptr noundef %4, ptr noundef %2) #16
  br label %43

43:                                               ; preds = %41, %37, %31, %29, %25, %19, %17, %13, %7, %5, %3
  %44 = phi i32 [ %6, %5 ], [ %18, %17 ], [ -22, %13 ], [ -22, %7 ], [ %30, %29 ], [ -22, %25 ], [ -22, %19 ], [ %42, %41 ], [ -22, %37 ], [ -22, %31 ], [ -95, %3 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i64 @stmmac_fix_features(ptr nocapture noundef %0, i64 noundef %1) #13 {
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = and i64 %1, -1099511627777
  %9 = select i1 %7, i64 %8, i64 %1
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = and i64 %9, -27
  %14 = select i1 %12, i64 %13, i64 %9
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 1500
  %22 = select i1 %21, i64 %13, i64 %14
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i64 [ %14, %2 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 60
  %26 = load i8, ptr %25, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %0, i32 12160
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 1509
  %34 = lshr i64 %24, 16
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, ptr %33, align 1
  br label %37

37:                                               ; preds = %32, %28, %23
  ret i64 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_features(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = and i64 %1, 1099511627776
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 12096
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ %9, %5 ], [ 0, %2 ]
  %12 = getelementptr i8, ptr %0, i32 1580
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mac_device_info, ptr %13, i32 0, i32 14
  store i32 %11, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 1580
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.stmmac_ops, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %16) #16
  br label %25

25:                                               ; preds = %23, %19, %10
  %26 = getelementptr i8, ptr %0, i32 1516
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %30, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %0, i32 1512
  %36 = load i32, ptr %35, align 8
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  %40 = getelementptr i8, ptr %0, i32 12096
  %41 = load ptr, ptr %40, align 64
  %42 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %41, i32 0, i32 29
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %0, i32 1568
  br label %47

47:                                               ; preds = %67, %45
  %48 = phi ptr [ %41, %45 ], [ %62, %67 ]
  %49 = phi ptr [ %30, %45 ], [ %68, %67 ]
  %50 = phi i32 [ 0, %45 ], [ %63, %67 ]
  %51 = getelementptr inbounds %struct.mac_device_info, ptr %49, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %52, i32 0, i32 27
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %46, align 32
  tail call void %56(ptr noundef %59, i1 noundef zeroext %39, i32 noundef %50) #16
  %60 = load ptr, ptr %40, align 64
  br label %61

61:                                               ; preds = %58, %54, %47
  %62 = phi ptr [ %60, %58 ], [ %48, %54 ], [ %48, %47 ]
  %63 = add nuw i32 %50, 1
  %64 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %62, i32 0, i32 29
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load ptr, ptr %15, align 4
  br label %47

69:                                               ; preds = %61, %38, %25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_bpf(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load i32, ptr %1, align 4
  switch i32 %4, label %17 [
    i32 0, label %5
    i32 4, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @stmmac_xdp_set_prog(ptr noundef %3, ptr noundef %7, ptr noundef %9) #16
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = tail call i32 @stmmac_xdp_setup_pool(ptr noundef %3, ptr noundef %13, i16 noundef zeroext %15) #16
  br label %17

17:                                               ; preds = %11, %5, %2
  %18 = phi i32 [ %16, %11 ], [ %10, %5 ], [ -95, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_xdp_xmit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 14120
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %95, !prof !11

13:                                               ; preds = %4
  %14 = icmp ult i32 %3, 2
  br i1 %14, label %15, label %95, !prof !11

15:                                               ; preds = %13
  %16 = icmp slt i32 %8, 0
  br i1 %16, label %17, label %18, !prof !14

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ 0, %17 ], [ %8, %15 ]
  %20 = getelementptr i8, ptr %0, i32 12096
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %21, i32 0, i32 30
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %24, %18
  %25 = phi i32 [ %19, %18 ], [ %27, %24 ]
  %26 = icmp ult i32 %25, %23
  %27 = sub i32 %25, %23
  br i1 %26, label %28, label %24

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 1572
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 87
  %32 = load ptr, ptr %31, align 64
  %33 = getelementptr %struct.netdev_queue, ptr %32, i32 %25, i32 9
  tail call void @_raw_spin_lock(ptr noundef %33) #16
  %34 = getelementptr %struct.netdev_queue, ptr %32, i32 %25, i32 10
  store volatile i32 %8, ptr %34, align 4
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = getelementptr %struct.netdev_queue, ptr %32, i32 %25, i32 11
  %37 = load volatile i32, ptr %36, align 8
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store volatile i32 %35, ptr %36, align 8
  br label %40

40:                                               ; preds = %39, %28
  %41 = icmp sgt i32 %1, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %48, %40
  %43 = phi i32 [ %49, %48 ], [ 0, %40 ]
  %44 = getelementptr ptr, ptr %2, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = tail call fastcc i32 @stmmac_xdp_xmit_xdpf(ptr noundef %5, i32 noundef %25, ptr noundef %45, i1 noundef zeroext true)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = add nuw nsw i32 %43, 1
  %50 = icmp eq i32 %49, %1
  br i1 %50, label %51, label %42

51:                                               ; preds = %48, %42, %40
  %52 = phi i32 [ 0, %40 ], [ %43, %42 ], [ %1, %48 ]
  %53 = and i32 %3, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %92, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %0, i32 12708
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65, !prof !14

59:                                               ; preds = %55
  %60 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 23, i32 %25, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 16, i32 32
  br label %65

65:                                               ; preds = %59, %55
  %66 = phi i32 [ 32, %55 ], [ %64, %59 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !37
  tail call void @arm_heavy_mb() #16
  %67 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 23, i32 %25, i32 14
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 23, i32 %25, i32 12
  %70 = load i32, ptr %69, align 4
  %71 = mul i32 %70, %66
  %72 = add i32 %71, %68
  %73 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 23, i32 %25, i32 15
  store i32 %72, ptr %73, align 8
  %74 = getelementptr i8, ptr %0, i32 1580
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mac_device_info, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %77, i32 0, i32 23
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %0, i32 1568
  %85 = load ptr, ptr %84, align 32
  tail call void %81(ptr noundef %85, i32 noundef %72, i32 noundef %25) #16
  br label %86

86:                                               ; preds = %83, %79, %65
  %87 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 23, i32 %25, i32 2
  %88 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 1, i32 %25
  %89 = load i32, ptr %88, align 4
  %90 = mul i32 %89, 1000
  %91 = zext i32 %90 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %87, i64 noundef %91, i64 noundef 0, i32 noundef 1) #16
  br label %92

92:                                               ; preds = %86, %51
  store volatile i32 -1, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %93 = load i16, ptr %33, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %95

95:                                               ; preds = %92, %13, %4
  %96 = phi i32 [ %52, %92 ], [ -100, %4 ], [ -22, %13 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_tso_xmit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11
  %13 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %24 to i32
  %28 = ptrtoint ptr %26 to i32
  br i1 %18, label %32, label %29

29:                                               ; preds = %2
  %30 = sub i32 8, %28
  %31 = add i32 %30, %27
  br label %40

32:                                               ; preds = %2
  %33 = sub i32 %27, %28
  %34 = getelementptr inbounds %struct.tcphdr, ptr %24, i32 0, i32 4
  %35 = load i16, ptr %34, align 4
  %36 = lshr i16 %35, 2
  %37 = and i16 %36, 60
  %38 = zext i16 %37 to i32
  %39 = add i32 %33, %38
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i32 [ 8, %29 ], [ %38, %32 ]
  %42 = phi i32 [ %31, %29 ], [ %39, %32 ]
  %43 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 13
  %44 = load i32, ptr %43, align 32
  %45 = icmp ugt i32 %44, %14
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = xor i32 %14, -1
  %48 = add i32 %44, %47
  br label %55

49:                                               ; preds = %40
  %50 = getelementptr i8, ptr %1, i32 4800
  %51 = load i32, ptr %50, align 64
  %52 = xor i32 %14, -1
  %53 = add i32 %44, %52
  %54 = add i32 %53, %51
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i32 [ %48, %46 ], [ %54, %49 ]
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %42, 255
  %60 = sub i32 %58, %59
  %61 = udiv i32 %60, 16383
  %62 = icmp ugt i32 %56, %61
  br i1 %62, label %77, label %63, !prof !11

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %65 = load ptr, ptr %64, align 64
  %66 = getelementptr %struct.netdev_queue, ptr %65, i32 %11, i32 12
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %584

70:                                               ; preds = %63
  %71 = getelementptr i8, ptr %1, i32 1572
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 87
  %74 = load ptr, ptr %73, align 64
  %75 = getelementptr %struct.netdev_queue, ptr %74, i32 %11, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %75) #16
  %76 = load ptr, ptr %71, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %76, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.stmmac_tso_xmit) #17
  br label %584

77:                                               ; preds = %55
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %59, %79
  %81 = sub i32 %58, %80
  %82 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %83 = load i16, ptr %82, align 4
  %84 = zext i16 %83 to i32
  %85 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 16
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, %84
  br i1 %87, label %127, label %88

88:                                               ; preds = %77
  %89 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 6
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr %struct.dma_edesc, ptr %95, i32 %14, i32 4
  br label %101

97:                                               ; preds = %88
  %98 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 7
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr %struct.dma_desc, ptr %99, i32 %14
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi ptr [ %96, %93 ], [ %100, %97 ]
  %103 = getelementptr i8, ptr %1, i32 1580
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.mac_device_info, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %106, i32 0, i32 20
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  tail call void %110(ptr noundef %102, i32 noundef %84) #16
  %113 = load i32, ptr %13, align 4
  br label %114

114:                                              ; preds = %112, %108, %101
  %115 = phi i32 [ %113, %112 ], [ %14, %108 ], [ %14, %101 ]
  store i32 %84, ptr %85, align 4
  %116 = add i32 %115, 1
  %117 = getelementptr i8, ptr %1, i32 4800
  %118 = load i32, ptr %117, align 64
  %119 = add i32 %118, -1
  %120 = and i32 %119, %116
  store i32 %120, ptr %13, align 4
  %121 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr ptr, ptr %122, i32 %120
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126, !prof !11

126:                                              ; preds = %114
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 4053, i32 noundef 9, ptr noundef null) #16
  br label %127

127:                                              ; preds = %126, %114, %77
  %128 = phi ptr [ null, %77 ], [ %102, %126 ], [ %102, %114 ]
  %129 = getelementptr i8, ptr %1, i32 12636
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 256
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %127
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.stmmac_tso_xmit, i32 noundef %41, i32 noundef %59, i32 noundef %81, i32 noundef %84) #17
  %135 = load i32, ptr %57, align 8
  %136 = load i32, ptr %78, align 4
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %135, i32 noundef %136) #17
  br label %138

138:                                              ; preds = %133, %127
  %139 = getelementptr i8, ptr %1, i32 12248
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %200, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %144 = load i16, ptr %143, align 2
  %145 = and i16 %144, 1
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %200, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  %149 = load i16, ptr %148, align 4
  %150 = icmp eq i16 %149, -22392
  %151 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %152 = load i16, ptr %151, align 2
  %153 = select i1 %150, i16 %152, i16 0
  %154 = select i1 %150, i32 2, i32 0
  %155 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %12, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %147
  %160 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %12, i32 0, i32 6
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %12, i32 0, i32 12
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr %struct.dma_edesc, ptr %161, i32 %163, i32 4
  br label %171

165:                                              ; preds = %147
  %166 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %12, i32 0, i32 7
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %12, i32 0, i32 12
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr %struct.dma_desc, ptr %167, i32 %169
  br label %171

171:                                              ; preds = %165, %159
  %172 = phi ptr [ %164, %159 ], [ %170, %165 ]
  %173 = getelementptr i8, ptr %1, i32 1580
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.mac_device_info, ptr %174, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %200, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %176, i32 0, i32 28
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %200, label %182

182:                                              ; preds = %178
  tail call void %180(ptr noundef %172, i16 noundef zeroext %152, i16 noundef zeroext %153, i32 noundef %154) #16
  %183 = load ptr, ptr %173, align 4
  %184 = getelementptr inbounds %struct.mac_device_info, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %185, i32 0, i32 4
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void %189(ptr noundef %172) #16
  br label %192

192:                                              ; preds = %191, %187, %182
  %193 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %12, i32 0, i32 12
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, 1
  %196 = getelementptr i8, ptr %1, i32 4800
  %197 = load i32, ptr %196, align 64
  %198 = add i32 %197, -1
  %199 = and i32 %198, %195
  store i32 %199, ptr %193, align 4
  br label %200

200:                                              ; preds = %192, %178, %171, %142, %138
  %201 = phi i1 [ true, %192 ], [ false, %138 ], [ false, %142 ], [ false, %171 ], [ false, %178 ]
  %202 = load i32, ptr %13, align 4
  %203 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 8
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr ptr, ptr %204, i32 %202
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208, !prof !11

208:                                              ; preds = %200
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 4067, i32 noundef 9, ptr noundef null) #16
  br label %209

209:                                              ; preds = %208, %200
  %210 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %209
  %215 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 6
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr %struct.dma_edesc, ptr %216, i32 %202, i32 4
  br label %222

218:                                              ; preds = %209
  %219 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 7
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr %struct.dma_desc, ptr %220, i32 %202
  br label %222

222:                                              ; preds = %218, %214
  %223 = phi ptr [ %217, %214 ], [ %221, %218 ]
  br i1 %201, label %224, label %235

224:                                              ; preds = %222
  %225 = getelementptr i8, ptr %1, i32 1580
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.mac_device_info, ptr %226, i32 0, i32 1
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %235, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %228, i32 0, i32 29
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  tail call void %232(ptr noundef %223, i32 noundef 2) #16
  br label %235

235:                                              ; preds = %234, %230, %224, %222
  %236 = getelementptr i8, ptr %1, i32 1576
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %239 = load ptr, ptr %238, align 4
  %240 = load i32, ptr %57, align 8
  %241 = load i32, ptr %78, align 4
  %242 = sub i32 %240, %241
  %243 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %239) #16
  %244 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %245 = xor i1 %244, true
  %246 = select i1 %243, i1 %245, i1 false
  br i1 %246, label %247, label %256, !prof !14

247:                                              ; preds = %235
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %248 = tail call ptr @dev_driver_string(ptr noundef %237) #16
  %249 = getelementptr inbounds %struct.device, ptr %237, i32 0, i32 3
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load ptr, ptr %237, align 4
  br label %254

254:                                              ; preds = %252, %247
  %255 = phi ptr [ %253, %252 ], [ %250, %247 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %248, ptr noundef %255) #16
  br label %256

256:                                              ; preds = %254, %235
  br i1 %243, label %577, label %257

257:                                              ; preds = %256
  %258 = load ptr, ptr @mem_map, align 4
  %259 = ptrtoint ptr %239 to i32
  %260 = add i32 %259, 1073741824
  %261 = lshr i32 %260, 12
  %262 = getelementptr %struct.page, ptr %258, i32 %261
  %263 = and i32 %259, 4095
  %264 = tail call i32 @dma_map_page_attrs(ptr noundef %237, ptr noundef %262, i32 noundef %263, i32 noundef %242, i32 noundef 1, i32 noundef 0) #16
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %577, label %266

266:                                              ; preds = %257
  %267 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 9
  %268 = load ptr, ptr %267, align 16
  %269 = getelementptr %struct.stmmac_tx_info, ptr %268, i32 %202
  store i32 %264, ptr %269, align 4
  %270 = load i32, ptr %57, align 8
  %271 = load i32, ptr %78, align 4
  %272 = sub i32 %270, %271
  %273 = load ptr, ptr %267, align 16
  %274 = getelementptr %struct.stmmac_tx_info, ptr %273, i32 %202, i32 2
  store i32 %272, ptr %274, align 4
  %275 = load ptr, ptr %267, align 16
  %276 = getelementptr %struct.stmmac_tx_info, ptr %275, i32 %202, i32 1
  store i8 0, ptr %276, align 4
  %277 = load ptr, ptr %267, align 16
  %278 = getelementptr %struct.stmmac_tx_info, ptr %277, i32 %202, i32 5
  store i32 0, ptr %278, align 4
  %279 = getelementptr i8, ptr %1, i32 12232
  %280 = load i32, ptr %279, align 4
  %281 = icmp ult i32 %280, 33
  br i1 %281, label %282, label %289

282:                                              ; preds = %266
  store i32 %264, ptr %223, align 4
  %283 = icmp eq i32 %81, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %282
  %285 = add i32 %264, %59
  %286 = getelementptr inbounds %struct.dma_desc, ptr %223, i32 0, i32 1
  store i32 %285, ptr %286, align 4
  br label %287

287:                                              ; preds = %284, %282
  %288 = add i32 %81, -16383
  br label %302

289:                                              ; preds = %266
  %290 = getelementptr i8, ptr %1, i32 1580
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.mac_device_info, ptr %291, i32 0, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %300, label %295

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %293, i32 0, i32 22
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  tail call void %297(ptr noundef %223, i32 noundef %264) #16
  br label %300

300:                                              ; preds = %299, %295, %289
  %301 = add i32 %264, %59
  br label %302

302:                                              ; preds = %300, %287
  %303 = phi i32 [ %81, %287 ], [ 0, %300 ]
  %304 = phi i32 [ %264, %287 ], [ %301, %300 ]
  %305 = phi i32 [ %288, %287 ], [ %81, %300 ]
  %306 = icmp eq i8 %7, 0
  tail call fastcc void @stmmac_tso_allocator(ptr noundef %3, i32 noundef %304, i32 noundef %305, i1 noundef zeroext %306, i32 noundef %11)
  br i1 %306, label %339, label %307

307:                                              ; preds = %302
  %308 = add nsw i32 %8, -1
  br label %309

309:                                              ; preds = %321, %307
  %310 = phi i32 [ 0, %307 ], [ %337, %321 ]
  %311 = load ptr, ptr %4, align 4
  %312 = getelementptr %struct.skb_shared_info, ptr %311, i32 0, i32 12, i32 %310
  %313 = load ptr, ptr %236, align 8
  %314 = getelementptr %struct.skb_shared_info, ptr %311, i32 0, i32 12, i32 %310, i32 1
  %315 = load i32, ptr %314, align 4
  %316 = load ptr, ptr %312, align 4
  %317 = getelementptr %struct.skb_shared_info, ptr %311, i32 0, i32 12, i32 %310, i32 2
  %318 = load i32, ptr %317, align 4
  %319 = tail call i32 @dma_map_page_attrs(ptr noundef %313, ptr noundef %316, i32 noundef %318, i32 noundef %315, i32 noundef 1, i32 noundef 0) #16
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %577, label %321

321:                                              ; preds = %309
  %322 = load i32, ptr %314, align 4
  %323 = icmp eq i32 %310, %308
  tail call fastcc void @stmmac_tso_allocator(ptr noundef %3, i32 noundef %319, i32 noundef %322, i1 noundef zeroext %323, i32 noundef %11)
  %324 = load ptr, ptr %267, align 16
  %325 = load i32, ptr %13, align 4
  %326 = getelementptr %struct.stmmac_tx_info, ptr %324, i32 %325
  store i32 %319, ptr %326, align 4
  %327 = load i32, ptr %314, align 4
  %328 = load ptr, ptr %267, align 16
  %329 = load i32, ptr %13, align 4
  %330 = getelementptr %struct.stmmac_tx_info, ptr %328, i32 %329, i32 2
  store i32 %327, ptr %330, align 4
  %331 = load ptr, ptr %267, align 16
  %332 = load i32, ptr %13, align 4
  %333 = getelementptr %struct.stmmac_tx_info, ptr %331, i32 %332, i32 1
  store i8 1, ptr %333, align 4
  %334 = load ptr, ptr %267, align 16
  %335 = load i32, ptr %13, align 4
  %336 = getelementptr %struct.stmmac_tx_info, ptr %334, i32 %335, i32 5
  store i32 0, ptr %336, align 4
  %337 = add nuw nsw i32 %310, 1
  %338 = icmp eq i32 %337, %8
  br i1 %338, label %339, label %309

339:                                              ; preds = %321, %302
  %340 = load ptr, ptr %267, align 16
  %341 = load i32, ptr %13, align 4
  %342 = getelementptr %struct.stmmac_tx_info, ptr %340, i32 %341, i32 3
  store i8 1, ptr %342, align 4
  %343 = load ptr, ptr %203, align 4
  %344 = load i32, ptr %13, align 4
  %345 = getelementptr ptr, ptr %343, i32 %344
  store ptr %0, ptr %345, align 4
  %346 = load ptr, ptr %267, align 16
  %347 = load i32, ptr %13, align 4
  %348 = getelementptr %struct.stmmac_tx_info, ptr %346, i32 %347, i32 5
  store i32 0, ptr %348, align 4
  %349 = load i32, ptr %13, align 4
  %350 = sub i32 1, %14
  %351 = add i32 %350, %349
  %352 = load i32, ptr %12, align 64
  %353 = add i32 %352, %351
  store i32 %353, ptr %12, align 64
  %354 = load ptr, ptr %4, align 4
  %355 = getelementptr inbounds %struct.skb_shared_info, ptr %354, i32 0, i32 3
  %356 = load i8, ptr %355, align 1
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %339
  %360 = getelementptr i8, ptr %1, i32 1504
  %361 = load i32, ptr %360, align 32
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %372

363:                                              ; preds = %359, %339
  %364 = getelementptr [8 x i32], ptr %3, i32 0, i32 %11
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %402, label %367

367:                                              ; preds = %363
  %368 = icmp ugt i32 %351, %365
  br i1 %368, label %372, label %369

369:                                              ; preds = %367
  %370 = urem i32 %353, %365
  %371 = icmp ult i32 %370, %351
  br i1 %371, label %372, label %402

372:                                              ; preds = %369, %367, %359
  %373 = load i32, ptr %210, align 4
  %374 = and i32 %373, 1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %380, label %376

376:                                              ; preds = %372
  %377 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 6
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr %struct.dma_edesc, ptr %378, i32 %349, i32 4
  br label %384

380:                                              ; preds = %372
  %381 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 7
  %382 = load ptr, ptr %381, align 8
  %383 = getelementptr %struct.dma_desc, ptr %382, i32 %349
  br label %384

384:                                              ; preds = %380, %376
  %385 = phi ptr [ %379, %376 ], [ %383, %380 ]
  store i32 0, ptr %12, align 64
  %386 = getelementptr i8, ptr %1, i32 1580
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.mac_device_info, ptr %387, i32 0, i32 1
  %389 = load ptr, ptr %388, align 4
  %390 = icmp eq ptr %389, null
  br i1 %390, label %397, label %391

391:                                              ; preds = %384
  %392 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %389, i32 0, i32 7
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %397, label %395

395:                                              ; preds = %391
  tail call void %393(ptr noundef %385) #16
  %396 = load i32, ptr %13, align 4
  br label %397

397:                                              ; preds = %395, %391, %384
  %398 = phi i32 [ %396, %395 ], [ %349, %391 ], [ %349, %384 ]
  %399 = getelementptr i8, ptr %1, i32 11256
  %400 = load i32, ptr %399, align 8
  %401 = add i32 %400, 1
  store i32 %401, ptr %399, align 8
  br label %402

402:                                              ; preds = %397, %369, %363
  %403 = phi i32 [ %349, %363 ], [ %398, %397 ], [ %349, %369 ]
  %404 = add i32 %403, 1
  %405 = getelementptr i8, ptr %1, i32 4800
  %406 = load i32, ptr %405, align 64
  %407 = add i32 %406, -1
  %408 = and i32 %407, %404
  store i32 %408, ptr %13, align 4
  %409 = load i32, ptr %43, align 32
  %410 = icmp ugt i32 %409, %408
  %411 = sub i32 -2, %403
  %412 = sub i32 0, %406
  %413 = or i32 %411, %412
  %414 = select i1 %410, i32 0, i32 %406
  %415 = add i32 %413, %414
  %416 = add i32 %409, %415
  %417 = icmp ult i32 %416, 19
  br i1 %417, label %418, label %424, !prof !14

418:                                              ; preds = %402
  %419 = getelementptr i8, ptr %1, i32 1572
  %420 = load ptr, ptr %419, align 4
  %421 = getelementptr inbounds %struct.net_device, ptr %420, i32 0, i32 87
  %422 = load ptr, ptr %421, align 64
  %423 = getelementptr %struct.netdev_queue, ptr %422, i32 %11, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %423) #16
  br label %424

424:                                              ; preds = %418, %402
  %425 = load i32, ptr %57, align 8
  %426 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %427 = load i32, ptr %426, align 4
  %428 = add i32 %427, %425
  store i32 %428, ptr %426, align 4
  %429 = getelementptr i8, ptr %1, i32 11516
  %430 = load i32, ptr %429, align 4
  %431 = add i32 %430, 1
  store i32 %431, ptr %429, align 4
  %432 = getelementptr i8, ptr %1, i32 11520
  %433 = load i32, ptr %432, align 64
  %434 = add i32 %433, %8
  store i32 %434, ptr %432, align 64
  %435 = getelementptr i8, ptr %1, i32 1520
  %436 = load i32, ptr %435, align 16
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %449, label %438

438:                                              ; preds = %424
  %439 = getelementptr i8, ptr %1, i32 1580
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr inbounds %struct.mac_device_info, ptr %440, i32 0, i32 1
  %442 = load ptr, ptr %441, align 4
  %443 = icmp eq ptr %442, null
  br i1 %443, label %449, label %444

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %442, i32 0, i32 27
  %446 = load ptr, ptr %445, align 4
  %447 = icmp eq ptr %446, null
  br i1 %447, label %449, label %448

448:                                              ; preds = %444
  tail call void %446(ptr noundef %223, i32 noundef %436) #16
  br label %449

449:                                              ; preds = %448, %444, %438, %424
  %450 = load ptr, ptr %4, align 4
  %451 = getelementptr inbounds %struct.skb_shared_info, ptr %450, i32 0, i32 3
  %452 = load i8, ptr %451, align 1
  %453 = and i8 %452, 2
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %459, label %455

455:                                              ; preds = %449
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #16
  %456 = load ptr, ptr %4, align 4
  %457 = getelementptr inbounds %struct.skb_shared_info, ptr %456, i32 0, i32 3
  %458 = load i8, ptr %457, align 1
  br label %459

459:                                              ; preds = %455, %449
  %460 = phi i8 [ %452, %449 ], [ %458, %455 ]
  %461 = phi ptr [ %450, %449 ], [ %456, %455 ]
  %462 = getelementptr inbounds %struct.skb_shared_info, ptr %461, i32 0, i32 3
  %463 = and i8 %460, 1
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %481, label %465

465:                                              ; preds = %459
  %466 = getelementptr i8, ptr %1, i32 1504
  %467 = load i32, ptr %466, align 32
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %481, label %469, !prof !11

469:                                              ; preds = %465
  %470 = or i8 %460, 4
  store i8 %470, ptr %462, align 1
  %471 = getelementptr i8, ptr %1, i32 1580
  %472 = load ptr, ptr %471, align 4
  %473 = getelementptr inbounds %struct.mac_device_info, ptr %472, i32 0, i32 1
  %474 = load ptr, ptr %473, align 4
  %475 = icmp eq ptr %474, null
  br i1 %475, label %481, label %476

476:                                              ; preds = %469
  %477 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %474, i32 0, i32 15
  %478 = load ptr, ptr %477, align 4
  %479 = icmp eq ptr %478, null
  br i1 %479, label %481, label %480

480:                                              ; preds = %476
  tail call void %478(ptr noundef %223) #16
  br label %481

481:                                              ; preds = %480, %476, %469, %465, %459
  %482 = getelementptr i8, ptr %1, i32 1580
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.mac_device_info, ptr %483, i32 0, i32 1
  %485 = load ptr, ptr %484, align 4
  %486 = icmp eq ptr %485, null
  br i1 %486, label %499, label %487

487:                                              ; preds = %481
  %488 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %485, i32 0, i32 3
  %489 = load ptr, ptr %488, align 4
  %490 = icmp eq ptr %489, null
  br i1 %490, label %499, label %491

491:                                              ; preds = %487
  %492 = load ptr, ptr %267, align 16
  %493 = getelementptr %struct.stmmac_tx_info, ptr %492, i32 %202, i32 3
  %494 = load i8, ptr %493, align 4, !range !9
  %495 = icmp ne i8 %494, 0
  %496 = lshr i32 %41, 2
  %497 = load i32, ptr %57, align 8
  %498 = sub i32 %497, %59
  tail call void %489(ptr noundef %223, i32 noundef 1, i32 noundef %59, i32 noundef %303, i1 noundef zeroext true, i1 noundef zeroext %495, i32 noundef %496, i32 noundef %498) #16
  br label %499

499:                                              ; preds = %491, %487, %481
  %500 = icmp eq ptr %128, null
  br i1 %500, label %511, label %501

501:                                              ; preds = %499
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #16, !srcloc !51
  %502 = load ptr, ptr %482, align 4
  %503 = getelementptr inbounds %struct.mac_device_info, ptr %502, i32 0, i32 1
  %504 = load ptr, ptr %503, align 4
  %505 = icmp eq ptr %504, null
  br i1 %505, label %511, label %506

506:                                              ; preds = %501
  %507 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %504, i32 0, i32 4
  %508 = load ptr, ptr %507, align 4
  %509 = icmp eq ptr %508, null
  br i1 %509, label %511, label %510

510:                                              ; preds = %506
  tail call void %508(ptr noundef nonnull %128) #16
  br label %511

511:                                              ; preds = %510, %506, %501, %499
  %512 = load i32, ptr %129, align 4
  %513 = and i32 %512, 4096
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %520, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %13, align 4
  %517 = load i32, ptr %43, align 32
  %518 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.stmmac_tso_xmit, i32 noundef %516, i32 noundef %517, i32 noundef %202, i32 noundef %516, ptr noundef %223, i32 noundef %8) #17
  %519 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #17
  br label %520

520:                                              ; preds = %515, %511
  %521 = load i32, ptr %57, align 8
  %522 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %523 = load ptr, ptr %522, align 64
  %524 = getelementptr %struct.netdev_queue, ptr %523, i32 %11, i32 14
  %525 = icmp ugt i32 %521, 268435455
  br i1 %525, label %526, label %527, !prof !14

526:                                              ; preds = %520
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !43
  unreachable

527:                                              ; preds = %520
  %528 = getelementptr %struct.netdev_queue, ptr %523, i32 %11, i32 14, i32 2
  store i32 %521, ptr %528, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %529 = load i32, ptr %524, align 64
  %530 = add i32 %529, %521
  store i32 %530, ptr %524, align 64
  %531 = getelementptr %struct.netdev_queue, ptr %523, i32 %11, i32 14, i32 1
  %532 = load volatile i32, ptr %531, align 4
  %533 = load volatile i32, ptr %524, align 64
  %534 = sub i32 %532, %533
  %535 = icmp sgt i32 %534, -1
  br i1 %535, label %543, label %536, !prof !11

536:                                              ; preds = %527
  %537 = getelementptr %struct.netdev_queue, ptr %523, i32 %11, i32 12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %537) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !45
  %538 = load volatile i32, ptr %531, align 4
  %539 = load volatile i32, ptr %524, align 64
  %540 = sub i32 %538, %539
  %541 = icmp sgt i32 %540, -1
  br i1 %541, label %542, label %543, !prof !14

542:                                              ; preds = %536
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %537) #16
  br label %543

543:                                              ; preds = %542, %536, %527
  %544 = getelementptr i8, ptr %1, i32 12708
  %545 = load i32, ptr %544, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %552, !prof !14

547:                                              ; preds = %543
  %548 = load i32, ptr %210, align 4
  %549 = and i32 %548, 1
  %550 = icmp eq i32 %549, 0
  %551 = select i1 %550, i32 16, i32 32
  br label %552

552:                                              ; preds = %547, %543
  %553 = phi i32 [ 32, %543 ], [ %551, %547 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !37
  tail call void @arm_heavy_mb() #16
  %554 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 14
  %555 = load i32, ptr %554, align 4
  %556 = load i32, ptr %13, align 4
  %557 = mul i32 %556, %553
  %558 = add i32 %557, %555
  %559 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 15
  store i32 %558, ptr %559, align 8
  %560 = load ptr, ptr %482, align 4
  %561 = getelementptr inbounds %struct.mac_device_info, ptr %560, i32 0, i32 2
  %562 = load ptr, ptr %561, align 4
  %563 = icmp eq ptr %562, null
  br i1 %563, label %571, label %564

564:                                              ; preds = %552
  %565 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %562, i32 0, i32 23
  %566 = load ptr, ptr %565, align 4
  %567 = icmp eq ptr %566, null
  br i1 %567, label %571, label %568

568:                                              ; preds = %564
  %569 = getelementptr i8, ptr %1, i32 1568
  %570 = load ptr, ptr %569, align 32
  tail call void %566(ptr noundef %570, i32 noundef %558, i32 noundef %11) #16
  br label %571

571:                                              ; preds = %568, %564, %552
  %572 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 23, i32 %11, i32 2
  %573 = getelementptr %struct.stmmac_priv, ptr %3, i32 0, i32 1, i32 %11
  %574 = load i32, ptr %573, align 4
  %575 = mul i32 %574, 1000
  %576 = zext i32 %575 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %572, i64 noundef %576, i64 noundef 0, i32 noundef 1) #16
  br label %584

577:                                              ; preds = %309, %257, %256
  %578 = load ptr, ptr %236, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %578, ptr noundef nonnull @.str.73) #17
  tail call void @consume_skb(ptr noundef %0) #16
  %579 = getelementptr i8, ptr %1, i32 1572
  %580 = load ptr, ptr %579, align 4
  %581 = getelementptr inbounds %struct.net_device, ptr %580, i32 0, i32 36, i32 7
  %582 = load i32, ptr %581, align 4
  %583 = add i32 %582, 1
  store i32 %583, ptr %581, align 4
  br label %584

584:                                              ; preds = %577, %571, %70, %63
  %585 = phi i32 [ 0, %577 ], [ 0, %571 ], [ 16, %70 ], [ 16, %63 ]
  ret i32 %585
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmmac_tso_allocator(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %5
  %8 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %4, i32 12
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 24
  %10 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %4, i32 8
  %11 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %4, i32 1
  %12 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %4, i32 6
  %13 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %4, i32 7
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 33
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  br label %16

16:                                               ; preds = %70, %7
  %17 = phi i32 [ %2, %7 ], [ %71, %70 ]
  %18 = load i32, ptr %8, align 4
  %19 = add i32 %18, 1
  %20 = load i32, ptr %9, align 64
  %21 = add i32 %20, -1
  %22 = and i32 %21, %19
  store i32 %22, ptr %8, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr ptr, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !11

27:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 3923, i32 noundef 9, ptr noundef null) #16
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, ptr %11, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %12, align 4
  %34 = load i32, ptr %8, align 4
  %35 = getelementptr %struct.dma_edesc, ptr %33, i32 %34, i32 4
  br label %40

36:                                               ; preds = %28
  %37 = load ptr, ptr %13, align 8
  %38 = load i32, ptr %8, align 4
  %39 = getelementptr %struct.dma_desc, ptr %37, i32 %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi ptr [ %35, %32 ], [ %39, %36 ]
  %42 = sub nsw i32 %2, %17
  %43 = add i32 %42, %1
  %44 = load i32, ptr %14, align 4
  %45 = icmp ult i32 %44, 33
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 %43, ptr %41, align 4
  br label %57

47:                                               ; preds = %40
  %48 = load ptr, ptr %15, align 4
  %49 = getelementptr inbounds %struct.mac_device_info, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %50, i32 0, i32 22
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void %54(ptr noundef %41, i32 noundef %43) #16
  br label %57

57:                                               ; preds = %56, %52, %47, %46
  %58 = tail call i32 @llvm.smin.i32(i32 %17, i32 16383)
  %59 = load ptr, ptr %15, align 4
  %60 = getelementptr inbounds %struct.mac_device_info, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %61, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = icmp ult i32 %17, 16384
  %69 = select i1 %3, i1 %68, i1 false
  tail call void %65(ptr noundef %41, i32 noundef 0, i32 noundef %58, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext %69, i32 noundef 0, i32 noundef 0) #16
  br label %70

70:                                               ; preds = %67, %63, %57
  %71 = add nsw i32 %17, -16383
  %72 = icmp sgt i32 %17, 16383
  br i1 %72, label %16, label %73

73:                                               ; preds = %70, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_vlan_update(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 69
  %5 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef 4096, i32 noundef 0) #16
  %6 = and i32 %5, 65535
  %7 = icmp ult i32 %6, 4096
  br i1 %7, label %8, label %51

8:                                                ; preds = %36, %2
  %9 = phi i32 [ %45, %36 ], [ %6, %2 ]
  %10 = phi i32 [ %44, %36 ], [ %5, %2 ]
  %11 = phi i32 [ %41, %36 ], [ 0, %2 ]
  %12 = phi i32 [ %42, %36 ], [ 0, %2 ]
  %13 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3)
  store i16 %13, ptr %3, align 2
  br label %14

14:                                               ; preds = %24, %8
  %15 = phi i32 [ 0, %8 ], [ %34, %24 ]
  %16 = phi i32 [ -1, %8 ], [ %33, %24 ]
  %17 = phi i8 [ 0, %8 ], [ %30, %24 ]
  %18 = and i32 %15, 7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = lshr i32 %15, 3
  %22 = getelementptr i8, ptr %3, i32 %21
  %23 = load i8, ptr %22, align 1
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i8 [ %23, %20 ], [ %17, %14 ]
  %26 = zext i8 %25 to i32
  %27 = xor i32 %16, %26
  %28 = and i32 %27, 1
  %29 = lshr i32 %16, 1
  %30 = lshr i8 %25, 1
  %31 = icmp eq i32 %28, 0
  %32 = xor i32 %29, -306674912
  %33 = select i1 %31, i32 %29, i32 %32
  %34 = add nuw nsw i32 %15, 1
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %36, label %14

36:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3)
  %37 = xor i32 %33, -1
  %38 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %37) #18, !srcloc !52
  %39 = lshr i32 %38, 28
  %40 = shl nuw nsw i32 1, %39
  %41 = or i32 %40, %11
  %42 = add i32 %12, 1
  %43 = add nuw nsw i32 %9, 1
  %44 = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef 4096, i32 noundef %43) #16
  %45 = and i32 %44, 65535
  %46 = icmp ult i32 %45, 4096
  br i1 %46, label %8, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 35
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %60

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 35
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = trunc i32 %5 to i16
  %56 = select i1 %54, i16 %55, i16 0
  br label %60

57:                                               ; preds = %47
  %58 = trunc i32 %44 to i16
  %59 = icmp sgt i32 %42, 2
  br i1 %59, label %72, label %60

60:                                               ; preds = %57, %51, %47
  %61 = phi i16 [ 0, %47 ], [ %58, %57 ], [ %56, %51 ]
  %62 = phi i32 [ %41, %47 ], [ 0, %57 ], [ 0, %51 ]
  %63 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.stmmac_ops, ptr %65, i32 0, i32 36
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void %69(ptr noundef %64, i32 noundef %62, i16 noundef zeroext %61, i1 noundef zeroext %1) #16
  br label %72

72:                                               ; preds = %71, %67, %60, %57
  %73 = phi i32 [ -95, %57 ], [ 0, %71 ], [ -22, %67 ], [ -22, %60 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_setup_tc_block_cb(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %9 = load i64, ptr %8, align 16
  %10 = and i64 %9, 562949953421312
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #16
  %13 = icmp eq ptr %7, null
  br i1 %13, label %125, label %19

14:                                               ; preds = %3
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #16
  %18 = icmp eq ptr %7, null
  br i1 %18, label %125, label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ @tc_can_offload_extack.__msg, %12 ], [ @tc_cls_can_offload_and_chain0.__msg, %17 ]
  store ptr %20, ptr %7, align 4
  br label %125

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 36
  %23 = load ptr, ptr %22, align 64
  %24 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %23, i32 0, i32 29
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %23, i32 0, i32 30
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %25, i32 %27) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %61, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 101
  %32 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 100
  br label %33

33:                                               ; preds = %58, %30
  %34 = phi i32 [ 0, %30 ], [ %59, %58 ]
  %35 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %34
  %36 = load ptr, ptr %31, align 16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %32, align 4
  %40 = lshr i32 %34, 5
  %41 = getelementptr i32, ptr %39, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %34, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %34, i32 4
  br label %56

49:                                               ; preds = %38, %33
  %50 = icmp ult i32 %34, %25
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  tail call void @napi_disable(ptr noundef %35) #16
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp ult i32 %34, %27
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %34, i32 2
  br label %56

56:                                               ; preds = %54, %47
  %57 = phi ptr [ %55, %54 ], [ %48, %47 ]
  tail call void @napi_disable(ptr noundef %57) #16
  br label %58

58:                                               ; preds = %56, %52
  %59 = add nuw i32 %34, 1
  %60 = icmp eq i32 %59, %28
  br i1 %60, label %61, label %33

61:                                               ; preds = %58, %21
  switch i32 %0, label %85 [
    i32 1, label %62
    i32 2, label %72
  ]

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 16
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mac_device_info, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %66, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %85, label %82

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 16
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.mac_device_info, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %76, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78, %68
  %83 = phi ptr [ %70, %68 ], [ %80, %78 ]
  %84 = tail call i32 %83(ptr noundef %2, ptr noundef %1) #16
  br label %85

85:                                               ; preds = %82, %78, %72, %68, %62, %61
  %86 = phi i32 [ -95, %61 ], [ -22, %68 ], [ -22, %62 ], [ -22, %78 ], [ -22, %72 ], [ %84, %82 ]
  %87 = load ptr, ptr %22, align 64
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %87, i32 0, i32 29
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %87, i32 0, i32 30
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @llvm.umax.i32(i32 %89, i32 %91) #16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 101
  %96 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 100
  br label %97

97:                                               ; preds = %122, %94
  %98 = phi i32 [ 0, %94 ], [ %123, %122 ]
  %99 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %98
  %100 = load ptr, ptr %95, align 16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %96, align 4
  %104 = lshr i32 %98, 5
  %105 = getelementptr i32, ptr %103, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %98, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %106, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %102
  %112 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %98, i32 4
  br label %120

113:                                              ; preds = %102, %97
  %114 = icmp ult i32 %98, %89
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  tail call void @napi_enable(ptr noundef %99) #16
  br label %116

116:                                              ; preds = %115, %113
  %117 = icmp ult i32 %98, %91
  br i1 %117, label %118, label %122

118:                                              ; preds = %116
  %119 = getelementptr %struct.stmmac_priv, ptr %2, i32 0, i32 26, i32 %98, i32 2
  br label %120

120:                                              ; preds = %118, %111
  %121 = phi ptr [ %119, %118 ], [ %112, %111 ]
  tail call void @napi_enable(ptr noundef %121) #16
  br label %122

122:                                              ; preds = %120, %116
  %123 = add nuw i32 %98, 1
  %124 = icmp eq i32 %123, %92
  br i1 %124, label %125, label %97

125:                                              ; preds = %122, %85, %19, %17, %12
  %126 = phi i32 [ %86, %85 ], [ -95, %17 ], [ -95, %12 ], [ -95, %19 ], [ %86, %122 ]
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_xdp_set_prog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_xdp_setup_pool(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_validate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false)
  %7 = getelementptr i8, ptr %6, i32 11408
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  store i32 155775, ptr %4, align 4
  call void @phylink_set_port_modes(ptr noundef nonnull %4) #16
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 999
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  store i32 32, ptr %5, align 4
  %16 = getelementptr inbounds i32, ptr %5, i32 1
  store i32 512, ptr %16, align 4
  br label %91

17:                                               ; preds = %3
  %18 = load ptr, ptr %7, align 64
  %19 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 58
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %12, 0
  %24 = icmp sgt i32 %12, 2499
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %91

26:                                               ; preds = %22
  %27 = getelementptr inbounds i32, ptr %4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 32768
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %4, align 4
  %31 = or i32 %30, 32768
  store i32 %31, ptr %4, align 4
  br label %91

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 64
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %91, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %12, 0
  %38 = icmp sgt i32 %12, 2499
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds i32, ptr %4, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 32768
  store i32 %43, ptr %41, align 4
  %44 = load i32, ptr %4, align 4
  %45 = or i32 %44, 32768
  store i32 %45, ptr %4, align 4
  br label %46

46:                                               ; preds = %40, %36
  %47 = icmp sgt i32 %12, 4999
  %48 = or i1 %37, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds i32, ptr %4, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 65536
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = icmp sgt i32 %12, 9999
  %55 = or i1 %37, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = getelementptr inbounds i32, ptr %4, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 30720
  store i32 %59, ptr %57, align 4
  %60 = load i32, ptr %4, align 4
  %61 = or i32 %60, 790528
  store i32 %61, ptr %4, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = icmp sgt i32 %12, 24999
  %64 = or i1 %37, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, ptr %4, align 4
  %67 = or i32 %66, -2147483648
  store i32 %67, ptr %4, align 4
  %68 = getelementptr inbounds i32, ptr %4, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 3
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %65, %62
  %72 = icmp sgt i32 %12, 39999
  %73 = or i1 %37, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, ptr %4, align 4
  %76 = or i32 %75, 125829120
  store i32 %76, ptr %4, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = icmp sgt i32 %12, 49999
  %79 = or i1 %37, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = getelementptr inbounds i32, ptr %4, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 32506124
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = icmp sgt i32 %12, 99999
  %86 = or i1 %37, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds i32, ptr %4, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 1040187632
  store i32 %90, ptr %88, align 4
  br label %91

91:                                               ; preds = %87, %84, %32, %26, %22, %15
  %92 = phi i32 [ 21, %22 ], [ 21, %26 ], [ 21, %87 ], [ 21, %84 ], [ 21, %32 ], [ 53, %15 ]
  %93 = icmp sgt i32 %10, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 %92, ptr %5, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = call i32 @__bitmap_and(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 92) #16
  %97 = call i32 @__bitmap_andnot(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 92) #16
  %98 = call i32 @__bitmap_and(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 92) #16
  %99 = call i32 @__bitmap_andnot(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 92) #16
  %100 = getelementptr i8, ptr %6, i32 892
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.mac_device_info, ptr %101, i32 0, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  call void @xpcs_validate(ptr noundef nonnull %103, ptr noundef %1, ptr noundef %2) #16
  br label %106

106:                                              ; preds = %105, %95
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @stmmac_mac_config(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) #14 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_mac_link_down(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 720
  %6 = getelementptr i8, ptr %4, i32 892
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.stmmac_ops, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %4, i32 880
  %16 = load ptr, ptr %15, align 32
  tail call void %12(ptr noundef %16, i1 noundef zeroext false) #16
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = getelementptr i8, ptr %4, i32 11992
  store i32 0, ptr %18, align 8
  %19 = getelementptr i8, ptr %4, i32 12000
  store i32 0, ptr %19, align 16
  %20 = tail call zeroext i1 @stmmac_eee_init(ptr noundef %5)
  %21 = zext i1 %20 to i32
  %22 = getelementptr i8, ptr %4, i32 11988
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.stmmac_ops, ptr %24, i32 0, i32 24
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %23, i32 noundef 0) #16
  br label %31

31:                                               ; preds = %30, %26, %17
  %32 = getelementptr i8, ptr %4, i32 11588
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %4, i32 11408
  %37 = load ptr, ptr %36, align 64
  %38 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %37, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %39, i32 0, i32 2
  store i32 0, ptr %40, align 4
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_mac_link_up(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #0 {
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 720
  %11 = getelementptr i8, ptr %9, i32 880
  %12 = load ptr, ptr %11, align 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !53
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !54
  %14 = getelementptr i8, ptr %9, i32 892
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %13, %18
  switch i32 %3, label %42 [
    i32 28, label %20
    i32 16, label %27
  ]

20:                                               ; preds = %8
  switch i32 %4, label %147 [
    i32 10000, label %21
    i32 5000, label %23
    i32 2500, label %25
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 6, i32 2
  br label %51

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 6, i32 1
  br label %51

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 6
  br label %51

27:                                               ; preds = %8
  switch i32 %4, label %147 [
    i32 100000, label %28
    i32 50000, label %30
    i32 40000, label %32
    i32 25000, label %34
    i32 10000, label %36
    i32 2500, label %38
    i32 1000, label %40
  ]

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 7, i32 3
  br label %51

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 7, i32 2
  br label %51

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 7, i32 1
  br label %51

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 7
  br label %51

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 6, i32 2
  br label %51

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 4
  br label %51

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 3
  br label %51

42:                                               ; preds = %8
  switch i32 %4, label %147 [
    i32 2500, label %43
    i32 1000, label %45
    i32 100, label %47
    i32 10, label %49
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 4
  br label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 3
  br label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 2
  br label %51

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 9, i32 1
  br label %51

51:                                               ; preds = %49, %47, %45, %43, %40, %38, %36, %34, %32, %30, %28, %25, %23, %21
  %52 = phi ptr [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ]
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, %19
  %55 = getelementptr i8, ptr %9, i32 10320
  store i32 %4, ptr %55, align 64
  %56 = getelementptr i8, ptr %9, i32 11408
  %57 = load ptr, ptr %56, align 64
  %58 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %57, i32 0, i32 35
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %57, i32 0, i32 46
  %63 = load ptr, ptr %62, align 4
  tail call void %59(ptr noundef %63, i32 noundef %4) #16
  br label %64

64:                                               ; preds = %61, %51
  %65 = icmp eq i32 %5, 0
  %66 = load ptr, ptr %14, align 4
  %67 = getelementptr inbounds %struct.mac_device_info, ptr %66, i32 0, i32 9, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, %54
  %70 = xor i32 %68, -1
  %71 = and i32 %54, %70
  %72 = select i1 %65, i32 %71, i32 %69
  %73 = and i1 %6, %7
  br i1 %73, label %74, label %89

74:                                               ; preds = %64
  %75 = load ptr, ptr %56, align 64
  %76 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %75, i32 0, i32 30
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %66, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.stmmac_ops, ptr %78, i32 0, i32 16
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %9, i32 10324
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %9, i32 10328
  %88 = load i32, ptr %87, align 8
  tail call void %82(ptr noundef %66, i32 noundef %5, i32 noundef %86, i32 noundef %88, i32 noundef %77) #16
  br label %89

89:                                               ; preds = %84, %80, %74, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !55
  tail call void @arm_heavy_mb() #16
  %90 = load ptr, ptr %11, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %72) #16, !srcloc !56
  %91 = load ptr, ptr %14, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.stmmac_ops, ptr %92, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %11, align 32
  tail call void %96(ptr noundef %99, i1 noundef zeroext true) #16
  br label %100

100:                                              ; preds = %98, %94, %89
  %101 = icmp eq ptr %1, null
  br i1 %101, label %123, label %102

102:                                              ; preds = %100
  %103 = getelementptr i8, ptr %9, i32 11460
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %102
  %107 = tail call i32 @phy_init_eee(ptr noundef nonnull %1, i1 noundef zeroext true) #16
  %108 = xor i32 %107, -1
  %109 = lshr i32 %108, 31
  %110 = getelementptr i8, ptr %9, i32 11992
  store i32 %109, ptr %110, align 8
  %111 = tail call zeroext i1 @stmmac_eee_init(ptr noundef %10)
  %112 = zext i1 %111 to i32
  %113 = getelementptr i8, ptr %9, i32 11988
  store i32 %112, ptr %113, align 4
  %114 = getelementptr i8, ptr %9, i32 12000
  store i32 %112, ptr %114, align 16
  %115 = load ptr, ptr %14, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.stmmac_ops, ptr %116, i32 0, i32 24
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void %120(ptr noundef %115, i32 noundef 1) #16
  br label %123

123:                                              ; preds = %122, %118, %106, %102, %100
  %124 = getelementptr i8, ptr %9, i32 11588
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %147, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %56, align 64
  %129 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %128, i32 0, i32 10
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %130, i32 0, i32 1
  %132 = load i8, ptr %131, align 1, !range !9
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %127
  %135 = load ptr, ptr %14, align 4
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %147, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.stmmac_ops, ptr %136, i32 0, i32 49
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %11, align 32
  tail call void %140(ptr noundef %143, i32 noundef 0) #16
  br label %147

144:                                              ; preds = %127
  %145 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %130, i32 0, i32 2
  %146 = getelementptr inbounds %struct.stmmac_fpe_cfg, ptr %130, i32 0, i32 3
  store i32 0, ptr %146, align 4
  store i32 0, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %142, %138, %134, %123, %42, %27, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xpcs_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_rings_status_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @stmmac_rings_status_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_rings_status_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 1408
  %10 = getelementptr i8, ptr %8, i32 12096
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 29
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 30
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %141, label %20

20:                                               ; preds = %2
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %8, i32 12708
  %24 = getelementptr i8, ptr %8, i32 3712
  br label %30

25:                                               ; preds = %80, %20
  %26 = icmp eq i32 %15, 0
  br i1 %26, label %141, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %8, i32 12708
  %29 = getelementptr i8, ptr %8, i32 4800
  br label %83

30:                                               ; preds = %80, %22
  %31 = phi i32 [ 0, %22 ], [ %81, %80 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.81, i32 noundef %31) #16
  %32 = load i32, ptr %23, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %30
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82) #16
  %35 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %31, i32 8
  %36 = load ptr, ptr %35, align 16
  %37 = load i32, ptr %24, align 64
  %38 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %31, i32 15
  %39 = load i32, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %41, %34
  %42 = phi ptr [ %53, %41 ], [ %36, %34 ]
  %43 = phi i32 [ %54, %41 ], [ 0, %34 ]
  %44 = shl i32 %43, 5
  %45 = add i32 %44, %39
  store i32 %45, ptr %6, align 4
  %46 = load i32, ptr %42, align 4
  %47 = getelementptr inbounds %struct.dma_desc, ptr %42, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dma_desc, ptr %42, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dma_desc, ptr %42, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %43, ptr noundef nonnull %6, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #16
  %53 = getelementptr %struct.dma_extended_desc, ptr %42, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86) #16
  %54 = add nuw nsw i32 %43, 1
  %55 = icmp eq i32 %54, %37
  br i1 %55, label %56, label %41

56:                                               ; preds = %41, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %80

57:                                               ; preds = %30
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.83) #16
  %58 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %31, i32 10
  %59 = load ptr, ptr %58, align 64
  %60 = load i32, ptr %24, align 64
  %61 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 20, i32 %31, i32 15
  %62 = load i32, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %63 = icmp sgt i32 %60, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %64, %57
  %65 = phi ptr [ %76, %64 ], [ %59, %57 ]
  %66 = phi i32 [ %77, %64 ], [ 0, %57 ]
  %67 = shl i32 %66, 4
  %68 = add i32 %67, %62
  store i32 %68, ptr %5, align 4
  %69 = load i32, ptr %65, align 4
  %70 = getelementptr inbounds %struct.dma_desc, ptr %65, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dma_desc, ptr %65, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dma_desc, ptr %65, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %66, ptr noundef nonnull %5, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75) #16
  %76 = getelementptr %struct.dma_desc, ptr %65, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86) #16
  %77 = add nuw nsw i32 %66, 1
  %78 = icmp eq i32 %77, %60
  br i1 %78, label %79, label %64

79:                                               ; preds = %64, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %80

80:                                               ; preds = %79, %56
  %81 = add nuw i32 %31, 1
  %82 = icmp eq i32 %81, %13
  br i1 %82, label %25, label %30

83:                                               ; preds = %138, %27
  %84 = phi i32 [ 0, %27 ], [ %139, %138 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.84, i32 noundef %84) #16
  %85 = load i32, ptr %28, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %110, label %87

87:                                               ; preds = %83
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82) #16
  %88 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 23, i32 %84, i32 5
  %89 = load ptr, ptr %88, align 64
  %90 = load i32, ptr %29, align 64
  %91 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 23, i32 %84, i32 14
  %92 = load i32, ptr %91, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %94, %87
  %95 = phi ptr [ %106, %94 ], [ %89, %87 ]
  %96 = phi i32 [ %107, %94 ], [ 0, %87 ]
  %97 = shl i32 %96, 5
  %98 = add i32 %97, %92
  store i32 %98, ptr %4, align 4
  %99 = load i32, ptr %95, align 4
  %100 = getelementptr inbounds %struct.dma_desc, ptr %95, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dma_desc, ptr %95, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.dma_desc, ptr %95, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %96, ptr noundef nonnull %4, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105) #16
  %106 = getelementptr %struct.dma_extended_desc, ptr %95, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86) #16
  %107 = add nuw nsw i32 %96, 1
  %108 = icmp eq i32 %107, %90
  br i1 %108, label %109, label %94

109:                                              ; preds = %94, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %138

110:                                              ; preds = %83
  %111 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 23, i32 %84, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.83) #16
  %116 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 23, i32 %84, i32 7
  %117 = load ptr, ptr %116, align 8
  %118 = load i32, ptr %29, align 64
  %119 = getelementptr %struct.stmmac_priv, ptr %9, i32 0, i32 23, i32 %84, i32 14
  %120 = load i32, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %121 = icmp sgt i32 %118, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %122, %115
  %123 = phi ptr [ %134, %122 ], [ %117, %115 ]
  %124 = phi i32 [ %135, %122 ], [ 0, %115 ]
  %125 = shl i32 %124, 4
  %126 = add i32 %125, %120
  store i32 %126, ptr %3, align 4
  %127 = load i32, ptr %123, align 4
  %128 = getelementptr inbounds %struct.dma_desc, ptr %123, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.dma_desc, ptr %123, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.dma_desc, ptr %123, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %124, ptr noundef nonnull %3, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133) #16
  %134 = getelementptr %struct.dma_desc, ptr %123, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86) #16
  %135 = add nuw nsw i32 %124, 1
  %136 = icmp eq i32 %135, %118
  br i1 %136, label %137, label %122

137:                                              ; preds = %122, %115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %138

138:                                              ; preds = %137, %110, %109
  %139 = add nuw i32 %84, 1
  %140 = icmp eq i32 %139, %15
  br i1 %140, label %141, label %83

141:                                              ; preds = %138, %25, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_dma_cap_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @stmmac_dma_cap_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_dma_cap_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 12628
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87) #16
  br label %161

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.88) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.89) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.88) #16
  %10 = getelementptr i8, ptr %4, i32 12100
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef nonnull %13) #16
  %14 = getelementptr i8, ptr %4, i32 12104
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef nonnull %17) #16
  %18 = getelementptr i8, ptr %4, i32 12108
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef nonnull %21) #16
  %22 = getelementptr i8, ptr %4, i32 12112
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull %25) #16
  %26 = getelementptr i8, ptr %4, i32 12116
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef nonnull %29) #16
  %30 = getelementptr i8, ptr %4, i32 12120
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef nonnull %33) #16
  %34 = getelementptr i8, ptr %4, i32 12124
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull %37) #16
  %38 = getelementptr i8, ptr %4, i32 12128
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.99, ptr noundef nonnull %41) #16
  %42 = getelementptr i8, ptr %4, i32 12132
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef nonnull %45) #16
  %46 = getelementptr i8, ptr %4, i32 12136
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.101, ptr noundef nonnull %49) #16
  %50 = getelementptr i8, ptr %4, i32 12140
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef nonnull %53) #16
  %54 = getelementptr i8, ptr %4, i32 12144
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef nonnull %57) #16
  %58 = getelementptr i8, ptr %4, i32 12148
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef nonnull %61) #16
  %62 = getelementptr i8, ptr %4, i32 12152
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.105, ptr noundef nonnull %65) #16
  %66 = getelementptr i8, ptr %4, i32 12164
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.106, ptr noundef nonnull %69) #16
  %70 = getelementptr i8, ptr %4, i32 12632
  %71 = load i32, ptr %70, align 8
  %72 = icmp sgt i32 %71, 63
  br i1 %72, label %78, label %73

73:                                               ; preds = %9
  %74 = getelementptr i8, ptr %4, i32 12172
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull %77) #16
  br label %78

78:                                               ; preds = %73, %9
  %79 = phi i32 [ 12176, %73 ], [ 12168, %9 ]
  %80 = phi ptr [ @.str.109, %73 ], [ @.str.107, %9 ]
  %81 = getelementptr i8, ptr %4, i32 %79
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %80, ptr noundef nonnull %84) #16
  %85 = getelementptr i8, ptr %4, i32 12180
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef nonnull %88) #16
  %89 = getelementptr i8, ptr %4, i32 12184
  %90 = load i32, ptr %89, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.111, i32 noundef %90) #16
  %91 = getelementptr i8, ptr %4, i32 12188
  %92 = load i32, ptr %91, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.112, i32 noundef %92) #16
  %93 = getelementptr i8, ptr %4, i32 12192
  %94 = load i32, ptr %93, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.113, i32 noundef %94) #16
  %95 = getelementptr i8, ptr %4, i32 12196
  %96 = load i32, ptr %95, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.114, i32 noundef %96) #16
  %97 = getelementptr i8, ptr %4, i32 12204
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.115, ptr noundef nonnull %100) #16
  %101 = getelementptr i8, ptr %4, i32 12208
  %102 = load i32, ptr %101, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.116, i32 noundef %102) #16
  %103 = getelementptr i8, ptr %4, i32 12212
  %104 = load i32, ptr %103, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.117, i32 noundef %104) #16
  %105 = getelementptr i8, ptr %4, i32 12156
  %106 = load i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.118, i32 noundef %106) #16
  %107 = getelementptr i8, ptr %4, i32 12160
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.119, ptr noundef nonnull %110) #16
  %111 = getelementptr i8, ptr %4, i32 12200
  %112 = load i32, ptr %111, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.120, i32 noundef %112) #16
  %113 = getelementptr i8, ptr %4, i32 12216
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.121, ptr noundef nonnull %116) #16
  %117 = getelementptr i8, ptr %4, i32 12220
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.122, ptr noundef nonnull %120) #16
  %121 = getelementptr i8, ptr %4, i32 12232
  %122 = load i32, ptr %121, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.123, i32 noundef %122) #16
  %123 = getelementptr i8, ptr %4, i32 12236
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.124, ptr noundef nonnull %126) #16
  %127 = getelementptr i8, ptr %4, i32 12240
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.125, ptr noundef nonnull %130) #16
  %131 = getelementptr i8, ptr %4, i32 12244
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.126, ptr noundef nonnull %134) #16
  %135 = getelementptr i8, ptr %4, i32 12248
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.127, ptr noundef nonnull %138) #16
  %139 = getelementptr i8, ptr %4, i32 12252
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.128, ptr noundef nonnull %142) #16
  %143 = getelementptr i8, ptr %4, i32 12256
  %144 = load i32, ptr %143, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.129, i32 noundef %144) #16
  %145 = getelementptr i8, ptr %4, i32 12260
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.130, ptr noundef nonnull %148) #16
  %149 = getelementptr i8, ptr %4, i32 12272
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.131, ptr noundef nonnull %152) #16
  %153 = getelementptr i8, ptr %4, i32 12276
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.132, ptr noundef nonnull %156) #16
  %157 = getelementptr i8, ptr %4, i32 12280
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, ptr @.str.92, ptr @.str.91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.133, ptr noundef nonnull %160) #16
  br label %161

161:                                              ; preds = %78, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_ptp_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_device_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @stmmac_netdev_ops
  %8 = icmp eq i32 %1, 11
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %4, i32 14116
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stmmac_fs_dir, align 4
  %16 = tail call ptr @debugfs_rename(ptr noundef %15, ptr noundef nonnull %12, ptr noundef %15, ptr noundef %4) #16
  store ptr %16, ptr %11, align 4
  br label %17

17:                                               ; preds = %14, %10, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148560240, i64 2148560520, i64 2148560854, i64 2148561188}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2154633053}
!16 = !{i64 644877, i64 2148134848, i64 2148134874, i64 2148134921, i64 2148134943, i64 2148134971, i64 2148134991}
!17 = !{i64 657048, i64 657069, i64 657092, i64 657111, i64 657130}
!18 = !{i64 2154633432}
!19 = !{i64 2149070572}
!20 = !{i64 2149083429}
!21 = !{i64 2149079253}
!22 = !{i64 2149079328, i64 2149079355, i64 2149079402, i64 2149079424, i64 2149079452, i64 2149079472}
!23 = !{i64 2149106432}
!24 = !{i64 2148146567}
!25 = !{i64 631446, i64 631471, i64 631493, i64 631509, i64 631521, i64 631541, i64 631565, i64 631581, i64 631593}
!26 = !{i64 2148146693}
!27 = !{i64 2148147060, i64 2148147086, i64 2148147115, i64 2148147149, i64 2148147180, i64 2148147203}
!28 = !{i64 644695}
!29 = !{i64 2158396572}
!30 = !{i64 2158410109}
!31 = !{i64 2153614086, i64 2153614574, i64 2153614123, i64 2153614179, i64 2153614213, i64 2153614237, i64 2153614278, i64 2153614299, i64 2153614327, i64 2153614361}
!32 = !{i64 558816}
!33 = !{i64 540116, i64 540177}
!34 = !{i64 2149939994}
!35 = !{i64 2149940295}
!36 = !{i64 543133}
!37 = !{i64 2158371501}
!38 = !{i64 2157160204}
!39 = !{i64 2157160368}
!40 = !{i64 2158335657}
!41 = !{!"branch_weights", i32 2002, i32 2000}
!42 = !{i64 2154787448}
!43 = !{i64 2153987335, i64 2153987835, i64 2153987372, i64 2153987428, i64 2153987462, i64 2153987486, i64 2153987527, i64 2153987548, i64 2153987576, i64 2153987610}
!44 = !{i64 2153988115}
!45 = !{i64 2154786403}
!46 = !{i64 2151885581, i64 2151885606}
!47 = !{i64 4381693}
!48 = !{i64 4381890}
!49 = !{i64 2151867169}
!50 = !{i64 2151886159, i64 2151886184}
!51 = !{i64 2158379040}
!52 = !{i64 8377122}
!53 = !{i64 3286436}
!54 = !{i64 2158310353}
!55 = !{i64 2158310632}
!56 = !{i64 3286018}
