; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rk_gmac_ops = type { ptr, ptr, ptr, ptr, ptr, i8, [0 x i32] }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.rk_priv_data = type { ptr, i32, i32, ptr, i8, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_dwmac_rk__338_1697_rk_gmac_dwmac_driver_init6 = internal global ptr @rk_gmac_dwmac_driver_init, section ".initcall6.init", align 4
@rk_gmac_dwmac_driver = internal global %struct.platform_driver { ptr @rk_gmac_probe, ptr @rk_gmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk_gmac_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_gmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rk_gmac_dwmac_driver_exit = internal global ptr @rk_gmac_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author339 = internal constant [66 x i8] c"dwmac_rk.author=Chen-Zhi (Roger Chen) <roger.chen@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [63 x i8] c"dwmac_rk.description=Rockchip RK3288 DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [59 x i8] c"dwmac_rk.file=drivers/net/ethernet/stmicro/stmmac/dwmac-rk\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [21 x i8] c"dwmac_rk.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"rk_gmac-dwmac\00", align 1
@rk_gmac_dwmac_match = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3308_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3366_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_ops }, %struct.of_device_id zeroinitializer], align 4
@rk_gmac_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rk_gmac_suspend, ptr @rk_gmac_resume, ptr @rk_gmac_suspend, ptr @rk_gmac_resume, ptr @rk_gmac_suspend, ptr @rk_gmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no of match data provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unsupported interface %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"phy regulator is not available yet, deferred probing\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"no regulator found\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"clock_in_out\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Can not read property: clock_in_out.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"clock input or output? (%s).\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"tx_delay\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Can not read property: tx_delay.\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"set tx_delay to 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"TX delay(0x%x).\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rx_delay\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Can not read property: rx_delay.\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"set rx_delay to 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"RX delay(0x%x).\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"phy-is-integrated\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"No PHY reset control found.\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"integrated PHY? (%s).\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"mac_clk_rx\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"cannot get clock %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"mac_clk_tx\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"aclk_mac\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"pclk_mac\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"clk_mac_ref\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"clk_mac_refout\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"clk_mac_speed\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"clock input from PHY\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Cannot get PHY clock: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"init for RGMII\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"init for RGMII_ID\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"init for RGMII_RXID\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"init for RGMII_TXID\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"init for RMII\0A\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"NO interface defined!\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.41 = private unnamed_addr constant [27 x i8] c"fail to enable phy-supply\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"fail to disable phy-supply\0A\00", align 1
@px30_ops = internal constant %struct.rk_gmac_ops { ptr null, ptr @px30_set_to_rmii, ptr null, ptr @px30_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3128_ops = internal constant %struct.rk_gmac_ops { ptr @rk3128_set_to_rgmii, ptr @rk3128_set_to_rmii, ptr @rk3128_set_rgmii_speed, ptr @rk3128_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3228_ops = internal constant %struct.rk_gmac_ops { ptr @rk3228_set_to_rgmii, ptr @rk3228_set_to_rmii, ptr @rk3228_set_rgmii_speed, ptr @rk3228_set_rmii_speed, ptr @rk3228_integrated_phy_powerup, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3288_ops = internal constant %struct.rk_gmac_ops { ptr @rk3288_set_to_rgmii, ptr @rk3288_set_to_rmii, ptr @rk3288_set_rgmii_speed, ptr @rk3288_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3308_ops = internal constant %struct.rk_gmac_ops { ptr null, ptr @rk3308_set_to_rmii, ptr null, ptr @rk3308_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3328_ops = internal constant %struct.rk_gmac_ops { ptr @rk3328_set_to_rgmii, ptr @rk3328_set_to_rmii, ptr @rk3328_set_rgmii_speed, ptr @rk3328_set_rmii_speed, ptr @rk3328_integrated_phy_powerup, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3366_ops = internal constant %struct.rk_gmac_ops { ptr @rk3366_set_to_rgmii, ptr @rk3366_set_to_rmii, ptr @rk3366_set_rgmii_speed, ptr @rk3366_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3368_ops = internal constant %struct.rk_gmac_ops { ptr @rk3368_set_to_rgmii, ptr @rk3368_set_to_rmii, ptr @rk3368_set_rgmii_speed, ptr @rk3368_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@rk3399_ops = internal constant %struct.rk_gmac_ops { ptr @rk3399_set_to_rgmii, ptr @rk3399_set_to_rmii, ptr @rk3399_set_rgmii_speed, ptr @rk3399_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@rv1108_ops = internal constant %struct.rk_gmac_ops { ptr null, ptr @rv1108_set_to_rmii, ptr null, ptr @rv1108_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, align 4
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: Missing rockchip,grf property\0A\00", align 1
@__func__.px30_set_to_rmii = private unnamed_addr constant [17 x i8] c"px30_set_to_rmii\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"%s: Missing clk_mac_speed clock\0A\00", align 1
@__func__.px30_set_rmii_speed = private unnamed_addr constant [20 x i8] c"px30_set_rmii_speed\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"%s: set clk_mac_speed rate 2500000 failed: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"%s: set clk_mac_speed rate 25000000 failed: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"unknown speed value for RMII! speed=%d\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"unknown speed value for RGMII! speed=%d\00", align 1
@__func__.rk3366_set_to_rgmii = private unnamed_addr constant [20 x i8] c"rk3366_set_to_rgmii\00", align 1
@__func__.rk3366_set_to_rmii = private unnamed_addr constant [19 x i8] c"rk3366_set_to_rmii\00", align 1
@__func__.rk3366_set_rgmii_speed = private unnamed_addr constant [23 x i8] c"rk3366_set_rgmii_speed\00", align 1
@__func__.rk3366_set_rmii_speed = private unnamed_addr constant [22 x i8] c"rk3366_set_rmii_speed\00", align 1
@__func__.rk3368_set_to_rgmii = private unnamed_addr constant [20 x i8] c"rk3368_set_to_rgmii\00", align 1
@__func__.rk3368_set_to_rmii = private unnamed_addr constant [19 x i8] c"rk3368_set_to_rmii\00", align 1
@__func__.rk3368_set_rgmii_speed = private unnamed_addr constant [23 x i8] c"rk3368_set_rgmii_speed\00", align 1
@__func__.rk3368_set_rmii_speed = private unnamed_addr constant [22 x i8] c"rk3368_set_rmii_speed\00", align 1
@__func__.rk3399_set_to_rgmii = private unnamed_addr constant [20 x i8] c"rk3399_set_to_rgmii\00", align 1
@__func__.rk3399_set_to_rmii = private unnamed_addr constant [19 x i8] c"rk3399_set_to_rmii\00", align 1
@__func__.rk3399_set_rgmii_speed = private unnamed_addr constant [23 x i8] c"rk3399_set_rgmii_speed\00", align 1
@__func__.rk3399_set_rmii_speed = private unnamed_addr constant [22 x i8] c"rk3399_set_rmii_speed\00", align 1
@rk3568_ops = internal constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i32] } { ptr @rk3568_set_to_rgmii, ptr @rk3568_set_to_rmii, ptr @rk3568_set_gmac_speed, ptr @rk3568_set_gmac_speed, ptr null, i8 1, [3 x i32] [i32 -30801920, i32 -33488896, i32 0] }, align 4
@__func__.rk3568_set_to_rmii = private unnamed_addr constant [19 x i8] c"rk3568_set_to_rmii\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"unknown speed value for GMAC speed=%d\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"%s: set clk_mac_speed rate %ld failed %d\0A\00", align 1
@__func__.rk3568_set_gmac_speed = private unnamed_addr constant [22 x i8] c"rk3568_set_gmac_speed\00", align 1
@__func__.rv1108_set_to_rmii = private unnamed_addr constant [19 x i8] c"rv1108_set_to_rmii\00", align 1
@__func__.rv1108_set_rmii_speed = private unnamed_addr constant [22 x i8] c"rv1108_set_rmii_speed\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_rk_gmac_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_rk__338_1697_rk_gmac_dwmac_driver_init6, ptr @rk_gmac_dwmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk_gmac_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk_gmac_dwmac_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk_gmac_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk_gmac_dwmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_gmac_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %218

9:                                                ; preds = %1
  %10 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %218

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.stmmac_resources, ptr %4, i32 0, i32 1
  %14 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %13) #7
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %14 to i32
  br label %218

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 58
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 13
  store i32 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 35
  store ptr @rk_fix_speed, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %26 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 84, i32 noundef 3520) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %119, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 1
  %32 = call i32 @of_get_phy_mode(ptr noundef %30, ptr noundef %31) #7
  %33 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 5
  store ptr %6, ptr %33, align 4
  %34 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rk_gmac_ops, ptr %6, i32 0, i32 5
  %38 = load i8, ptr %37, align 4, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.rk_gmac_ops, ptr %6, i32 0, i32 6, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %34, align 4
  br label %46

46:                                               ; preds = %52, %44
  %47 = phi i32 [ %42, %44 ], [ %55, %52 ]
  %48 = phi i32 [ 0, %44 ], [ %53, %52 ]
  %49 = icmp eq i32 %47, %45
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 2
  store i32 %48, ptr %51, align 4
  br label %57

52:                                               ; preds = %46
  %53 = add i32 %48, 1
  %54 = getelementptr %struct.rk_gmac_ops, ptr %6, i32 0, i32 6, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %46

57:                                               ; preds = %52, %50, %40, %36, %28
  %58 = call ptr @devm_regulator_get_optional(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  %59 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 3
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = icmp eq ptr %58, inttoptr (i32 -517 to ptr)
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #8
  br label %119

64:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #8
  store ptr null, ptr %59, align 4
  br label %65

65:                                               ; preds = %64, %57
  %66 = load ptr, ptr %29, align 8
  %67 = call i32 @of_property_read_string(ptr noundef %66, ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #8
  %70 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 7
  store i8 1, ptr %70, align 1
  br label %79

71:                                               ; preds = %65
  %72 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef %72) #8
  %73 = load ptr, ptr %2, align 4
  %74 = call i32 @strcmp(ptr noundef %73, ptr noundef nonnull dereferenceable(6) @.str.9) #7
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 7
  br i1 %75, label %77, label %78

77:                                               ; preds = %71
  store i8 1, ptr %76, align 1
  br label %79

78:                                               ; preds = %71
  store i8 0, ptr %76, align 1
  br label %79

79:                                               ; preds = %78, %77, %69
  %80 = load ptr, ptr %29, align 8
  %81 = call i32 @of_property_read_variable_u32_array(ptr noundef %80, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 20
  store i32 48, ptr %84, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #8
  %85 = load i32, ptr %84, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %85) #8
  br label %90

86:                                               ; preds = %79
  %87 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %87) #8
  %88 = load i32, ptr %3, align 4
  %89 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 20
  store i32 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load ptr, ptr %29, align 8
  %92 = call i32 @of_property_read_variable_u32_array(ptr noundef %91, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 21
  store i32 16, ptr %95, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15) #8
  %96 = load i32, ptr %95, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %96) #8
  br label %101

97:                                               ; preds = %90
  %98 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %98) #8
  %99 = load i32, ptr %3, align 4
  %100 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 21
  store i32 %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load ptr, ptr %29, align 8
  %103 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %102, ptr noundef nonnull @.str.18) #7
  %104 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 22
  store ptr %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %122, label %108

108:                                              ; preds = %101
  %109 = call ptr @of_find_property(ptr noundef nonnull %106, ptr noundef nonnull @.str.19, ptr noundef null) #7
  %110 = icmp ne ptr %109, null
  %111 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 8
  %112 = zext i1 %110 to i8
  store i8 %112, ptr %111, align 2
  br i1 %110, label %113, label %122

113:                                              ; preds = %108
  %114 = load ptr, ptr %105, align 4
  %115 = call ptr @__of_reset_control_get(ptr noundef %114, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %116 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 19
  store ptr %115, ptr %116, align 4
  %117 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20) #8
  store ptr null, ptr %116, align 4
  br label %122

119:                                              ; preds = %63, %24
  %120 = phi ptr [ inttoptr (i32 -12 to ptr), %24 ], [ inttoptr (i32 -517 to ptr), %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %121 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 46
  store ptr %120, ptr %121, align 4
  br label %129

122:                                              ; preds = %118, %113, %108, %101
  %123 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 8
  %124 = load i8, ptr %123, align 2, !range !9
  %125 = icmp eq i8 %124, 0
  %126 = select i1 %125, ptr @.str.23, ptr @.str.22
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull %126) #8
  store ptr %0, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %127 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 46
  store ptr %26, ptr %127, align 4
  %128 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %128, label %129, label %132

129:                                              ; preds = %122, %119
  %130 = phi ptr [ %120, %119 ], [ %26, %122 ]
  %131 = ptrtoint ptr %130 to i32
  br label %216

132:                                              ; preds = %122
  %133 = load ptr, ptr %26, align 4
  %134 = getelementptr inbounds %struct.platform_device, ptr %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 6
  store i8 0, ptr %135, align 4
  %136 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.24) #7
  %137 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 11
  store ptr %136, ptr %137, align 4
  %138 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #8
  br label %140

140:                                              ; preds = %139, %132
  %141 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.26) #7
  %142 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 12
  store ptr %141, ptr %142, align 4
  %143 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #8
  br label %145

145:                                              ; preds = %144, %140
  %146 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.27) #7
  %147 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 16
  store ptr %146, ptr %147, align 4
  %148 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #8
  br label %150

150:                                              ; preds = %149, %145
  %151 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.28) #7
  %152 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 17
  store ptr %151, ptr %152, align 4
  %153 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28) #8
  br label %155

155:                                              ; preds = %154, %150
  %156 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.29) #7
  %157 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 9
  store ptr %156, ptr %157, align 4
  %158 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.29) #8
  br label %160

160:                                              ; preds = %159, %155
  %161 = load i32, ptr %31, align 4
  %162 = icmp eq i32 %161, 7
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.30) #7
  %165 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 13
  store ptr %164, ptr %165, align 4
  %166 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30) #8
  br label %168

168:                                              ; preds = %167, %163
  %169 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 7
  %170 = load i8, ptr %169, align 1, !range !9
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.31) #7
  %174 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 14
  store ptr %173, ptr %174, align 4
  %175 = icmp ugt ptr %173, inttoptr (i32 -4096 to ptr)
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #8
  br label %177

177:                                              ; preds = %176, %172, %168, %160
  %178 = call ptr @devm_clk_get(ptr noundef %134, ptr noundef nonnull @.str.32) #7
  %179 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 15
  store ptr %178, ptr %179, align 4
  %180 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.32) #8
  br label %182

182:                                              ; preds = %181, %177
  %183 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 7
  %184 = load i8, ptr %183, align 1, !range !9
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.33) #8
  br label %193

187:                                              ; preds = %182
  %188 = load i32, ptr %31, align 4
  %189 = icmp eq i32 %188, 7
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load ptr, ptr %157, align 4
  %192 = call i32 @clk_set_rate(ptr noundef %191, i32 noundef 50000000) #7
  br label %193

193:                                              ; preds = %190, %187, %186
  %194 = load ptr, ptr %105, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %207, label %196

196:                                              ; preds = %193
  %197 = load i8, ptr %123, align 2, !range !9
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %196
  %200 = call ptr @of_clk_get(ptr noundef nonnull %194, i32 noundef 0) #7
  %201 = getelementptr inbounds %struct.rk_priv_data, ptr %26, i32 0, i32 18
  store ptr %200, ptr %201, align 4
  %202 = icmp ugt ptr %200, inttoptr (i32 -4096 to ptr)
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i32 @clk_set_rate(ptr noundef %200, i32 noundef 50000000) #7
  br label %207

205:                                              ; preds = %199
  %206 = ptrtoint ptr %200 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.34, i32 noundef %206) #8
  br label %216

207:                                              ; preds = %203, %196, %193
  %208 = load ptr, ptr %127, align 4
  %209 = call fastcc i32 @rk_gmac_powerup(ptr noundef %208)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = call i32 @stmmac_dvr_probe(ptr noundef %5, ptr noundef %14, ptr noundef nonnull %4) #7
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %127, align 4
  call fastcc void @rk_gmac_powerdown(ptr noundef %215)
  br label %216

216:                                              ; preds = %214, %207, %205, %129
  %217 = phi i32 [ %131, %129 ], [ -22, %205 ], [ %209, %207 ], [ %212, %214 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %14) #7
  br label %218

218:                                              ; preds = %216, %211, %16, %9, %8
  %219 = phi i32 [ %17, %16 ], [ %217, %216 ], [ -22, %8 ], [ %10, %9 ], [ 0, %211 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #7
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_gmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 12096
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 46
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @stmmac_dvr_remove(ptr noundef %2) #7
  tail call fastcc void @rk_gmac_powerdown(ptr noundef %8)
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_fix_speed(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %19 [
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 7, label %12
  ]

5:                                                ; preds = %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rk_gmac_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  tail call void %9(ptr noundef %0, i32 noundef %1) #7
  br label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rk_gmac_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef %0, i32 noundef %1) #7
  br label %22

19:                                               ; preds = %2
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef %4) #8
  br label %22

22:                                               ; preds = %19, %18, %12, %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rk_gmac_powerup(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %17 [
    i32 9, label %6
    i32 10, label %6
    i32 11, label %6
    i32 12, label %6
    i32 7, label %11
  ]

6:                                                ; preds = %1, %1, %1, %1
  %7 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %100, label %18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rk_gmac_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %100, label %18

17:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %5) #8
  br label %18

18:                                               ; preds = %17, %11, %6
  tail call fastcc void @gmac_clk_enable(ptr noundef %0, i1 noundef zeroext true)
  %19 = load i32, ptr %4, align 4
  switch i32 %19, label %49 [
    i32 9, label %20
    i32 10, label %28
    i32 11, label %32
    i32 12, label %38
    i32 7, label %44
  ]

20:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.35) #8
  %21 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  tail call void %23(ptr noundef %0, i32 noundef %25, i32 noundef %27) #7
  br label %50

28:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.36) #8
  %29 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0, i32 noundef 0, i32 noundef 0) #7
  br label %50

32:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.37) #8
  %33 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 20
  %37 = load i32, ptr %36, align 4
  tail call void %35(ptr noundef %0, i32 noundef %37, i32 noundef 0) #7
  br label %50

38:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.38) #8
  %39 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 21
  %43 = load i32, ptr %42, align 4
  tail call void %41(ptr noundef %0, i32 noundef 0, i32 noundef %43) #7
  br label %50

44:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.39) #8
  %45 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.rk_gmac_ops, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %0) #7
  br label %50

49:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40) #8
  br label %50

50:                                               ; preds = %49, %44, %38, %32, %28, %20
  %51 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %55 = icmp eq ptr %52, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = tail call i32 @regulator_enable(ptr noundef nonnull %52) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.41) #8
  br label %60

60:                                               ; preds = %59, %56, %50
  %61 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %62 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 8
  %63 = load i8, ptr %62, align 2, !range !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %100, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.rk_gmac_ops, ptr %67, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  tail call void %69(ptr noundef %0) #7
  br label %72

72:                                               ; preds = %71, %65
  %73 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 2816, i32 noundef 1073758208) #7
  %76 = load ptr, ptr %73, align 4
  %77 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 2816, i32 noundef 12582976) #7
  %78 = load ptr, ptr %73, align 4
  %79 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 2824, i32 noundef -60876) #7
  %80 = load ptr, ptr %73, align 4
  %81 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 2828, i32 noundef 4128821) #7
  %82 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 19
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %100, label %85

85:                                               ; preds = %72
  %86 = load ptr, ptr %73, align 4
  %87 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 2816, i32 noundef 65536) #7
  %88 = load ptr, ptr %82, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = tail call i32 @reset_control_assert(ptr noundef nonnull %88) #7
  br label %92

92:                                               ; preds = %90, %85
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %93 = load ptr, ptr %82, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @reset_control_deassert(ptr noundef nonnull %93) #7
  br label %97

97:                                               ; preds = %95, %92
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %98 = load ptr, ptr %73, align 4
  %99 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef 2816, i32 noundef 65537) #7
  tail call void @msleep(i32 noundef 30) #7
  br label %100

100:                                              ; preds = %97, %72, %60, %11, %6
  %101 = phi i32 [ 0, %60 ], [ 0, %72 ], [ 0, %97 ], [ -22, %6 ], [ -22, %11 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rk_gmac_powerdown(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 2, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 2816, i32 noundef 65536) #7
  %9 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @reset_control_assert(ptr noundef nonnull %10) #7
  br label %14

14:                                               ; preds = %12, %5, %1
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 4) #7
  %18 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = icmp eq ptr %19, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = tail call i32 @regulator_disable(ptr noundef nonnull %19) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.42) #8
  br label %27

27:                                               ; preds = %26, %23, %14
  tail call fastcc void @gmac_clk_enable(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gmac_clk_enable(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %1, label %8, label %105

8:                                                ; preds = %2
  br i1 %7, label %9, label %128

9:                                                ; preds = %8
  %10 = icmp eq i32 %4, 7
  br i1 %10, label %11, label %44

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @clk_prepare(ptr noundef %13) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call i32 @clk_enable(ptr noundef %13) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %22

22:                                               ; preds = %21, %18, %15, %11
  %23 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @clk_prepare(ptr noundef %24) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = tail call i32 @clk_enable(ptr noundef %24) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %33

33:                                               ; preds = %32, %29, %26, %22
  %34 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @clk_prepare(ptr noundef %35) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = tail call i32 @clk_enable(ptr noundef %35) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %35) #7
  br label %44

44:                                               ; preds = %43, %40, %37, %33, %9
  %45 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 18
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @clk_prepare(ptr noundef %46) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = tail call i32 @clk_enable(ptr noundef %46) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %46) #7
  br label %55

55:                                               ; preds = %54, %51, %48, %44
  %56 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 16
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @clk_prepare(ptr noundef %57) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = tail call i32 @clk_enable(ptr noundef %57) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @clk_unprepare(ptr noundef %57) #7
  br label %66

66:                                               ; preds = %65, %62, %59, %55
  %67 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = tail call i32 @clk_prepare(ptr noundef %68) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = tail call i32 @clk_enable(ptr noundef %68) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @clk_unprepare(ptr noundef %68) #7
  br label %77

77:                                               ; preds = %76, %73, %70, %66
  %78 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = tail call i32 @clk_prepare(ptr noundef %79) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = tail call i32 @clk_enable(ptr noundef %79) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @clk_unprepare(ptr noundef %79) #7
  br label %88

88:                                               ; preds = %87, %84, %81, %77
  %89 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = tail call i32 @clk_prepare(ptr noundef %90) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = tail call i32 @clk_enable(ptr noundef %90) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  tail call void @clk_unprepare(ptr noundef %90) #7
  br label %99

99:                                               ; preds = %98, %95, %92, %88
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #7
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #7
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #7
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #7
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #7
  br label %126

105:                                              ; preds = %2
  br i1 %7, label %128, label %106

106:                                              ; preds = %105
  %107 = icmp eq i32 %4, 7
  br i1 %107, label %108, label %115

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 11
  %110 = load ptr, ptr %109, align 4
  tail call void @clk_disable(ptr noundef %110) #7
  tail call void @clk_unprepare(ptr noundef %110) #7
  %111 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 13
  %112 = load ptr, ptr %111, align 4
  tail call void @clk_disable(ptr noundef %112) #7
  tail call void @clk_unprepare(ptr noundef %112) #7
  %113 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 14
  %114 = load ptr, ptr %113, align 4
  tail call void @clk_disable(ptr noundef %114) #7
  tail call void @clk_unprepare(ptr noundef %114) #7
  br label %115

115:                                              ; preds = %108, %106
  %116 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 18
  %117 = load ptr, ptr %116, align 4
  tail call void @clk_disable(ptr noundef %117) #7
  tail call void @clk_unprepare(ptr noundef %117) #7
  %118 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 16
  %119 = load ptr, ptr %118, align 4
  tail call void @clk_disable(ptr noundef %119) #7
  tail call void @clk_unprepare(ptr noundef %119) #7
  %120 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 17
  %121 = load ptr, ptr %120, align 4
  tail call void @clk_disable(ptr noundef %121) #7
  tail call void @clk_unprepare(ptr noundef %121) #7
  %122 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 12
  %123 = load ptr, ptr %122, align 4
  tail call void @clk_disable(ptr noundef %123) #7
  tail call void @clk_unprepare(ptr noundef %123) #7
  %124 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 15
  %125 = load ptr, ptr %124, align 4
  tail call void @clk_disable(ptr noundef %125) #7
  tail call void @clk_unprepare(ptr noundef %125) #7
  br label %126

126:                                              ; preds = %115, %99
  %127 = phi i8 [ 0, %115 ], [ 1, %99 ]
  store i8 %127, ptr %5, align 4
  br label %128

128:                                              ; preds = %126, %105, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @px30_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.px30_set_to_rmii) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 7340096) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @px30_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.px30_set_rmii_speed) #8
  br label %27

9:                                                ; preds = %2
  switch i32 %1, label %26 [
    i32 10, label %10
    i32 100, label %18
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 2308, i32 noundef 262144) #7
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef 2500000) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.px30_set_rmii_speed, i32 noundef %15) #8
  br label %27

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 2308, i32 noundef 262148) #7
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef 25000000) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.px30_set_rmii_speed, i32 noundef %23) #8
  br label %27

26:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %27

27:                                               ; preds = %26, %25, %18, %17, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3128_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.48) #8
  br label %23

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 364, i32 noundef 1103102016) #7
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 1073741824, i32 1073758208
  %15 = icmp eq i32 %2, 0
  %16 = select i1 %15, i32 -2147483648, i32 -2147450880
  %17 = shl i32 %2, 7
  %18 = or i32 %17, %1
  %19 = or i32 %18, %14
  %20 = or i32 %19, %16
  %21 = or i32 %20, 1073676288
  %22 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 360, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3128_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 364, i32 noundef 1103118592) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3128_set_rgmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %17

9:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 10, label %10
    i32 100, label %12
    i32 1000, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 364, i32 noundef 805314560) #7
  br label %17

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 364, i32 noundef 805318656) #7
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 364, i32 noundef 805306368) #7
  br label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3128_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 364, i32 noundef 201326592) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 364, i32 noundef 201329664) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3228_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.48) #8
  br label %22

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 0
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 131072, i32 131074
  %14 = select i1 %11, i32 74514448, i32 74514449
  %15 = or i32 %14, %13
  %16 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2308, i32 noundef %15) #7
  %17 = load ptr, ptr %4, align 4
  %18 = shl i32 %2, 7
  %19 = or i32 %18, %1
  %20 = or i32 %19, 1073676288
  %21 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 2304, i32 noundef %20) #7
  br label %22

22:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3228_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #8
  br label %12

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 74449984) #7
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 2308, i32 noundef 134219776) #7
  br label %12

12:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3228_set_rgmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %17

9:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 10, label %10
    i32 100, label %12
    i32 1000, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 50332160) #7
  br label %17

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 50332416) #7
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 50331648) #7
  br label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3228_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 8650752) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 8650884) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3228_integrated_phy_powerup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 80, i32 noundef -2147450880) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3288_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.48) #8
  br label %23

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 584, i32 noundef 1103102016) #7
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 1073741824, i32 1073758208
  %15 = icmp eq i32 %2, 0
  %16 = select i1 %15, i32 -2147483648, i32 -2147450880
  %17 = shl i32 %2, 7
  %18 = or i32 %17, %1
  %19 = or i32 %18, %14
  %20 = or i32 %19, %16
  %21 = or i32 %20, 1073676288
  %22 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 592, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3288_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 584, i32 noundef 1103118592) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3288_set_rgmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %17

9:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 10, label %10
    i32 100, label %12
    i32 1000, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 584, i32 noundef 805314560) #7
  br label %17

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 584, i32 noundef 805318656) #7
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 584, i32 noundef 805306368) #7
  br label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3288_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 584, i32 noundef 201326592) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 584, i32 noundef 201329664) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3308_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1184, i32 noundef 1835024) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3308_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1184, i32 noundef 65536) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1184, i32 noundef 65537) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3328_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.48) #8
  br label %17

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2308, i32 noundef 41091091) #7
  %12 = load ptr, ptr %4, align 4
  %13 = shl i32 %2, 7
  %14 = or i32 %13, %1
  %15 = or i32 %14, 1073676288
  %16 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 2304, i32 noundef %15) #7
  br label %17

17:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3328_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #8
  br label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 8
  %10 = load i8, ptr %9, align 2, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 2308, i32 2312
  %13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %12, i32 noundef 40895040) #7
  br label %14

14:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3328_set_rgmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %17

9:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 10, label %10
    i32 100, label %12
    i32 1000, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 402657280) #7
  br label %17

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 402659328) #7
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 402653184) #7
  br label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3328_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48) #8
  br label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 8
  %11 = load i8, ptr %10, align 2, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 2308, i32 2312
  switch i32 %1, label %18 [
    i32 10, label %14
    i32 100, label %16
  ]

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %13, i32 noundef 8650752) #7
  br label %19

16:                                               ; preds = %9
  %17 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %13, i32 noundef 8650884) #7
  br label %19

18:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %19

19:                                               ; preds = %18, %16, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3328_integrated_phy_powerup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2820, i32 noundef 33554944) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3366_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3366_set_to_rgmii) #8
  br label %23

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1048, i32 noundef 239075840) #7
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 8388608, i32 8388736
  %15 = icmp eq i32 %2, 0
  %16 = select i1 %15, i32 -2147483648, i32 -2147450880
  %17 = shl i32 %2, 8
  %18 = or i32 %17, %1
  %19 = or i32 %18, %14
  %20 = or i32 %19, %16
  %21 = or i32 %20, 2139029504
  %22 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 1052, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3366_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3366_set_to_rmii) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1048, i32 noundef 239077440) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3366_set_rgmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3366_set_rgmii_speed) #8
  br label %17

9:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 10, label %10
    i32 100, label %12
    i32 1000, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1048, i32 noundef 3145760) #7
  br label %17

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1048, i32 noundef 3145776) #7
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1048, i32 noundef 3145728) #7
  br label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3366_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3366_set_rmii_speed) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1048, i32 noundef 8912896) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1048, i32 noundef 8913032) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3368_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3368_set_to_rgmii) #8
  br label %23

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1084, i32 noundef 239075840) #7
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 8388608, i32 8388736
  %15 = icmp eq i32 %2, 0
  %16 = select i1 %15, i32 -2147483648, i32 -2147450880
  %17 = shl i32 %2, 8
  %18 = or i32 %17, %1
  %19 = or i32 %18, %14
  %20 = or i32 %19, %16
  %21 = or i32 %20, 2139029504
  %22 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 1088, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3368_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3368_set_to_rmii) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1084, i32 noundef 239077440) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3368_set_rgmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3368_set_rgmii_speed) #8
  br label %17

9:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 10, label %10
    i32 100, label %12
    i32 1000, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1084, i32 noundef 3145760) #7
  br label %17

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1084, i32 noundef 3145776) #7
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1084, i32 noundef 3145728) #7
  br label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3368_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3368_set_rmii_speed) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1084, i32 noundef 8912896) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1084, i32 noundef 8913032) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3399_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3399_set_to_rgmii) #8
  br label %23

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 49684, i32 noundef 239075840) #7
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 8388608, i32 8388736
  %15 = icmp eq i32 %2, 0
  %16 = select i1 %15, i32 -2147483648, i32 -2147450880
  %17 = shl i32 %2, 8
  %18 = or i32 %17, %1
  %19 = or i32 %18, %14
  %20 = or i32 %19, %16
  %21 = or i32 %20, 2139029504
  %22 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 49688, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3399_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3399_set_to_rmii) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 49684, i32 noundef 239077440) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3399_set_rgmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3399_set_rgmii_speed) #8
  br label %17

9:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 10, label %10
    i32 100, label %12
    i32 1000, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 49684, i32 noundef 3145760) #7
  br label %17

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 49684, i32 noundef 3145776) #7
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 49684, i32 noundef 3145728) #7
  br label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3399_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3399_set_rmii_speed) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 49684, i32 noundef 8912896) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 49684, i32 noundef 8913032) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3568_set_to_rgmii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.48) #8
  br label %22

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %13, i32 904, i32 896
  %15 = select i1 %13, i32 908, i32 900
  %16 = shl i32 %2, 8
  %17 = or i32 %16, %1
  %18 = or i32 %17, 2139029504
  %19 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %14, i32 noundef %18) #7
  %20 = load ptr, ptr %4, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %15, i32 noundef 7536659) #7
  br label %22

22:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3568_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rk3568_set_to_rmii) #8
  br label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, i32 908, i32 900
  %13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %12, i32 noundef 7340096) #7
  br label %14

14:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3568_set_gmac_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  switch i32 %1, label %7 [
    i32 10, label %8
    i32 100, label %5
    i32 1000, label %6
  ]

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.51, i32 noundef %1) #8
  br label %15

8:                                                ; preds = %6, %5, %2
  %9 = phi i32 [ 125000000, %6 ], [ 25000000, %5 ], [ 2500000, %2 ]
  %10 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %9) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.rk3568_set_gmac_speed, i32 noundef %9, i32 noundef %12) #8
  br label %15

15:                                               ; preds = %14, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rv1108_set_to_rmii(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rv1108_set_to_rmii) #8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2304, i32 noundef 7340096) #7
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rv1108_set_rmii_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rk_priv_data, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rv1108_set_rmii_speed) #8
  br label %15

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 10, label %10
    i32 100, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2304, i32 noundef 8650752) #7
  br label %15

12:                                               ; preds = %9
  %13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2304, i32 noundef 8650884) #7
  br label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_gmac_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @stmmac_suspend(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %1
  tail call fastcc void @rk_gmac_powerdown(ptr noundef %7)
  %18 = getelementptr inbounds %struct.rk_priv_data, ptr %7, i32 0, i32 4
  store i8 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_gmac_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rk_priv_data, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @rk_gmac_powerup(ptr noundef %7)
  store i8 0, ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = tail call i32 @stmmac_resume(ptr noundef %0) #7
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
