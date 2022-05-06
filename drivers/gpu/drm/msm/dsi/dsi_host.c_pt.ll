; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/dsi_host.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi_host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.msm_dsi_host = type { %struct.mipi_dsi_host, ptr, ptr, i32, ptr, i32, [8 x %struct.regulator_bulk_data], i32, [4 x %struct.clk_bulk_data], ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.completion, %struct.completion, %struct.mutex, %struct.mutex, %struct.spinlock, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.msm_dsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.87, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.87 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.msm_dsi_cfg_handler = type { i32, i32, ptr, ptr }
%struct.msm_dsi_config = type { i32, %struct.dsi_reg_config, ptr, i32, [2 x i32], i32 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_host_cfg_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.msm_dsi_phy_clk_request = type { i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013%s: can't find src clock. ret=%d\0A\00", align 1
@__func__.dsi_clk_init_v2 = private unnamed_addr constant [16 x i8] c"dsi_clk_init_v2\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013%s: can't get esc clock parent. ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\013%s: can't get src clock parent. ret=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"byte_intf\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\013%s: can't find byte_intf clock. ret=%d\0A\00", align 1
@__func__.dsi_clk_init_6g_v2 = private unnamed_addr constant [19 x i8] c"dsi_clk_init_6g_v2\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Set clk rates: pclk=%d, byteclk=%lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\013%s: dev_pm_opp_set_rate failed %d\0A\00", align 1
@__func__.dsi_link_clk_set_rate_6g = private unnamed_addr constant [25 x i8] c"dsi_link_clk_set_rate_6g\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\013%s: Failed to set rate pixel clk, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"\013%s: Failed to set rate byte intf clk, %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\013%s: Failed to enable dsi esc clk\0A\00", align 1
@__func__.dsi_link_clk_enable_6g = private unnamed_addr constant [23 x i8] c"dsi_link_clk_enable_6g\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\013%s: Failed to enable dsi byte clk\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to enable dsi pixel clk\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to enable byte intf clk\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"Set clk rates: pclk=%d, byteclk=%lu, esc_clk=%lu, dsi_src_clk=%lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to set rate byte clk, %d\0A\00", align 1
@__func__.dsi_link_clk_set_rate_v2 = private unnamed_addr constant [25 x i8] c"dsi_link_clk_set_rate_v2\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to set rate esc clk, %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to set rate src clk, %d\0A\00", align 1
@__func__.dsi_link_clk_enable_v2 = private unnamed_addr constant [23 x i8] c"dsi_link_clk_enable_v2\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"\013%s: Failed to enable dsi src clk\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"\013%s: mode not set\0A\00", align 1
@__func__.dsi_calc_clk_rate_6g = private unnamed_addr constant [21 x i8] c"dsi_calc_clk_rate_6g\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"esc=%lu, src=%lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"tx_gem\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"\013%s: failed to parse dt\0A\00", align 1
@__func__.msm_dsi_host_init = private unnamed_addr constant [18 x i8] c"msm_dsi_host_init\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"dsi_ctrl\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"DSI CTRL\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\013%s: unable to map Dsi ctrl base\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"\013%s: get config failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\013%s: unable to identify DSI host index\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"\013%s: regulator init failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"\013%s: unable to initialize dsi clks\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"\013%s: alloc rx temp buf failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"invalid OPP table in device tree\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"dsi_isr\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"failed to request IRQ%u: %d\0A\00", align 1
@msm_dsi_host_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"&msm_host->dev_mutex\00", align 1
@msm_dsi_host_init.__key.37 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"&msm_host->cmd_mutex\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"dsi_drm_work\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"Dsi Host %d initialized\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"\013%s: alloc tx gem obj failed, %d\0A\00", align 1
@__func__.msm_dsi_host_modeset_init = private unnamed_addr constant [26 x i8] c"msm_dsi_host_modeset_init\00", align 1
@dsi_host_ops = internal constant %struct.mipi_dsi_host_ops { ptr @dsi_host_attach, ptr @dsi_host_detach, ptr @dsi_host_transfer }, align 4
@.str.43 = private unnamed_addr constant [32 x i8] c"rlen=%d pkt_size=%d rx_byte=%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"\013%s: Set max pkt size failed, %d\0A\00", align 1
@__func__.msm_dsi_host_cmd_rx = private unnamed_addr constant [20 x i8] c"msm_dsi_host_cmd_rx\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"\013%s: Read cmd Tx failed, %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"buf=%p dlen=%d diff=%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"\013%s: rx ACK_ERR_PACLAGE\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"\014%s:Invalid response cmd\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.49 = private unnamed_addr constant [35 x i8] c"\013%s: unable to calc clk rate, %d\0A\00", align 1
@__func__.msm_dsi_host_get_phy_clk_req = private unnamed_addr constant [29 x i8] c"msm_dsi_host_get_phy_clk_req\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"dsi host already on\0A\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"\013%s:Failed to enable vregs.ret=%d\0A\00", align 1
@__func__.msm_dsi_host_power_on = private unnamed_addr constant [22 x i8] c"msm_dsi_host_power_on\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"\013%s: failed to enable link clocks. ret=%d\0A\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"\013%s: failed to set pinctrl default state, %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"dsi host already off\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"\013%s: cannot duplicate mode\0A\00", align 1
@__func__.msm_dsi_host_set_display_mode = private unnamed_addr constant [30 x i8] c"msm_dsi_host_set_display_mode\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"dsi%d_ctrl\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"\013%s: forcing mdss_dsi lanes to 1\0A\00", align 1
@__func__.dsi_calc_pclk = private unnamed_addr constant [14 x i8] c"dsi_calc_pclk\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"pclk=%lu, bclk=%lu\0A\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"%s: no endpoint\0A\00", align 1
@__func__.dsi_host_parse_dt = private unnamed_addr constant [18 x i8] c"dsi_host_parse_dt\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"*ERROR* %s: invalid lane configuration %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"%s: no valid device\0A\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"syscon-sfpb\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"*ERROR* %s: failed to get sfpb regmap\0A\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"data-lanes\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"failed to find data lane mapping, using default\0A\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"*ERROR* bad number of data lanes\0A\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"*ERROR* failed to read lane data\0A\00", align 1
@supported_data_lane_swaps = internal unnamed_addr constant [8 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 3, i32 0, i32 1, i32 2], [4 x i32] [i32 2, i32 3, i32 0, i32 1], [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 1, i32 0, i32 3, i32 2], [4 x i32] [i32 2, i32 1, i32 0, i32 3], [4 x i32] [i32 3, i32 2, i32 1, i32 0]], align 4
@.str.70 = private unnamed_addr constant [36 x i8] c"*ERROR* bad physical lane entry %u\0A\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"\013%s: cannot get interface clock\0A\00", align 1
@__func__.dsi_get_config = private unnamed_addr constant [15 x i8] c"dsi_get_config\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"\013%s: unable to enable ahb_clk\0A\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"\013%s: Invalid version\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"%s: Version %x:%x\0A\0A\00", align 1
@.str.76 = private unnamed_addr constant [40 x i8] c"\013%s: failed to init regulator, ret=%d\0A\00", align 1
@__func__.dsi_regulator_init = private unnamed_addr constant [19 x i8] c"dsi_regulator_init\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"Unable to get clocks, ret = %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"\013%s: can't find dsi_byte clock. ret=%d\0A\00", align 1
@__func__.dsi_clk_init = private unnamed_addr constant [13 x i8] c"dsi_clk_init\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"\013%s: can't find dsi_pixel clock. ret=%d\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.82 = private unnamed_addr constant [40 x i8] c"\013%s: can't find dsi_esc clock. ret=%d\0A\00", align 1
@.str.83 = private unnamed_addr constant [41 x i8] c"\013%s: can't find byte_clk clock. ret=%d\0A\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"\013%s: can't find pixel_clk clock. ret=%d\0A\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"isr=0x%x, id=%d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@dsi_err_worker._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.dsi_err_worker = private unnamed_addr constant [15 x i8] c"dsi_err_worker\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"\013%s: status=%x\0A\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"id=%d\0A\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"disp-enable\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"cannot get disp-enable-gpios %ld\0A\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"disp-te\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"cannot get disp-te-gpios %ld\0A\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"intr=%x enable=%d\0A\00", align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"\013%s: failed to add cmd type = 0x%x\0A\00", align 1
@__func__.dsi_cmds2buf_tx = private unnamed_addr constant [16 x i8] c"dsi_cmds2buf_tx\00", align 1
@.str.95 = private unnamed_addr constant [47 x i8] c"\013%s: cmd cannot fit into BLLP period, len=%d\0A\00", align 1
@.str.96 = private unnamed_addr constant [56 x i8] c"\013%s: cmd dma tx failed, type=0x%x, data0=0x%x, len=%d\0A\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"\013%s: create packet failed, %d\0A\00", align 1
@__func__.dsi_cmd_dma_add = private unnamed_addr constant [16 x i8] c"dsi_cmd_dma_add\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"\013%s: packet size is too big\0A\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"\013%s: get vaddr failed, %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"\013%s: failed to get iova: %d\0A\00", align 1
@__func__.dsi_cmd_dma_tx = private unnamed_addr constant [15 x i8] c"dsi_cmd_dma_tx\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"ret=%d\0A\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"*ERROR* wait for video done timed out\0A\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"data = 0x%x and ntohl(data) = 0x%x\0A\00", align 1
@.str.104 = private unnamed_addr constant [52 x i8] c"\013%s: read data does not match with rx_buf len %zu\0A\00", align 1
@__func__.dsi_short_read1_resp = private unnamed_addr constant [21 x i8] c"dsi_short_read1_resp\00", align 1
@__func__.dsi_short_read2_resp = private unnamed_addr constant [21 x i8] c"dsi_short_read2_resp\00", align 1
@.str.105 = private unnamed_addr constant [39 x i8] c"\013regulator %d set op mode failed, %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [31 x i8] c"\013regulator enable failed, %d\0A\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"lane number=%d\0A\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"Video test pattern setup done\0A\0A\00", align 1
@.str.109 = private unnamed_addr constant [30 x i8] c"Cmd test pattern setup done\0A\0A\00", align 1
@switch.table.dsi_ctrl_config = private unnamed_addr constant [3 x i32] [i32 7, i32 7, i32 6], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_clk_init_v2(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @msm_clk_get(ptr noundef %3, ptr noundef nonnull @.str) #9
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 18
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = ptrtoint ptr %4 to i32
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dsi_clk_init_v2, i32 noundef %8) #10
  store ptr null, ptr %5, align 4
  br label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @clk_get_parent(ptr noundef %12) #9
  %14 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 19
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dsi_clk_init_v2, i32 noundef -19) #10
  br label %25

18:                                               ; preds = %10
  %19 = load ptr, ptr %5, align 4
  %20 = tail call ptr @clk_get_parent(ptr noundef %19) #9
  %21 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 20
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dsi_clk_init_v2, i32 noundef -19) #10
  br label %25

25:                                               ; preds = %23, %18, %16, %7
  %26 = phi i32 [ %8, %7 ], [ -19, %16 ], [ 0, %18 ], [ -19, %23 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_clk_init_6g_v2(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @msm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 14
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = ptrtoint ptr %4 to i32
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dsi_clk_init_6g_v2, i32 noundef %8) #10
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_runtime_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %5, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %5, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %11, ptr noundef %12) #9
  tail call void @clk_bulk_unprepare(i32 noundef %11, ptr noundef %12) #9
  br label %13

13:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_runtime_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %5, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %5, i32 0, i32 8
  %13 = tail call i32 @clk_bulk_prepare(i32 noundef %11, ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = tail call i32 @clk_bulk_enable(i32 noundef %11, ptr noundef %12) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_bulk_unprepare(i32 noundef %11, ptr noundef %12) #9
  br label %19

19:                                               ; preds = %18, %15, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %13, %9 ], [ %16, %18 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_set_rate_6g(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %6) #9
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %5, align 4
  %11 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %9, i32 noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dsi_link_clk_set_rate_6g, i32 noundef %11) #10
  br label %39

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dsi_link_clk_set_rate_6g, i32 noundef %20) #10
  br label %39

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 48
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = load i32, ptr %5, align 4
  %32 = xor i8 %30, 1
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %31, %33
  %35 = tail call i32 @clk_set_rate(ptr noundef nonnull %26, i32 noundef %34) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dsi_link_clk_set_rate_6g, i32 noundef %35) #10
  br label %39

39:                                               ; preds = %37, %28, %24, %22, %13
  %40 = phi i32 [ %11, %13 ], [ %20, %22 ], [ %35, %37 ], [ 0, %28 ], [ 0, %24 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_enable_6g(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %7, %9 ], [ %4, %1 ]
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dsi_link_clk_enable_6g) #10
  br label %56

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %19, %21 ], [ %16, %13 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dsi_link_clk_enable_6g) #10
  br label %53

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = tail call i32 @clk_enable(ptr noundef %27) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %31, %33 ], [ %28, %25 ]
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dsi_link_clk_enable_6g) #10
  br label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 14
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call i32 @clk_enable(ptr noundef %39) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #9
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %43, %45 ], [ %40, %37 ]
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dsi_link_clk_enable_6g) #10
  %49 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %49) #9
  tail call void @clk_unprepare(ptr noundef %49) #9
  br label %50

50:                                               ; preds = %46, %34
  %51 = phi i32 [ %35, %34 ], [ %47, %46 ]
  %52 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %52) #9
  tail call void @clk_unprepare(ptr noundef %52) #9
  br label %53

53:                                               ; preds = %50, %22
  %54 = phi i32 [ %23, %22 ], [ %51, %50 ]
  %55 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %55) #9
  tail call void @clk_unprepare(ptr noundef %55) #9
  br label %56

56:                                               ; preds = %53, %42, %10
  %57 = phi i32 [ %11, %10 ], [ %54, %53 ], [ 0, %42 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_set_rate_v2(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 21
  %10 = load i32, ptr %9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #9
  %11 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %5, align 4
  %14 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dsi_link_clk_set_rate_v2, i32 noundef %14) #10
  br label %43

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %7, align 4
  %22 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dsi_link_clk_set_rate_v2, i32 noundef %22) #10
  br label %43

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %9, align 4
  %30 = tail call i32 @clk_set_rate(ptr noundef %28, i32 noundef %29) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dsi_link_clk_set_rate_v2, i32 noundef %30) #10
  br label %43

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 16
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @clk_set_rate(ptr noundef %36, i32 noundef %38) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dsi_link_clk_set_rate_v2, i32 noundef %39) #10
  br label %43

43:                                               ; preds = %41, %34, %32, %24, %16
  %44 = phi i32 [ %14, %16 ], [ %22, %24 ], [ %30, %32 ], [ %39, %41 ], [ 0, %34 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_enable_v2(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %7, %9 ], [ %4, %1 ]
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dsi_link_clk_enable_v2) #10
  br label %56

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %19, %21 ], [ %16, %13 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dsi_link_clk_enable_v2) #10
  br label %53

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 18
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = tail call i32 @clk_enable(ptr noundef %27) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %31, %33 ], [ %28, %25 ]
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dsi_link_clk_enable_v2) #10
  br label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call i32 @clk_enable(ptr noundef %39) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #9
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %43, %45 ], [ %40, %37 ]
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dsi_link_clk_enable_v2) #10
  %49 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %49) #9
  tail call void @clk_unprepare(ptr noundef %49) #9
  br label %50

50:                                               ; preds = %46, %34
  %51 = phi i32 [ %35, %34 ], [ %47, %46 ]
  %52 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %52) #9
  tail call void @clk_unprepare(ptr noundef %52) #9
  br label %53

53:                                               ; preds = %50, %22
  %54 = phi i32 [ %23, %22 ], [ %51, %50 ]
  %55 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %55) #9
  tail call void @clk_unprepare(ptr noundef %55) #9
  br label %56

56:                                               ; preds = %53, %42, %10
  %57 = phi i32 [ %11, %10 ], [ %54, %53 ], [ 0, %42 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsi_link_clk_disable_6g(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %4, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsi_link_clk_disable_v2(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_calc_clk_rate_6g(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dsi_calc_clk_rate_6g) #10
  br label %13

8:                                                ; preds = %2
  tail call fastcc void @dsi_calc_pclk(ptr noundef %0, i1 noundef zeroext %1)
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_get_rate(ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 17
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ 0, %8 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsi_calc_pclk(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 43
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 44
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 18, i32 24
  %9 = icmp eq i32 %6, 3
  %10 = select i1 %9, i32 16, i32 %8
  %11 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, 1000
  %15 = zext i1 %1 to i32
  %16 = lshr exact i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = zext i32 %10 to i64
  %19 = mul nuw nsw i64 %17, %18
  %20 = and i32 %4, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.dsi_calc_pclk) #10
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ 1, %22 ], [ %4, %2 ]
  %26 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 48
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  %29 = and i32 %25, 255
  br i1 %28, label %40, label %30

30:                                               ; preds = %24
  %31 = shl nuw nsw i32 %29, 4
  %32 = icmp ult i64 %19, 4294967296
  br i1 %32, label %33, label %36, !prof !9

33:                                               ; preds = %30
  %34 = trunc i64 %19 to i32
  %35 = udiv i32 %34, %31
  br label %50

36:                                               ; preds = %30
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %19) #11, !srcloc !10
  %38 = extractvalue { i64, i64 } %37, 1
  %39 = trunc i64 %38 to i32
  br label %50

40:                                               ; preds = %24
  %41 = shl nuw nsw i32 %29, 3
  %42 = icmp ult i64 %19, 4294967296
  br i1 %42, label %43, label %46, !prof !9

43:                                               ; preds = %40
  %44 = trunc i64 %19 to i32
  %45 = udiv i32 %44, %41
  br label %50

46:                                               ; preds = %40
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %19) #11, !srcloc !10
  %48 = extractvalue { i64, i64 } %47, 1
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %46, %43, %36, %33
  %51 = phi i32 [ %45, %43 ], [ %49, %46 ], [ %35, %33 ], [ %39, %36 ]
  %52 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 16
  store i32 %16, ptr %52, align 4
  %53 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 15
  store i32 %51, ptr %53, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef %16, i32 noundef %51) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_calc_clk_rate_v2(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 44
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 18, i32 24
  %7 = icmp eq i32 %4, 3
  %8 = select i1 %7, i32 16, i32 %6
  tail call fastcc void @dsi_calc_pclk(ptr noundef %0, i1 noundef zeroext %1)
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 1000
  %13 = zext i1 %1 to i32
  %14 = lshr exact i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = zext i32 %8 to i64
  %17 = mul nuw nsw i64 %15, %16
  %18 = lshr exact i64 %17, 3
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 21
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1000000
  %24 = icmp ult i32 %23, 320000000
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = udiv i32 %22, 1000000
  %27 = trunc i32 %26 to i16
  %28 = add nuw nsw i16 %27, 19
  %29 = udiv i16 %28, 20
  %30 = zext i16 %29 to i32
  %31 = udiv i32 %22, %30
  %32 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 17
  store i32 %31, ptr %32, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %31, i32 noundef %19) #9
  br label %33

33:                                               ; preds = %25, %2
  %34 = phi i32 [ 0, %25 ], [ -22, %2 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_tx_buf_alloc_6g(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !11
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_kms, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 34
  %13 = call ptr @msm_gem_kernel_new(ptr noundef %5, i32 noundef %1, i32 noundef 131072, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %3) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  store ptr null, ptr %12, align 4
  %16 = ptrtoint ptr %13 to i32
  br label %23

17:                                               ; preds = %2
  %18 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %18, ptr noundef nonnull @.str.21) #9
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 37
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = phi i32 [ %16, %15 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_tx_buf_alloc_v2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 36
  %8 = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef %1, ptr noundef %7, i32 noundef 3264, i32 noundef 0) #9
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 35
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 37
  store i32 %1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ 0, %11 ], [ -12, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsi_tx_buf_get_6g(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @msm_gem_get_vaddr(ptr noundef %3) #9
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dsi_tx_buf_get_v2(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsi_tx_buf_put_6g(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 4
  tail call void @msm_gem_put_vaddr(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_dma_base_get_6g(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 34
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_kms, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @msm_gem_get_and_pin_iova(ptr noundef %10, ptr noundef %14, ptr noundef nonnull %1) #9
  br label %16

16:                                               ; preds = %4, %2
  %17 = phi i32 [ %15, %4 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dsi_dma_base_get_v2(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 36
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %1, align 8
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 420, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %359, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 1
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 4
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %13, i32 noundef 1, i32 noundef -1) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.dsi_host_parse_dt) #9
  br label %129

17:                                               ; preds = %9
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #9, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !11
  %20 = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.66, ptr noundef nonnull %3) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.67) #9
  %23 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 47
  store i32 4, ptr %23, align 4
  br label %106

24:                                               ; preds = %17
  %25 = load i32, ptr %3, align 4
  %26 = lshr i32 %25, 2
  %27 = add i32 %25, -20
  %28 = icmp ult i32 %27, -16
  br i1 %28, label %101, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 47
  store i32 %26, ptr %30, align 4
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.66, ptr noundef nonnull %2, i32 noundef %26, i32 noundef 0) #9
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %101

33:                                               ; preds = %29
  %34 = call i32 @llvm.umax.i32(i32 %26, i32 1) #9
  %35 = icmp ult i32 %25, 8
  %36 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %37 = icmp eq i32 %34, 2
  %38 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %39 = icmp eq i32 %34, 3
  %40 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  br label %41

41:                                               ; preds = %98, %33
  %42 = phi i32 [ 0, %33 ], [ %99, %98 ]
  %43 = getelementptr [8 x [4 x i32]], ptr @supported_data_lane_swaps, i32 0, i32 %42
  %44 = load i32, ptr %2, align 4
  %45 = icmp ugt i32 %44, 3
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.70, i32 noundef %44) #9
  %47 = load i32, ptr %2, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi i32 [ %47, %46 ], [ %44, %41 ]
  %50 = getelementptr i32, ptr %43, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = xor i1 %52, true
  %54 = select i1 %53, i1 true, i1 %35
  %55 = select i1 %53, i32 0, i32 %34
  br i1 %54, label %93, label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %36, align 4
  %58 = icmp ugt i32 %57, 3
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.70, i32 noundef %57) #9
  %60 = load i32, ptr %36, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %60, %59 ], [ %57, %56 ]
  %63 = getelementptr i32, ptr %43, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  %66 = xor i1 %65, true
  %67 = select i1 %66, i1 true, i1 %37
  %68 = select i1 %66, i32 1, i32 %34
  br i1 %67, label %93, label %69

69:                                               ; preds = %61
  %70 = load i32, ptr %38, align 4
  %71 = icmp ugt i32 %70, 3
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.70, i32 noundef %70) #9
  %73 = load i32, ptr %38, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %73, %72 ], [ %70, %69 ]
  %76 = getelementptr i32, ptr %43, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 2
  %79 = xor i1 %78, true
  %80 = select i1 %79, i1 true, i1 %39
  %81 = select i1 %79, i32 2, i32 %34
  br i1 %80, label %93, label %82

82:                                               ; preds = %74
  %83 = load i32, ptr %40, align 4
  %84 = icmp ugt i32 %83, 3
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.70, i32 noundef %83) #9
  %86 = load i32, ptr %40, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %86, %85 ], [ %83, %82 ]
  %89 = getelementptr i32, ptr %43, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 3
  %92 = select i1 %91, i32 %34, i32 3
  br label %93

93:                                               ; preds = %87, %74, %61, %48
  %94 = phi i32 [ %55, %48 ], [ %68, %61 ], [ %81, %74 ], [ %92, %87 ]
  %95 = icmp eq i32 %94, %26
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 46
  store i32 %42, ptr %97, align 4
  br label %106

98:                                               ; preds = %93
  %99 = add nuw nsw i32 %42, 1
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %104, label %41

101:                                              ; preds = %29, %24
  %102 = phi ptr [ @.str.68, %24 ], [ @.str.69, %29 ]
  %103 = phi i32 [ -22, %24 ], [ %31, %29 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.61, ptr noundef nonnull %102) #9
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i32 [ %103, %101 ], [ -22, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.dsi_host_parse_dt, i32 noundef %105) #9
  br label %121

106:                                              ; preds = %96, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %107 = call ptr @of_graph_get_remote_node(ptr noundef %13, i32 noundef 1, i32 noundef 0) #9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.dsi_host_parse_dt) #9
  br label %121

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 41
  store ptr %107, ptr %111, align 4
  %112 = call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.64, ptr noundef null) #9
  %113 = icmp eq ptr %112, null
  br i1 %113, label %123, label %114

114:                                              ; preds = %110
  %115 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %13, ptr noundef nonnull @.str.64) #9
  %116 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 39
  store ptr %115, ptr %116, align 4
  %117 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.dsi_host_parse_dt) #9
  %119 = load ptr, ptr %116, align 4
  %120 = ptrtoint ptr %119 to i32
  br label %123

121:                                              ; preds = %109, %104
  %122 = phi i32 [ -19, %109 ], [ -22, %104 ]
  call void @of_node_put(ptr noundef nonnull %14) #9
  br label %126

123:                                              ; preds = %118, %114, %110
  %124 = phi i32 [ %120, %118 ], [ 0, %114 ], [ 0, %110 ]
  call void @of_node_put(ptr noundef nonnull %107) #9
  call void @of_node_put(ptr noundef nonnull %14) #9
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123, %121
  %127 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.msm_dsi_host_init) #10
  br label %359

129:                                              ; preds = %123, %16
  %130 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 5
  %131 = call ptr @msm_ioremap_size(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %130) #9
  %132 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 4
  store ptr %131, ptr %132, align 4
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.msm_dsi_host_init) #10
  %136 = load ptr, ptr %132, align 4
  %137 = ptrtoint ptr %136 to i32
  br label %359

138:                                              ; preds = %129
  call void @pm_runtime_enable(ptr noundef %6) #9
  %139 = load ptr, ptr %10, align 4
  %140 = getelementptr inbounds %struct.platform_device, ptr %139, i32 0, i32 3
  %141 = call ptr @msm_clk_get(ptr noundef %139, ptr noundef nonnull @.str.71) #9
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.dsi_get_config) #10
  br label %183

145:                                              ; preds = %138
  %146 = call i32 @__pm_runtime_resume(ptr noundef %140, i32 noundef 4) #9
  %147 = call i32 @clk_prepare(ptr noundef %141) #9
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = call i32 @clk_enable(ptr noundef %141) #9
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  call void @clk_unprepare(ptr noundef %141) #9
  br label %153

153:                                              ; preds = %152, %145
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.dsi_get_config) #10
  %155 = call i32 @__pm_runtime_idle(ptr noundef %140, i32 noundef 4) #9
  br label %183

156:                                              ; preds = %149
  %157 = load ptr, ptr %132, align 4
  %158 = getelementptr i8, ptr %157, i32 496
  %159 = call i32 @msm_readl(ptr noundef %158) #9
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = icmp ult i32 %159, 50331648
  br i1 %162, label %163, label %172

163:                                              ; preds = %161
  %164 = lshr i32 %159, 24
  br label %174

165:                                              ; preds = %156
  %166 = getelementptr i8, ptr %157, i32 500
  %167 = call i32 @msm_readl(ptr noundef %166) #9
  %168 = and i32 %167, -16777216
  %169 = icmp eq i32 %168, 50331648
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = call i32 @msm_readl(ptr noundef %157) #9
  br label %174

172:                                              ; preds = %165, %161
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.dsi_get_config) #10
  br label %178

174:                                              ; preds = %170, %163
  %175 = phi i32 [ %164, %163 ], [ 3, %170 ]
  %176 = phi i32 [ 0, %163 ], [ %171, %170 ]
  %177 = call ptr @msm_dsi_cfg_get(i32 noundef %175, i32 noundef %176) #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.dsi_get_config, i32 noundef %175, i32 noundef %176) #9
  br label %178

178:                                              ; preds = %174, %172
  %179 = phi ptr [ null, %172 ], [ %177, %174 ]
  call void @clk_disable(ptr noundef %141) #9
  call void @clk_unprepare(ptr noundef %141) #9
  %180 = call i32 @__pm_runtime_idle(ptr noundef %140, i32 noundef 4) #9
  %181 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 24
  store ptr %179, ptr %181, align 4
  %182 = icmp eq ptr %179, null
  br i1 %182, label %185, label %187

183:                                              ; preds = %153, %143
  %184 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 24
  store ptr null, ptr %184, align 4
  br label %185

185:                                              ; preds = %183, %178
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.msm_dsi_host_init) #10
  br label %359

187:                                              ; preds = %178
  %188 = load ptr, ptr %10, align 4
  %189 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %179, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = call ptr @platform_get_resource_byname(ptr noundef %188, i32 noundef 512, ptr noundef nonnull @.str.23) #9
  %192 = icmp eq ptr %191, null
  br i1 %192, label %207, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.msm_dsi_config, ptr %190, i32 0, i32 5
  %195 = load i32, ptr %194, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load i32, ptr %191, align 4
  br label %199

199:                                              ; preds = %204, %197
  %200 = phi i32 [ 0, %197 ], [ %205, %204 ]
  %201 = getelementptr %struct.msm_dsi_config, ptr %190, i32 0, i32 4, i32 %200
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, %198
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = add nuw nsw i32 %200, 1
  %206 = icmp eq i32 %205, %195
  br i1 %206, label %207, label %199

207:                                              ; preds = %204, %193, %187
  %208 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 3
  store i32 -22, ptr %208, align 4
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.msm_dsi_host_init) #10
  br label %359

210:                                              ; preds = %199
  %211 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 3
  store i32 %200, ptr %211, align 4
  %212 = load ptr, ptr %181, align 4
  %213 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 4
  %215 = load i32, ptr %214, align 4
  %216 = load ptr, ptr %132, align 4
  %217 = getelementptr i8, ptr %216, i32 %215
  store ptr %217, ptr %132, align 4
  %218 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 6
  %219 = load ptr, ptr %213, align 4
  %220 = getelementptr inbounds %struct.msm_dsi_config, ptr %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.msm_dsi_config, ptr %219, i32 0, i32 1, i32 1
  %222 = load i32, ptr %220, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %224, %210
  %225 = phi i32 [ %228, %224 ], [ 0, %210 ]
  %226 = getelementptr %struct.dsi_reg_entry, ptr %221, i32 %225
  %227 = getelementptr %struct.regulator_bulk_data, ptr %218, i32 %225
  store ptr %226, ptr %227, align 4
  %228 = add nuw nsw i32 %225, 1
  %229 = icmp eq i32 %228, %222
  br i1 %229, label %230, label %224

230:                                              ; preds = %224, %210
  %231 = load ptr, ptr %10, align 4
  %232 = getelementptr inbounds %struct.platform_device, ptr %231, i32 0, i32 3
  %233 = call i32 @devm_regulator_bulk_get(ptr noundef %232, i32 noundef %222, ptr noundef %218) #9
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.dsi_regulator_init, i32 noundef %233) #10
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.msm_dsi_host_init) #10
  br label %359

238:                                              ; preds = %230
  %239 = load ptr, ptr %10, align 4
  %240 = load ptr, ptr %181, align 4
  %241 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %240, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.msm_dsi_config, ptr %242, i32 0, i32 3
  %244 = load i32, ptr %243, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.msm_dsi_config, ptr %242, i32 0, i32 2
  br label %248

248:                                              ; preds = %248, %246
  %249 = phi i32 [ 0, %246 ], [ %254, %248 ]
  %250 = load ptr, ptr %247, align 4
  %251 = getelementptr ptr, ptr %250, i32 %249
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr %struct.msm_dsi_host, ptr %7, i32 0, i32 8, i32 %249
  store ptr %252, ptr %253, align 4
  %254 = add nuw nsw i32 %249, 1
  %255 = load i32, ptr %243, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %248, label %257

257:                                              ; preds = %248, %238
  %258 = phi i32 [ %244, %238 ], [ %255, %248 ]
  %259 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 7
  store i32 %258, ptr %259, align 4
  %260 = getelementptr inbounds %struct.platform_device, ptr %239, i32 0, i32 3
  %261 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 8
  %262 = call i32 @devm_clk_bulk_get(ptr noundef %260, i32 noundef %258, ptr noundef %261) #9
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.77, i32 noundef %262) #10
  br label %313

265:                                              ; preds = %257
  %266 = call ptr @msm_clk_get(ptr noundef %239, ptr noundef nonnull @.str.31) #9
  %267 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 9
  store ptr %266, ptr %267, align 4
  %268 = icmp ugt ptr %266, inttoptr (i32 -4096 to ptr)
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = ptrtoint ptr %266 to i32
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.dsi_clk_init, i32 noundef %270) #10
  store ptr null, ptr %267, align 4
  br label %310

272:                                              ; preds = %265
  %273 = call ptr @msm_clk_get(ptr noundef %239, ptr noundef nonnull @.str.79) #9
  %274 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 11
  store ptr %273, ptr %274, align 4
  %275 = icmp ugt ptr %273, inttoptr (i32 -4096 to ptr)
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = ptrtoint ptr %273 to i32
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.dsi_clk_init, i32 noundef %277) #10
  store ptr null, ptr %274, align 4
  br label %310

279:                                              ; preds = %272
  %280 = call ptr @msm_clk_get(ptr noundef %239, ptr noundef nonnull @.str.81) #9
  %281 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 10
  store ptr %280, ptr %281, align 4
  %282 = icmp ugt ptr %280, inttoptr (i32 -4096 to ptr)
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = ptrtoint ptr %280 to i32
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.dsi_clk_init, i32 noundef %284) #10
  store ptr null, ptr %281, align 4
  br label %310

286:                                              ; preds = %279
  %287 = load ptr, ptr %267, align 4
  %288 = call ptr @clk_get_parent(ptr noundef %287) #9
  %289 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 12
  store ptr %288, ptr %289, align 4
  %290 = icmp ugt ptr %288, inttoptr (i32 -4096 to ptr)
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = ptrtoint ptr %288 to i32
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.dsi_clk_init, i32 noundef %292) #10
  br label %310

294:                                              ; preds = %286
  %295 = load ptr, ptr %274, align 4
  %296 = call ptr @clk_get_parent(ptr noundef %295) #9
  %297 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 13
  store ptr %296, ptr %297, align 4
  %298 = icmp ugt ptr %296, inttoptr (i32 -4096 to ptr)
  br i1 %298, label %299, label %302

299:                                              ; preds = %294
  %300 = ptrtoint ptr %296 to i32
  %301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.dsi_clk_init, i32 noundef %300) #10
  br label %310

302:                                              ; preds = %294
  %303 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %240, i32 0, i32 3
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %304, i32 0, i32 3
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %310, label %308

308:                                              ; preds = %302
  %309 = call i32 %306(ptr noundef %7) #9
  br label %310

310:                                              ; preds = %308, %302, %299, %291, %283, %276, %269
  %311 = phi i32 [ %270, %269 ], [ %277, %276 ], [ %284, %283 ], [ %292, %291 ], [ %300, %299 ], [ %309, %308 ], [ %262, %302 ]
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %310, %264
  %314 = phi i32 [ %262, %264 ], [ %311, %310 ]
  %315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.msm_dsi_host_init) #10
  br label %359

316:                                              ; preds = %310
  %317 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 4096, i32 noundef 3520) #9
  %318 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 38
  store ptr %317, ptr %318, align 4
  %319 = icmp eq ptr %317, null
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.msm_dsi_host_init) #10
  br label %359

322:                                              ; preds = %316
  %323 = call i32 @devm_pm_opp_set_clkname(ptr noundef %6, ptr noundef nonnull @.str.31) #9
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %359

325:                                              ; preds = %322
  %326 = call i32 @devm_pm_opp_of_add_table(ptr noundef %6) #9
  switch i32 %326, label %327 [
    i32 -19, label %328
    i32 0, label %328
  ]

327:                                              ; preds = %325
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32) #10
  br label %359

328:                                              ; preds = %325, %325
  %329 = load ptr, ptr %12, align 8
  %330 = call i32 @irq_of_parse_and_map(ptr noundef %329, i32 noundef 0) #9
  %331 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 53
  store i32 %330, ptr %331, align 4
  %332 = icmp slt i32 %330, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %330) #10
  br label %359

334:                                              ; preds = %328
  %335 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %330, ptr noundef nonnull @dsi_host_irq, ptr noundef null, i32 noundef 532484, ptr noundef nonnull @.str.34, ptr noundef %7) #9
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %334
  %338 = load i32, ptr %331, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.35, i32 noundef %338, i32 noundef %335) #10
  br label %359

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 25
  store i32 0, ptr %340, align 4
  %341 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 25, i32 1
  call void @__init_swait_queue_head(ptr noundef %341, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_completion.__key) #9
  %342 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 26
  store i32 0, ptr %342, align 4
  %343 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 26, i32 1
  call void @__init_swait_queue_head(ptr noundef %343, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_completion.__key) #9
  %344 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 27
  call void @__mutex_init(ptr noundef %344, ptr noundef nonnull @.str.36, ptr noundef nonnull @msm_dsi_host_init.__key) #9
  %345 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 28
  call void @__mutex_init(ptr noundef %345, ptr noundef nonnull @.str.38, ptr noundef nonnull @msm_dsi_host_init.__key.37) #9
  %346 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 29
  store i32 0, ptr %346, align 4
  %347 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.39, i32 noundef 655362, i32 noundef 1) #9
  %348 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 33
  store ptr %347, ptr %348, align 4
  %349 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 31
  store i32 -32, ptr %349, align 4
  %350 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 31, i32 1
  store volatile ptr %350, ptr %350, align 4
  %351 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 31, i32 1, i32 1
  store ptr %350, ptr %351, align 4
  %352 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 31, i32 2
  store ptr @dsi_err_worker, ptr %352, align 4
  %353 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 32
  store i32 -32, ptr %353, align 4
  %354 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 32, i32 1
  store volatile ptr %354, ptr %354, align 4
  %355 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 32, i32 1, i32 1
  store ptr %354, ptr %355, align 4
  %356 = getelementptr inbounds %struct.msm_dsi_host, ptr %7, i32 0, i32 32, i32 2
  store ptr @dsi_hpd_worker, ptr %356, align 4
  %357 = load i32, ptr %211, align 4
  %358 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 11
  store i32 %357, ptr %358, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %357) #9
  br label %359

359:                                              ; preds = %339, %337, %333, %327, %322, %320, %313, %235, %207, %185, %134, %126, %1
  %360 = phi i32 [ %326, %327 ], [ %330, %333 ], [ %335, %337 ], [ 0, %339 ], [ %323, %322 ], [ %127, %126 ], [ %137, %134 ], [ -22, %207 ], [ %233, %235 ], [ %314, %313 ], [ -12, %320 ], [ -22, %185 ], [ -12, %1 ]
  ret i32 %360
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_host_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %111, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 29
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 268
  %11 = tail call i32 @msm_readl(ptr noundef %10) #9
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 268
  tail call void @msm_writel(i32 noundef %11, ptr noundef %13) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  %14 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.85, i32 noundef %11, i32 noundef %15) #9
  %16 = and i32 %11, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %101, label %18

18:                                               ; preds = %6
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 268
  %22 = tail call i32 @msm_readl(ptr noundef %21) #9
  %23 = and i32 %22, -33554433
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %23, i32 noundef 0) #9
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 268
  tail call void @msm_writel(i32 noundef %23, ptr noundef %25) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %19) #9
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 284
  %28 = tail call i32 @msm_readl(ptr noundef %27) #9
  %29 = and i32 %28, 65536
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %18
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 284
  tail call void @msm_writel(i32 noundef %28, ptr noundef %33) #9
  %34 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 30
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 32
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %31, %18
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  %40 = tail call i32 @msm_readl(ptr noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void @msm_writel(i32 noundef %40, ptr noundef %44) #9
  %45 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 30
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 4
  store i32 %47, ptr %45, align 4
  %48 = and i32 %40, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = or i32 %46, 12
  store i32 %51, ptr %45, align 4
  br label %52

52:                                               ; preds = %50, %42, %37
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr i8, ptr %53, i32 100
  %55 = tail call i32 @msm_readl(ptr noundef %54) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr i8, ptr %58, i32 100
  tail call void @msm_writel(i32 noundef %55, ptr noundef %59) #9
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr i8, ptr %60, i32 100
  tail call void @msm_writel(i32 noundef 0, ptr noundef %61) #9
  br label %62

62:                                               ; preds = %57, %52
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr i8, ptr %63, i32 188
  %65 = tail call i32 @msm_readl(ptr noundef %64) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr i8, ptr %68, i32 188
  tail call void @msm_writel(i32 noundef %65, ptr noundef %69) #9
  %70 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 30
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load ptr, ptr %3, align 4
  %75 = getelementptr i8, ptr %74, i32 4
  %76 = tail call i32 @msm_readl(ptr noundef %75) #9
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr i8, ptr %79, i32 4
  tail call void @msm_writel(i32 noundef %76, ptr noundef %80) #9
  %81 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 30
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 16
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr i8, ptr %85, i32 176
  %87 = tail call i32 @msm_readl(ptr noundef %86) #9
  %88 = and i32 %87, 69905
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr i8, ptr %91, i32 176
  tail call void @msm_writel(i32 noundef %87, ptr noundef %92) #9
  %93 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 30
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, 2
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %90, %84
  %97 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 33
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 31
  %100 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %98, ptr noundef %99) #9
  br label %101

101:                                              ; preds = %96, %6
  %102 = and i32 %11, 65536
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 26
  tail call void @complete(ptr noundef %105) #9
  br label %106

106:                                              ; preds = %104, %101
  %107 = and i32 %11, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 25
  tail call void @complete(ptr noundef %110) #9
  br label %111

111:                                              ; preds = %109, %106, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_err_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load i32, ptr %2, align 4
  %4 = tail call i32 @___ratelimit(ptr noundef nonnull @dsi_err_worker._rs, ptr noundef nonnull @__func__.dsi_err_worker) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.dsi_err_worker, i32 noundef %3) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = and i32 %3, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 -284
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @msm_readl(ptr noundef %13) #9
  %15 = and i32 %14, -2
  %16 = load ptr, ptr %12, align 4
  tail call void @msm_writel(i32 noundef %15, ptr noundef %16) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %18) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %20) #9
  tail call void @msleep(i32 noundef 20) #9
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr i8, ptr %21, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %22) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %12, align 4
  tail call void @msm_writel(i32 noundef %14, ptr noundef %23) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  br label %24

24:                                               ; preds = %11, %8
  store i32 0, ptr %2, align 4
  %25 = getelementptr i8, ptr %0, i32 -8
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #9
  %27 = getelementptr i8, ptr %0, i32 -284
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 268
  %30 = tail call i32 @msm_readl(ptr noundef %29) #9
  %31 = or i32 %30, 33554432
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %31, i32 noundef 1) #9
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 268
  tail call void @msm_writel(i32 noundef %31, ptr noundef %33) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_hpd_worker(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -308
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_destroy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #9
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 34
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msm_kms, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %7, ptr noundef %15) #9
  %16 = load ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #9, !srcloc !17
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #9, !srcloc !18
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %26, label %24, !prof !9

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #9
  br label %26

25:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void @drm_gem_object_free(ptr noundef nonnull %16) #9
  br label %26

26:                                               ; preds = %25, %24, %22, %9
  store ptr null, ptr %6, align 4
  br label %27

27:                                               ; preds = %26, %5
  %28 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 35
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 37
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 36
  %37 = load i32, ptr %36, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %29, i32 noundef %37, i32 noundef 0) #9
  br label %38

38:                                               ; preds = %31, %27, %1
  %39 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 33
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @destroy_workqueue(ptr noundef nonnull %40) #9
  store ptr null, ptr %39, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %46, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_modeset_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 4096) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.msm_dsi_host_modeset_init, i32 noundef %10) #10
  br label %14

14:                                               ; preds = %12, %2
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 50
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  store ptr %8, ptr %0, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_host, ptr %0, i32 0, i32 1
  store ptr @dsi_host_ops, ptr %9, align 4
  %10 = tail call i32 @mipi_dsi_host_register(ptr noundef %0) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store i8 1, ptr %2, align 4
  br label %13

13:                                               ; preds = %12, %5, %1
  %14 = phi i32 [ %10, %5 ], [ 0, %12 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 50
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @mipi_dsi_host_unregister(ptr noundef %0) #9
  store ptr null, ptr %0, align 4
  %6 = getelementptr inbounds %struct.mipi_dsi_host, ptr %0, i32 0, i32 1
  store ptr null, ptr %6, align 4
  store i8 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_xfer_prepare(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %9 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #9
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0) #9
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  %25 = tail call i32 @msm_readl(ptr noundef %24) #9
  %26 = and i32 %25, -67108865
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr i8, ptr %27, i32 56
  tail call void @msm_writel(i32 noundef %26, ptr noundef %28) #9
  br label %29

29:                                               ; preds = %21, %2
  %30 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @msm_readl(ptr noundef %31) #9
  %33 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 49
  store i32 %32, ptr %33, align 4
  %34 = or i32 %32, 5
  %35 = load ptr, ptr %30, align 4
  tail call void @msm_writel(i32 noundef %34, ptr noundef %35) #9
  %36 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 29
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #9
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr i8, ptr %38, i32 268
  %40 = tail call i32 @msm_readl(ptr noundef %39) #9
  %41 = or i32 %40, 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %41, i32 noundef 1) #9
  %42 = load ptr, ptr %30, align 4
  %43 = getelementptr i8, ptr %42, i32 268
  tail call void @msm_writel(i32 noundef %41, ptr noundef %43) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_xfer_restore(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 29
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 268
  %10 = tail call i32 @msm_readl(ptr noundef %9) #9
  %11 = and i32 %10, -3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %11, i32 noundef 0) #9
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 268
  tail call void @msm_writel(i32 noundef %11, ptr noundef %13) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  %14 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 49
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %7, align 4
  tail call void @msm_writel(i32 noundef %15, ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 56
  %24 = tail call i32 @msm_readl(ptr noundef %23) #9
  %25 = or i32 %24, 67108864
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 56
  tail call void @msm_writel(i32 noundef %25, ptr noundef %27) #9
  br label %28

28:                                               ; preds = %21, %2
  %29 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %4, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %0) #9
  %33 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_cmd_tx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dsi_cmds2buf_tx(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsi_cmds2buf_tx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mipi_dsi_packet, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 44
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  %13 = select i1 %12, i32 18, i32 24
  %14 = icmp eq i32 %11, 3
  %15 = select i1 %14, i32 16, i32 %13
  %16 = mul nuw nsw i32 %15, %9
  %17 = lshr i32 %16, 3
  %18 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9, !annotation !11
  %20 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %4, ptr noundef %1) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.dsi_cmd_dma_add, i32 noundef %20) #10
  br label %92

24:                                               ; preds = %2
  %25 = load i32, ptr %4, align 4
  %26 = add i32 %25, 3
  %27 = and i32 %26, -4
  %28 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 37
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.dsi_cmd_dma_add) #10
  br label %92

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %19, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = call ptr %37(ptr noundef %0) #9
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = ptrtoint ptr %38 to i32
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.dsi_cmd_dma_add, i32 noundef %41) #10
  br label %94

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %4, i32 0, i32 1
  %45 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %4, i32 0, i32 1, i32 1
  %46 = load i8, ptr %45, align 1
  store i8 %46, ptr %38, align 1
  %47 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %4, i32 0, i32 1, i32 2
  %48 = load i8, ptr %47, align 2
  %49 = getelementptr i8, ptr %38, i32 1
  store i8 %48, ptr %49, align 1
  %50 = load i8, ptr %44, align 4
  %51 = getelementptr i8, ptr %38, i32 2
  store i8 %50, ptr %51, align 1
  %52 = getelementptr i8, ptr %38, i32 3
  store i8 -128, ptr %52, align 1
  %53 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %54) #9
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i8, ptr %52, align 1
  %58 = or i8 %57, 64
  store i8 %58, ptr %52, align 1
  br label %59

59:                                               ; preds = %56, %43
  %60 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i8, ptr %52, align 1
  %69 = or i8 %68, 32
  store i8 %69, ptr %52, align 1
  br label %70

70:                                               ; preds = %67, %63, %59
  %71 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %4, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp ne ptr %72, null
  %74 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %4, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = select i1 %73, i1 %76, i1 false
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = getelementptr i8, ptr %38, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr nonnull align 1 %72, i32 %75, i1 false) #9
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, ptr %4, align 4
  %82 = icmp ugt i32 %27, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %38, i32 %81
  %85 = sub i32 %27, %81
  call void @llvm.memset.p0.i32(ptr align 1 %84, i8 -1, i32 %85, i1 false) #9
  br label %86

86:                                               ; preds = %83, %80
  %87 = load ptr, ptr %34, align 4
  %88 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %87, i32 0, i32 6
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  call void %89(ptr noundef %0) #9
  br label %94

92:                                               ; preds = %31, %22
  %93 = phi i32 [ -22, %31 ], [ %20, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %102

94:                                               ; preds = %91, %86, %40
  %95 = phi i32 [ %41, %40 ], [ %27, %91 ], [ %27, %86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.dsi_cmds2buf_tx, i32 noundef %100) #10
  br label %183

102:                                              ; preds = %94, %92
  %103 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %104 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 45
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  %108 = icmp sgt i32 %103, %17
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.dsi_cmds2buf_tx, i32 noundef %103) #10
  br label %183

112:                                              ; preds = %102
  %113 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !11
  %114 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %115, i32 0, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 %117(ptr noundef %0, ptr noundef nonnull %3) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.dsi_cmd_dma_tx, i32 noundef %118) #10
  br label %171

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 25
  store i32 0, ptr %123, align 4
  %124 = load i32, ptr %104, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %160, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 51
  %129 = load i8, ptr %128, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %160, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 52
  %133 = load i8, ptr %132, align 2, !range !8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %160, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 29
  %139 = call i32 @_raw_spin_lock_irqsave(ptr noundef %138) #9
  %140 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr i8, ptr %141, i32 268
  %143 = call i32 @msm_readl(ptr noundef %142) #9
  %144 = or i32 %143, 131072
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %144, i32 noundef 1) #9
  %145 = load ptr, ptr %140, align 4
  %146 = getelementptr i8, ptr %145, i32 268
  call void @msm_writel(i32 noundef %144, ptr noundef %146) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %138, i32 noundef %139) #9
  %147 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 26
  store i32 0, ptr %147, align 4
  %148 = call i32 @wait_for_completion_timeout(ptr noundef %147, i32 noundef 7) #9
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %135
  %151 = getelementptr inbounds %struct.platform_device, ptr %137, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %151, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.102) #9
  br label %152

152:                                              ; preds = %150, %135
  %153 = call i32 @_raw_spin_lock_irqsave(ptr noundef %138) #9
  %154 = load ptr, ptr %140, align 4
  %155 = getelementptr i8, ptr %154, i32 268
  %156 = call i32 @msm_readl(ptr noundef %155) #9
  %157 = and i32 %156, -131073
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %157, i32 noundef 0) #9
  %158 = load ptr, ptr %140, align 4
  %159 = getelementptr i8, ptr %158, i32 268
  call void @msm_writel(i32 noundef %157, ptr noundef %159) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %138, i32 noundef %153) #9
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #9
  br label %160

160:                                              ; preds = %152, %131, %127, %122
  %161 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = load i64, ptr %3, align 8
  %164 = trunc i64 %163 to i32
  %165 = call zeroext i1 @msm_dsi_manager_cmd_xfer_trigger(i32 noundef %162, i32 noundef %164, i32 noundef %103) #9
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %183

167:                                              ; preds = %160
  %168 = call i32 @wait_for_completion_timeout(ptr noundef %123, i32 noundef 20) #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.101, i32 noundef %168) #9
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 -110, i32 %103
  br label %171

171:                                              ; preds = %167, %120
  %172 = phi i32 [ %118, %120 ], [ %170, %167 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %173 = icmp slt i32 %172, %103
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 1
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 4
  %179 = load ptr, ptr %178, align 4
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.dsi_cmds2buf_tx, i32 noundef %177, i32 noundef %181, i32 noundef %103) #10
  br label %183

183:                                              ; preds = %174, %171, %166, %110, %97
  %184 = phi i32 [ -22, %110 ], [ -70, %174 ], [ -22, %97 ], [ %103, %171 ], [ %103, %166 ]
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_cmd_rx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.mipi_dsi_msg, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 3
  %11 = tail call i32 @llvm.smin.i32(i32 %9, i32 10)
  %12 = select i1 %10, i32 4, i32 16
  %13 = select i1 %10, i32 %9, i32 %11
  %14 = select i1 %10, i32 0, i32 10
  %15 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 38
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %4, i32 1
  %18 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 1
  %19 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 3
  %21 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 4
  %22 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 5
  %23 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 6
  %24 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %27 = lshr exact i32 %12, 2
  %28 = add nsw i32 %27, -1
  %29 = shl nsw i32 %28, 2
  %30 = add nsw i32 %29, 104
  %31 = getelementptr inbounds i32, ptr %3, i32 1
  %32 = or i32 %12, 96
  %33 = icmp ugt i32 %28, 1
  %34 = getelementptr inbounds i32, ptr %3, i32 2
  %35 = add nsw i32 %27, -3
  %36 = shl nsw i32 %35, 2
  %37 = add nsw i32 %36, 104
  %38 = getelementptr inbounds i32, ptr %3, i32 3
  %39 = add nuw nsw i32 %12, 88
  %40 = icmp ugt i32 %35, 1
  %41 = getelementptr inbounds i32, ptr %3, i32 4
  %42 = add nuw nsw i32 %12, 84
  br label %43

43:                                               ; preds = %129, %2
  %44 = phi i32 [ %14, %2 ], [ %133, %129 ]
  %45 = phi ptr [ %16, %2 ], [ %132, %129 ]
  %46 = phi i32 [ %9, %2 ], [ %121, %129 ]
  %47 = phi i32 [ %13, %2 ], [ %131, %129 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %4, align 2
  %49 = lshr i32 %47, 8
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %51 = load i8, ptr %1, align 4
  store i8 %51, ptr %5, align 4
  store i8 55, ptr %18, align 1
  store i16 0, ptr %19, align 2
  store i32 2, ptr %20, align 4
  store ptr %4, ptr %21, align 4
  store i32 0, ptr %22, align 4
  store ptr null, ptr %23, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %46, i32 noundef %47, i32 noundef %12) #9
  %52 = call fastcc i32 @dsi_cmds2buf_tx(ptr noundef %0, ptr noundef nonnull %5)
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.msm_dsi_host_cmd_rx, i32 noundef %52) #10
  br label %127

56:                                               ; preds = %43
  %57 = load i32, ptr %7, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, ptr %24, align 4
  %61 = icmp ugt i32 %60, 268500991
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load ptr, ptr %25, align 4
  %64 = getelementptr i8, ptr %63, i32 464
  call void @msm_writel(i32 noundef 1, ptr noundef %64) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  call void @arm_heavy_mb() #9
  %65 = load ptr, ptr %25, align 4
  %66 = getelementptr i8, ptr %65, i32 464
  call void @msm_writel(i32 noundef 0, ptr noundef %66) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  call void @arm_heavy_mb() #9
  br label %67

67:                                               ; preds = %62, %59, %56
  %68 = call fastcc i32 @dsi_cmds2buf_tx(ptr noundef %0, ptr noundef %1)
  %69 = load i32, ptr %26, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.msm_dsi_host_cmd_rx, i32 noundef %68) #10
  br label %127

73:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !11
  %74 = load ptr, ptr %15, align 4
  %75 = ptrtoint ptr %45 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = add i32 %47, 6
  %78 = select i1 %10, i32 4, i32 %77
  %79 = add i32 %75, 16
  %80 = add i32 %78, %76
  %81 = sub i32 %79, %80
  %82 = load ptr, ptr %25, align 4
  %83 = getelementptr i8, ptr %82, i32 %30
  %84 = call i32 @msm_readl(ptr noundef %83) #9
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  store i32 %85, ptr %3, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.103, i32 noundef %84, i32 noundef %85) #9
  br i1 %10, label %86, label %91

86:                                               ; preds = %105, %96, %91, %73
  %87 = icmp ugt i32 %78, 16
  %88 = select i1 %87, i32 %81, i32 0
  %89 = icmp slt i32 %88, 16
  br i1 %89, label %110, label %90

90:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %127

91:                                               ; preds = %73
  %92 = load ptr, ptr %25, align 4
  %93 = getelementptr i8, ptr %92, i32 %32
  %94 = call i32 @msm_readl(ptr noundef %93) #9
  %95 = call i32 @llvm.bswap.i32(i32 %94) #9
  store i32 %95, ptr %31, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.103, i32 noundef %94, i32 noundef %95) #9
  br i1 %33, label %96, label %86

96:                                               ; preds = %91
  %97 = load ptr, ptr %25, align 4
  %98 = getelementptr i8, ptr %97, i32 %37
  %99 = call i32 @msm_readl(ptr noundef %98) #9
  %100 = call i32 @llvm.bswap.i32(i32 %99) #9
  store i32 %100, ptr %34, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.103, i32 noundef %99, i32 noundef %100) #9
  %101 = load ptr, ptr %25, align 4
  %102 = getelementptr i8, ptr %101, i32 %39
  %103 = call i32 @msm_readl(ptr noundef %102) #9
  %104 = call i32 @llvm.bswap.i32(i32 %103) #9
  store i32 %104, ptr %38, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.103, i32 noundef %103, i32 noundef %104) #9
  br i1 %40, label %105, label %86

105:                                              ; preds = %96
  %106 = load ptr, ptr %25, align 4
  %107 = getelementptr i8, ptr %106, i32 %42
  %108 = call i32 @msm_readl(ptr noundef %107) #9
  %109 = call i32 @llvm.bswap.i32(i32 %108) #9
  store i32 %109, ptr %41, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.103, i32 noundef %108, i32 noundef %109) #9
  br label %86

110:                                              ; preds = %86
  %111 = getelementptr i8, ptr %3, i32 %88
  %112 = sub i32 16, %88
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %45, ptr align 1 %111, i32 %112, i1 false) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %127, label %114

114:                                              ; preds = %110
  br i1 %10, label %115, label %116

115:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %141

116:                                              ; preds = %114
  %117 = icmp slt i32 %44, %46
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = select i1 %117, i32 %44, i32 0
  %121 = sub i32 %46, %120
  br i1 %117, label %122, label %129

122:                                              ; preds = %116
  %123 = sub i32 14, %88
  %124 = getelementptr i8, ptr %45, i32 %123
  %125 = call i32 @llvm.smin.i32(i32 %121, i32 14)
  %126 = add i32 %125, %47
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.46, ptr noundef %124, i32 noundef %123, i32 noundef 0) #9
  br label %129

127:                                              ; preds = %110, %90, %71, %54
  %128 = phi i32 [ 0, %90 ], [ %68, %71 ], [ -22, %54 ], [ 0, %110 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %189

129:                                              ; preds = %122, %116
  %130 = phi i32 [ 0, %122 ], [ %119, %116 ]
  %131 = phi i32 [ %126, %122 ], [ %47, %116 ]
  %132 = phi ptr [ %124, %122 ], [ %45, %116 ]
  %133 = phi i32 [ 14, %122 ], [ %44, %116 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %134 = icmp eq i32 %130, 0
  br i1 %134, label %43, label %135

135:                                              ; preds = %129
  %136 = icmp sgt i32 %131, 9
  br i1 %136, label %141, label %137

137:                                              ; preds = %135
  %138 = load ptr, ptr %15, align 4
  %139 = sub i32 10, %121
  %140 = getelementptr i8, ptr %138, i32 %139
  br label %143

141:                                              ; preds = %135, %115
  %142 = load ptr, ptr %15, align 4
  br label %143

143:                                              ; preds = %141, %137
  %144 = phi ptr [ %142, %141 ], [ %140, %137 ]
  %145 = load i8, ptr %144, align 1
  switch i8 %145, label %187 [
    i8 2, label %146
    i8 17, label %148
    i8 33, label %148
    i8 18, label %161
    i8 34, label %161
    i8 26, label %176
    i8 28, label %176
  ]

146:                                              ; preds = %143
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.msm_dsi_host_cmd_rx) #10
  br label %189

148:                                              ; preds = %143, %143
  %149 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  %152 = load i32, ptr %8, align 4
  br i1 %151, label %158, label %153

153:                                              ; preds = %148
  %154 = icmp eq i32 %152, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %153
  %156 = getelementptr i8, ptr %144, i32 1
  %157 = load i8, ptr %156, align 1
  store i8 %157, ptr %150, align 1
  br label %189

158:                                              ; preds = %153, %148
  %159 = phi i32 [ 0, %153 ], [ %152, %148 ]
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.dsi_short_read1_resp, i32 noundef %159) #10
  br label %189

161:                                              ; preds = %143, %143
  %162 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %163 = load ptr, ptr %162, align 4
  %164 = icmp ne ptr %163, null
  %165 = load i32, ptr %8, align 4
  %166 = icmp ugt i32 %165, 1
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = getelementptr i8, ptr %144, i32 1
  %170 = load i8, ptr %169, align 1
  store i8 %170, ptr %163, align 1
  %171 = getelementptr i8, ptr %144, i32 2
  %172 = load i8, ptr %171, align 1
  %173 = getelementptr i8, ptr %163, i32 1
  store i8 %172, ptr %173, align 1
  br label %189

174:                                              ; preds = %161
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.dsi_short_read2_resp, i32 noundef %165) #10
  br label %189

176:                                              ; preds = %143, %143
  %177 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = load i32, ptr %8, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = getelementptr i8, ptr %144, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %178, ptr align 1 %184, i32 %181, i1 false) #9
  br label %185

185:                                              ; preds = %183, %180, %176
  %186 = load i32, ptr %8, align 4
  br label %189

187:                                              ; preds = %143
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.msm_dsi_host_cmd_rx) #10
  br label %189

189:                                              ; preds = %187, %185, %174, %168, %158, %155, %146, %127
  %190 = phi i32 [ 0, %187 ], [ %186, %185 ], [ 0, %146 ], [ %128, %127 ], [ 1, %155 ], [ -22, %158 ], [ 2, %168 ], [ -22, %174 ]
  ret i32 %190
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_cmd_xfer_commit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 68
  tail call void @msm_writel(i32 noundef %1, ptr noundef %6) #9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 72
  tail call void @msm_writel(i32 noundef %2, ptr noundef %8) #9
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 140
  tail call void @msm_writel(i32 noundef 1, ptr noundef %10) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @msm_dsi_host_set_phy_mode(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 16
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 48
  store i8 %4, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_reset_phy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #9
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 296
  tail call void @msm_writel(i32 noundef 1, ptr noundef %4) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %7) #9
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_get_phy_clk_req(ptr noundef %0, ptr nocapture noundef writeonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i1 noundef zeroext %2) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.msm_dsi_host_get_phy_clk_req, i32 noundef %10) #10
  br label %26

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 48
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 3
  %21 = mul i32 %19, 7
  %22 = select i1 %17, i32 %20, i32 %21
  store i32 %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %1, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_enable_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 53
  %3 = load i32, ptr %2, align 4
  tail call void @enable_irq(i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_disable_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 53
  %3 = load i32, ptr %2, align 4
  tail call void @disable_irq(i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  tail call fastcc void @dsi_op_mode_config(ptr noundef %0, i1 noundef zeroext %5, i1 noundef zeroext true)
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 52
  store i8 1, ptr %6, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsi_op_mode_config(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @msm_readl(ptr noundef %5) #9
  br i1 %2, label %17, label %7

7:                                                ; preds = %3
  %8 = and i32 %6, -8
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 29
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 268
  %13 = tail call i32 @msm_readl(ptr noundef %12) #9
  %14 = and i32 %13, -131585
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %14, i32 noundef 0) #9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 268
  tail call void @msm_writel(i32 noundef %14, ptr noundef %16) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #9
  br label %33

17:                                               ; preds = %3
  br i1 %1, label %18, label %20

18:                                               ; preds = %17
  %19 = or i32 %6, 2
  br label %30

20:                                               ; preds = %17
  %21 = or i32 %6, 4
  %22 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 29
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #9
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 268
  %26 = tail call i32 @msm_readl(ptr noundef %25) #9
  %27 = or i32 %26, 512
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %27, i32 noundef 1) #9
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 268
  tail call void @msm_writel(i32 noundef %27, ptr noundef %29) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #9
  br label %30

30:                                               ; preds = %20, %18
  %31 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %32 = or i32 %31, 1
  br label %33

33:                                               ; preds = %30, %7
  %34 = phi i32 [ %32, %30 ], [ %8, %7 ]
  %35 = load ptr, ptr %4, align 4
  tail call void @msm_writel(i32 noundef %34, ptr noundef %35) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 52
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @msm_readl(ptr noundef %4) #9
  %6 = and i32 %5, -8
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 29
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 268
  %11 = tail call i32 @msm_readl(ptr noundef %10) #9
  %12 = and i32 %11, -131585
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %12, i32 noundef 0) #9
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 268
  tail call void @msm_writel(i32 noundef %12, ptr noundef %14) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  %15 = load ptr, ptr %3, align 4
  tail call void @msm_writel(i32 noundef %6, ptr noundef %15) #9
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %17) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %19) #9
  tail call void @msleep(i32 noundef 20) #9
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %21) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_power_on(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 27
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 51
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #9
  br label %243

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 39
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %14, i32 noundef 88, i32 noundef 6144, i32 noundef 6144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_dsi_config, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.msm_dsi_config, ptr %22, i32 0, i32 1, i32 1
  %25 = load i32, ptr %23, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #9
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %39, %18
  %28 = phi i32 [ %40, %39 ], [ 0, %18 ]
  %29 = getelementptr %struct.dsi_reg_entry, ptr %24, i32 %28, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = getelementptr %struct.regulator_bulk_data, ptr %19, i32 %28, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regulator_set_load(ptr noundef %34, i32 noundef %30) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %28, i32 noundef %35) #10
  br label %48

39:                                               ; preds = %32, %27
  %40 = add nuw nsw i32 %28, 1
  %41 = icmp eq i32 %40, %25
  br i1 %41, label %42, label %27

42:                                               ; preds = %39, %18
  %43 = phi i32 [ 0, %18 ], [ %25, %39 ]
  %44 = tail call i32 @regulator_bulk_enable(i32 noundef %25, ptr noundef %19) #9
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %44) #10
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi i32 [ %28, %37 ], [ %43, %46 ]
  %50 = phi i32 [ %35, %37 ], [ %44, %46 ]
  %51 = add i32 %49, -1
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %62

53:                                               ; preds = %53, %48
  %54 = phi i32 [ %60, %53 ], [ %51, %48 ]
  %55 = getelementptr %struct.regulator_bulk_data, ptr %19, i32 %54, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr %struct.dsi_reg_entry, ptr %24, i32 %54, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @regulator_set_load(ptr noundef %56, i32 noundef %58) #9
  %60 = add nsw i32 %54, -1
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %62, label %53

62:                                               ; preds = %53, %48
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.msm_dsi_host_power_on, i32 noundef %50) #10
  br label %243

64:                                               ; preds = %42
  %65 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  %68 = tail call i32 @__pm_runtime_resume(ptr noundef %67, i32 noundef 4) #9
  %69 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %6, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %71(ptr noundef %0) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %0) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74, %64
  %81 = phi i32 [ %78, %74 ], [ %72, %64 ]
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.msm_dsi_host_power_on, i32 noundef %81) #10
  br label %219

83:                                               ; preds = %74
  %84 = load ptr, ptr %65, align 4
  %85 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  %86 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %85) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.msm_dsi_host_power_on, i32 noundef %86) #10
  %90 = load ptr, ptr %69, align 4
  %91 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  tail call void %92(ptr noundef %0) #9
  %93 = load ptr, ptr %65, align 4
  %94 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  %95 = tail call i32 @__pm_runtime_idle(ptr noundef %94, i32 noundef 5) #9
  br label %219

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 4
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 9
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 3
  %106 = load i16, ptr %105, align 4
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 2
  %109 = load i16, ptr %108, align 2
  %110 = zext i16 %109 to i32
  %111 = sub nsw i32 %107, %110
  %112 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 8
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 7
  %116 = load i16, ptr %115, align 4
  %117 = zext i16 %116 to i32
  %118 = sub nsw i32 %114, %117
  %119 = sub nsw i32 %101, %110
  %120 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 1
  %121 = load i16, ptr %120, align 4
  %122 = zext i16 %121 to i32
  %123 = add nsw i32 %119, %122
  %124 = sub nsw i32 %104, %117
  %125 = getelementptr inbounds %struct.drm_display_mode, ptr %98, i32 0, i32 6
  %126 = load i16, ptr %125, align 2
  %127 = zext i16 %126 to i32
  %128 = add nsw i32 %124, %127
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #9
  br i1 %2, label %129, label %135

129:                                              ; preds = %96
  %130 = lshr i32 %101, 1
  %131 = lshr i32 %111, 1
  %132 = lshr i32 %119, 1
  %133 = lshr i32 %123, 1
  %134 = lshr i32 %122, 1
  br label %135

135:                                              ; preds = %129, %96
  %136 = phi i32 [ %130, %129 ], [ %101, %96 ]
  %137 = phi i32 [ %131, %129 ], [ %111, %96 ]
  %138 = phi i32 [ %132, %129 ], [ %119, %96 ]
  %139 = phi i32 [ %133, %129 ], [ %123, %96 ]
  %140 = phi i32 [ %134, %129 ], [ %122, %96 ]
  %141 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 45
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %175, label %145

145:                                              ; preds = %135
  %146 = and i32 %138, 4095
  %147 = shl i32 %139, 16
  %148 = and i32 %147, 268369920
  %149 = or i32 %148, %146
  %150 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 32
  tail call void @msm_writel(i32 noundef %149, ptr noundef %152) #9
  %153 = and i32 %124, 4095
  %154 = shl i32 %128, 16
  %155 = and i32 %154, 268369920
  %156 = or i32 %155, %153
  %157 = load ptr, ptr %150, align 4
  %158 = getelementptr i8, ptr %157, i32 36
  tail call void @msm_writel(i32 noundef %156, ptr noundef %158) #9
  %159 = add nuw nsw i32 %136, 4095
  %160 = and i32 %159, 4095
  %161 = shl nuw i32 %104, 16
  %162 = add i32 %161, 268369920
  %163 = and i32 %162, 268369920
  %164 = or i32 %160, %163
  %165 = load ptr, ptr %150, align 4
  %166 = getelementptr i8, ptr %165, i32 40
  tail call void @msm_writel(i32 noundef %164, ptr noundef %166) #9
  %167 = shl i32 %137, 16
  %168 = and i32 %167, 268369920
  %169 = load ptr, ptr %150, align 4
  %170 = getelementptr i8, ptr %169, i32 44
  tail call void @msm_writel(i32 noundef %168, ptr noundef %170) #9
  %171 = load ptr, ptr %150, align 4
  %172 = getelementptr i8, ptr %171, i32 48
  tail call void @msm_writel(i32 noundef 0, ptr noundef %172) #9
  %173 = shl i32 %118, 16
  %174 = and i32 %173, 268369920
  br label %201

175:                                              ; preds = %135
  %176 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 44
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 2
  %179 = select i1 %178, i32 18, i32 24
  %180 = icmp eq i32 %177, 3
  %181 = select i1 %180, i32 16, i32 %179
  %182 = shl nuw nsw i32 %140, 13
  %183 = mul i32 %182, %181
  %184 = add i32 %183, 65536
  %185 = and i32 %184, -65536
  %186 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 42
  %187 = load i32, ptr %186, align 4
  %188 = shl i32 %187, 8
  %189 = and i32 %188, 768
  %190 = or i32 %189, %185
  %191 = or i32 %190, 57
  %192 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr i8, ptr %193, i32 84
  tail call void @msm_writel(i32 noundef %191, ptr noundef %194) #9
  %195 = and i32 %140, 4095
  %196 = load i16, ptr %125, align 2
  %197 = zext i16 %196 to i32
  %198 = shl nuw i32 %197, 16
  %199 = and i32 %198, 268369920
  %200 = or i32 %199, %195
  br label %201

201:                                              ; preds = %175, %145
  %202 = phi ptr [ %192, %175 ], [ %150, %145 ]
  %203 = phi i32 [ 88, %175 ], [ 52, %145 ]
  %204 = phi i32 [ %200, %175 ], [ %174, %145 ]
  %205 = load ptr, ptr %202, align 4
  %206 = getelementptr i8, ptr %205, i32 %203
  tail call void @msm_writel(i32 noundef %204, ptr noundef %206) #9
  %207 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr i8, ptr %208, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %209) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %210 = load ptr, ptr %207, align 4
  %211 = getelementptr i8, ptr %210, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %211) #9
  tail call void @msleep(i32 noundef 20) #9
  %212 = load ptr, ptr %207, align 4
  %213 = getelementptr i8, ptr %212, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %213) #9
  tail call fastcc void @dsi_ctrl_config(ptr noundef %0, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3)
  %214 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 22
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %201
  tail call void @gpiod_set_value(ptr noundef nonnull %215, i32 noundef 1) #9
  br label %218

218:                                              ; preds = %217, %201
  store i8 1, ptr %8, align 1
  br label %243

219:                                              ; preds = %88, %80
  %220 = phi i32 [ %81, %80 ], [ %86, %88 ]
  %221 = load ptr, ptr %5, align 4
  %222 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %221, i32 0, i32 2
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.msm_dsi_config, ptr %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.msm_dsi_config, ptr %223, i32 0, i32 1, i32 1
  %226 = load i32, ptr %224, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #9
  %227 = add i32 %226, -1
  %228 = icmp sgt i32 %227, -1
  br i1 %228, label %229, label %241

229:                                              ; preds = %238, %219
  %230 = phi i32 [ %239, %238 ], [ %227, %219 ]
  %231 = getelementptr %struct.dsi_reg_entry, ptr %225, i32 %230, i32 2
  %232 = load i32, ptr %231, align 4
  %233 = icmp sgt i32 %232, -1
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = getelementptr %struct.regulator_bulk_data, ptr %19, i32 %230, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = tail call i32 @regulator_set_load(ptr noundef %236, i32 noundef %232) #9
  br label %238

238:                                              ; preds = %234, %229
  %239 = add i32 %230, -1
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %229, label %241

241:                                              ; preds = %238, %219
  %242 = tail call i32 @regulator_bulk_disable(i32 noundef %226, ptr noundef %19) #9
  br label %243

243:                                              ; preds = %241, %218, %62, %11
  %244 = phi i32 [ 0, %218 ], [ 0, %11 ], [ %50, %62 ], [ %220, %241 ]
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %244
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsi_ctrl_config(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 45
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 44
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  br i1 %1, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %13) #9
  br label %154

14:                                               ; preds = %4
  %15 = and i32 %6, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = shl i32 %6, 24
  %19 = and i32 %18, 268435456
  %20 = shl i32 %6, 19
  %21 = and i32 %20, 16777216
  %22 = shl i32 %6, 14
  %23 = and i32 %22, 1048576
  %24 = shl i32 %6, 9
  %25 = and i32 %24, 65536
  %26 = and i32 %6, 2
  %27 = icmp eq i32 %26, 0
  %28 = shl i32 %6, 6
  %29 = and i32 %28, 256
  %30 = xor i32 %29, 256
  %31 = select i1 %27, i32 %30, i32 512
  %32 = add i32 %8, -1
  %33 = icmp ult i32 %32, 3
  %34 = mul i32 %32, -16
  %35 = add i32 %34, 32
  %36 = select i1 %33, i32 %35, i32 48
  %37 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 42
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 3
  %40 = or i32 %19, %21
  %41 = or i32 %40, %23
  %42 = or i32 %41, %25
  %43 = or i32 %42, %31
  %44 = or i32 %43, %36
  %45 = or i32 %44, %39
  %46 = or i32 %45, 36864
  br label %53

47:                                               ; preds = %14
  %48 = add i32 %8, -1
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds [3 x i32], ptr @switch.table.dsi_ctrl_config, i32 0, i32 %48
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %47, %17
  %54 = phi i32 [ 12, %17 ], [ 60, %47 ], [ 60, %50 ]
  %55 = phi i32 [ %46, %17 ], [ 8, %47 ], [ %52, %50 ]
  %56 = phi i32 [ 28, %17 ], [ 64, %47 ], [ 64, %50 ]
  %57 = phi i32 [ 0, %17 ], [ 80940, %47 ], [ 80940, %50 ]
  %58 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %54
  tail call void @msm_writel(i32 noundef %55, ptr noundef %60) #9
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr i8, ptr %61, i32 %56
  tail call void @msm_writel(i32 noundef %57, ptr noundef %62) #9
  %63 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 56
  tail call void @msm_writel(i32 noundef 335544320, ptr noundef %65) #9
  %66 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 42
  %67 = load i32, ptr %66, align 4
  %68 = shl i32 %67, 8
  %69 = and i32 %68, 768
  %70 = or i32 %69, -2147483644
  %71 = load i32, ptr %10, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %79

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %10, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i32 %75, 268566527
  %77 = or i32 %69, -2147479548
  %78 = select i1 %76, i32 %77, i32 %70
  br label %79

79:                                               ; preds = %73, %53
  %80 = phi i32 [ %70, %53 ], [ %78, %73 ]
  %81 = load ptr, ptr %63, align 4
  %82 = getelementptr i8, ptr %81, i32 128
  tail call void @msm_writel(i32 noundef %80, ptr noundef %82) #9
  %83 = load i32, ptr %2, align 4
  %84 = shl i32 %83, 8
  %85 = and i32 %84, 16128
  %86 = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, ptr %2, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 63
  %89 = or i32 %85, %88
  %90 = load ptr, ptr %63, align 4
  %91 = getelementptr i8, ptr %90, i32 192
  tail call void @msm_writel(i32 noundef %89, ptr noundef %91) #9
  %92 = load i32, ptr %10, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %105

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %10, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, 268435456
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, ptr %2, i32 0, i32 2
  %100 = load i8, ptr %99, align 4, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %63, align 4
  %104 = getelementptr i8, ptr %103, i32 380
  tail call void @msm_writel(i32 noundef 1, ptr noundef %104) #9
  br label %105

105:                                              ; preds = %102, %98, %94, %79
  %106 = lshr i32 %6, 9
  %107 = and i32 %106, 1
  %108 = xor i32 %107, 1
  %109 = load ptr, ptr %63, align 4
  %110 = getelementptr i8, ptr %109, i32 200
  tail call void @msm_writel(i32 noundef %108, ptr noundef %110) #9
  %111 = load ptr, ptr %63, align 4
  %112 = getelementptr i8, ptr %111, i32 264
  tail call void @msm_writel(i32 noundef 335495136, ptr noundef %112) #9
  %113 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 29
  %114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %113) #9
  %115 = load ptr, ptr %63, align 4
  %116 = getelementptr i8, ptr %115, i32 268
  %117 = tail call i32 @msm_readl(ptr noundef %116) #9
  %118 = or i32 %117, 33554432
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %118, i32 noundef 1) #9
  %119 = load ptr, ptr %63, align 4
  %120 = getelementptr i8, ptr %119, i32 268
  tail call void @msm_writel(i32 noundef %118, ptr noundef %120) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %113, i32 noundef %114) #9
  %121 = load ptr, ptr %63, align 4
  %122 = getelementptr i8, ptr %121, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %122) #9
  %123 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 43
  %124 = load i32, ptr %123, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.107, i32 noundef %124) #9
  %125 = load i32, ptr %123, align 4
  %126 = shl i32 16, %125
  %127 = add i32 %126, -16
  %128 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 46
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 7
  %131 = load ptr, ptr %63, align 4
  %132 = getelementptr i8, ptr %131, i32 172
  tail call void @msm_writel(i32 noundef %130, ptr noundef %132) #9
  %133 = and i32 %6, 1024
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %105
  %136 = load ptr, ptr %63, align 4
  %137 = getelementptr i8, ptr %136, i32 168
  %138 = tail call i32 @msm_readl(ptr noundef %137) #9
  %139 = tail call zeroext i1 @msm_dsi_phy_set_continuous_clock(ptr noundef %3, i1 noundef zeroext true) #9
  %140 = and i32 %138, -285212673
  %141 = select i1 %139, i32 %140, i32 %138
  %142 = or i32 %141, 268435456
  %143 = load ptr, ptr %63, align 4
  %144 = getelementptr i8, ptr %143, i32 168
  tail call void @msm_writel(i32 noundef %142, ptr noundef %144) #9
  br label %145

145:                                              ; preds = %135, %105
  %146 = or i32 %127, 257
  %147 = load ptr, ptr %63, align 4
  tail call void @msm_writel(i32 noundef %146, ptr noundef %147) #9
  %148 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 48
  %149 = load i8, ptr %148, align 4, !range !8
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %63, align 4
  %153 = getelementptr i8, ptr %152, i32 724
  tail call void @msm_writel(i32 noundef 1, ptr noundef %153) #9
  br label %154

154:                                              ; preds = %151, %145, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_power_off(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 27
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 51
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.54) #9
  br label %57

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 22
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @gpiod_set_value(ptr noundef nonnull %13, i32 noundef 0) #9
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %20 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %19) #9
  %21 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %0) #9
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #9
  %28 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_dsi_config, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.msm_dsi_config, ptr %31, i32 0, i32 1, i32 1
  %34 = load i32, ptr %32, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #9
  %35 = add i32 %34, -1
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %49

37:                                               ; preds = %46, %16
  %38 = phi i32 [ %47, %46 ], [ %35, %16 ]
  %39 = getelementptr %struct.dsi_reg_entry, ptr %33, i32 %38, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr %struct.regulator_bulk_data, ptr %28, i32 %38, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @regulator_set_load(ptr noundef %44, i32 noundef %40) #9
  br label %46

46:                                               ; preds = %42, %37
  %47 = add i32 %38, -1
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %37, label %49

49:                                               ; preds = %46, %16
  %50 = tail call i32 @regulator_bulk_disable(i32 noundef %34, ptr noundef %28) #9
  %51 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 39
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %52, i32 noundef 88, i32 noundef 6144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %56

56:                                               ; preds = %54, %49
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.55) #9
  store i8 0, ptr %5, align 1
  br label %57

57:                                               ; preds = %56, %8
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_set_display_mode(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @drm_mode_destroy(ptr noundef %8, ptr noundef nonnull %4) #9
  store ptr null, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @drm_mode_duplicate(ptr noundef %11, ptr noundef %1) #9
  store ptr %12, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.msm_dsi_host_set_display_mode) #10
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ -12, %14 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_host_get_panel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 41
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @of_drm_find_panel(ptr noundef %3) #9
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @msm_dsi_host_get_mode_flags(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_host_get_bridge(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 41
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @of_drm_find_bridge(ptr noundef %3) #9
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_snapshot(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  %7 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_dsi_host, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %8, ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef %12) #9
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_add_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_test_pattern_en(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 344
  %9 = tail call i32 @msm_readl(ptr noundef %8) #9
  %10 = load ptr, ptr %6, align 4
  br i1 %5, label %24, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %10, i32 352
  tail call void @msm_writel(i32 noundef 255, ptr noundef %12) #9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 408
  tail call void @msm_writel(i32 noundef 256, ptr noundef %14) #9
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 416
  tail call void @msm_writel(i32 noundef 5, ptr noundef %16) #9
  %17 = or i32 %9, 48
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 344
  tail call void @msm_writel(i32 noundef %17, ptr noundef %19) #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.108) #9
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 344
  %22 = tail call i32 @msm_readl(ptr noundef %21) #9
  %23 = or i32 %22, 1
  br label %37

24:                                               ; preds = %1
  %25 = getelementptr i8, ptr %10, i32 360
  tail call void @msm_writel(i32 noundef 255, ptr noundef %25) #9
  %26 = or i32 %9, 768
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 344
  tail call void @msm_writel(i32 noundef %26, ptr noundef %28) #9
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 412
  tail call void @msm_writel(i32 noundef 128, ptr noundef %30) #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.109) #9
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 344
  %33 = tail call i32 @msm_readl(ptr noundef %32) #9
  %34 = or i32 %33, 1
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i8, ptr %35, i32 344
  tail call void @msm_writel(i32 noundef %34, ptr noundef %36) #9
  br label %37

37:                                               ; preds = %24, %11
  %38 = phi i32 [ 344, %11 ], [ 384, %24 ]
  %39 = phi i32 [ %23, %11 ], [ 1, %24 ]
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  tail call void @msm_writel(i32 noundef %39, ptr noundef %41) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_cfg_get(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_host_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 47
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %52, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 42
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr %3, align 8
  %13 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 43
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 44
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 45
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %20, ptr noundef nonnull @.str.89, i32 noundef 3) #9
  %22 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 22
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %28, label %24

24:                                               ; preds = %8
  %25 = tail call ptr @devm_gpiod_get_optional(ptr noundef %20, ptr noundef nonnull @.str.91, i32 noundef 1) #9
  %26 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 23
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %8
  %29 = phi ptr [ %21, %8 ], [ %25, %24 ]
  %30 = phi ptr [ @.str.90, %8 ], [ @.str.92, %24 ]
  %31 = phi ptr [ %22, %8 ], [ %26, %24 ]
  %32 = ptrtoint ptr %29 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %30, i32 noundef %32) #9
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %28, %24
  %37 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @dsi_dev_attach(ptr noundef %38) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.88, i32 noundef %43) #9
  %44 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 33
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 32
  %51 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %50) #9
  br label %52

52:                                               ; preds = %47, %41, %36, %28, %2
  %53 = phi i32 [ -22, %2 ], [ %34, %28 ], [ %39, %36 ], [ 0, %47 ], [ 0, %41 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_host_detach(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @dsi_dev_detach(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 41
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.88, i32 noundef %7) #9
  %8 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 33
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 32
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %14) #9
  br label %16

16:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_host_transfer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 51
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.msm_dsi_host, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @msm_dsi_manager_cmd_xfer(i32 noundef %11, ptr noundef nonnull %1) #9
  tail call void @mutex_unlock(ptr noundef %9) #9
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = phi i32 [ %12, %8 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_dev_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_dev_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_manager_cmd_xfer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_manager_cmd_xfer_trigger(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_phy_set_continuous_clock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148418128, i64 2148418408, i64 2148418742, i64 2148419076}
!11 = !{!"auto-init"}
!12 = !{i64 2156096454}
!13 = !{i64 2156096868}
!14 = !{i64 2156097014}
!15 = !{i64 2156097146}
!16 = !{i64 2148106604}
!17 = !{i64 502765, i64 2147992736, i64 2147992762, i64 2147992809, i64 2147992831, i64 2147992859, i64 2147992879}
!18 = !{i64 2148008763, i64 2148008795, i64 2148008824, i64 2148008858, i64 2148008889, i64 2148008912}
!19 = !{i64 2149522555}
!20 = !{i64 2156113128}
!21 = !{i64 2156113260}
!22 = !{i64 2156114927}
!23 = !{i64 2156115167}
!24 = !{i64 2156089883}
