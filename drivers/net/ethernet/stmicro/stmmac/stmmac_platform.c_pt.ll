; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_probe_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_probe_config_dt\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_probe_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_remove_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_remove_config_dt\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_remove_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_get_platform_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_get_platform_resources\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_get_platform_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_pltfr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_pltfr_remove\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_pltfr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_pltfr_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_pltfr_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_pltfr_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.91, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.91 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"max-speed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"clk_csr\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"snps,phy-addr\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"snps,phy-addr property is deprecated\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tx-fifo-depth\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"rx-fifo-depth\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"snps,force_sf_dma_mode\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"snps,en-tx-lpi-clockgating\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"st,spear600-gmac\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"snps,dwmac-3.50a\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"snps,dwmac-3.70a\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"snps,dwmac\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"max-frame-size\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"snps,multicast-filter-bins\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"snps,perfect-filter-entries\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"snps,dwmac-3.40a\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"snps,dwmac-4.00\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"snps,dwmac-4.10a\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"snps,dwmac-4.20a\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"snps,dwmac-5.10a\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"snps,tso\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"snps,dwmac-3.610\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"snps,dwmac-3.710\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"snps,dwxgmac\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"snps,pbl\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"snps,txpbl\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"snps,rxpbl\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"snps,no-pbl-x8\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"snps,aal\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"snps,fixed-burst\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"snps,mixed-burst\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"snps,force_thresh_dma_mode\00", align 1
@.str.34 = private unnamed_addr constant [63 x i8] c"force_sf_dma_mode is ignored if force_thresh_dma_mode is set.\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"snps,ps-speed\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"snps,dwc-qos-ethernet-4.10\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Cannot get CSR clock\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"ptp_ref\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"PTP uses main clock\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@__kstrtab_stmmac_probe_config_dt = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_probe_config_dt = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_probe_config_dt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_probe_config_dt to i32), ptr @__kstrtab_stmmac_probe_config_dt, ptr @__kstrtabns_stmmac_probe_config_dt }, section "___ksymtab_gpl+stmmac_probe_config_dt", align 4
@__kstrtab_stmmac_remove_config_dt = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_remove_config_dt = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_remove_config_dt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_remove_config_dt to i32), ptr @__kstrtab_stmmac_remove_config_dt, ptr @__kstrtabns_stmmac_remove_config_dt }, section "___ksymtab_gpl+stmmac_remove_config_dt", align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"macirq\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"eth_wake_irq\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"IRQ eth_wake_irq not found\0A\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"eth_lpi\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"IRQ eth_lpi not found\0A\00", align 1
@__kstrtab_stmmac_get_platform_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_get_platform_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_get_platform_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_get_platform_resources to i32), ptr @__kstrtab_stmmac_get_platform_resources, ptr @__kstrtabns_stmmac_get_platform_resources }, section "___ksymtab_gpl+stmmac_get_platform_resources", align 4
@__kstrtab_stmmac_pltfr_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_pltfr_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_pltfr_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_pltfr_remove to i32), ptr @__kstrtab_stmmac_pltfr_remove, ptr @__kstrtabns_stmmac_pltfr_remove }, section "___ksymtab_gpl+stmmac_pltfr_remove", align 4
@stmmac_pltfr_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stmmac_pltfr_suspend, ptr @stmmac_pltfr_resume, ptr @stmmac_pltfr_suspend, ptr @stmmac_pltfr_resume, ptr @stmmac_pltfr_suspend, ptr @stmmac_pltfr_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_noirq_suspend, ptr @stmmac_pltfr_noirq_resume, ptr @stmmac_pltfr_noirq_suspend, ptr @stmmac_pltfr_noirq_resume, ptr @stmmac_pltfr_noirq_suspend, ptr @stmmac_pltfr_noirq_resume, ptr @stmmac_runtime_suspend, ptr @stmmac_runtime_resume, ptr null }, align 4
@__kstrtab_stmmac_pltfr_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_pltfr_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_pltfr_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_pltfr_pm_ops to i32), ptr @__kstrtab_stmmac_pltfr_pm_ops, ptr @__kstrtabns_stmmac_pltfr_pm_ops }, section "___ksymtab_gpl+stmmac_pltfr_pm_ops", align 4
@__UNIQUE_ID_description335 = internal constant [73 x i8] c"stmmac_platform.description=STMMAC 10/100/1000 Ethernet platform support\00", section ".modinfo", align 1
@__UNIQUE_ID_author336 = internal constant [67 x i8] c"stmmac_platform.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [73 x i8] c"stmmac_platform.file=drivers/net/ethernet/stmicro/stmmac/stmmac-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [28 x i8] c"stmmac_platform.license=GPL\00", section ".modinfo", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"mac-mode\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stmmac_dt_phy.need_mdio_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc-qos-ethernet-4.10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.80 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"snps,dwmac-mdio\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"Unicast table entries set to unexpected value %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"Hash table entries set to unexpected value %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"snps,axi-config\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"snps,lpi_en\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"snps,xit_frm\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"snps,axi_kbbe\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"snps,axi_fb\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"snps,axi_mb\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"snps,axi_rb\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"snps,wr_osr_lmt\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"snps,rd_osr_lmt\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"snps,blen\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"snps,mtl-rx-config\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"snps,mtl-tx-config\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"snps,rx-queues-to-use\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"snps,rx-sched-sp\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"snps,rx-sched-wsp\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"snps,dcb-algorithm\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"snps,avb-algorithm\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"snps,map-to-dma-channel\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"snps,priority\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"snps,route-avcp\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"snps,route-ptp\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"snps,route-dcbcp\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"snps,route-up\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"snps,route-multi-broad\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"Not all RX queues were configured\0A\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"snps,tx-queues-to-use\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"snps,tx-sched-wrr\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"snps,tx-sched-wfq\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"snps,tx-sched-dwrr\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"snps,weight\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"snps,send_slope\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"snps,idle_slope\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"snps,high_credit\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"snps,low_credit\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"Not all TX queues were configured\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__ksymtab_stmmac_get_platform_resources, ptr @__ksymtab_stmmac_pltfr_pm_ops, ptr @__ksymtab_stmmac_pltfr_remove, ptr @__ksymtab_stmmac_probe_config_dt, ptr @__ksymtab_stmmac_remove_config_dt], section "llvm.metadata"
@switch.table.stmmac_probe_config_dt = private unnamed_addr constant [30 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.78, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 720, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %519, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @of_get_mac_address(ptr noundef %10, ptr noundef %1) #8
  switch i32 %14, label %15 [
    i32 0, label %16
    i32 -517, label %519
  ]

15:                                               ; preds = %13
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %1, i8 0, i32 6, i1 false) #8
  br label %16

16:                                               ; preds = %15, %13
  %17 = tail call i32 @device_get_phy_mode(ptr noundef %8) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = inttoptr i32 %17 to ptr
  br label %519

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 3
  store i32 %17, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store ptr null, ptr %7, align 4, !annotation !8
  %23 = call i32 @of_property_read_string(ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef nonnull %7) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 4
  br label %27

27:                                               ; preds = %37, %25
  %28 = phi i32 [ 0, %25 ], [ %38, %37 ]
  %29 = icmp ult i32 %28, 30
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds [30 x ptr], ptr @switch.table.stmmac_probe_config_dt, i32 0, i32 %28
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %32, %30 ], [ @.str.79, %27 ]
  %35 = call i32 @strcasecmp(ptr noundef %26, ptr noundef nonnull %34) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp eq i32 %38, 30
  br i1 %39, label %42, label %27

40:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 2
  store i32 %28, ptr %41, align 4
  br label %45

42:                                               ; preds = %37, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %43 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 2
  %44 = load i32, ptr %22, align 4
  store i32 %44, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %40
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #8, !annotation !8
  %46 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) #8
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %6, align 4
  %49 = select i1 %47, ptr %48, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  %50 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 5
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 6
  store ptr %10, ptr %51, align 4
  %52 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 22
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef %52, i32 noundef 1, i32 noundef 0) #8
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 -1, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = call i32 @of_alias_get_id(ptr noundef %10, ptr noundef nonnull @.str.2) #8
  %58 = call i32 @llvm.smax.i32(i32 %57, i32 0)
  store i32 %58, ptr %11, align 4
  %59 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 1
  store i32 -1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 12
  store i32 -1, ptr %60, align 4
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %60, i32 noundef 1, i32 noundef 0) #8
  %62 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef %59, i32 noundef 1, i32 noundef 0) #8
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.5) #9
  br label %65

65:                                               ; preds = %64, %56
  %66 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %10) #8
  %67 = xor i1 %66, true
  %68 = call ptr @of_match_node(ptr noundef nonnull @stmmac_dt_phy.need_mdio_ids, ptr noundef %10) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = call ptr @of_get_child_by_name(ptr noundef %10, ptr noundef nonnull @.str.80) #8
  %72 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 7
  store ptr %71, ptr %72, align 4
  br label %85

73:                                               ; preds = %65
  %74 = call ptr @of_get_next_child(ptr noundef %10, ptr noundef null) #8
  %75 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 7
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %82, %73
  %78 = phi ptr [ %83, %82 ], [ %74, %73 ]
  %79 = call i32 @of_device_is_compatible(ptr noundef nonnull %78, ptr noundef nonnull @.str.81) #8
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr %75, align 4
  br i1 %80, label %82, label %85

82:                                               ; preds = %77
  %83 = call ptr @of_get_next_child(ptr noundef %10, ptr noundef %81) #8
  store ptr %83, ptr %75, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %77

85:                                               ; preds = %82, %77, %73, %70
  %86 = phi ptr [ null, %73 ], [ %71, %70 ], [ null, %82 ], [ %81, %77 ]
  %87 = icmp ne ptr %86, null
  %88 = select i1 %87, i1 true, i1 %67
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 24, i32 noundef 3520) #8
  %91 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 4
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %519, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %90, i32 0, i32 5
  store i8 1, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %85
  %96 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 26
  %97 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %96, i32 noundef 1, i32 noundef 0) #8
  %98 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 27
  %99 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef %98, i32 noundef 1, i32 noundef 0) #8
  %100 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %101 = icmp ne ptr %100, null
  %102 = zext i1 %101 to i32
  %103 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 19
  store i32 %102, ptr %103, align 4
  %104 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %105 = icmp ne ptr %104, null
  %106 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 63
  %107 = zext i1 %105 to i8
  store i8 %107, ptr %106, align 4
  %108 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 23
  store i32 9000, ptr %108, align 4
  %109 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 24
  store i32 64, ptr %109, align 4
  %110 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 25
  store i32 1, ptr %110, align 4
  %111 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.10) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %95
  %114 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.11) #8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.12) #8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.13) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %119, %116, %113, %95
  %123 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef %108, i32 noundef 1, i32 noundef 0) #8
  %124 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef %109, i32 noundef 1, i32 noundef 0) #8
  %125 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef %110, i32 noundef 1, i32 noundef 0) #8
  %126 = load i32, ptr %110, align 4
  switch i32 %126, label %127 [
    i32 64, label %128
    i32 128, label %128
    i32 1, label %128
    i32 2, label %128
    i32 3, label %128
    i32 4, label %128
    i32 5, label %128
    i32 6, label %128
    i32 7, label %128
    i32 8, label %128
    i32 9, label %128
    i32 10, label %128
    i32 11, label %128
    i32 12, label %128
    i32 13, label %128
    i32 14, label %128
    i32 15, label %128
    i32 16, label %128
    i32 17, label %128
    i32 18, label %128
    i32 19, label %128
    i32 20, label %128
    i32 21, label %128
    i32 22, label %128
    i32 23, label %128
    i32 24, label %128
    i32 25, label %128
    i32 26, label %128
    i32 27, label %128
    i32 28, label %128
    i32 29, label %128
    i32 30, label %128
    i32 31, label %128
    i32 32, label %128
  ]

127:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.82, i32 noundef %126) #9
  br label %128

128:                                              ; preds = %127, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122, %122
  %129 = phi i32 [ 1, %127 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ], [ %126, %122 ]
  store i32 %129, ptr %110, align 4
  %130 = load i32, ptr %109, align 4
  switch i32 %130, label %131 [
    i32 64, label %132
    i32 128, label %132
    i32 256, label %132
  ]

131:                                              ; preds = %128
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.83, i32 noundef %130) #9
  br label %132

132:                                              ; preds = %131, %128, %128, %128
  %133 = phi i32 [ 0, %131 ], [ %130, %128 ], [ %130, %128 ], [ %130, %128 ]
  store i32 %133, ptr %109, align 4
  %134 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 13
  store i32 1, ptr %134, align 4
  %135 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 18
  store i32 1, ptr %135, align 4
  br label %136

136:                                              ; preds = %132, %119
  %137 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.17) #8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 13
  store i32 1, ptr %140, align 4
  %141 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 14
  store i32 1, ptr %141, align 4
  %142 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 15
  store i32 1, ptr %142, align 4
  %143 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 17
  store i32 1, ptr %143, align 4
  %144 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 18
  store i32 1, ptr %144, align 4
  br label %145

145:                                              ; preds = %139, %136
  %146 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.18) #8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.19) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.20) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.21) #8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %154, %151, %148, %145
  %158 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 58
  store i32 1, ptr %158, align 4
  %159 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 13
  store i32 0, ptr %159, align 4
  %160 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 18
  store i32 1, ptr %160, align 4
  %161 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef null) #8
  %162 = icmp ne ptr %161, null
  %163 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 60
  %164 = zext i1 %162 to i8
  store i8 %164, ptr %163, align 1
  br label %165

165:                                              ; preds = %157, %154
  %166 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.23) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.24) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168, %165
  %172 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 14
  store i32 1, ptr %172, align 4
  %173 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 17
  store i32 1, ptr %173, align 4
  store i32 1, ptr %103, align 4
  br label %174

174:                                              ; preds = %171, %168
  %175 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.25) #8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 64
  store i32 1, ptr %178, align 4
  %179 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 18
  store i32 1, ptr %179, align 4
  %180 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef null) #8
  %181 = icmp ne ptr %180, null
  %182 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 60
  %183 = zext i1 %181 to i8
  store i8 %183, ptr %182, align 1
  br label %184

184:                                              ; preds = %177, %174
  %185 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 28, i32 noundef 3520) #8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 47
  %189 = load ptr, ptr %188, align 4
  call void @clk_disable(ptr noundef %189) #8
  call void @clk_unprepare(ptr noundef %189) #8
  %190 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 48
  %191 = load ptr, ptr %190, align 4
  call void @clk_disable(ptr noundef %191) #8
  call void @clk_unprepare(ptr noundef %191) #8
  %192 = load ptr, ptr %50, align 4
  call void @of_node_put(ptr noundef %192) #8
  %193 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 7
  %194 = load ptr, ptr %193, align 4
  call void @of_node_put(ptr noundef %194) #8
  br label %519

195:                                              ; preds = %184
  %196 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 8
  store ptr %185, ptr %196, align 4
  %197 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef nonnull %185, i32 noundef 1, i32 noundef 0) #8
  %198 = load i32, ptr %185, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 8, ptr %185, align 4
  br label %201

201:                                              ; preds = %200, %195
  %202 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %185, i32 0, i32 1
  %203 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef %202, i32 noundef 1, i32 noundef 0) #8
  %204 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %185, i32 0, i32 2
  %205 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.28, ptr noundef %204, i32 noundef 1, i32 noundef 0) #8
  %206 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.29, ptr noundef null) #8
  %207 = icmp eq ptr %206, null
  %208 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %185, i32 0, i32 3
  %209 = zext i1 %207 to i8
  store i8 %209, ptr %208, align 4
  %210 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.30, ptr noundef null) #8
  %211 = icmp ne ptr %210, null
  %212 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %185, i32 0, i32 6
  %213 = zext i1 %211 to i8
  store i8 %213, ptr %212, align 4
  %214 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.31, ptr noundef null) #8
  %215 = icmp ne ptr %214, null
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %185, i32 0, i32 4
  store i32 %216, ptr %217, align 4
  %218 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.32, ptr noundef null) #8
  %219 = icmp ne ptr %218, null
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %185, i32 0, i32 5
  store i32 %220, ptr %221, align 4
  %222 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.33, ptr noundef null) #8
  %223 = icmp ne ptr %222, null
  %224 = zext i1 %223 to i32
  %225 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 20
  store i32 %224, ptr %225, align 4
  br i1 %223, label %226, label %227

226:                                              ; preds = %201
  store i32 0, ptr %103, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.34) #9
  br label %227

227:                                              ; preds = %226, %201
  %228 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 62
  %229 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.35, ptr noundef %228, i32 noundef 1, i32 noundef 0) #8
  %230 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #8, !annotation !8
  %231 = call i32 @__of_parse_phandle_with_args(ptr noundef %230, ptr noundef nonnull @.str.84, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #8
  %232 = icmp ne i32 %231, 0
  %233 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %234 = icmp eq ptr %233, null
  %235 = select i1 %232, i1 true, i1 %234
  br i1 %235, label %277, label %236

236:                                              ; preds = %227
  %237 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 48, i32 noundef 3520) #8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %275, label %239

239:                                              ; preds = %236
  %240 = call ptr @of_find_property(ptr noundef nonnull %233, ptr noundef nonnull @.str.85, ptr noundef null) #8
  %241 = icmp ne ptr %240, null
  %242 = zext i1 %241 to i8
  store i8 %242, ptr %237, align 4
  %243 = call ptr @of_find_property(ptr noundef nonnull %233, ptr noundef nonnull @.str.86, ptr noundef null) #8
  %244 = icmp ne ptr %243, null
  %245 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 1
  %246 = zext i1 %244 to i8
  store i8 %246, ptr %245, align 1
  %247 = call ptr @of_find_property(ptr noundef nonnull %233, ptr noundef nonnull @.str.87, ptr noundef null) #8
  %248 = icmp ne ptr %247, null
  %249 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 4
  %250 = zext i1 %248 to i8
  store i8 %250, ptr %249, align 4
  %251 = call ptr @of_find_property(ptr noundef nonnull %233, ptr noundef nonnull @.str.88, ptr noundef null) #8
  %252 = icmp ne ptr %251, null
  %253 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 6
  %254 = zext i1 %252 to i8
  store i8 %254, ptr %253, align 4
  %255 = call ptr @of_find_property(ptr noundef nonnull %233, ptr noundef nonnull @.str.89, ptr noundef null) #8
  %256 = icmp ne ptr %255, null
  %257 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 7
  %258 = zext i1 %256 to i8
  store i8 %258, ptr %257, align 1
  %259 = call ptr @of_find_property(ptr noundef nonnull %233, ptr noundef nonnull @.str.90, ptr noundef null) #8
  %260 = icmp ne ptr %259, null
  %261 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 8
  %262 = zext i1 %260 to i8
  store i8 %262, ptr %261, align 2
  %263 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 2
  %264 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %233, ptr noundef nonnull @.str.91, ptr noundef %263, i32 noundef 1, i32 noundef 0) #8
  %265 = icmp sgt i32 %264, -1
  br i1 %265, label %267, label %266

266:                                              ; preds = %239
  store i32 1, ptr %263, align 4
  br label %267

267:                                              ; preds = %266, %239
  %268 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 3
  %269 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %233, ptr noundef nonnull @.str.92, ptr noundef %268, i32 noundef 1, i32 noundef 0) #8
  %270 = icmp sgt i32 %269, -1
  br i1 %270, label %272, label %271

271:                                              ; preds = %267
  store i32 1, ptr %268, align 4
  br label %272

272:                                              ; preds = %271, %267
  %273 = getelementptr inbounds %struct.stmmac_axi, ptr %237, i32 0, i32 5
  %274 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %233, ptr noundef nonnull @.str.93, ptr noundef %273, i32 noundef 7, i32 noundef 0) #8
  br label %275

275:                                              ; preds = %272, %236
  %276 = phi ptr [ %237, %272 ], [ inttoptr (i32 -12 to ptr), %236 ]
  call void @of_node_put(ptr noundef nonnull %233) #8
  br label %277

277:                                              ; preds = %275, %227
  %278 = phi ptr [ null, %227 ], [ %276, %275 ]
  %279 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 57
  store ptr %278, ptr %279, align 4
  %280 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 29
  store i32 1, ptr %280, align 4
  %281 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 30
  store i32 1, ptr %281, align 4
  %282 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33
  store i8 1, ptr %282, align 4
  %283 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 0, i32 1
  store i8 1, ptr %283, align 4
  %284 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #8, !annotation !8
  %285 = call i32 @__of_parse_phandle_with_args(ptr noundef %284, ptr noundef nonnull @.str.94, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #8
  %286 = icmp ne i32 %285, 0
  %287 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %288 = icmp eq ptr %287, null
  %289 = select i1 %286, i1 true, i1 %288
  br i1 %289, label %478, label %290

290:                                              ; preds = %277
  %291 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %292 = call i32 @__of_parse_phandle_with_args(ptr noundef %291, ptr noundef nonnull @.str.95, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %293 = icmp ne i32 %292, 0
  %294 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %295 = icmp eq ptr %294, null
  %296 = select i1 %293, i1 true, i1 %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  call void @of_node_put(ptr noundef nonnull %287) #8
  br label %478

298:                                              ; preds = %290
  %299 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %287, ptr noundef nonnull @.str.96, ptr noundef %280, i32 noundef 1, i32 noundef 0) #8
  %300 = icmp sgt i32 %299, -1
  br i1 %300, label %302, label %301

301:                                              ; preds = %298
  store i32 1, ptr %280, align 4
  br label %302

302:                                              ; preds = %301, %298
  %303 = call ptr @of_find_property(ptr noundef nonnull %287, ptr noundef nonnull @.str.97, ptr noundef null) #8
  %304 = icmp eq ptr %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 31
  store i8 4, ptr %306, align 4
  br label %313

307:                                              ; preds = %302
  %308 = call ptr @of_find_property(ptr noundef nonnull %287, ptr noundef nonnull @.str.98, ptr noundef null) #8
  %309 = icmp eq ptr %308, null
  %310 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 31
  br i1 %309, label %312, label %311

311:                                              ; preds = %307
  store i8 5, ptr %310, align 4
  br label %313

312:                                              ; preds = %307
  store i8 4, ptr %310, align 4
  br label %313

313:                                              ; preds = %312, %311, %305
  %314 = call ptr @of_get_next_child(ptr noundef nonnull %287, ptr noundef null) #8
  %315 = icmp eq ptr %314, null
  br i1 %315, label %375, label %316

316:                                              ; preds = %371, %313
  %317 = phi i8 [ %372, %371 ], [ 0, %313 ]
  %318 = phi ptr [ %373, %371 ], [ %314, %313 ]
  %319 = zext i8 %317 to i32
  %320 = load i32, ptr %280, align 4
  %321 = icmp ugt i32 %320, %319
  br i1 %321, label %322, label %375

322:                                              ; preds = %316
  %323 = call ptr @of_find_property(ptr noundef nonnull %318, ptr noundef nonnull @.str.99, ptr noundef null) #8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %327, label %325

325:                                              ; preds = %322
  %326 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319
  store i8 1, ptr %326, align 4
  br label %333

327:                                              ; preds = %322
  %328 = call ptr @of_find_property(ptr noundef nonnull %318, ptr noundef nonnull @.str.100, ptr noundef null) #8
  %329 = icmp eq ptr %328, null
  %330 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319
  br i1 %329, label %332, label %331

331:                                              ; preds = %327
  store i8 0, ptr %330, align 4
  br label %333

332:                                              ; preds = %327
  store i8 1, ptr %330, align 4
  br label %333

333:                                              ; preds = %332, %331, %325
  %334 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 1
  %335 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %318, ptr noundef nonnull @.str.101, ptr noundef %334, i32 noundef 1, i32 noundef 0) #8
  %336 = icmp sgt i32 %335, -1
  br i1 %336, label %338, label %337

337:                                              ; preds = %333
  store i32 %319, ptr %334, align 4
  br label %338

338:                                              ; preds = %337, %333
  %339 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 4
  %340 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %318, ptr noundef nonnull @.str.102, ptr noundef %339, i32 noundef 1, i32 noundef 0) #8
  %341 = icmp sgt i32 %340, -1
  br i1 %341, label %343, label %342

342:                                              ; preds = %338
  store i32 0, ptr %339, align 4
  br label %343

343:                                              ; preds = %342, %338
  %344 = phi i8 [ 0, %342 ], [ 1, %338 ]
  %345 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 3
  store i8 %344, ptr %345, align 1
  %346 = call ptr @of_find_property(ptr noundef nonnull %318, ptr noundef nonnull @.str.103, ptr noundef null) #8
  %347 = icmp eq ptr %346, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %343
  %349 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 2
  store i8 1, ptr %349, align 4
  br label %371

350:                                              ; preds = %343
  %351 = call ptr @of_find_property(ptr noundef nonnull %318, ptr noundef nonnull @.str.104, ptr noundef null) #8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %355, label %353

353:                                              ; preds = %350
  %354 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 2
  store i8 2, ptr %354, align 4
  br label %371

355:                                              ; preds = %350
  %356 = call ptr @of_find_property(ptr noundef nonnull %318, ptr noundef nonnull @.str.105, ptr noundef null) #8
  %357 = icmp eq ptr %356, null
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 2
  store i8 3, ptr %359, align 4
  br label %371

360:                                              ; preds = %355
  %361 = call ptr @of_find_property(ptr noundef nonnull %318, ptr noundef nonnull @.str.106, ptr noundef null) #8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %360
  %364 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 2
  store i8 4, ptr %364, align 4
  br label %371

365:                                              ; preds = %360
  %366 = call ptr @of_find_property(ptr noundef nonnull %318, ptr noundef nonnull @.str.107, ptr noundef null) #8
  %367 = icmp eq ptr %366, null
  %368 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 33, i32 %319, i32 2
  br i1 %367, label %370, label %369

369:                                              ; preds = %365
  store i8 5, ptr %368, align 4
  br label %371

370:                                              ; preds = %365
  store i8 0, ptr %368, align 4
  br label %371

371:                                              ; preds = %370, %369, %363, %358, %353, %348
  %372 = add i8 %317, 1
  %373 = call ptr @of_get_next_child(ptr noundef nonnull %287, ptr noundef nonnull %318) #8
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %316

375:                                              ; preds = %371, %316, %313
  %376 = phi ptr [ null, %313 ], [ null, %371 ], [ %318, %316 ]
  %377 = phi i8 [ 0, %313 ], [ %372, %371 ], [ %317, %316 ]
  %378 = zext i8 %377 to i32
  %379 = load i32, ptr %280, align 4
  %380 = icmp eq i32 %379, %378
  br i1 %380, label %381, label %463

381:                                              ; preds = %375
  %382 = call i32 @of_property_read_variable_u32_array(ptr noundef %294, ptr noundef nonnull @.str.109, ptr noundef %281, i32 noundef 1, i32 noundef 0) #8
  %383 = icmp sgt i32 %382, -1
  br i1 %383, label %385, label %384

384:                                              ; preds = %381
  store i32 1, ptr %281, align 4
  br label %385

385:                                              ; preds = %384, %381
  %386 = call ptr @of_find_property(ptr noundef %294, ptr noundef nonnull @.str.110, ptr noundef null) #8
  %387 = icmp eq ptr %386, null
  br i1 %387, label %390, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 32
  store i8 0, ptr %389, align 1
  br label %401

390:                                              ; preds = %385
  %391 = call ptr @of_find_property(ptr noundef %294, ptr noundef nonnull @.str.111, ptr noundef null) #8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 32
  store i8 1, ptr %394, align 1
  br label %401

395:                                              ; preds = %390
  %396 = call ptr @of_find_property(ptr noundef %294, ptr noundef nonnull @.str.112, ptr noundef null) #8
  %397 = icmp eq ptr %396, null
  %398 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 32
  br i1 %397, label %400, label %399

399:                                              ; preds = %395
  store i8 2, ptr %398, align 1
  br label %401

400:                                              ; preds = %395
  store i8 3, ptr %398, align 1
  br label %401

401:                                              ; preds = %400, %399, %393, %388
  %402 = call ptr @of_get_next_child(ptr noundef nonnull %294, ptr noundef null) #8
  %403 = icmp eq ptr %402, null
  br i1 %403, label %457, label %404

404:                                              ; preds = %451, %401
  %405 = phi i8 [ %454, %451 ], [ 0, %401 ]
  %406 = phi ptr [ %455, %451 ], [ %402, %401 ]
  %407 = zext i8 %405 to i32
  %408 = load i32, ptr %281, align 4
  %409 = icmp ugt i32 %408, %407
  br i1 %409, label %410, label %457

410:                                              ; preds = %404
  %411 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407
  %412 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %406, ptr noundef nonnull @.str.113, ptr noundef %411, i32 noundef 1, i32 noundef 0) #8
  %413 = icmp sgt i32 %412, -1
  br i1 %413, label %416, label %414

414:                                              ; preds = %410
  %415 = add nuw nsw i32 %407, 16
  store i32 %415, ptr %411, align 4
  br label %416

416:                                              ; preds = %414, %410
  %417 = call ptr @of_find_property(ptr noundef nonnull %406, ptr noundef nonnull @.str.99, ptr noundef null) #8
  %418 = icmp eq ptr %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 1
  store i8 1, ptr %420, align 4
  br label %446

421:                                              ; preds = %416
  %422 = call ptr @of_find_property(ptr noundef nonnull %406, ptr noundef nonnull @.str.100, ptr noundef null) #8
  %423 = icmp eq ptr %422, null
  %424 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 1
  br i1 %423, label %445, label %425

425:                                              ; preds = %421
  store i8 0, ptr %424, align 4
  %426 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 2
  %427 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %406, ptr noundef nonnull @.str.114, ptr noundef %426, i32 noundef 1, i32 noundef 0) #8
  %428 = icmp sgt i32 %427, -1
  br i1 %428, label %430, label %429

429:                                              ; preds = %425
  store i32 0, ptr %426, align 4
  br label %430

430:                                              ; preds = %429, %425
  %431 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 3
  %432 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %406, ptr noundef nonnull @.str.115, ptr noundef %431, i32 noundef 1, i32 noundef 0) #8
  %433 = icmp sgt i32 %432, -1
  br i1 %433, label %435, label %434

434:                                              ; preds = %430
  store i32 0, ptr %431, align 4
  br label %435

435:                                              ; preds = %434, %430
  %436 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 4
  %437 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %406, ptr noundef nonnull @.str.116, ptr noundef %436, i32 noundef 1, i32 noundef 0) #8
  %438 = icmp sgt i32 %437, -1
  br i1 %438, label %440, label %439

439:                                              ; preds = %435
  store i32 0, ptr %436, align 4
  br label %440

440:                                              ; preds = %439, %435
  %441 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 5
  %442 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %406, ptr noundef nonnull @.str.117, ptr noundef %441, i32 noundef 1, i32 noundef 0) #8
  %443 = icmp sgt i32 %442, -1
  br i1 %443, label %446, label %444

444:                                              ; preds = %440
  store i32 0, ptr %441, align 4
  br label %446

445:                                              ; preds = %421
  store i8 1, ptr %424, align 4
  br label %446

446:                                              ; preds = %445, %444, %440, %419
  %447 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 7
  %448 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %406, ptr noundef nonnull @.str.102, ptr noundef %447, i32 noundef 1, i32 noundef 0) #8
  %449 = icmp sgt i32 %448, -1
  br i1 %449, label %451, label %450

450:                                              ; preds = %446
  store i32 0, ptr %447, align 4
  br label %451

451:                                              ; preds = %450, %446
  %452 = phi i8 [ 0, %450 ], [ 1, %446 ]
  %453 = getelementptr %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 34, i32 %407, i32 6
  store i8 %452, ptr %453, align 4
  %454 = add i8 %405, 1
  %455 = call ptr @of_get_next_child(ptr noundef nonnull %294, ptr noundef nonnull %406) #8
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %404

457:                                              ; preds = %451, %404, %401
  %458 = phi ptr [ null, %401 ], [ null, %451 ], [ %406, %404 ]
  %459 = phi i8 [ 0, %401 ], [ %454, %451 ], [ %405, %404 ]
  %460 = zext i8 %459 to i32
  %461 = load i32, ptr %281, align 4
  %462 = icmp eq i32 %461, %460
  br i1 %462, label %466, label %463

463:                                              ; preds = %457, %375
  %464 = phi ptr [ @.str.108, %375 ], [ @.str.118, %457 ]
  %465 = phi ptr [ %376, %375 ], [ %458, %457 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %464) #9
  br label %466

466:                                              ; preds = %463, %457
  %467 = phi ptr [ %458, %457 ], [ %465, %463 ]
  %468 = phi i1 [ true, %457 ], [ false, %463 ]
  %469 = phi ptr [ null, %457 ], [ inttoptr (i32 -22 to ptr), %463 ]
  call void @of_node_put(ptr noundef nonnull %287) #8
  call void @of_node_put(ptr noundef nonnull %294) #8
  call void @of_node_put(ptr noundef %467) #8
  br i1 %468, label %478, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 47
  %472 = load ptr, ptr %471, align 4
  call void @clk_disable(ptr noundef %472) #8
  call void @clk_unprepare(ptr noundef %472) #8
  %473 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 48
  %474 = load ptr, ptr %473, align 4
  call void @clk_disable(ptr noundef %474) #8
  call void @clk_unprepare(ptr noundef %474) #8
  %475 = load ptr, ptr %50, align 4
  call void @of_node_put(ptr noundef %475) #8
  %476 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 7
  %477 = load ptr, ptr %476, align 4
  call void @of_node_put(ptr noundef %477) #8
  br label %519

478:                                              ; preds = %466, %297, %277
  %479 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.36) #8
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %488

481:                                              ; preds = %478
  %482 = call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.37) #8
  %483 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 47
  store ptr %482, ptr %483, align 4
  %484 = icmp ugt ptr %482, inttoptr (i32 -4096 to ptr)
  br i1 %484, label %485, label %486

485:                                              ; preds = %481
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.38) #9
  store ptr null, ptr %483, align 4
  br label %486

486:                                              ; preds = %485, %481
  %487 = phi ptr [ null, %485 ], [ %482, %481 ]
  call fastcc void @clk_prepare_enable(ptr noundef %487)
  br label %488

488:                                              ; preds = %486, %478
  %489 = call ptr @devm_clk_get_optional(ptr noundef %8, ptr noundef nonnull @.str.39) #8
  %490 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 48
  store ptr %489, ptr %490, align 4
  %491 = icmp ugt ptr %489, inttoptr (i32 -4096 to ptr)
  br i1 %491, label %515, label %492

492:                                              ; preds = %488
  call fastcc void @clk_prepare_enable(ptr noundef %489)
  %493 = call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.40) #8
  %494 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 49
  store ptr %493, ptr %494, align 4
  %495 = icmp ugt ptr %493, inttoptr (i32 -4096 to ptr)
  br i1 %495, label %496, label %501

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 47
  %498 = load ptr, ptr %497, align 4
  %499 = call i32 @clk_get_rate(ptr noundef %498) #8
  %500 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 50
  store i32 %499, ptr %500, align 4
  store ptr null, ptr %494, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.41) #9
  br label %504

501:                                              ; preds = %492
  %502 = call i32 @clk_get_rate(ptr noundef %493) #8
  %503 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 50
  store i32 %502, ptr %503, align 4
  br label %504

504:                                              ; preds = %501, %496
  %505 = call ptr @__devm_reset_control_get(ptr noundef %8, ptr noundef nonnull @.str.37, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %506 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 55
  store ptr %505, ptr %506, align 4
  %507 = icmp ugt ptr %505, inttoptr (i32 -4096 to ptr)
  br i1 %507, label %512, label %508

508:                                              ; preds = %504
  %509 = call ptr @__devm_reset_control_get(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %510 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 56
  store ptr %509, ptr %510, align 4
  %511 = icmp ugt ptr %509, inttoptr (i32 -4096 to ptr)
  br i1 %511, label %512, label %519

512:                                              ; preds = %508, %504
  %513 = phi ptr [ %505, %504 ], [ %509, %508 ]
  %514 = load ptr, ptr %490, align 4
  call void @clk_disable(ptr noundef %514) #8
  call void @clk_unprepare(ptr noundef %514) #8
  br label %515

515:                                              ; preds = %512, %488
  %516 = phi ptr [ %513, %512 ], [ %489, %488 ]
  %517 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 47
  %518 = load ptr, ptr %517, align 4
  call void @clk_disable(ptr noundef %518) #8
  call void @clk_unprepare(ptr noundef %518) #8
  br label %519

519:                                              ; preds = %515, %508, %470, %187, %89, %19, %13, %2
  %520 = phi ptr [ %20, %19 ], [ %469, %470 ], [ %516, %515 ], [ inttoptr (i32 -12 to ptr), %187 ], [ %11, %508 ], [ inttoptr (i32 -12 to ptr), %2 ], [ inttoptr (i32 -517 to ptr), %13 ], [ inttoptr (i32 -12 to ptr), %89 ]
  ret ptr %520
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_remove_config_dt(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %4) #8
  tail call void @clk_unprepare(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void @of_node_put(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call void @of_node_put(ptr noundef %10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_get_platform_resources(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(96) %1, i8 0, i32 96, i1 false)
  %3 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.43) #8
  %4 = getelementptr inbounds %struct.stmmac_resources, ptr %1, i32 0, i32 4
  store i32 %3, ptr %4, align 4
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull @.str.44) #8
  %8 = getelementptr inbounds %struct.stmmac_resources, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = icmp slt i32 %7, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = icmp eq i32 %7, -517
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.45) #9
  %14 = load i32, ptr %4, align 4
  store i32 %14, ptr %8, align 4
  br label %15

15:                                               ; preds = %12, %6
  %16 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull @.str.46) #8
  %17 = getelementptr inbounds %struct.stmmac_resources, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = icmp eq i32 %16, -517
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.47) #9
  br label %23

23:                                               ; preds = %21, %15
  %24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %24, ptr %1, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %24 to i32
  %27 = select i1 %25, i32 %26, i32 0
  br label %28

28:                                               ; preds = %23, %19, %10, %2
  %29 = phi i32 [ %27, %23 ], [ %3, %2 ], [ -517, %10 ], [ -517, %19 ]
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_pltfr_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @stmmac_dvr_remove(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 41
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %13 = load ptr, ptr %12, align 4
  tail call void %9(ptr noundef %0, ptr noundef %13) #8
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 47
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 48
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void @of_node_put(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void @of_node_put(ptr noundef %22) #8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @stmmac_suspend(ptr noundef %0) #8
  %5 = getelementptr i8, ptr %3, i32 12096
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 41
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 46
  %13 = load ptr, ptr %12, align 4
  tail call void %8(ptr noundef %11, ptr noundef %13) #8
  br label %14

14:                                               ; preds = %10, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 40
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %7(ptr noundef %10, ptr noundef %12) #8
  br label %14

14:                                               ; preds = %9, %1
  %15 = tail call i32 @stmmac_resume(ptr noundef %0) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_noirq_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 1576
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %3, i32 12096
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %21, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19, %15, %8
  %26 = getelementptr i8, ptr %3, i32 12096
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %27, i32 0, i32 49
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  tail call void @clk_unprepare(ptr noundef %29) #8
  %30 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %19
  br label %33

33:                                               ; preds = %32, %25, %1
  %34 = phi i32 [ 0, %32 ], [ 0, %1 ], [ %30, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_noirq_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 1576
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %3, i32 12096
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 18
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20, %16, %9
  %27 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %3, i32 12844
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @stmmac_init_tstamp_counter(ptr noundef %4, i32 noundef %31) #8
  br label %33

33:                                               ; preds = %29, %26, %20, %1
  %34 = phi i32 [ 0, %1 ], [ %27, %26 ], [ 0, %29 ], [ 0, %20 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = tail call i32 @stmmac_bus_clks_config(ptr noundef %4, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = tail call i32 @stmmac_bus_clks_config(ptr noundef %4, i1 noundef zeroext true) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_init_tstamp_counter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_bus_clks_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
