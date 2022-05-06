; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_dsi_phy_clk_request = type { i32, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [57 x i8] c"PHY timings: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%d, %d, %d, %d, %d, %d, %d, %d, %d, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%d, %d, %d, %d, %d\0A\00", align 1
@dsi_phy_platform_driver = internal global %struct.platform_driver { ptr @dsi_phy_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dsi_phy_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"*ERROR* %s: resource enable failed, %d\0A\00", align 1
@__func__.msm_dsi_phy_enable = private unnamed_addr constant [19 x i8] c"msm_dsi_phy_enable\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"*ERROR* %s: regulator enable failed, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"*ERROR* %s: phy enable failed, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: failed to restore phy state, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"dsi%d_phy\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dsi%d_pll\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"dsi%d_lane\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"dsi%d_reg\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"msm_dsi_phy\00", align 1
@dsi_phy_dt_match = internal constant [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-hpm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_hpm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-hpm-fam-b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_hpm_famb_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-lp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_lp_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-20nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_20nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_8960_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-14nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_14nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-14nm-660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_14nm_660_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-14nm-8953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_14nm_8953_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-10nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_10nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-10nm-8998\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_10nm_8998_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-7nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_7nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-7nm-8150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_7nm_8150_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-dsi-phy-7nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_7nm_7280_cfgs }, %struct.of_device_id zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: couldn't identify PHY index, %d\0A\00", align 1
@__func__.dsi_phy_driver_probe = private unnamed_addr constant [21 x i8] c"dsi_phy_driver_probe\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"qcom,dsi-phy-regulator-ldo-mode\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"phy-type\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"dsi_phy\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"DSI_PHY\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"*ERROR* %s: failed to map phy base\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"dsi_pll\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"DSI_PLL\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"*ERROR* %s: failed to map pll base\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"dsi_phy_lane\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"DSI_PHY_LANE\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"*ERROR* %s: failed to map phy lane base\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"dsi_phy_regulator\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"DSI_PHY_REG\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"*ERROR* %s: failed to map phy regulator base\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"*ERROR* %s: Unable to get ahb clk\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"%s: pll init failed: %d, need separate pll clk driver\0A\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"*ERROR* %s: failed to register clk provider: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"*ERROR* %s: failed to init regulator, ret=%d\0A\00", align 1
@__func__.dsi_phy_regulator_init = private unnamed_addr constant [23 x i8] c"dsi_phy_regulator_init\00", align 1
@dsi_phy_28nm_hpm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_28nm_hpm_famb_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_28nm_lp_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_20nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_28nm_8960_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_14nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_14nm_660_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_14nm_8953_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_10nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_10nm_8998_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_7nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_7nm_8150_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_7nm_7280_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@.str.35 = private unnamed_addr constant [38 x i8] c"*ERROR* %s: can't enable ahb clk, %d\0A\00", align 1
@__func__.dsi_phy_enable_resource = private unnamed_addr constant [24 x i8] c"dsi_phy_enable_resource\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"*ERROR* regulator %d set op mode failed, %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"*ERROR* regulator enable failed, %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %3, 0
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %244

9:                                                ; preds = %2
  %10 = icmp ugt i32 %3, 180000000
  %11 = select i1 %10, i32 10, i32 40
  %12 = icmp ugt i32 %3, 1200000000
  %13 = select i1 %12, i32 15, i32 10
  %14 = udiv i32 %3, 1000
  %15 = freeze i32 %14
  %16 = udiv i32 1000000, %15
  %17 = mul i32 %16, %15
  %18 = sub i32 1000000, %17
  %19 = mul nuw nsw i32 %16, 1000
  %20 = mul nuw nsw i32 %18, 1000
  %21 = udiv i32 %20, %14
  %22 = add nuw nsw i32 %21, %19
  %23 = udiv i32 %5, 1000
  %24 = freeze i32 %23
  %25 = udiv i32 1000000, %24
  %26 = mul i32 %25, %24
  %27 = sub i32 1000000, %26
  %28 = mul nuw nsw i32 %25, 1000
  %29 = mul nuw nsw i32 %27, 1000
  %30 = udiv i32 %29, %23
  %31 = add nuw nsw i32 %30, %28
  %32 = add nuw nsw i32 %22, 94999
  %33 = udiv i32 %32, %22
  %34 = add nuw nsw i32 %22, 37999
  %35 = udiv i32 %34, %22
  %36 = add nsw i32 %35, -2
  %37 = sub nsw i32 %33, %35
  %38 = mul i32 %37, 10
  %39 = icmp slt i32 %38, 0
  %40 = select i1 %39, i32 -99, i32 99
  %41 = add i32 %40, %38
  %42 = sdiv i32 %41, 100
  %43 = add nsw i32 %42, %36
  %44 = and i32 %43, -2
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #7
  %46 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = udiv i32 %31, %22
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = tail call i32 @llvm.smax.i32(i32 %47, i32 2)
  %51 = add nsw i32 %50, -2
  %52 = select i1 %49, i32 %51, i32 %47
  %53 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = add nuw nsw i32 %45, 2
  %55 = mul i32 %54, %22
  %56 = sub i32 300000, %55
  %57 = add nuw nsw i32 %22, 299999
  %58 = sub i32 %57, %55
  %59 = sub nsw i32 1, %22
  %60 = add i32 %59, %56
  %61 = icmp slt i32 %56, 0
  %62 = select i1 %61, i32 %60, i32 %58
  %63 = sdiv i32 %62, %22
  %64 = add i32 %63, -2
  %65 = icmp sgt i32 %64, 255
  %66 = sub i32 257, %63
  %67 = select i1 %65, i32 %64, i32 %66
  %68 = mul i32 %67, 10
  %69 = icmp slt i32 %68, 0
  %70 = select i1 %69, i32 -99, i32 99
  %71 = add i32 %70, %68
  %72 = sdiv i32 %71, 100
  %73 = add i32 %72, %64
  %74 = and i32 %73, -2
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0) #7
  %76 = add nuw i32 %52, %45
  %77 = add i32 %76, %75
  %78 = and i32 %77, 7
  %79 = add nuw i32 %75, 8
  %80 = sub nuw i32 %79, %78
  store i32 %80, ptr %0, align 4
  %81 = mul i32 %22, 12
  %82 = add i32 %81, 85000
  %83 = add nsw i32 %22, -1
  %84 = add i32 %83, %82
  %85 = mul i32 %22, 11
  %86 = add i32 %85, 85001
  %87 = icmp slt i32 %82, 0
  %88 = select i1 %87, i32 %86, i32 %84
  %89 = sdiv i32 %88, %22
  %90 = add i32 %89, -2
  %91 = add nuw nsw i32 %22, 59999
  %92 = udiv i32 %91, %22
  %93 = add nsw i32 %92, -2
  %94 = sub i32 %90, %93
  %95 = mul i32 %94, %11
  %96 = icmp slt i32 %95, 0
  %97 = select i1 %96, i32 -99, i32 99
  %98 = add i32 %97, %95
  %99 = sdiv i32 %98, 100
  %100 = add nsw i32 %99, %93
  %101 = and i32 %100, -2
  %102 = tail call i32 @llvm.smax.i32(i32 %101, i32 0) #7
  %103 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 1
  store i32 %102, ptr %103, align 4
  %104 = mul i32 %22, 6
  %105 = add i32 %104, 85000
  %106 = add i32 %83, %105
  %107 = mul i32 %22, 5
  %108 = add i32 %107, 85001
  %109 = icmp slt i32 %105, 0
  %110 = select i1 %109, i32 %108, i32 %106
  %111 = sdiv i32 %110, %22
  %112 = shl i32 %22, 2
  %113 = add i32 %112, 40000
  %114 = add i32 %83, %113
  %115 = mul i32 %22, 3
  %116 = add i32 %115, 40001
  %117 = icmp slt i32 %113, 0
  %118 = select i1 %117, i32 %116, i32 %114
  %119 = sdiv i32 %118, %22
  %120 = add i32 %119, -2
  %121 = sub i32 %111, %119
  %122 = mul i32 %121, %13
  %123 = icmp slt i32 %122, 0
  %124 = select i1 %123, i32 -99, i32 99
  %125 = add i32 %124, %122
  %126 = sdiv i32 %125, 100
  %127 = add i32 %126, %120
  %128 = and i32 %127, -2
  %129 = tail call i32 @llvm.smax.i32(i32 %128, i32 0) #7
  %130 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 5
  store i32 %129, ptr %130, align 4
  %131 = sub nsw i32 6, %129
  %132 = mul i32 %131, %22
  %133 = add i32 %132, 145000
  %134 = add i32 %83, %133
  %135 = sub i32 %132, %22
  %136 = add i32 %135, 145001
  %137 = icmp slt i32 %133, 0
  %138 = select i1 %137, i32 %136, i32 %134
  %139 = sdiv i32 %138, %22
  %140 = add i32 %139, -2
  %141 = sub i32 257, %139
  %142 = mul i32 %141, 10
  %143 = icmp slt i32 %142, 0
  %144 = select i1 %143, i32 -99, i32 99
  %145 = add i32 %144, %142
  %146 = sdiv i32 %145, 100
  %147 = add i32 %140, %146
  %148 = and i32 %147, -2
  %149 = tail call i32 @llvm.smax.i32(i32 %148, i32 24) #7
  %150 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 4
  store i32 %149, ptr %150, align 4
  %151 = add i32 %91, %112
  %152 = sdiv i32 %151, %22
  %153 = add i32 %152, -2
  %154 = sub i32 %90, %153
  %155 = mul i32 %154, %11
  %156 = icmp slt i32 %155, 0
  %157 = select i1 %156, i32 -99, i32 99
  %158 = add i32 %157, %155
  %159 = sdiv i32 %158, 100
  %160 = add i32 %159, %153
  %161 = and i32 %160, -2
  %162 = tail call i32 @llvm.smax.i32(i32 %161, i32 0) #7
  %163 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 6
  store i32 %162, ptr %163, align 4
  %164 = add nuw nsw i32 %22, 99999
  %165 = udiv i32 %164, %22
  %166 = add nsw i32 %165, -2
  %167 = sub nsw i32 257, %165
  %168 = mul i32 %167, 10
  %169 = icmp slt i32 %168, 0
  %170 = select i1 %169, i32 -99, i32 99
  %171 = add i32 %170, %168
  %172 = sdiv i32 %171, 100
  %173 = add nsw i32 %166, %172
  %174 = and i32 %173, -2
  %175 = tail call i32 @llvm.smax.i32(i32 %174, i32 0) #7
  %176 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 3
  store i32 %175, ptr %176, align 4
  %177 = sub nsw i32 26, %175
  %178 = mul i32 %177, %22
  %179 = add i32 %178, 60000
  %180 = icmp sgt i32 %179, -1
  %181 = shl i32 %22, 3
  br i1 %180, label %182, label %185

182:                                              ; preds = %9
  %183 = add i32 %181, -1
  %184 = add i32 %183, %179
  br label %189

185:                                              ; preds = %9
  %186 = sub i32 %179, %181
  %187 = or i32 %186, 1
  %188 = add i32 %181, -1
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i32 [ %188, %185 ], [ %183, %182 ]
  %191 = phi i32 [ %187, %185 ], [ %184, %182 ]
  %192 = sdiv i32 %191, %181
  %193 = add i32 %192, -1
  %194 = sub i32 64, %192
  %195 = mul i32 %194, 10
  %196 = icmp slt i32 %195, 0
  %197 = select i1 %196, i32 -99, i32 99
  %198 = add i32 %197, %195
  %199 = sdiv i32 %198, 100
  %200 = add i32 %193, %199
  %201 = tail call i32 @llvm.smax.i32(i32 %200, i32 0) #7
  %202 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11
  store i32 %201, ptr %202, align 4
  %203 = add nuw i32 %80, 2
  %204 = and i32 %203, -2
  %205 = add nuw i32 %204, %54
  %206 = mul i32 %205, %22
  %207 = add i32 %31, %181
  %208 = add i32 %207, %206
  %209 = sub i32 1, %181
  %210 = icmp slt i32 %208, 0
  %211 = select i1 %210, i32 %209, i32 %190
  %212 = add i32 %211, %208
  %213 = sdiv i32 %212, %181
  %214 = add i32 %213, -1
  %215 = icmp sgt i32 %214, 63
  br i1 %215, label %216, label %226

216:                                              ; preds = %189
  %217 = sub i32 127, %213
  %218 = mul i32 %217, 10
  %219 = icmp slt i32 %218, 0
  %220 = select i1 %219, i32 -99, i32 99
  %221 = add i32 %220, %218
  %222 = sdiv i32 %221, 100
  %223 = add i32 %222, %214
  %224 = tail call i32 @llvm.smax.i32(i32 %223, i32 0) #7
  %225 = lshr i32 %224, 1
  br label %235

226:                                              ; preds = %189
  %227 = sub i32 64, %213
  %228 = mul i32 %227, 10
  %229 = icmp slt i32 %228, 0
  %230 = select i1 %229, i32 -99, i32 99
  %231 = add i32 %230, %228
  %232 = sdiv i32 %231, 100
  %233 = add i32 %232, %214
  %234 = tail call i32 @llvm.smax.i32(i32 %233, i32 0) #7
  br label %235

235:                                              ; preds = %226, %216
  %236 = phi i32 [ %225, %216 ], [ %234, %226 ]
  %237 = phi i8 [ 1, %216 ], [ 0, %226 ]
  %238 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 1
  store i32 %236, ptr %238, align 4
  %239 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 2
  store i8 %237, ptr %239, align 4
  %240 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 8
  store i32 3, ptr %240, align 4
  %241 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 9
  store i32 0, ptr %241, align 4
  %242 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 10
  store i32 4, ptr %242, align 4
  %243 = zext i8 %237 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %236, i32 noundef %201, i32 noundef %243, i32 noundef %80, i32 noundef %102, i32 noundef %45, i32 noundef %175, i32 noundef %149, i32 noundef %129, i32 noundef %162, i32 noundef %52) #7
  br label %244

244:                                              ; preds = %235, %2
  %245 = phi i32 [ 0, %235 ], [ -22, %2 ]
  ret i32 %245
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc_v2(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %3, 0
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %224

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 15
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 16
  store i8 0, ptr %11, align 1
  %12 = icmp ugt i32 %3, 100000000
  %13 = select i1 %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 14
  store i32 %13, ptr %14, align 4
  %15 = icmp ult i32 %3, 120000001
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 13
  store i32 %16, ptr %17, align 4
  %18 = select i1 %15, i32 -2, i32 0
  %19 = shl nuw nsw i32 %13, 1
  %20 = udiv i32 %3, 1000
  %21 = freeze i32 %20
  %22 = udiv i32 1000000, %21
  %23 = mul i32 %22, %21
  %24 = sub i32 1000000, %23
  %25 = mul nuw nsw i32 %22, 1000
  %26 = mul nuw nsw i32 %24, 1000
  %27 = udiv i32 %26, %20
  %28 = add nuw nsw i32 %27, %25
  %29 = shl i32 %28, 3
  %30 = mul i32 %28, %19
  %31 = sub i32 38000, %30
  %32 = sub i32 %29, %30
  %33 = add i32 %32, 37999
  %34 = sub i32 %31, %29
  %35 = or i32 %34, 1
  %36 = icmp slt i32 %31, 0
  %37 = select i1 %36, i32 %35, i32 %33
  %38 = sdiv i32 %37, %29
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0)
  %40 = sub i32 95000, %30
  %41 = sdiv i32 %40, %29
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %43 = sub nsw i32 %42, %39
  %44 = mul i32 %43, 50
  %45 = icmp slt i32 %44, 0
  %46 = select i1 %45, i32 -99, i32 99
  %47 = add i32 %46, %44
  %48 = sdiv i32 %47, 100
  %49 = add i32 %48, %39
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #7
  %51 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  %52 = shl i32 %50, 3
  %53 = or i32 %52, %19
  %54 = mul i32 %53, %28
  %55 = mul i32 %28, -11
  %56 = add i32 %55, 300000
  %57 = sub i32 %56, %54
  %58 = add i32 %29, -1
  %59 = sub i32 1, %29
  %60 = icmp slt i32 %57, 0
  %61 = select i1 %60, i32 %59, i32 %58
  %62 = add i32 %61, %57
  %63 = sdiv i32 %62, %29
  %64 = add i32 %63, -3
  %65 = icmp sgt i32 %64, 255
  %66 = select i1 %65, i32 511, i32 255
  %67 = sub i32 %66, %64
  %68 = shl i32 %67, 1
  %69 = icmp slt i32 %68, 0
  %70 = select i1 %69, i32 -99, i32 99
  %71 = add i32 %70, %68
  %72 = sdiv i32 %71, 100
  %73 = add i32 %72, %64
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 0) #7
  store i32 %74, ptr %0, align 4
  %75 = mul i32 %28, 3
  %76 = mul i32 %28, 11
  %77 = add i32 %76, 59999
  %78 = sdiv i32 %77, %29
  %79 = mul i32 %28, 12
  %80 = add i32 %79, 85000
  %81 = add i32 %80, %75
  %82 = sdiv i32 %81, %29
  %83 = sub i32 %82, %78
  %84 = mul i32 %83, 30
  %85 = icmp slt i32 %84, 0
  %86 = select i1 %85, i32 -99, i32 99
  %87 = add i32 %86, %84
  %88 = sdiv i32 %87, 100
  %89 = add i32 %88, %78
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 0) #7
  %91 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 1
  store i32 %90, ptr %91, align 4
  %92 = shl i32 %28, 2
  %93 = add i32 %92, 40000
  %94 = mul i32 %18, %28
  %95 = add i32 %93, %94
  %96 = add i32 %58, %95
  %97 = sub i32 %95, %29
  %98 = or i32 %97, 1
  %99 = icmp slt i32 %95, 0
  %100 = select i1 %99, i32 %98, i32 %96
  %101 = sdiv i32 %100, %29
  %102 = tail call i32 @llvm.smax.i32(i32 %101, i32 0)
  %103 = mul i32 %28, 6
  %104 = add i32 %103, 85000
  %105 = add i32 %104, %94
  %106 = sdiv i32 %105, %29
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 0)
  %108 = sub nsw i32 %107, %102
  %109 = mul i32 %108, 50
  %110 = icmp slt i32 %109, 0
  %111 = select i1 %110, i32 -99, i32 99
  %112 = add i32 %111, %109
  %113 = sdiv i32 %112, 100
  %114 = add i32 %113, %102
  %115 = tail call i32 @llvm.smax.i32(i32 %114, i32 0) #7
  %116 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 5
  store i32 %115, ptr %116, align 4
  %117 = mul i32 %115, -8
  %118 = add i32 %117, %18
  %119 = add i32 %118, 10
  %120 = mul i32 %119, %28
  %121 = add i32 %55, 145000
  %122 = add i32 %121, %120
  %123 = icmp slt i32 %122, 0
  %124 = select i1 %123, i32 %59, i32 %58
  %125 = add i32 %124, %122
  %126 = sdiv i32 %125, %29
  %127 = add i32 %126, -3
  %128 = sub i32 258, %126
  %129 = mul i32 %128, 10
  %130 = icmp slt i32 %129, 0
  %131 = select i1 %130, i32 -99, i32 99
  %132 = add i32 %131, %129
  %133 = sdiv i32 %132, 100
  %134 = add i32 %127, %133
  %135 = tail call i32 @llvm.smax.i32(i32 %134, i32 0) #7
  %136 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 4
  store i32 %135, ptr %136, align 4
  %137 = add i32 %77, %92
  %138 = sdiv i32 %137, %29
  %139 = sub i32 %82, %138
  %140 = mul i32 %139, 30
  %141 = icmp slt i32 %140, 0
  %142 = select i1 %141, i32 -99, i32 99
  %143 = add i32 %142, %140
  %144 = sdiv i32 %143, 100
  %145 = add i32 %144, %138
  %146 = tail call i32 @llvm.smax.i32(i32 %145, i32 0) #7
  %147 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 6
  store i32 %146, ptr %147, align 4
  %148 = mul i32 %28, -8
  %149 = add i32 %148, 50000
  %150 = add i32 %58, %149
  %151 = sub i32 %149, %29
  %152 = or i32 %151, 1
  %153 = icmp slt i32 %149, 0
  %154 = select i1 %153, i32 %152, i32 %150
  %155 = sdiv i32 %154, %29
  %156 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 7
  store i32 %155, ptr %156, align 4
  %157 = add i32 %29, 99999
  %158 = sdiv i32 %157, %29
  %159 = add i32 %158, -1
  %160 = sub i32 256, %158
  %161 = mul i32 %160, 10
  %162 = icmp slt i32 %161, 0
  %163 = select i1 %162, i32 -99, i32 99
  %164 = add i32 %163, %161
  %165 = sdiv i32 %164, 100
  %166 = add i32 %159, %165
  %167 = tail call i32 @llvm.smax.i32(i32 %166, i32 0) #7
  %168 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 3
  store i32 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 12
  store i32 %155, ptr %169, align 4
  %170 = mul i32 %28, 9
  %171 = add i32 %29, 59999
  %172 = add i32 %171, %170
  %173 = sdiv i32 %172, %29
  %174 = add i32 %173, -1
  %175 = sub i32 64, %173
  %176 = mul i32 %175, 10
  %177 = icmp slt i32 %176, 0
  %178 = select i1 %177, i32 -99, i32 99
  %179 = add i32 %178, %176
  %180 = sdiv i32 %179, 100
  %181 = add i32 %174, %180
  %182 = tail call i32 @llvm.smax.i32(i32 %181, i32 0) #7
  %183 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11
  store i32 %182, ptr %183, align 4
  %184 = add i32 %155, %74
  %185 = shl i32 %184, 3
  %186 = sub nuw nsw i32 51, %19
  %187 = add i32 %186, %53
  %188 = add i32 %187, %185
  %189 = mul i32 %188, %28
  %190 = icmp slt i32 %189, 0
  %191 = select i1 %190, i32 %59, i32 %58
  %192 = add i32 %191, %189
  %193 = sdiv i32 %192, %29
  %194 = add i32 %193, -1
  %195 = icmp sgt i32 %194, 63
  br i1 %195, label %196, label %206

196:                                              ; preds = %9
  %197 = sub i32 127, %193
  %198 = mul i32 %197, 10
  %199 = icmp slt i32 %198, 0
  %200 = select i1 %199, i32 -99, i32 99
  %201 = add i32 %200, %198
  %202 = sdiv i32 %201, 100
  %203 = add i32 %202, %194
  %204 = tail call i32 @llvm.smax.i32(i32 %203, i32 0) #7
  %205 = lshr i32 %204, 1
  br label %215

206:                                              ; preds = %9
  %207 = sub i32 64, %193
  %208 = mul i32 %207, 10
  %209 = icmp slt i32 %208, 0
  %210 = select i1 %209, i32 -99, i32 99
  %211 = add i32 %210, %208
  %212 = sdiv i32 %211, 100
  %213 = add i32 %212, %194
  %214 = tail call i32 @llvm.smax.i32(i32 %213, i32 0) #7
  br label %215

215:                                              ; preds = %206, %196
  %216 = phi i32 [ %205, %196 ], [ %214, %206 ]
  %217 = phi i8 [ 1, %196 ], [ 0, %206 ]
  %218 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 1
  store i32 %216, ptr %218, align 4
  %219 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 2
  store i8 %217, ptr %219, align 4
  %220 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 8
  store i32 3, ptr %220, align 4
  %221 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 9
  store i32 0, ptr %221, align 4
  %222 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 10
  store i32 4, ptr %222, align 4
  %223 = zext i8 %217 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %216, i32 noundef %182, i32 noundef %223, i32 noundef %74, i32 noundef %90, i32 noundef %50, i32 noundef %167, i32 noundef %135, i32 noundef %115, i32 noundef %146, i32 noundef %155, i32 noundef %155, i32 noundef 0, i32 noundef 0, i32 noundef %16, i32 noundef %13) #7
  br label %224

224:                                              ; preds = %215, %2
  %225 = phi i32 [ 0, %215 ], [ -22, %2 ]
  ret i32 %225
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc_v3(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %3, 0
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %209

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 15
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 16
  store i8 0, ptr %11, align 1
  %12 = udiv i32 %3, 1000
  %13 = freeze i32 %12
  %14 = udiv i32 1000000, %13
  %15 = mul i32 %14, %13
  %16 = sub i32 1000000, %15
  %17 = mul nuw nsw i32 %14, 1000
  %18 = mul nuw nsw i32 %16, 1000
  %19 = udiv i32 %18, %12
  %20 = add nuw nsw i32 %19, %17
  %21 = shl i32 %20, 3
  %22 = add i32 %21, 37999
  %23 = sdiv i32 %22, %21
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = sdiv i32 95000, %21
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  %27 = sub nsw i32 %26, %24
  %28 = mul i32 %27, 50
  %29 = icmp slt i32 %28, 0
  %30 = select i1 %29, i32 -99, i32 99
  %31 = add i32 %30, %28
  %32 = sdiv i32 %31, 100
  %33 = add i32 %32, %24
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0) #7
  %35 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = mul i32 %20, -8
  %37 = mul i32 %36, %34
  %38 = add i32 %37, 300000
  %39 = add i32 %21, -1
  %40 = add i32 %39, %38
  %41 = sub i32 %38, %21
  %42 = or i32 %41, 1
  %43 = icmp slt i32 %38, 0
  %44 = select i1 %43, i32 %42, i32 %40
  %45 = sdiv i32 %44, %21
  %46 = add i32 %45, -1
  %47 = icmp sgt i32 %46, 255
  %48 = select i1 %47, i32 511, i32 255
  %49 = sub i32 %48, %46
  %50 = shl i32 %49, 1
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i32 -99, i32 99
  %53 = add i32 %52, %50
  %54 = sdiv i32 %53, 100
  %55 = add i32 %54, %46
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0) #7
  store i32 %56, ptr %0, align 4
  %57 = mul i32 %20, 3
  %58 = add i32 %57, 59999
  %59 = add i32 %58, %21
  %60 = sdiv i32 %59, %21
  %61 = mul i32 %20, 12
  %62 = add i32 %61, 85000
  %63 = add i32 %62, %57
  %64 = sdiv i32 %63, %21
  %65 = sub i32 %64, %60
  %66 = mul i32 %65, 30
  %67 = icmp slt i32 %66, 0
  %68 = select i1 %67, i32 -99, i32 99
  %69 = add i32 %68, %66
  %70 = sdiv i32 %69, 100
  %71 = add i32 %70, %60
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0) #7
  %73 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 1
  store i32 %72, ptr %73, align 4
  %74 = shl i32 %20, 2
  %75 = add i32 %74, 40000
  %76 = add i32 %39, %75
  %77 = sub i32 %75, %21
  %78 = or i32 %77, 1
  %79 = icmp slt i32 %75, 0
  %80 = select i1 %79, i32 %78, i32 %76
  %81 = sdiv i32 %80, %21
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 0)
  %83 = mul i32 %20, 6
  %84 = add i32 %83, 85000
  %85 = sdiv i32 %84, %21
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 0)
  %87 = sub nsw i32 %86, %82
  %88 = mul i32 %87, 50
  %89 = icmp slt i32 %88, 0
  %90 = select i1 %89, i32 -99, i32 99
  %91 = add i32 %90, %88
  %92 = sdiv i32 %91, 100
  %93 = add i32 %92, %82
  %94 = tail call i32 @llvm.smax.i32(i32 %93, i32 0) #7
  %95 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 5
  store i32 %94, ptr %95, align 4
  %96 = mul i32 %94, -8
  %97 = add i32 %96, 10
  %98 = mul i32 %97, %20
  %99 = add i32 %98, 145000
  %100 = add i32 %39, %99
  %101 = sub i32 %99, %21
  %102 = or i32 %101, 1
  %103 = icmp slt i32 %99, 0
  %104 = select i1 %103, i32 %102, i32 %100
  %105 = sdiv i32 %104, %21
  %106 = add i32 %105, -1
  %107 = sub i32 256, %105
  %108 = mul i32 %107, 10
  %109 = icmp slt i32 %108, 0
  %110 = select i1 %109, i32 -99, i32 99
  %111 = add i32 %110, %108
  %112 = sdiv i32 %111, 100
  %113 = add i32 %106, %112
  %114 = tail call i32 @llvm.smax.i32(i32 %113, i32 0) #7
  %115 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 4
  store i32 %114, ptr %115, align 4
  %116 = add i32 %74, 59999
  %117 = add i32 %116, %21
  %118 = sdiv i32 %117, %21
  %119 = add i32 %118, -1
  %120 = sdiv i32 %62, %21
  %121 = sub i32 %120, %118
  %122 = mul i32 %121, 30
  %123 = icmp slt i32 %122, 0
  %124 = select i1 %123, i32 -99, i32 99
  %125 = add i32 %124, %122
  %126 = sdiv i32 %125, 100
  %127 = add i32 %119, %126
  %128 = tail call i32 @llvm.smax.i32(i32 %127, i32 0) #7
  %129 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 6
  store i32 %128, ptr %129, align 4
  %130 = add i32 %36, 50000
  %131 = add i32 %39, %130
  %132 = sub i32 %130, %21
  %133 = or i32 %132, 1
  %134 = icmp slt i32 %130, 0
  %135 = select i1 %134, i32 %133, i32 %131
  %136 = sdiv i32 %135, %21
  %137 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 7
  store i32 %136, ptr %137, align 4
  %138 = add i32 %21, 99999
  %139 = sdiv i32 %138, %21
  %140 = add i32 %139, -1
  %141 = sub i32 256, %139
  %142 = mul i32 %141, 10
  %143 = icmp slt i32 %142, 0
  %144 = select i1 %143, i32 -99, i32 99
  %145 = add i32 %144, %142
  %146 = sdiv i32 %145, 100
  %147 = add i32 %140, %146
  %148 = tail call i32 @llvm.smax.i32(i32 %147, i32 0) #7
  %149 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 3
  store i32 %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 12
  store i32 %136, ptr %150, align 4
  %151 = mul i32 %20, 9
  %152 = add i32 %21, 59999
  %153 = add i32 %152, %151
  %154 = sdiv i32 %153, %21
  %155 = add i32 %154, -1
  %156 = sub i32 64, %154
  %157 = mul i32 %156, 10
  %158 = icmp slt i32 %157, 0
  %159 = select i1 %158, i32 -99, i32 99
  %160 = add i32 %159, %157
  %161 = sdiv i32 %160, 100
  %162 = add i32 %155, %161
  %163 = tail call i32 @llvm.smax.i32(i32 %162, i32 0) #7
  %164 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11
  store i32 %163, ptr %164, align 4
  %165 = add nuw i32 %56, %34
  %166 = add i32 %165, %136
  %167 = shl i32 %166, 3
  %168 = add i32 %167, 51
  %169 = mul i32 %168, %20
  %170 = sub i32 1, %21
  %171 = icmp slt i32 %169, 0
  %172 = select i1 %171, i32 %170, i32 %39
  %173 = add i32 %172, %169
  %174 = sdiv i32 %173, %21
  %175 = add i32 %174, -1
  %176 = icmp sgt i32 %175, 63
  br i1 %176, label %177, label %187

177:                                              ; preds = %9
  %178 = sub i32 127, %174
  %179 = mul i32 %178, 10
  %180 = icmp slt i32 %179, 0
  %181 = select i1 %180, i32 -99, i32 99
  %182 = add i32 %181, %179
  %183 = sdiv i32 %182, 100
  %184 = add i32 %183, %175
  %185 = tail call i32 @llvm.smax.i32(i32 %184, i32 0) #7
  %186 = lshr i32 %185, 1
  br label %196

187:                                              ; preds = %9
  %188 = sub i32 64, %174
  %189 = mul i32 %188, 10
  %190 = icmp slt i32 %189, 0
  %191 = select i1 %190, i32 -99, i32 99
  %192 = add i32 %191, %189
  %193 = sdiv i32 %192, 100
  %194 = add i32 %193, %175
  %195 = tail call i32 @llvm.smax.i32(i32 %194, i32 0) #7
  br label %196

196:                                              ; preds = %187, %177
  %197 = phi i32 [ %186, %177 ], [ %195, %187 ]
  %198 = phi i8 [ 1, %177 ], [ 0, %187 ]
  %199 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 1
  store i32 %197, ptr %199, align 4
  %200 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 2
  store i8 %198, ptr %200, align 4
  %201 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 8
  store i32 3, ptr %201, align 4
  %202 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 9
  store i32 0, ptr %202, align 4
  %203 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 10
  store i32 4, ptr %203, align 4
  %204 = zext i8 %198 to i32
  %205 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 13
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 14
  %208 = load i32, ptr %207, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %197, i32 noundef %163, i32 noundef %204, i32 noundef %56, i32 noundef %72, i32 noundef %34, i32 noundef %148, i32 noundef %114, i32 noundef %94, i32 noundef %128, i32 noundef %136, i32 noundef %136, i32 noundef 0, i32 noundef 0, i32 noundef %206, i32 noundef %208) #7
  br label %209

209:                                              ; preds = %196, %2
  %210 = phi i32 [ 0, %196 ], [ -22, %2 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc_v4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %3, 0
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %179

9:                                                ; preds = %2
  %10 = udiv i32 %3, 1000
  %11 = freeze i32 %10
  %12 = udiv i32 1000000, %11
  %13 = mul i32 %12, %11
  %14 = sub i32 1000000, %13
  %15 = mul nuw nsw i32 %12, 1000
  %16 = mul nuw nsw i32 %14, 1000
  %17 = udiv i32 %16, %10
  %18 = add nuw nsw i32 %17, %15
  %19 = shl i32 %18, 3
  %20 = add i32 %19, 37999
  %21 = sdiv i32 %20, %19
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  %23 = sdiv i32 95000, %19
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = sub nsw i32 %24, %22
  %26 = mul i32 %25, 50
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 -99, i32 99
  %29 = add i32 %28, %26
  %30 = sdiv i32 %29, 100
  %31 = add i32 %30, %22
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #7
  %33 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = mul i32 %18, -8
  %35 = mul i32 %34, %32
  %36 = add i32 %35, 300000
  %37 = add i32 %19, -1
  %38 = add i32 %37, %36
  %39 = sub i32 %36, %19
  %40 = or i32 %39, 1
  %41 = icmp slt i32 %36, 0
  %42 = select i1 %41, i32 %40, i32 %38
  %43 = sdiv i32 %42, %19
  %44 = add i32 %43, -1
  %45 = icmp sgt i32 %44, 255
  %46 = select i1 %45, i32 511, i32 255
  %47 = sub i32 %46, %44
  %48 = shl i32 %47, 1
  %49 = icmp slt i32 %48, 0
  %50 = select i1 %49, i32 -99, i32 99
  %51 = add i32 %50, %48
  %52 = sdiv i32 %51, 100
  %53 = add i32 %52, %44
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0) #7
  store i32 %54, ptr %0, align 4
  %55 = mul i32 %18, 3
  %56 = add i32 %55, 59999
  %57 = add i32 %56, %19
  %58 = sdiv i32 %57, %19
  %59 = mul i32 %18, 12
  %60 = add i32 %59, 85000
  %61 = add i32 %60, %55
  %62 = sdiv i32 %61, %19
  %63 = sub i32 %62, %58
  %64 = mul i32 %63, 30
  %65 = icmp slt i32 %64, 0
  %66 = select i1 %65, i32 -99, i32 99
  %67 = add i32 %66, %64
  %68 = sdiv i32 %67, 100
  %69 = add i32 %68, %58
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #7
  %71 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = shl i32 %18, 2
  %73 = add i32 %72, 40000
  %74 = add i32 %37, %73
  %75 = sub i32 %73, %19
  %76 = or i32 %75, 1
  %77 = icmp slt i32 %73, 0
  %78 = select i1 %77, i32 %76, i32 %74
  %79 = sdiv i32 %78, %19
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 0)
  %81 = mul i32 %18, 6
  %82 = add i32 %81, 85000
  %83 = sdiv i32 %82, %19
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0)
  %85 = sub nsw i32 %84, %80
  %86 = mul i32 %85, 50
  %87 = icmp slt i32 %86, 0
  %88 = select i1 %87, i32 -99, i32 99
  %89 = add i32 %88, %86
  %90 = sdiv i32 %89, 100
  %91 = add i32 %90, %80
  %92 = tail call i32 @llvm.smax.i32(i32 %91, i32 0) #7
  %93 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 5
  store i32 %92, ptr %93, align 4
  %94 = mul i32 %92, -8
  %95 = add i32 %94, 10
  %96 = mul i32 %95, %18
  %97 = add i32 %96, 145000
  %98 = add i32 %37, %97
  %99 = sub i32 %97, %19
  %100 = or i32 %99, 1
  %101 = icmp slt i32 %97, 0
  %102 = select i1 %101, i32 %100, i32 %98
  %103 = sdiv i32 %102, %19
  %104 = add i32 %103, -1
  %105 = sub i32 256, %103
  %106 = mul i32 %105, 10
  %107 = icmp slt i32 %106, 0
  %108 = select i1 %107, i32 -99, i32 99
  %109 = add i32 %108, %106
  %110 = sdiv i32 %109, 100
  %111 = add i32 %104, %110
  %112 = tail call i32 @llvm.smax.i32(i32 %111, i32 0) #7
  %113 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 4
  store i32 %112, ptr %113, align 4
  %114 = add i32 %72, 59999
  %115 = add i32 %114, %19
  %116 = sdiv i32 %115, %19
  %117 = add i32 %116, -1
  %118 = sdiv i32 %60, %19
  %119 = sub i32 %118, %116
  %120 = mul i32 %119, 30
  %121 = icmp slt i32 %120, 0
  %122 = select i1 %121, i32 -99, i32 99
  %123 = add i32 %122, %120
  %124 = sdiv i32 %123, 100
  %125 = add i32 %117, %124
  %126 = tail call i32 @llvm.smax.i32(i32 %125, i32 0) #7
  %127 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 6
  store i32 %126, ptr %127, align 4
  %128 = add i32 %34, 50000
  %129 = add i32 %37, %128
  %130 = sub i32 %128, %19
  %131 = or i32 %130, 1
  %132 = icmp slt i32 %128, 0
  %133 = select i1 %132, i32 %131, i32 %129
  %134 = sdiv i32 %133, %19
  %135 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 7
  store i32 %134, ptr %135, align 4
  %136 = add i32 %19, 99999
  %137 = sdiv i32 %136, %19
  %138 = add i32 %137, -1
  %139 = sub i32 256, %137
  %140 = mul i32 %139, 10
  %141 = icmp slt i32 %140, 0
  %142 = select i1 %141, i32 -99, i32 99
  %143 = add i32 %142, %140
  %144 = sdiv i32 %143, 100
  %145 = add i32 %138, %144
  %146 = tail call i32 @llvm.smax.i32(i32 %145, i32 0) #7
  %147 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 3
  store i32 %146, ptr %147, align 4
  %148 = mul i32 %18, 52
  %149 = add nuw i32 %126, 1
  %150 = mul i32 %149, %19
  %151 = shl i32 %18, 4
  %152 = add i32 %148, 59999
  %153 = add i32 %152, %151
  %154 = add i32 %153, %150
  %155 = sdiv i32 %154, %151
  %156 = add i32 %155, -1
  %157 = sub i32 256, %155
  %158 = mul i32 %157, 5
  %159 = icmp slt i32 %158, 0
  %160 = select i1 %159, i32 -99, i32 99
  %161 = add i32 %160, %158
  %162 = sdiv i32 %161, 100
  %163 = add i32 %156, %162
  %164 = tail call i32 @llvm.smax.i32(i32 %163, i32 0) #7
  %165 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11
  store i32 %164, ptr %165, align 4
  %166 = add nuw i32 %32, 1
  %167 = add nuw i32 %166, %54
  %168 = mul i32 %167, %19
  %169 = add i32 %151, 105999
  %170 = add i32 %169, %168
  %171 = sdiv i32 %170, %151
  %172 = add i32 %171, -1
  %173 = sub i32 256, %171
  %174 = mul i32 %173, 125
  %175 = add i32 %174, 9999
  %176 = sdiv i32 %175, 10000
  %177 = add i32 %172, %176
  %178 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 1
  store i32 %177, ptr %178, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %177, i32 noundef %164, i32 noundef %54, i32 noundef %70, i32 noundef %32, i32 noundef %146, i32 noundef %112, i32 noundef %92, i32 noundef %126, i32 noundef %134) #7
  br label %179

179:                                              ; preds = %9, %2
  %180 = phi i32 [ 0, %9 ], [ -22, %2 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_cphy_timing_calc_v4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %3, 0
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %70

9:                                                ; preds = %2
  %10 = udiv i32 %3, 1000
  %11 = freeze i32 %10
  %12 = udiv i32 1000000, %11
  %13 = mul i32 %12, %11
  %14 = sub i32 1000000, %13
  %15 = mul nuw nsw i32 %12, 1000
  %16 = mul nuw nsw i32 %14, 1000
  %17 = udiv i32 %16, %10
  %18 = add nuw nsw i32 %17, %15
  %19 = mul i32 %18, 7
  %20 = add i32 %19, 37999
  %21 = sdiv i32 %20, %19
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  %23 = sdiv i32 95000, %19
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = sub nsw i32 %24, %22
  %26 = mul i32 %25, 50
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 -99, i32 99
  %29 = add i32 %28, %26
  %30 = sdiv i32 %29, 100
  %31 = add i32 %30, %22
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #7
  %33 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = add i32 %19, 49999
  %35 = sdiv i32 %34, %19
  %36 = sub i32 255, %35
  %37 = icmp slt i32 %36, 0
  %38 = select i1 %37, i32 -99, i32 99
  %39 = add i32 %38, %36
  %40 = sdiv i32 %39, 100
  %41 = add i32 %40, %35
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0) #7
  %43 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 7
  store i32 %42, ptr %43, align 4
  %44 = add i32 %19, 99999
  %45 = sdiv i32 %44, %19
  %46 = add i32 %45, -1
  %47 = sub i32 256, %45
  %48 = mul i32 %47, 10
  %49 = icmp slt i32 %48, 0
  %50 = select i1 %49, i32 -99, i32 99
  %51 = add i32 %50, %48
  %52 = sdiv i32 %51, 100
  %53 = add i32 %46, %52
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0) #7
  %55 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11
  store i32 26, ptr %56, align 4
  %57 = add i32 %19, 261999
  %58 = sdiv i32 %57, %19
  %59 = add i32 %58, -1
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 64)
  %61 = sub i32 64, %60
  %62 = mul i32 %61, 20
  %63 = icmp slt i32 %62, 0
  %64 = select i1 %63, i32 -99, i32 99
  %65 = add i32 %64, %62
  %66 = sdiv i32 %65, 100
  %67 = add i32 %66, %60
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 0) #7
  %69 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %0, i32 0, i32 11, i32 1
  store i32 %68, ptr %69, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %68, i32 noundef 26, i32 noundef %32, i32 noundef %54, i32 noundef %42) #7
  br label %70

70:                                               ; preds = %9, %2
  %71 = phi i32 [ 0, %9 ], [ -22, %2 ]
  ret i32 %71
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_driver_register() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dsi_phy_platform_driver, ptr noundef nonnull @__this_module) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_driver_unregister() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsi_phy_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_phy_enable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %118, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %7, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %118, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %14 = tail call fastcc i32 @dsi_phy_enable_resource(ptr noundef nonnull %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %14) #7
  br label %118

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.dsi_reg_config, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36) #7
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %36, %17
  %26 = phi i32 [ %37, %36 ], [ 0, %17 ]
  %27 = getelementptr %struct.dsi_reg_entry, ptr %20, i32 %26, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr %struct.regulator_bulk_data, ptr %18, i32 %26, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @regulator_set_load(ptr noundef %32, i32 noundef %28) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef %26, i32 noundef %33) #7
  br label %44

36:                                               ; preds = %30, %25
  %37 = add nuw nsw i32 %26, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %25

39:                                               ; preds = %36, %17
  %40 = phi i32 [ 0, %17 ], [ %23, %36 ]
  %41 = tail call i32 @regulator_bulk_enable(i32 noundef %23, ptr noundef %18) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, i32 noundef %41) #7
  br label %44

44:                                               ; preds = %43, %35
  %45 = phi i32 [ %26, %35 ], [ %40, %43 ]
  %46 = phi i32 [ %33, %35 ], [ %41, %43 ]
  %47 = add i32 %45, -1
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %58

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %56, %49 ], [ %47, %44 ]
  %51 = getelementptr %struct.regulator_bulk_data, ptr %18, i32 %50, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.dsi_reg_entry, ptr %20, i32 %50, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @regulator_set_load(ptr noundef %52, i32 noundef %54) #7
  %56 = add nsw i32 %50, -1
  %57 = icmp eq i32 %50, 0
  br i1 %57, label %58, label %49

58:                                               ; preds = %49, %44
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %46) #7
  br label %111

59:                                               ; preds = %39
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %60, i32 0, i32 1, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef nonnull %0, ptr noundef %1) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %63) #7
  br label %90

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %2, ptr noundef align 4 dereferenceable(12) %67, i32 12, i1 false)
  %68 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %118, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %6, align 4
  %73 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %72, i32 0, i32 1, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %118, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 20
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %118, label %80

80:                                               ; preds = %76
  %81 = tail call i32 %74(ptr noundef nonnull %0) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i8 0, ptr %77, align 4
  br label %118

84:                                               ; preds = %80
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %81) #7
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %85, i32 0, i32 1, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  tail call void %87(ptr noundef nonnull %0) #7
  br label %90

90:                                               ; preds = %89, %84, %65
  %91 = phi i32 [ %63, %65 ], [ %81, %89 ], [ %81, %84 ]
  %92 = load ptr, ptr %6, align 4
  %93 = getelementptr inbounds %struct.dsi_reg_config, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %92, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36) #7
  %95 = add i32 %94, -1
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %109

97:                                               ; preds = %106, %90
  %98 = phi i32 [ %107, %106 ], [ %95, %90 ]
  %99 = getelementptr %struct.dsi_reg_entry, ptr %93, i32 %98, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr %struct.regulator_bulk_data, ptr %18, i32 %98, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 @regulator_set_load(ptr noundef %104, i32 noundef %100) #7
  br label %106

106:                                              ; preds = %102, %97
  %107 = add i32 %98, -1
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %97, label %109

109:                                              ; preds = %106, %90
  %110 = tail call i32 @regulator_bulk_disable(i32 noundef %94, ptr noundef %18) #7
  br label %111

111:                                              ; preds = %109, %58
  %112 = phi i32 [ %46, %58 ], [ %91, %109 ]
  %113 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  tail call void @clk_disable(ptr noundef %114) #7
  tail call void @clk_unprepare(ptr noundef %114) #7
  %115 = load ptr, ptr %0, align 4
  %116 = getelementptr inbounds %struct.platform_device, ptr %115, i32 0, i32 3
  %117 = tail call i32 @__pm_runtime_idle(ptr noundef %116, i32 noundef 5) #7
  br label %118

118:                                              ; preds = %111, %83, %76, %71, %66, %16, %5, %3
  %119 = phi i32 [ -22, %5 ], [ -22, %3 ], [ 0, %66 ], [ %14, %16 ], [ %112, %111 ], [ 0, %83 ], [ 0, %76 ], [ 0, %71 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsi_phy_enable_resource(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i32 [ %10, %12 ], [ %7, %1 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dsi_phy_enable_resource, i32 noundef %14) #7
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #7
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_phy_pll_restore_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %3, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 20
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %5(ptr noundef %0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %14, %11, %7, %1
  %16 = phi i32 [ %12, %11 ], [ 0, %14 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsi_phy_disable_resource(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %5, i32 0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef nonnull %0) #7
  %10 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dsi_reg_config, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36) #7
  %14 = add i32 %13, -1
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %28

16:                                               ; preds = %25, %9
  %17 = phi i32 [ %26, %25 ], [ %14, %9 ]
  %18 = getelementptr %struct.dsi_reg_entry, ptr %12, i32 %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr %struct.regulator_bulk_data, ptr %10, i32 %17, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regulator_set_load(ptr noundef %23, i32 noundef %19) #7
  br label %25

25:                                               ; preds = %21, %16
  %26 = add i32 %17, -1
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %16, label %28

28:                                               ; preds = %25, %9
  %29 = tail call i32 @regulator_bulk_disable(i32 noundef %13, ptr noundef %10) #7
  %30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  tail call void @clk_unprepare(ptr noundef %31) #7
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %34 = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 5) #7
  br label %35

35:                                               ; preds = %28, %3, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @msm_dsi_phy_set_usecase(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  store i32 %1, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_dsi_phy_set_continuous_clock(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %6, i32 0, i32 1, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call zeroext i1 %8(ptr noundef nonnull %0, i1 noundef zeroext %1) #7
  br label %12

12:                                               ; preds = %10, %4, %2
  %13 = phi i1 [ %11, %10 ], [ false, %4 ], [ false, %2 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_pll_save_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %3, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 20
  store i8 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_snapshot(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %4, ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %8) #7
  %9 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 18
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %7, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %14, ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef %17) #7
  br label %18

18:                                               ; preds = %12, %2
  %19 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %7, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %24, ptr noundef nonnull %20, ptr noundef nonnull @.str.11, i32 noundef %25) #7
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %7, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %32, ptr noundef nonnull %28, ptr noundef nonnull @.str.12, i32 noundef %33) #7
  br label %34

34:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_add_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_phy_driver_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 240, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %114, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #7
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 19
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %114, label %10

10:                                               ; preds = %6
  store i32 2, ptr %7, align 4
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 13
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %114, label %14

14:                                               ; preds = %10
  store ptr %0, ptr %4, align 4
  %15 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.17) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %11, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, ptr %15, align 4
  br label %23

23:                                               ; preds = %28, %21
  %24 = phi i32 [ 0, %21 ], [ %29, %28 ]
  %25 = getelementptr %struct.msm_dsi_phy_cfg, ptr %11, i32 0, i32 4, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %22
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp eq i32 %29, %19
  br i1 %30, label %31, label %23

31:                                               ; preds = %28, %17, %14
  %32 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 9
  store i32 -22, ptr %32, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dsi_phy_driver_probe, i32 noundef -22) #7
  br label %114

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 9
  store i32 %24, ptr %34, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %38 = icmp ne ptr %37, null
  %39 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 15
  %40 = zext i1 %38 to i8
  store i8 %40, ptr %39, align 4
  %41 = load ptr, ptr %35, align 8
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.16, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, 11
  %47 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 16
  %48 = zext i1 %46 to i8
  store i8 %48, ptr %47, align 1
  br label %49

49:                                               ; preds = %44, %33
  %50 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 5
  %51 = call ptr @msm_ioremap_size(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %50) #7
  %52 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #7
  br label %114

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 6
  %57 = call ptr @msm_ioremap_size(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %56) #7
  %58 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #7
  br label %114

61:                                               ; preds = %55
  %62 = load ptr, ptr %12, align 4
  %63 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %62, i32 0, i32 8
  %64 = load i8, ptr %63, align 1, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 8
  %68 = call ptr @msm_ioremap_size(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %67) #7
  %69 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 4
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %12, align 4
  br label %74

73:                                               ; preds = %66
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #7
  br label %114

74:                                               ; preds = %71, %61
  %75 = phi ptr [ %72, %71 ], [ %62, %61 ]
  %76 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %75, i32 0, i32 7
  %77 = load i8, ptr %76, align 4, !range !8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 7
  %81 = call ptr @msm_ioremap_size(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %80) #7
  %82 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 3
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #7
  br label %114

85:                                               ; preds = %79, %74
  %86 = call fastcc i32 @dsi_phy_regulator_init(ptr noundef nonnull %4)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = call ptr @msm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.29) #7
  %90 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 10
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #7
  %93 = load ptr, ptr %90, align 4
  %94 = ptrtoint ptr %93 to i32
  br label %114

95:                                               ; preds = %88
  %96 = call fastcc i32 @dsi_phy_enable_resource(ptr noundef nonnull %4)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load ptr, ptr %12, align 4
  %100 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = call i32 %101(ptr noundef nonnull %4) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dsi_phy_driver_probe, i32 noundef %104) #7
  br label %114

107:                                              ; preds = %103, %98
  %108 = load ptr, ptr %8, align 4
  %109 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %3, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %108) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dsi_phy_driver_probe, i32 noundef %109) #7
  br label %114

112:                                              ; preds = %107
  call fastcc void @dsi_phy_disable_resource(ptr noundef nonnull %4)
  %113 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %113, align 8
  br label %114

114:                                              ; preds = %112, %111, %106, %95, %92, %85, %84, %73, %60, %54, %31, %10, %6, %1
  %115 = phi i32 [ 0, %112 ], [ -12, %1 ], [ -12, %6 ], [ -19, %10 ], [ -22, %31 ], [ -12, %54 ], [ -12, %60 ], [ -12, %73 ], [ -12, %84 ], [ %86, %85 ], [ %94, %92 ], [ %96, %95 ], [ %104, %106 ], [ %109, %111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsi_phy_regulator_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 11
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsi_reg_config, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %10, %1
  %11 = phi i32 [ %14, %10 ], [ 0, %1 ]
  %12 = getelementptr %struct.dsi_reg_entry, ptr %5, i32 %11
  %13 = getelementptr %struct.regulator_bulk_data, ptr %2, i32 %11
  store ptr %12, ptr %13, align 4
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %1
  %17 = tail call i32 @devm_regulator_bulk_get(ptr noundef %7, i32 noundef %8, ptr noundef %2) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = icmp eq i32 %17, -517
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dsi_phy_regulator_init, i32 noundef %17) #7
  br label %22

22:                                               ; preds = %21, %19, %16
  %23 = phi i32 [ %17, %21 ], [ -517, %19 ], [ 0, %16 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!9 = !{!"auto-init"}
