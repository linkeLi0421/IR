; ModuleID = '/llk/IR/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_dw_dsi_chip_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.dw_mipi_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_host_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dphy_pll_parameter_map = type { i32, i8, i8, i8 }
%struct.hstt = type { i32, %struct.dw_mipi_dsi_dphy_timing }
%struct.dw_mipi_dsi_dphy_timing = type { i16, i16, i16, i16 }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dw_mipi_dsi_rockchip = type { ptr, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, %union.phy_configure_opts, i32, %struct.mutex, ptr, %struct.phy_configure_opts_mipi_dphy, i32, i16, i16, i32, ptr, ptr, %struct.dw_mipi_dsi_plat_data, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dw_mipi_dsi_plat_data = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@dw_mipi_dsi_rockchip_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_chip_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [21 x i8] c"dw-mipi-dsi-rockchip\00", align 1
@dw_mipi_dsi_rockchip_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_rockchip_resume, ptr null, ptr @dw_mipi_dsi_rockchip_resume, ptr null, ptr @dw_mipi_dsi_rockchip_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dw_mipi_dsi_rockchip_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @dw_mipi_dsi_rockchip_probe, ptr @dw_mipi_dsi_rockchip_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_mipi_dsi_rockchip_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_rockchip_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@px30_chip_data = internal constant [2 x %struct.rockchip_dw_dsi_chip_data] [%struct.rockchip_dw_dsi_chip_data { i32 -12255232, i32 1080, i32 65536, i32 65537, i32 0, i32 0, i32 1080, i32 132120576, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, i32 4 }, %struct.rockchip_dw_dsi_chip_data zeroinitializer], align 4
@rk3288_chip_data = internal constant [3 x %struct.rockchip_dw_dsi_chip_data] [%struct.rockchip_dw_dsi_chip_data { i32 -6946816, i32 604, i32 4194304, i32 4194368, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, i32 4 }, %struct.rockchip_dw_dsi_chip_data { i32 -6930432, i32 604, i32 33554432, i32 33554944, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, i32 4 }, %struct.rockchip_dw_dsi_chip_data zeroinitializer], align 4
@rk3399_chip_data = internal constant [3 x %struct.rockchip_dw_dsi_chip_data] [%struct.rockchip_dw_dsi_chip_data { i32 -6946816, i32 25168, i32 65536, i32 65537, i32 0, i32 0, i32 25176, i32 -65536, i32 0, i32 0, ptr null, ptr null, ptr null, i32 3, i32 4 }, %struct.rockchip_dw_dsi_chip_data { i32 -6914048, i32 25168, i32 1048576, i32 1048592, i32 25180, i32 983055, i32 25180, i32 -65536, i32 25184, i32 14680256, ptr @rk3399_dphy_tx1rx1_init, ptr @rk3399_dphy_tx1rx1_power_on, ptr @rk3399_dphy_tx1rx1_power_off, i32 3, i32 4 }, %struct.rockchip_dw_dsi_chip_data zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"*ERROR* Unable to get dsi registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"*ERROR* no dsi-config for %s node\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dphy\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to get mipi dphy: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"*ERROR* Unable to get pclk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"*ERROR* Unable to get pll reference clock: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"phy_cfg\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"*ERROR* Unable to get phy_cfg_clk: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"grf\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"*ERROR* Unable to get grf_clk: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"*ERROR* Unable to get rockchip,grf\0A\00", align 1
@dw_mipi_dsi_rockchip_phy_ops = internal constant %struct.dw_mipi_dsi_phy_ops { ptr @dw_mipi_dsi_phy_init, ptr @dw_mipi_dsi_phy_power_on, ptr @dw_mipi_dsi_phy_power_off, ptr @dw_mipi_dsi_get_lane_mbps, ptr @dw_mipi_dsi_phy_get_timing, ptr null }, align 4
@dw_mipi_dsi_rockchip_host_ops = internal constant %struct.dw_mipi_dsi_host_ops { ptr @dw_mipi_dsi_rockchip_host_attach, ptr @dw_mipi_dsi_rockchip_host_detach }, align 4
@dw_mipi_dsi_rockchip_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"&dsi->usage_mutex\00", align 1
@dw_mipi_dsi_dphy_ops = internal constant %struct.phy_ops { ptr @dw_mipi_dsi_dphy_init, ptr @dw_mipi_dsi_dphy_exit, ptr @dw_mipi_dsi_dphy_power_on, ptr @dw_mipi_dsi_dphy_power_off, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_dphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"*ERROR* failed to create PHY\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.18 = private unnamed_addr constant [41 x i8] c"*ERROR* Failed to probe dw_mipi_dsi: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"*ERROR* failed to get parameter for %dmbps clock\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"*ERROR* Failed to enable phy_cfg_clk\0A\00", align 1
@dppa_map = internal unnamed_addr constant [39 x %struct.dphy_pll_parameter_map] [%struct.dphy_pll_parameter_map { i32 89, i8 0, i8 1, i8 2 }, %struct.dphy_pll_parameter_map { i32 99, i8 16, i8 1, i8 2 }, %struct.dphy_pll_parameter_map { i32 109, i8 32, i8 1, i8 2 }, %struct.dphy_pll_parameter_map { i32 129, i8 1, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 139, i8 17, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 149, i8 33, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 169, i8 2, i8 9, i8 2 }, %struct.dphy_pll_parameter_map { i32 179, i8 18, i8 9, i8 2 }, %struct.dphy_pll_parameter_map { i32 199, i8 34, i8 9, i8 2 }, %struct.dphy_pll_parameter_map { i32 219, i8 3, i8 2, i8 2 }, %struct.dphy_pll_parameter_map { i32 239, i8 19, i8 2, i8 2 }, %struct.dphy_pll_parameter_map { i32 249, i8 35, i8 2, i8 2 }, %struct.dphy_pll_parameter_map { i32 269, i8 4, i8 9, i8 4 }, %struct.dphy_pll_parameter_map { i32 299, i8 20, i8 9, i8 4 }, %struct.dphy_pll_parameter_map { i32 329, i8 5, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 359, i8 21, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 399, i8 37, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 449, i8 6, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 499, i8 22, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 549, i8 7, i8 6, i8 8 }, %struct.dphy_pll_parameter_map { i32 599, i8 23, i8 6, i8 8 }, %struct.dphy_pll_parameter_map { i32 649, i8 8, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 699, i8 24, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 749, i8 9, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 799, i8 25, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 849, i8 41, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 899, i8 57, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 949, i8 10, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 999, i8 26, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 1049, i8 42, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 1099, i8 58, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 1149, i8 11, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1199, i8 27, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1249, i8 43, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1299, i8 59, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1349, i8 12, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1399, i8 28, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1449, i8 44, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1500, i8 60, i8 11, i8 8 }], align 4
@.str.21 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to set phy mode: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"*ERROR* failed to get bpp for pixel format %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"*ERROR* DPHY clock frequency is out of range\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"*ERROR* Can not find best_freq for DPHY\0A\00", align 1
@hstt_table = internal unnamed_addr constant [39 x %struct.hstt] [%struct.hstt { i32 90, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 26, i16 20, i16 32 } }, %struct.hstt { i32 100, %struct.dw_mipi_dsi_dphy_timing { i16 14, i16 28, i16 23, i16 35 } }, %struct.hstt { i32 110, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 26, i16 22, i16 32 } }, %struct.hstt { i32 130, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 27, i16 20, i16 31 } }, %struct.hstt { i32 140, %struct.dw_mipi_dsi_dphy_timing { i16 14, i16 26, i16 22, i16 33 } }, %struct.hstt { i32 150, %struct.dw_mipi_dsi_dphy_timing { i16 14, i16 26, i16 21, i16 33 } }, %struct.hstt { i32 170, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 27, i16 20, i16 32 } }, %struct.hstt { i32 180, %struct.dw_mipi_dsi_dphy_timing { i16 15, i16 30, i16 23, i16 36 } }, %struct.hstt { i32 200, %struct.dw_mipi_dsi_dphy_timing { i16 15, i16 33, i16 22, i16 40 } }, %struct.hstt { i32 220, %struct.dw_mipi_dsi_dphy_timing { i16 15, i16 33, i16 22, i16 40 } }, %struct.hstt { i32 240, %struct.dw_mipi_dsi_dphy_timing { i16 16, i16 36, i16 24, i16 44 } }, %struct.hstt { i32 250, %struct.dw_mipi_dsi_dphy_timing { i16 17, i16 38, i16 24, i16 48 } }, %struct.hstt { i32 270, %struct.dw_mipi_dsi_dphy_timing { i16 17, i16 38, i16 24, i16 48 } }, %struct.hstt { i32 300, %struct.dw_mipi_dsi_dphy_timing { i16 18, i16 41, i16 27, i16 50 } }, %struct.hstt { i32 330, %struct.dw_mipi_dsi_dphy_timing { i16 18, i16 45, i16 28, i16 56 } }, %struct.hstt { i32 360, %struct.dw_mipi_dsi_dphy_timing { i16 19, i16 48, i16 28, i16 59 } }, %struct.hstt { i32 400, %struct.dw_mipi_dsi_dphy_timing { i16 20, i16 50, i16 30, i16 61 } }, %struct.hstt { i32 450, %struct.dw_mipi_dsi_dphy_timing { i16 21, i16 55, i16 31, i16 67 } }, %struct.hstt { i32 500, %struct.dw_mipi_dsi_dphy_timing { i16 22, i16 59, i16 31, i16 73 } }, %struct.hstt { i32 550, %struct.dw_mipi_dsi_dphy_timing { i16 24, i16 63, i16 36, i16 79 } }, %struct.hstt { i32 600, %struct.dw_mipi_dsi_dphy_timing { i16 25, i16 68, i16 37, i16 83 } }, %struct.hstt { i32 650, %struct.dw_mipi_dsi_dphy_timing { i16 27, i16 73, i16 38, i16 90 } }, %struct.hstt { i32 700, %struct.dw_mipi_dsi_dphy_timing { i16 28, i16 77, i16 40, i16 95 } }, %struct.hstt { i32 750, %struct.dw_mipi_dsi_dphy_timing { i16 28, i16 84, i16 40, i16 102 } }, %struct.hstt { i32 800, %struct.dw_mipi_dsi_dphy_timing { i16 30, i16 87, i16 42, i16 106 } }, %struct.hstt { i32 850, %struct.dw_mipi_dsi_dphy_timing { i16 31, i16 93, i16 44, i16 113 } }, %struct.hstt { i32 900, %struct.dw_mipi_dsi_dphy_timing { i16 32, i16 98, i16 47, i16 118 } }, %struct.hstt { i32 950, %struct.dw_mipi_dsi_dphy_timing { i16 34, i16 102, i16 47, i16 124 } }, %struct.hstt { i32 1000, %struct.dw_mipi_dsi_dphy_timing { i16 35, i16 107, i16 49, i16 130 } }, %struct.hstt { i32 1050, %struct.dw_mipi_dsi_dphy_timing { i16 37, i16 111, i16 51, i16 135 } }, %struct.hstt { i32 1100, %struct.dw_mipi_dsi_dphy_timing { i16 38, i16 114, i16 51, i16 139 } }, %struct.hstt { i32 1150, %struct.dw_mipi_dsi_dphy_timing { i16 40, i16 120, i16 54, i16 146 } }, %struct.hstt { i32 1200, %struct.dw_mipi_dsi_dphy_timing { i16 41, i16 125, i16 57, i16 153 } }, %struct.hstt { i32 1250, %struct.dw_mipi_dsi_dphy_timing { i16 42, i16 130, i16 58, i16 158 } }, %struct.hstt { i32 1300, %struct.dw_mipi_dsi_dphy_timing { i16 44, i16 135, i16 58, i16 163 } }, %struct.hstt { i32 1350, %struct.dw_mipi_dsi_dphy_timing { i16 45, i16 140, i16 60, i16 168 } }, %struct.hstt { i32 1400, %struct.dw_mipi_dsi_dphy_timing { i16 47, i16 144, i16 64, i16 172 } }, %struct.hstt { i32 1450, %struct.dw_mipi_dsi_dphy_timing { i16 48, i16 148, i16 65, i16 176 } }, %struct.hstt { i32 1500, %struct.dw_mipi_dsi_dphy_timing { i16 50, i16 153, i16 66, i16 181 } }], align 4
@.str.25 = private unnamed_addr constant [39 x i8] c"*ERROR* dsi controller already in use\0A\00", align 1
@dw_mipi_dsi_rockchip_ops = internal constant %struct.component_ops { ptr @dw_mipi_dsi_rockchip_bind, ptr @dw_mipi_dsi_rockchip_unbind }, align 4
@.str.26 = private unnamed_addr constant [42 x i8] c"*ERROR* Failed to register component: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"clock-master\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"*ERROR* only one clock-master allowed\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"*ERROR* no clock-master defined\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"*ERROR* could not get slaves data\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"*ERROR* Failed to enable pllref_clk: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"*ERROR* Failed to enable grf_clk: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"*ERROR* Failed to create drm encoder\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"*ERROR* Failed to bind: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"Failed to initialize encoder with drm\0A\00", align 1
@dw_mipi_dsi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_encoder_enable, ptr @dw_mipi_dsi_encoder_atomic_check }, align 4
@.str.36 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c\00", align 1
@dw_mipi_dsi_rockchip_dphy_ops = internal constant %struct.component_ops { ptr @dw_mipi_dsi_rockchip_dphy_bind, ptr @dw_mipi_dsi_rockchip_dphy_unbind }, align 4
@.str.37 = private unnamed_addr constant [30 x i8] c"lanes %d - data_rate_mbps %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to enable device: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"*ERROR* Failed to enable pclk: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"*ERROR* Failed to enable phy_cfg_clk: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"*ERROR* hardware-specific phy bringup failed: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"*ERROR* hardware-specific phy shutdown failed: %d\0A\00", align 1
@switch.table.dw_mipi_dsi_get_lane_mbps = private unnamed_addr constant [4 x i32] [i32 24, i32 24, i32 18, i32 16], align 4

@__mod_of__dw_mipi_dsi_rockchip_dt_ids_device_table = dso_local alias [4 x %struct.of_device_id], ptr @dw_mipi_dsi_rockchip_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 388, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %126, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %9, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %30, label %22

19:                                               ; preds = %8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  %20 = load ptr, ptr %11, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %126

22:                                               ; preds = %28, %16
  %23 = phi i32 [ %24, %28 ], [ 0, %16 ]
  %24 = add i32 %23, 1
  %25 = getelementptr %struct.rockchip_dw_dsi_chip_data, ptr %5, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = icmp eq i32 %26, %17
  br i1 %29, label %30, label %22

30:                                               ; preds = %28, %16
  %31 = phi ptr [ %5, %16 ], [ %25, %28 ]
  %32 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 21
  store ptr %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %22, %13
  %34 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 21
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef %38) #8
  br label %126

39:                                               ; preds = %33
  %40 = tail call ptr @devm_phy_optional_get(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %41 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 10
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %44) #8
  br label %126

45:                                               ; preds = %39
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  %47 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %50) #8
  br label %126

51:                                               ; preds = %45
  %52 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #8
  %53 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 5
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load ptr, ptr %41, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store ptr null, ptr %53, align 4
  br label %61

59:                                               ; preds = %55
  %60 = ptrtoint ptr %52 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %60) #8
  br label %126

61:                                               ; preds = %58, %51
  %62 = load ptr, ptr %34, align 4
  %63 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %62, i32 0, i32 13
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  %69 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 7
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %34, align 4
  %73 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %72, i32 0, i32 13
  %74 = load i32, ptr %73, align 4
  br label %77

75:                                               ; preds = %67
  %76 = ptrtoint ptr %68 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %76) #8
  br label %126

77:                                               ; preds = %71, %61
  %78 = phi i32 [ %74, %71 ], [ %64, %61 ]
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.12) #8
  %83 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 6
  store ptr %82, ptr %83, align 4
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = ptrtoint ptr %82 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef %86) #8
  br label %126

87:                                               ; preds = %81, %77
  %88 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.14) #8
  %89 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 3
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #8
  %92 = load ptr, ptr %89, align 4
  %93 = ptrtoint ptr %92 to i32
  br label %126

94:                                               ; preds = %87
  store ptr %2, ptr %6, align 4
  %95 = load ptr, ptr %11, align 4
  %96 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 22
  store ptr %95, ptr %96, align 4
  %97 = load ptr, ptr %34, align 4
  %98 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %97, i32 0, i32 14
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 22, i32 1
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 22, i32 3
  store ptr @dw_mipi_dsi_rockchip_phy_ops, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 22, i32 4
  store ptr @dw_mipi_dsi_rockchip_host_ops, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 22, i32 5
  store ptr %6, ptr %103, align 4
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %104, align 8
  %105 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %105, ptr noundef nonnull @.str.16, ptr noundef nonnull @dw_mipi_dsi_rockchip_probe.__key) #8
  %106 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @dw_mipi_dsi_dphy_ops) #8
  %107 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 14
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #8
  %110 = load ptr, ptr %107, align 4
  %111 = ptrtoint ptr %110 to i32
  br label %126

112:                                              ; preds = %94
  %113 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 8
  store ptr %6, ptr %113, align 8
  %114 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @of_phy_simple_xlate) #8
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = ptrtoint ptr %114 to i32
  br label %126

118:                                              ; preds = %112
  %119 = tail call ptr @dw_mipi_dsi_probe(ptr noundef %0, ptr noundef %96) #8
  %120 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %6, i32 0, i32 20
  store ptr %119, ptr %120, align 4
  %121 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = icmp eq ptr %119, inttoptr (i32 -517 to ptr)
  br i1 %123, label %126, label %124

124:                                              ; preds = %122
  %125 = ptrtoint ptr %119 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18, i32 noundef %125) #8
  br label %126

126:                                              ; preds = %124, %122, %118, %116, %109, %91, %85, %75, %59, %49, %43, %37, %19, %1
  %127 = phi i32 [ %21, %19 ], [ %44, %43 ], [ %50, %49 ], [ %76, %75 ], [ %86, %85 ], [ %93, %91 ], [ %111, %109 ], [ %117, %116 ], [ %60, %59 ], [ -22, %37 ], [ -12, %1 ], [ %125, %124 ], [ -517, %122 ], [ 0, %118 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  tail call void @dw_mipi_dsi_remove(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3399_dphy_tx1rx1_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 25184, i32 noundef 1048576) #8
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 25184, i32 noundef 8388608) #8
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 25184, i32 noundef 2097152) #8
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 25180, i32 noundef 983040) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3399_dphy_tx1rx1_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 3) #8, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %7 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 25184, i32 noundef 8388608) #8
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 25184, i32 noundef 2097184) #8
  %12 = load ptr, ptr %7, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 25180, i32 noundef 15728640) #8
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 25180, i32 noundef 251658240) #8
  %16 = load ptr, ptr %7, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 25184, i32 noundef 983040) #8
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 25180, i32 noundef -268374016) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 2) #8, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 15, i32 24
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = sub nsw i32 32, %25
  %27 = lshr i32 -1, %26
  %28 = or i32 %27, 983040
  %29 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 25180, i32 noundef %28) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3399_dphy_tx1rx1_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 25180, i32 noundef 983040) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_mipi_dsi_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_init(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %396

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 200
  %9 = add i32 %7, 100
  %10 = udiv i32 %9, 200
  %11 = shl nuw nsw i32 %10, 3
  %12 = and i32 %11, 56
  %13 = or i32 %12, 131
  br label %14

14:                                               ; preds = %19, %5
  %15 = phi i32 [ 0, %5 ], [ %20, %19 ]
  %16 = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, %7
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, 39
  br i1 %21, label %22, label %14

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef %7) #8
  br label %396

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_prepare(ptr noundef %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = tail call i32 @clk_enable(ptr noundef %26) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %26) #8
  br label %33

33:                                               ; preds = %32, %24
  %34 = phi i32 [ %30, %32 ], [ %27, %24 ]
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #8
  br label %396

36:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %37 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr i8, ptr %40, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 65552) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr i8, ptr %42, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #8, !srcloc !9
  %44 = select i1 %8, i32 131, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr i8, ptr %45, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %37, align 4
  %48 = getelementptr i8, ptr %47, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 2) #8, !srcloc !9
  %49 = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %15, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %52 = load ptr, ptr %37, align 4
  %53 = getelementptr i8, ptr %52, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %37, align 4
  %55 = getelementptr i8, ptr %54, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 65553) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %37, align 4
  %57 = getelementptr i8, ptr %56, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #8, !srcloc !9
  %58 = zext i8 %51 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %37, align 4
  %60 = getelementptr i8, ptr %59, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %61 = load ptr, ptr %37, align 4
  %62 = getelementptr i8, ptr %61, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 2) #8, !srcloc !9
  %63 = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %15, i32 3
  %64 = load i8, ptr %63, align 2
  %65 = or i8 %64, -64
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %66 = load ptr, ptr %37, align 4
  %67 = getelementptr i8, ptr %66, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %68 = load ptr, ptr %37, align 4
  %69 = getelementptr i8, ptr %68, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 65554) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %70 = load ptr, ptr %37, align 4
  %71 = getelementptr i8, ptr %70, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 0) #8, !srcloc !9
  %72 = zext i8 %65 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %73 = load ptr, ptr %37, align 4
  %74 = getelementptr i8, ptr %73, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %75 = load ptr, ptr %37, align 4
  %76 = getelementptr i8, ptr %75, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 2) #8, !srcloc !9
  %77 = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %15, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = shl i8 %78, 1
  %80 = and i8 %79, 126
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %81 = load ptr, ptr %37, align 4
  %82 = getelementptr i8, ptr %81, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %83 = load ptr, ptr %37, align 4
  %84 = getelementptr i8, ptr %83, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 65604) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %85 = load ptr, ptr %37, align 4
  %86 = getelementptr i8, ptr %85, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 0) #8, !srcloc !9
  %87 = zext i8 %80 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %88 = load ptr, ptr %37, align 4
  %89 = getelementptr i8, ptr %88, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %90 = load ptr, ptr %37, align 4
  %91 = getelementptr i8, ptr %90, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 2) #8, !srcloc !9
  %92 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 17
  %93 = load i16, ptr %92, align 4
  %94 = add i16 %93, 127
  %95 = and i16 %94, 127
  %96 = zext i16 %95 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %97 = load ptr, ptr %37, align 4
  %98 = getelementptr i8, ptr %97, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %99 = load ptr, ptr %37, align 4
  %100 = getelementptr i8, ptr %99, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 65559) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %101 = load ptr, ptr %37, align 4
  %102 = getelementptr i8, ptr %101, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %103 = load ptr, ptr %37, align 4
  %104 = getelementptr i8, ptr %103, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %96) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %105 = load ptr, ptr %37, align 4
  %106 = getelementptr i8, ptr %105, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 2) #8, !srcloc !9
  %107 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 18
  %108 = load i16, ptr %107, align 2
  %109 = add i16 %108, 31
  %110 = and i16 %109, 31
  %111 = zext i16 %110 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %112 = load ptr, ptr %37, align 4
  %113 = getelementptr i8, ptr %112, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %114 = load ptr, ptr %37, align 4
  %115 = getelementptr i8, ptr %114, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 65560) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %116 = load ptr, ptr %37, align 4
  %117 = getelementptr i8, ptr %116, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %118 = load ptr, ptr %37, align 4
  %119 = getelementptr i8, ptr %118, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %111) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %120 = load ptr, ptr %37, align 4
  %121 = getelementptr i8, ptr %120, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %122 = load ptr, ptr %37, align 4
  %123 = getelementptr i8, ptr %122, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %124 = load ptr, ptr %37, align 4
  %125 = getelementptr i8, ptr %124, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 65561) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %126 = load ptr, ptr %37, align 4
  %127 = getelementptr i8, ptr %126, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %128 = load ptr, ptr %37, align 4
  %129 = getelementptr i8, ptr %128, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 48) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %130 = load ptr, ptr %37, align 4
  %131 = getelementptr i8, ptr %130, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 2) #8, !srcloc !9
  %132 = load i16, ptr %107, align 2
  %133 = zext i16 %132 to i32
  %134 = add nuw nsw i32 %133, 511
  %135 = lshr i32 %134, 5
  %136 = and i32 %135, 15
  %137 = or i32 %136, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %138 = load ptr, ptr %37, align 4
  %139 = getelementptr i8, ptr %138, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %140 = load ptr, ptr %37, align 4
  %141 = getelementptr i8, ptr %140, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 65560) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %142 = load ptr, ptr %37, align 4
  %143 = getelementptr i8, ptr %142, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %144 = load ptr, ptr %37, align 4
  %145 = getelementptr i8, ptr %144, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %137) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %146 = load ptr, ptr %37, align 4
  %147 = getelementptr i8, ptr %146, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %148 = load ptr, ptr %37, align 4
  %149 = getelementptr i8, ptr %148, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %150 = load ptr, ptr %37, align 4
  %151 = getelementptr i8, ptr %150, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 65561) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %152 = load ptr, ptr %37, align 4
  %153 = getelementptr i8, ptr %152, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %154 = load ptr, ptr %37, align 4
  %155 = getelementptr i8, ptr %154, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 48) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %156 = load ptr, ptr %37, align 4
  %157 = getelementptr i8, ptr %156, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %158 = load ptr, ptr %37, align 4
  %159 = getelementptr i8, ptr %158, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %160 = load ptr, ptr %37, align 4
  %161 = getelementptr i8, ptr %160, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 65570) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %162 = load ptr, ptr %37, align 4
  %163 = getelementptr i8, ptr %162, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %164 = load ptr, ptr %37, align 4
  %165 = getelementptr i8, ptr %164, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 7) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %166 = load ptr, ptr %37, align 4
  %167 = getelementptr i8, ptr %166, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %168 = load ptr, ptr %37, align 4
  %169 = getelementptr i8, ptr %168, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %170 = load ptr, ptr %37, align 4
  %171 = getelementptr i8, ptr %170, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 65570) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %172 = load ptr, ptr %37, align 4
  %173 = getelementptr i8, ptr %172, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %174 = load ptr, ptr %37, align 4
  %175 = getelementptr i8, ptr %174, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 135) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %176 = load ptr, ptr %37, align 4
  %177 = getelementptr i8, ptr %176, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %178 = load ptr, ptr %37, align 4
  %179 = getelementptr i8, ptr %178, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %180 = load ptr, ptr %37, align 4
  %181 = getelementptr i8, ptr %180, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 65568) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %182 = load ptr, ptr %37, align 4
  %183 = getelementptr i8, ptr %182, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %184 = load ptr, ptr %37, align 4
  %185 = getelementptr i8, ptr %184, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 77) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %186 = load ptr, ptr %37, align 4
  %187 = getelementptr i8, ptr %186, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %188 = load ptr, ptr %37, align 4
  %189 = getelementptr i8, ptr %188, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %190 = load ptr, ptr %37, align 4
  %191 = getelementptr i8, ptr %190, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 65569) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %192 = load ptr, ptr %37, align 4
  %193 = getelementptr i8, ptr %192, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %194 = load ptr, ptr %37, align 4
  %195 = getelementptr i8, ptr %194, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 61) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %196 = load ptr, ptr %37, align 4
  %197 = getelementptr i8, ptr %196, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %198 = load ptr, ptr %37, align 4
  %199 = getelementptr i8, ptr %198, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %200 = load ptr, ptr %37, align 4
  %201 = getelementptr i8, ptr %200, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 65569) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %202 = load ptr, ptr %37, align 4
  %203 = getelementptr i8, ptr %202, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %204 = load ptr, ptr %37, align 4
  %205 = getelementptr i8, ptr %204, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 223) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %206 = load ptr, ptr %37, align 4
  %207 = getelementptr i8, ptr %206, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 2) #8, !srcloc !9
  %208 = load i32, ptr %6, align 4
  %209 = mul i32 %208, 500
  %210 = lshr i32 %209, 3
  %211 = add nuw nsw i32 %210, 999
  %212 = udiv i32 %211, 1000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %213 = load ptr, ptr %37, align 4
  %214 = getelementptr i8, ptr %213, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %215 = load ptr, ptr %37, align 4
  %216 = getelementptr i8, ptr %215, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 65632) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %217 = load ptr, ptr %37, align 4
  %218 = getelementptr i8, ptr %217, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 0) #8, !srcloc !9
  %219 = and i32 %212, 127
  %220 = or i32 %219, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %221 = load ptr, ptr %37, align 4
  %222 = getelementptr i8, ptr %221, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %223 = load ptr, ptr %37, align 4
  %224 = getelementptr i8, ptr %223, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 2) #8, !srcloc !9
  %225 = load i32, ptr %6, align 4
  %226 = mul i32 %225, 40
  %227 = add i32 %226, 999
  %228 = udiv i32 %227, 1000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %229 = load ptr, ptr %37, align 4
  %230 = getelementptr i8, ptr %229, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %231 = load ptr, ptr %37, align 4
  %232 = getelementptr i8, ptr %231, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 65633) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %233 = load ptr, ptr %37, align 4
  %234 = getelementptr i8, ptr %233, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 0) #8, !srcloc !9
  %235 = and i32 %228, 127
  %236 = or i32 %235, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %237 = load ptr, ptr %37, align 4
  %238 = getelementptr i8, ptr %237, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %239 = load ptr, ptr %37, align 4
  %240 = getelementptr i8, ptr %239, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 2) #8, !srcloc !9
  %241 = load i32, ptr %6, align 4
  %242 = mul i32 %241, 300
  %243 = lshr i32 %242, 3
  %244 = add nuw nsw i32 %243, 999
  %245 = udiv i32 %244, 1000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %246 = load ptr, ptr %37, align 4
  %247 = getelementptr i8, ptr %246, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %248 = load ptr, ptr %37, align 4
  %249 = getelementptr i8, ptr %248, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 65634) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %250 = load ptr, ptr %37, align 4
  %251 = getelementptr i8, ptr %250, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 0) #8, !srcloc !9
  %252 = and i32 %245, 191
  %253 = or i32 %252, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %254 = load ptr, ptr %37, align 4
  %255 = getelementptr i8, ptr %254, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %253) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %256 = load ptr, ptr %37, align 4
  %257 = getelementptr i8, ptr %256, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 2) #8, !srcloc !9
  %258 = load i32, ptr %6, align 4
  %259 = mul i32 %258, 100
  %260 = add i32 %259, 999
  %261 = udiv i32 %260, 1000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %262 = load ptr, ptr %37, align 4
  %263 = getelementptr i8, ptr %262, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %264 = load ptr, ptr %37, align 4
  %265 = getelementptr i8, ptr %264, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 65635) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %266 = load ptr, ptr %37, align 4
  %267 = getelementptr i8, ptr %266, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 0) #8, !srcloc !9
  %268 = and i32 %261, 127
  %269 = or i32 %268, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %270 = load ptr, ptr %37, align 4
  %271 = getelementptr i8, ptr %270, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %272 = load ptr, ptr %37, align 4
  %273 = getelementptr i8, ptr %272, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 2) #8, !srcloc !9
  %274 = load i32, ptr %6, align 4
  %275 = mul i32 %274, 100
  %276 = lshr i32 %275, 3
  %277 = add nuw nsw i32 %276, 999
  %278 = udiv i32 %277, 1000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %279 = load ptr, ptr %37, align 4
  %280 = getelementptr i8, ptr %279, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %281 = load ptr, ptr %37, align 4
  %282 = getelementptr i8, ptr %281, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 65636) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %283 = load ptr, ptr %37, align 4
  %284 = getelementptr i8, ptr %283, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 0) #8, !srcloc !9
  %285 = and i32 %278, 223
  %286 = or i32 %285, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %287 = load ptr, ptr %37, align 4
  %288 = getelementptr i8, ptr %287, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %286) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %289 = load ptr, ptr %37, align 4
  %290 = getelementptr i8, ptr %289, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 2) #8, !srcloc !9
  %291 = load i32, ptr %6, align 4
  %292 = mul i32 %291, 60
  %293 = lshr i32 %292, 3
  %294 = add nuw nsw i32 %293, 999
  %295 = udiv i32 %294, 1000
  %296 = add nuw nsw i32 %295, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %297 = load ptr, ptr %37, align 4
  %298 = getelementptr i8, ptr %297, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %299 = load ptr, ptr %37, align 4
  %300 = getelementptr i8, ptr %299, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 65637) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %301 = load ptr, ptr %37, align 4
  %302 = getelementptr i8, ptr %301, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 0) #8, !srcloc !9
  %303 = and i32 %296, 223
  %304 = or i32 %303, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %305 = load ptr, ptr %37, align 4
  %306 = getelementptr i8, ptr %305, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %306, i32 %304) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %307 = load ptr, ptr %37, align 4
  %308 = getelementptr i8, ptr %307, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 2) #8, !srcloc !9
  %309 = load i32, ptr %6, align 4
  %310 = mul i32 %309, 500
  %311 = lshr i32 %310, 3
  %312 = add nuw nsw i32 %311, 999
  %313 = udiv i32 %312, 1000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %314 = load ptr, ptr %37, align 4
  %315 = getelementptr i8, ptr %314, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %316 = load ptr, ptr %37, align 4
  %317 = getelementptr i8, ptr %316, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 65648) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %318 = load ptr, ptr %37, align 4
  %319 = getelementptr i8, ptr %318, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 0) #8, !srcloc !9
  %320 = and i32 %313, 127
  %321 = or i32 %320, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %322 = load ptr, ptr %37, align 4
  %323 = getelementptr i8, ptr %322, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %321) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %324 = load ptr, ptr %37, align 4
  %325 = getelementptr i8, ptr %324, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 2) #8, !srcloc !9
  %326 = load i32, ptr %6, align 4
  %327 = mul i32 %326, 50
  %328 = add i32 %327, 999
  %329 = udiv i32 %328, 1000
  %330 = add nuw nsw i32 %329, 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %331 = load ptr, ptr %37, align 4
  %332 = getelementptr i8, ptr %331, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %333 = load ptr, ptr %37, align 4
  %334 = getelementptr i8, ptr %333, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %334, i32 65649) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %335 = load ptr, ptr %37, align 4
  %336 = getelementptr i8, ptr %335, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 0) #8, !srcloc !9
  %337 = and i32 %330, 127
  %338 = or i32 %337, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %339 = load ptr, ptr %37, align 4
  %340 = getelementptr i8, ptr %339, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %338) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %341 = load ptr, ptr %37, align 4
  %342 = getelementptr i8, ptr %341, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %342, i32 2) #8, !srcloc !9
  %343 = load i32, ptr %6, align 4
  %344 = mul i32 %343, 140
  %345 = lshr i32 %344, 3
  %346 = add nuw nsw i32 %345, 999
  %347 = udiv i32 %346, 1000
  %348 = add nuw nsw i32 %347, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %349 = load ptr, ptr %37, align 4
  %350 = getelementptr i8, ptr %349, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %350, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %351 = load ptr, ptr %37, align 4
  %352 = getelementptr i8, ptr %351, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %352, i32 65650) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %353 = load ptr, ptr %37, align 4
  %354 = getelementptr i8, ptr %353, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 0) #8, !srcloc !9
  %355 = and i32 %348, 191
  %356 = or i32 %355, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %357 = load ptr, ptr %37, align 4
  %358 = getelementptr i8, ptr %357, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %356) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %359 = load ptr, ptr %37, align 4
  %360 = getelementptr i8, ptr %359, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 2) #8, !srcloc !9
  %361 = load i32, ptr %6, align 4
  %362 = mul i32 %361, 60
  %363 = add i32 %362, 999
  %364 = udiv i32 %363, 1000
  %365 = add nuw nsw i32 %364, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %366 = load ptr, ptr %37, align 4
  %367 = getelementptr i8, ptr %366, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %367, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %368 = load ptr, ptr %37, align 4
  %369 = getelementptr i8, ptr %368, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 65651) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %370 = load ptr, ptr %37, align 4
  %371 = getelementptr i8, ptr %370, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 0) #8, !srcloc !9
  %372 = and i32 %365, 127
  %373 = or i32 %372, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %374 = load ptr, ptr %37, align 4
  %375 = getelementptr i8, ptr %374, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 %373) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %376 = load ptr, ptr %37, align 4
  %377 = getelementptr i8, ptr %376, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %377, i32 2) #8, !srcloc !9
  %378 = load i32, ptr %6, align 4
  %379 = mul i32 %378, 100
  %380 = lshr i32 %379, 3
  %381 = add nuw nsw i32 %380, 999
  %382 = udiv i32 %381, 1000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %383 = load ptr, ptr %37, align 4
  %384 = getelementptr i8, ptr %383, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 2) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %385 = load ptr, ptr %37, align 4
  %386 = getelementptr i8, ptr %385, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 65652) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %387 = load ptr, ptr %37, align 4
  %388 = getelementptr i8, ptr %387, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %388, i32 0) #8, !srcloc !9
  %389 = and i32 %382, 223
  %390 = or i32 %389, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %391 = load ptr, ptr %37, align 4
  %392 = getelementptr i8, ptr %391, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %392, i32 %390) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %393 = load ptr, ptr %37, align 4
  %394 = getelementptr i8, ptr %393, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %394, i32 2) #8, !srcloc !9
  %395 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %395) #8
  tail call void @clk_unprepare(ptr noundef %395) #8
  br label %396

396:                                              ; preds = %36, %33, %22, %1
  %397 = phi i32 [ -22, %22 ], [ %34, %33 ], [ 0, %36 ], [ 0, %1 ]
  ret i32 %397
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_on(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @phy_set_mode_ext(ptr noundef %3, i32 noundef 16, i32 noundef 0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef %4) #8
  br label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 11
  %11 = tail call i32 @phy_configure(ptr noundef %9, ptr noundef %10) #8
  %12 = load ptr, ptr %2, align 4
  %13 = tail call i32 @phy_power_on(ptr noundef %12) #8
  br label %14

14:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @phy_power_off(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_get_lane_mbps(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 19
  store i32 %4, ptr %7, align 4
  %8 = icmp ult i32 %4, 4
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22, i32 noundef %4) #8
  br label %115

11:                                               ; preds = %6
  %12 = getelementptr inbounds [4 x i32], ptr @switch.table.dw_mipi_dsi_get_lane_mbps, i32 0, i32 %4
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %1, align 4
  %15 = add i32 %14, 1998
  %16 = icmp ult i32 %15, 1999
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = add nuw i32 %14, 999
  %19 = sdiv i32 %18, 1000
  %20 = udiv i32 %13, %3
  %21 = mul nsw i32 %19, 10
  %22 = mul nsw i32 %21, %20
  %23 = icmp ult i32 %22, 12000
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = lshr i32 %22, 3
  br label %28

26:                                               ; preds = %17
  %27 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #8
  br label %28

28:                                               ; preds = %26, %24, %11
  %29 = phi i32 [ %25, %24 ], [ 1000, %26 ], [ 1000, %11 ]
  %30 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %1, align 4
  %35 = mul i32 %34, 10000
  %36 = sdiv i32 %35, 8
  %37 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 11
  %38 = tail call i32 @phy_mipi_dphy_get_default_config(i32 noundef %36, i32 noundef %13, i32 noundef %3, ptr noundef %37) #8
  %39 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 16
  store i32 %29, ptr %39, align 4
  store i32 %29, ptr %5, align 4
  br label %115

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_get_rate(ptr noundef %42) #8
  %44 = add i32 %43, 39999999
  %45 = udiv i32 %44, 40000000
  %46 = udiv i32 %43, 5000000
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %113, label %48

48:                                               ; preds = %40
  %49 = mul nuw nsw i32 %29, 1000000
  %50 = zext i32 %49 to i64
  %51 = zext i32 %43 to i64
  br label %52

52:                                               ; preds = %96, %48
  %53 = phi i32 [ -1, %48 ], [ %100, %96 ]
  %54 = phi i32 [ 0, %48 ], [ %99, %96 ]
  %55 = phi i32 [ 0, %48 ], [ %98, %96 ]
  %56 = phi i32 [ %45, %48 ], [ %101, %96 ]
  %57 = phi i32 [ 0, %48 ], [ %97, %96 ]
  %58 = zext i32 %56 to i64
  %59 = mul nuw nsw i64 %58, %50
  %60 = icmp ult i64 %59, 4294967296
  br i1 %60, label %61, label %64, !prof !10

61:                                               ; preds = %52
  %62 = trunc i64 %59 to i32
  %63 = udiv i32 %62, %43
  br label %68

64:                                               ; preds = %52
  %65 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 %59) #9, !srcloc !11
  %66 = extractvalue { i64, i64 } %65, 1
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i32 [ %63, %61 ], [ %67, %64 ]
  %70 = add i32 %69, -513
  %71 = icmp ult i32 %70, -507
  br i1 %71, label %96, label %72

72:                                               ; preds = %68
  %73 = and i32 %69, 1
  %74 = add nuw nsw i32 %73, %69
  %75 = zext i32 %74 to i64
  %76 = mul nuw nsw i64 %75, %51
  %77 = icmp ult i64 %76, 4294967296
  br i1 %77, label %78, label %82, !prof !10

78:                                               ; preds = %72
  %79 = trunc i64 %76 to i32
  %80 = udiv i32 %79, %56
  %81 = zext i32 %80 to i64
  br label %85

82:                                               ; preds = %72
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %56, i64 %76) #9, !srcloc !11
  %84 = extractvalue { i64, i64 } %83, 1
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i64 [ %81, %78 ], [ %84, %82 ]
  %87 = add i64 %86, -1500000001
  %88 = icmp ult i64 %87, -1420000001
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = sub nsw i64 %50, %86
  %91 = tail call i64 @llvm.abs.i64(i64 %90, i1 true)
  %92 = trunc i64 %91 to i32
  %93 = icmp ugt i32 %53, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = trunc i64 %86 to i32
  br label %96

96:                                               ; preds = %94, %89, %85, %68
  %97 = phi i32 [ %57, %68 ], [ %57, %85 ], [ %95, %94 ], [ %57, %89 ]
  %98 = phi i32 [ %55, %68 ], [ %55, %85 ], [ %56, %94 ], [ %55, %89 ]
  %99 = phi i32 [ %54, %68 ], [ %54, %85 ], [ %74, %94 ], [ %54, %89 ]
  %100 = phi i32 [ %53, %68 ], [ %53, %85 ], [ %92, %94 ], [ %53, %89 ]
  %101 = add nuw nsw i32 %56, 1
  %102 = icmp eq i32 %56, %46
  br i1 %102, label %103, label %52

103:                                              ; preds = %96
  %104 = icmp eq i32 %97, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %103
  %106 = add i32 %97, 999999
  %107 = udiv i32 %106, 1000000
  %108 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 16
  store i32 %107, ptr %108, align 4
  store i32 %107, ptr %5, align 4
  %109 = trunc i32 %98 to i16
  %110 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 17
  store i16 %109, ptr %110, align 4
  %111 = trunc i32 %99 to i16
  %112 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 18
  store i16 %111, ptr %112, align 2
  br label %115

113:                                              ; preds = %103, %40
  %114 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #8
  br label %115

115:                                              ; preds = %113, %105, %33, %9
  %116 = phi i32 [ -22, %9 ], [ 0, %33 ], [ 0, %105 ], [ -22, %113 ]
  ret i32 %116
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_get_timing(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %6 = getelementptr [39 x %struct.hstt], ptr @hstt_table, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %5, 1
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %14, label %4

12:                                               ; preds = %4
  %13 = icmp eq i32 %5, 39
  br i1 %13, label %14, label %15

14:                                               ; preds = %12, %9
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ 38, %14 ], [ %5, %12 ]
  %17 = getelementptr [39 x %struct.hstt], ptr @hstt_table, i32 0, i32 %16, i32 1
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %2, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_phy_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2) #8, !srcloc !9
  %7 = zext i8 %1 to i32
  %8 = or i32 %7, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #8, !srcloc !9
  %13 = zext i8 %2 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 2) #8, !srcloc !9
  ret void
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
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_host_attach(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %26

9:                                                ; preds = %2
  store i32 1, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #8
  %10 = load ptr, ptr %0, align 4
  %11 = tail call i32 @component_add(ptr noundef %10, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, i32 noundef %11) #8
  br label %26

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr noundef %0)
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %26

20:                                               ; preds = %15
  %21 = icmp eq ptr %16, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @component_add(ptr noundef nonnull %16, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef nonnull %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, i32 noundef %23) #8
  br label %26

26:                                               ; preds = %25, %22, %20, %18, %13, %7
  %27 = phi i32 [ -16, %7 ], [ %11, %13 ], [ %19, %18 ], [ %23, %25 ], [ 0, %22 ], [ 0, %20 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_host_detach(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr noundef %0)
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @component_del(ptr noundef nonnull %3, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #8
  br label %8

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr %0, align 4
  tail call void @component_del(ptr noundef %9, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #8
  %10 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 12
  store i32 0, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_match_device(ptr noundef %6, ptr noundef %2) #8
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @of_graph_get_remote_node(ptr noundef %10, i32 noundef 1, i32 noundef 0) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 2
  %15 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %39, %13
  %18 = phi ptr [ %40, %39 ], [ %15, %13 ]
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @of_graph_get_remote_node(ptr noundef nonnull %18, i32 noundef 1, i32 noundef 0) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = icmp eq ptr %24, %11
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %18) #8
  tail call void @of_node_put(ptr noundef nonnull %11) #8
  tail call void @of_node_put(ptr noundef nonnull %18) #8
  tail call void @of_node_put(ptr noundef nonnull %11) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 8
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @platform_device_put(ptr noundef nonnull %29) #8
  br label %43

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  br label %43

38:                                               ; preds = %26
  tail call void @of_node_put(ptr noundef nonnull %24) #8
  br label %39

39:                                               ; preds = %38, %23, %17
  %40 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %18, ptr noundef null, ptr noundef %14) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %17

42:                                               ; preds = %39, %13
  tail call void @of_node_put(ptr noundef nonnull %11) #8
  br label %43

43:                                               ; preds = %42, %36, %35, %28, %1
  %44 = phi ptr [ null, %42 ], [ null, %1 ], [ inttoptr (i32 -517 to ptr), %28 ], [ inttoptr (i32 -517 to ptr), %35 ], [ %37, %36 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr noundef %5)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = ptrtoint ptr %6 to i32
  br label %149

10:                                               ; preds = %3
  %11 = icmp eq ptr %6, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.27, ptr noundef null) #8
  %17 = icmp ne ptr %16, null
  %18 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @of_find_property(ptr noundef %19, ptr noundef nonnull @.str.27, ptr noundef null) #8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %17, i1 %21, i1 false
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28) #8
  br label %149

25:                                               ; preds = %12
  %26 = select i1 %17, i1 true, i1 %21
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29) #8
  br label %149

29:                                               ; preds = %25
  br i1 %17, label %32, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 8
  store i8 1, ptr %31, align 4
  br label %149

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 9
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30) #8
  br label %149

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %34, i32 0, i32 8
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 20
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %35, align 4
  %43 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %42, i32 0, i32 20
  %44 = load ptr, ptr %43, align 4
  tail call void @dw_mipi_dsi_set_slave(ptr noundef %41, ptr noundef %44) #8
  tail call void @put_device(ptr noundef nonnull %6) #8
  br label %45

45:                                               ; preds = %38, %10
  %46 = load ptr, ptr %5, align 4
  %47 = tail call i32 @__pm_runtime_resume(ptr noundef %46, i32 noundef 4) #8
  %48 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %49, align 4
  %53 = tail call i32 @__pm_runtime_resume(ptr noundef %52, i32 noundef 4) #8
  br label %54

54:                                               ; preds = %51, %45
  %55 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @clk_prepare(ptr noundef %56) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = tail call i32 @clk_enable(ptr noundef %56) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  tail call void @clk_unprepare(ptr noundef %56) #8
  br label %63

63:                                               ; preds = %62, %54
  %64 = phi i32 [ %60, %62 ], [ %57, %54 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef %64) #8
  br label %140

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @clk_prepare(ptr noundef %67) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = tail call i32 @clk_enable(ptr noundef %67) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  tail call void @clk_unprepare(ptr noundef %67) #8
  br label %74

74:                                               ; preds = %73, %65
  %75 = phi i32 [ %71, %73 ], [ %68, %65 ]
  %76 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %75) #8
  br label %137

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 21
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %79, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %79, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef %81, i32 noundef %87) #8
  %89 = load ptr, ptr %78, align 4
  br label %90

90:                                               ; preds = %83, %77
  %91 = phi ptr [ %89, %83 ], [ %79, %77 ]
  %92 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %91, i32 0, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %91, i32 0, i32 9
  %99 = load i32, ptr %98, align 4
  %100 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef %93, i32 noundef %99) #8
  %101 = load ptr, ptr %78, align 4
  br label %102

102:                                              ; preds = %95, %90
  %103 = phi ptr [ %101, %95 ], [ %91, %90 ]
  %104 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %103, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = tail call i32 @regmap_write(ptr noundef %109, i32 noundef %105, i32 noundef %111) #8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load ptr, ptr %48, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call fastcc void @dw_mipi_dsi_rockchip_config(ptr noundef nonnull %114)
  br label %117

117:                                              ; preds = %116, %113
  %118 = load ptr, ptr %66, align 4
  tail call void @clk_disable(ptr noundef %118) #8
  tail call void @clk_unprepare(ptr noundef %118) #8
  %119 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 1
  %120 = load ptr, ptr %5, align 4
  %121 = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 25
  %122 = load ptr, ptr %121, align 8
  %123 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %2, ptr noundef %122) #8
  %124 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 1, i32 6
  store i32 %123, ptr %124, align 4
  %125 = tail call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %119, i32 noundef 6) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %117
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #8
  br label %137

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 1, i32 11
  store ptr @dw_mipi_dsi_encoder_helper_funcs, ptr %129, align 4
  %130 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 20
  %131 = load ptr, ptr %130, align 4
  %132 = tail call i32 @dw_mipi_dsi_bind(ptr noundef %131, ptr noundef %119) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34, i32 noundef %132) #8
  br label %137

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 23
  store i8 1, ptr %136, align 4
  br label %149

137:                                              ; preds = %134, %127, %74
  %138 = phi i32 [ %75, %74 ], [ %125, %127 ], [ %132, %134 ]
  %139 = load ptr, ptr %55, align 4
  tail call void @clk_disable(ptr noundef %139) #8
  tail call void @clk_unprepare(ptr noundef %139) #8
  br label %140

140:                                              ; preds = %137, %63
  %141 = phi i32 [ %64, %63 ], [ %138, %137 ]
  %142 = load ptr, ptr %5, align 4
  %143 = tail call i32 @__pm_runtime_idle(ptr noundef %142, i32 noundef 5) #8
  %144 = load ptr, ptr %48, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr %144, align 4
  %148 = tail call i32 @__pm_runtime_idle(ptr noundef %147, i32 noundef 5) #8
  br label %149

149:                                              ; preds = %146, %140, %135, %37, %30, %27, %23, %8
  %150 = phi i32 [ %9, %8 ], [ -22, %23 ], [ 0, %135 ], [ -19, %37 ], [ 0, %30 ], [ -22, %27 ], [ %141, %146 ], [ %141, %140 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_rockchip_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 4, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 23
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  tail call void @dw_mipi_dsi_unbind(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %15 = load ptr, ptr %5, align 4
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #8
  %17 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %5, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %9
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #8
  br label %23

23:                                               ; preds = %20, %9, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_set_slave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_rockchip_config(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %5, i32 noundef %11) #8
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ %13, %7 ], [ %3, %1 ]
  %16 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %15, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %17, i32 noundef %23) #8
  %25 = load ptr, ptr %2, align 4
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi ptr [ %25, %19 ], [ %15, %14 ]
  %28 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %27, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %29, i32 noundef %35) #8
  br label %37

37:                                               ; preds = %31, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mipi_dsi_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_encoder_enable(ptr noundef %0) #0 {
  %2 = alloca %struct.of_endpoint, align 4
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #8, !annotation !13
  %7 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %2) #8
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.of_endpoint, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 88
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @clk_prepare(ptr noundef %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @clk_enable(ptr noundef %15) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  call void @clk_unprepare(ptr noundef %15) #8
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %19, %21 ], [ %16, %13 ]
  %24 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %23) #8
  br label %55

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %0, i32 76
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %0, i32 352
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %11, 0
  %33 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %29, i32 0, i32 3
  %34 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %29, i32 0, i32 2
  %35 = select i1 %32, ptr %34, ptr %33
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @regmap_write(ptr noundef %27, i32 noundef %31, i32 noundef %36) #8
  %38 = getelementptr i8, ptr %0, i32 100
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %39, i32 0, i32 21
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %45, i32 0, i32 3
  %49 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %45, i32 0, i32 2
  %50 = select i1 %32, ptr %49, ptr %48
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @regmap_write(ptr noundef %43, i32 noundef %47, i32 noundef %51) #8
  br label %53

53:                                               ; preds = %41, %25
  %54 = load ptr, ptr %14, align 4
  call void @clk_disable(ptr noundef %54) #8
  call void @clk_unprepare(ptr noundef %54) #8
  br label %55

55:                                               ; preds = %53, %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 344
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %8 [
    i32 0, label %9
    i32 1, label %6
    i32 3, label %7
  ]

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  br label %9

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 756, i32 noundef 9, ptr noundef null) #8
  br label %18

9:                                                ; preds = %7, %6, %3
  %10 = phi i32 [ 2, %7 ], [ 1, %6 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 1
  store i32 16, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 100
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 4
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %9, %8
  %19 = phi i32 [ -22, %8 ], [ 0, %16 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #8
  br label %57

10:                                               ; preds = %1
  store i32 2, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #8
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 @component_add(ptr noundef %11, ptr noundef nonnull @dw_mipi_dsi_rockchip_dphy_ops) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %59, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %29

29:                                               ; preds = %28, %20
  %30 = phi i32 [ %23, %20 ], [ %26, %28 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_prepare(ptr noundef %34) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = tail call i32 @clk_enable(ptr noundef %34) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %34) #8
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i32 [ %38, %40 ], [ %35, %32 ]
  %43 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %43) #8
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %52

44:                                               ; preds = %37
  %45 = load ptr, ptr %15, align 4
  %46 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %45, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %0) #8
  %49 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %49) #8
  tail call void @clk_unprepare(ptr noundef %49) #8
  %50 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %50) #8
  tail call void @clk_unprepare(ptr noundef %50) #8
  %51 = icmp slt i32 %48, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44, %41, %29
  %53 = phi i32 [ %30, %29 ], [ %42, %41 ], [ %48, %44 ]
  %54 = load ptr, ptr %3, align 4
  tail call void @component_del(ptr noundef %54, ptr noundef nonnull @dw_mipi_dsi_rockchip_dphy_ops) #8
  br label %55

55:                                               ; preds = %52, %10
  %56 = phi i32 [ %12, %10 ], [ %53, %52 ]
  tail call void @mutex_lock(ptr noundef %4) #8
  store i32 0, ptr %5, align 4
  br label %57

57:                                               ; preds = %55, %8
  %58 = phi i32 [ %56, %55 ], [ -16, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %59

59:                                               ; preds = %57, %44, %14
  %60 = phi i32 [ 0, %44 ], [ 0, %14 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @component_del(ptr noundef %4, ptr noundef nonnull @dw_mipi_dsi_rockchip_dphy_ops) #8
  %5 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 12
  store i32 0, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_power_on(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 15, i32 24
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %7, i32 noundef %9) #8
  %10 = load i32, ptr %8, align 4
  br label %11

11:                                               ; preds = %16, %1
  %12 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %13 = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %10
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 39
  br i1 %18, label %19, label %11

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef %10) #8
  br label %93

21:                                               ; preds = %11
  %22 = load ptr, ptr %3, align 4
  %23 = tail call i32 @__pm_runtime_resume(ptr noundef %22, i32 noundef 4) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, i32 noundef %23) #8
  br label %93

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_prepare(ptr noundef %29) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = tail call i32 @clk_enable(ptr noundef %29) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %29) #8
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i32 [ %33, %35 ], [ %30, %27 ]
  %38 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.39, i32 noundef %37) #8
  br label %89

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @clk_prepare(ptr noundef %41) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = tail call i32 @clk_enable(ptr noundef %41) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  tail call void @clk_unprepare(ptr noundef %41) #8
  br label %48

48:                                               ; preds = %47, %39
  %49 = phi i32 [ %45, %47 ], [ %42, %39 ]
  %50 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %50, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %49) #8
  br label %86

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @clk_prepare(ptr noundef %53) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = tail call i32 @clk_enable(ptr noundef %53) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  tail call void @clk_unprepare(ptr noundef %53) #8
  br label %60

60:                                               ; preds = %59, %51
  %61 = phi i32 [ %57, %59 ], [ %54, %51 ]
  %62 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef %61) #8
  br label %83

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 21
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %65, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = tail call i32 %67(ptr noundef %0) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %73, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.41, i32 noundef %70) #8
  %74 = load ptr, ptr %52, align 4
  tail call void @clk_disable(ptr noundef %74) #8
  tail call void @clk_unprepare(ptr noundef %74) #8
  br label %83

75:                                               ; preds = %69, %63
  %76 = phi i32 [ %70, %69 ], [ 0, %63 ]
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %3, i8 noundef zeroext 52, i8 noundef zeroext 0)
  %77 = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %12, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = shl i8 %78, 1
  %80 = and i8 %79, 126
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %3, i8 noundef zeroext 68, i8 noundef zeroext %80)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %3, i8 noundef zeroext 84, i8 noundef zeroext 0)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %3, i8 noundef zeroext -124, i8 noundef zeroext 0)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %3, i8 noundef zeroext -108, i8 noundef zeroext 0)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %81 = load ptr, ptr %52, align 4
  tail call void @clk_disable(ptr noundef %81) #8
  tail call void @clk_unprepare(ptr noundef %81) #8
  %82 = load ptr, ptr %40, align 4
  tail call void @clk_disable(ptr noundef %82) #8
  tail call void @clk_unprepare(ptr noundef %82) #8
  br label %93

83:                                               ; preds = %72, %60
  %84 = phi i32 [ %61, %60 ], [ %70, %72 ]
  %85 = load ptr, ptr %40, align 4
  tail call void @clk_disable(ptr noundef %85) #8
  tail call void @clk_unprepare(ptr noundef %85) #8
  br label %86

86:                                               ; preds = %83, %48
  %87 = phi i32 [ %49, %48 ], [ %84, %83 ]
  %88 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %88) #8
  tail call void @clk_unprepare(ptr noundef %88) #8
  br label %89

89:                                               ; preds = %86, %36
  %90 = phi i32 [ %37, %36 ], [ %87, %86 ]
  %91 = load ptr, ptr %3, align 4
  %92 = tail call i32 @__pm_runtime_idle(ptr noundef %91, i32 noundef 5) #8
  br label %93

93:                                               ; preds = %89, %75, %25, %19
  %94 = phi i32 [ -22, %19 ], [ %23, %25 ], [ %90, %89 ], [ %76, %75 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_power_off(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %13) #8
  br label %33

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 21
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef %0) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.42, i32 noundef %22) #8
  br label %26

26:                                               ; preds = %24, %21, %15
  %27 = phi i32 [ %22, %24 ], [ %22, %21 ], [ 0, %15 ]
  %28 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %28) #8
  tail call void @clk_unprepare(ptr noundef %28) #8
  %29 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  tail call void @clk_unprepare(ptr noundef %30) #8
  %31 = load ptr, ptr %3, align 4
  %32 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 5) #8
  br label %33

33:                                               ; preds = %26, %12
  %34 = phi i32 [ %13, %12 ], [ %27, %26 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_configure(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %1) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %4, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(100) %8, ptr noundef align 4 dereferenceable(100) %1, i32 100, i1 false)
  %9 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %1, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #9, !srcloc !14
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %12, i32 0) #9, !srcloc !15
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = lshr i64 %14, 18
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %4, i32 0, i32 16
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_dphy_bind(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dw_mipi_dsi_rockchip_dphy_unbind(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 23
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %97, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %16

16:                                               ; preds = %15, %7
  %17 = phi i32 [ %13, %15 ], [ %10, %7 ]
  %18 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %17) #8
  br label %97

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 21
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %21, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %23, i32 noundef %29) #8
  %31 = load ptr, ptr %20, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = phi ptr [ %31, %25 ], [ %21, %19 ]
  %34 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %33, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %33, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %35, i32 noundef %41) #8
  %43 = load ptr, ptr %20, align 4
  br label %44

44:                                               ; preds = %37, %32
  %45 = phi ptr [ %43, %37 ], [ %33, %32 ]
  %46 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %45, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef %47, i32 noundef %53) #8
  br label %55

55:                                               ; preds = %49, %44
  %56 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %3, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %95, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %57, i32 0, i32 21
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %61, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %57, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %61, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef %63, i32 noundef %69) #8
  %71 = load ptr, ptr %60, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = phi ptr [ %71, %65 ], [ %61, %59 ]
  %74 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %73, i32 0, i32 8
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %57, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %73, i32 0, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef %75, i32 noundef %81) #8
  %83 = load ptr, ptr %60, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = phi ptr [ %83, %77 ], [ %73, %72 ]
  %86 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %85, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %57, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %85, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @regmap_write(ptr noundef %91, i32 noundef %87, i32 noundef %93) #8
  br label %95

95:                                               ; preds = %89, %84, %55
  %96 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %96) #8
  tail call void @clk_unprepare(ptr noundef %96) #8
  br label %97

97:                                               ; preds = %95, %16, %1
  %98 = phi i32 [ %17, %16 ], [ 0, %95 ], [ 0, %1 ]
  ret i32 %98
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 2155494527}
!9 = !{i64 2526261}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148398331, i64 2148398611, i64 2148398945, i64 2148399279}
!12 = !{i8 0, i8 2}
!13 = !{!"auto-init"}
!14 = !{i64 912500, i64 912527}
!15 = !{i64 913195, i64 913222, i64 913255, i64 913276, i64 913303, i64 913329}
