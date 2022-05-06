; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_dsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vc4_dsi_variant = type { i32, i8, ptr, ptr, i32 }
%struct.debugfs_reg32 = type { ptr, i32 }
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
%struct.vc4_dsi = type { ptr, %struct.mipi_dsi_host, ptr, ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x %struct.clk_fixed_factor], ptr, ptr, %struct.completion, i32, %struct.debugfs_regset32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.vc4_dsi_encoder = type { %struct.vc4_encoder, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"vc4_dsi\00", align 1
@vc4_dsi_dt_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-dsi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_dsi1_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dsi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_dsi0_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dsi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_dsi1_variant }, %struct.of_device_id zeroinitializer], align 4
@vc4_dsi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_dsi_dev_probe, ptr @vc4_dsi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_dsi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_dsi_host_ops = internal constant %struct.mipi_dsi_host_ops { ptr @vc4_dsi_host_attach, ptr @vc4_dsi_host_detach, ptr @vc4_dsi_host_transfer }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown DSI format: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Only VIDEO mode panels supported currently.\0A\00", align 1
@vc4_dsi_ops = internal constant %struct.component_ops { ptr @vc4_dsi_bind, ptr @vc4_dsi_unbind }, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Port returned 0x%08x for ID instead of 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to get DMA memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to get DMA channel: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"vc4 dsi\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to get interrupt: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to get escape clock: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to get phy clock: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to get pixel clock: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Failed to set esc clock: %d\0A\00", align 1
@vc4_dsi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @vc4_dsi_encoder_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_dsi_encoder_disable, ptr @vc4_dsi_encoder_enable, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Failed to set up DMA register write\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Failed to submit DMA: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Failed to wait for DMA: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"LPDT sync\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"data lane 0 sequence\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"LP0 contention\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"LP1 contention\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"HSTX timeout\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"LPRX timeout\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"turnaround timeout\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"peripheral reset timeout\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"DSI%d: %s error\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"ddr2\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ddr\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"dsi%u_%s\00", align 1
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.32 = private unnamed_addr constant [48 x i8] c"Timeout waiting for DSI ULPS entry: STAT 0x%08x\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"Timeout waiting for DSI STOP entry: STAT 0x%08x\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Failed to runtime PM enable on DSI%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Failed to set phy clock to %ld: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/vc4/vc4_dsi.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.38 = private unnamed_addr constant [40 x i8] c"Failed to turn on DSI escape clock: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Failed to turn on DSI PLL: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"Failed to set pixel clock to %ldHz: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"Failed to turn on DSI pixel clock: %d\0A\00", align 1
@vc4_dsi_host_transfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"transfer interrupt wait timeout\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"instat: 0x%08x\0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"DSI returned %db, expecting %db\0A\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"DSI transfer failed, resetting: %d\0A\00", align 1
@bcm2711_dsi1_variant = internal constant %struct.vc4_dsi_variant { i32 1, i8 0, ptr @.str.47, ptr @dsi1_regs, i32 22 }, align 4
@bcm2835_dsi0_variant = internal constant %struct.vc4_dsi_variant { i32 0, i8 0, ptr @.str.70, ptr @dsi0_regs, i32 22 }, align 4
@bcm2835_dsi1_variant = internal constant %struct.vc4_dsi_variant { i32 1, i8 1, ptr @.str.47, ptr @dsi1_regs, i32 22 }, align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"dsi1_regs\00", align 1
@dsi1_regs = internal constant [22 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.48, i32 0 }, %struct.debugfs_reg32 { ptr @.str.49, i32 56 }, %struct.debugfs_reg32 { ptr @.str.50, i32 60 }, %struct.debugfs_reg32 { ptr @.str.51, i32 64 }, %struct.debugfs_reg32 { ptr @.str.52, i32 68 }, %struct.debugfs_reg32 { ptr @.str.53, i32 72 }, %struct.debugfs_reg32 { ptr @.str.54, i32 40 }, %struct.debugfs_reg32 { ptr @.str.55, i32 44 }, %struct.debugfs_reg32 { ptr @.str.56, i32 48 }, %struct.debugfs_reg32 { ptr @.str.57, i32 52 }, %struct.debugfs_reg32 { ptr @.str.58, i32 76 }, %struct.debugfs_reg32 { ptr @.str.59, i32 80 }, %struct.debugfs_reg32 { ptr @.str.60, i32 84 }, %struct.debugfs_reg32 { ptr @.str.61, i32 88 }, %struct.debugfs_reg32 { ptr @.str.62, i32 92 }, %struct.debugfs_reg32 { ptr @.str.63, i32 96 }, %struct.debugfs_reg32 { ptr @.str.64, i32 100 }, %struct.debugfs_reg32 { ptr @.str.65, i32 104 }, %struct.debugfs_reg32 { ptr @.str.66, i32 108 }, %struct.debugfs_reg32 { ptr @.str.67, i32 112 }, %struct.debugfs_reg32 { ptr @.str.68, i32 116 }, %struct.debugfs_reg32 { ptr @.str.69, i32 140 }], align 4
@.str.48 = private unnamed_addr constant [10 x i8] c"DSI1_CTRL\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"DSI1_STAT\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"DSI1_HSTX_TO_CNT\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"DSI1_LPRX_TO_CNT\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"DSI1_TA_TO_CNT\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"DSI1_PR_TO_CNT\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"DSI1_DISP0_CTRL\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"DSI1_DISP1_CTRL\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"DSI1_INT_STAT\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"DSI1_INT_EN\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"DSI1_PHYC\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"DSI1_HS_CLT0\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"DSI1_HS_CLT1\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"DSI1_HS_CLT2\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"DSI1_HS_DLT3\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"DSI1_HS_DLT4\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"DSI1_HS_DLT5\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"DSI1_HS_DLT6\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"DSI1_HS_DLT7\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"DSI1_PHY_AFEC0\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"DSI1_PHY_AFEC1\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"DSI1_ID\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"dsi0_regs\00", align 1
@dsi0_regs = internal constant [22 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.71, i32 0 }, %struct.debugfs_reg32 { ptr @.str.72, i32 44 }, %struct.debugfs_reg32 { ptr @.str.73, i32 48 }, %struct.debugfs_reg32 { ptr @.str.74, i32 52 }, %struct.debugfs_reg32 { ptr @.str.75, i32 56 }, %struct.debugfs_reg32 { ptr @.str.76, i32 60 }, %struct.debugfs_reg32 { ptr @.str.77, i32 24 }, %struct.debugfs_reg32 { ptr @.str.78, i32 28 }, %struct.debugfs_reg32 { ptr @.str.79, i32 36 }, %struct.debugfs_reg32 { ptr @.str.80, i32 40 }, %struct.debugfs_reg32 { ptr @.str.81, i32 64 }, %struct.debugfs_reg32 { ptr @.str.82, i32 68 }, %struct.debugfs_reg32 { ptr @.str.83, i32 72 }, %struct.debugfs_reg32 { ptr @.str.84, i32 76 }, %struct.debugfs_reg32 { ptr @.str.85, i32 80 }, %struct.debugfs_reg32 { ptr @.str.86, i32 84 }, %struct.debugfs_reg32 { ptr @.str.87, i32 88 }, %struct.debugfs_reg32 { ptr @.str.88, i32 92 }, %struct.debugfs_reg32 { ptr @.str.89, i32 96 }, %struct.debugfs_reg32 { ptr @.str.90, i32 100 }, %struct.debugfs_reg32 { ptr @.str.91, i32 104 }, %struct.debugfs_reg32 { ptr @.str.92, i32 116 }], align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"DSI0_CTRL\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"DSI0_STAT\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"DSI0_HSTX_TO_CNT\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"DSI0_LPRX_TO_CNT\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"DSI0_TA_TO_CNT\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"DSI0_PR_TO_CNT\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"DSI0_DISP0_CTRL\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"DSI0_DISP1_CTRL\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"DSI0_INT_STAT\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"DSI0_INT_EN\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"DSI0_PHYC\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"DSI0_HS_CLT0\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"DSI0_HS_CLT1\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"DSI0_HS_CLT2\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"DSI0_HS_DLT3\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"DSI0_HS_DLT4\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"DSI0_HS_DLT5\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"DSI0_HS_DLT6\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"DSI0_HS_DLT7\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"DSI0_PHY_AFEC0\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"DSI0_PHY_AFEC1\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"DSI0_ID\00", align 1
@switch.table.vc4_dsi_host_attach = private unnamed_addr constant [4 x i32] [i32 24, i32 24, i32 18, i32 16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 192, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  store ptr %0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 1, i32 1
  store ptr @vc4_dsi_host_ops, ptr %8, align 4
  store ptr %2, ptr %7, align 4
  %9 = tail call i32 @mipi_dsi_host_register(ptr noundef %7) #8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_dev_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_host_attach(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 60
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 56
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr i8, ptr %0, i32 72
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %19 = getelementptr i8, ptr %0, i32 64
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef %20) #9
  br label %35

21:                                               ; preds = %2
  %22 = sub i32 3, %14
  %23 = getelementptr inbounds [4 x i32], ptr @switch.table.vc4_dsi_host_attach, i32 0, i32 %14
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 64
  store i32 %22, ptr %25, align 4
  %26 = udiv i32 %24, %5
  %27 = getelementptr i8, ptr %0, i32 68
  store i32 %26, ptr %27, align 4
  %28 = and i32 %11, 1
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  br i1 %29, label %32, label %33

32:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.2) #9
  br label %35

33:                                               ; preds = %21
  %34 = tail call i32 @component_add(ptr noundef %31, ptr noundef nonnull @vc4_dsi_ops) #8
  br label %35

35:                                               ; preds = %33, %32, %16
  %36 = phi i32 [ 0, %16 ], [ %34, %33 ], [ 0, %32 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_host_detach(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @component_del(ptr noundef %5, ptr noundef nonnull @vc4_dsi_ops) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_host_transfer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.mipi_dsi_packet, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = tail call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %6) #8
  %8 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %3, ptr noundef %1) #8
  %9 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 1, i32 2
  %14 = load i8, ptr %12, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, ptr %13, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = shl nuw nsw i32 %15, 8
  %20 = or i32 %19, %11
  %21 = or i32 %20, %18
  br i1 %7, label %27, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 16
  br label %157

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 17
  %31 = and i32 %29, 3
  %32 = lshr i32 %29, 2
  %33 = select i1 %30, i32 0, i32 %32
  %34 = select i1 %30, i32 %29, i32 %31
  %35 = icmp ugt i32 %33, 255
  %36 = load i1, ptr @vc4_dsi_host_transfer.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %27
  store i1 true, ptr @vc4_dsi_host_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1140, i32 noundef 9, ptr noundef null) #8
  br label %40

40:                                               ; preds = %39, %27
  %41 = shl nuw nsw i32 %34, 24
  %42 = or i32 %41, %21
  %43 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 16
  %47 = icmp eq i32 %34, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = getelementptr i8, ptr %0, i32 52
  %50 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 3
  %51 = getelementptr i8, ptr %0, i32 36
  %52 = getelementptr i8, ptr %0, i32 44
  %53 = getelementptr i8, ptr %0, i32 48
  %54 = getelementptr i8, ptr %0, i32 40
  %55 = getelementptr i8, ptr %0, i32 32
  br label %66

56:                                               ; preds = %102, %40
  %57 = phi i32 [ 0, %40 ], [ %34, %102 ]
  %58 = icmp eq i32 %33, 0
  br i1 %58, label %157, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 3
  %61 = getelementptr i8, ptr %0, i32 36
  %62 = getelementptr i8, ptr %0, i32 44
  %63 = getelementptr i8, ptr %0, i32 48
  %64 = getelementptr i8, ptr %0, i32 40
  %65 = getelementptr i8, ptr %0, i32 32
  br label %105

66:                                               ; preds = %102, %48
  %67 = phi i32 [ 0, %48 ], [ %103, %102 ]
  %68 = load ptr, ptr %49, align 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 20, i32 28
  %72 = load ptr, ptr %50, align 4
  %73 = getelementptr i8, ptr %72, i32 %67
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load ptr, ptr %51, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %79 = load ptr, ptr %55, align 4
  %80 = getelementptr i8, ptr %79, i32 %71
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %75) #8, !srcloc !11
  br label %102

81:                                               ; preds = %66
  %82 = load ptr, ptr %52, align 4
  store i32 %75, ptr %82, align 4
  %83 = load ptr, ptr %76, align 4
  %84 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 30
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %53, align 4
  %87 = add i32 %86, %71
  %88 = load i32, ptr %54, align 4
  %89 = call ptr %85(ptr noundef nonnull %76, i32 noundef %87, i32 noundef %88, i32 noundef 4, i32 noundef 0) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %102

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %89, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 %94(ptr noundef nonnull %89) #8
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %95) #8
  br label %102

98:                                               ; preds = %92
  %99 = call i32 @dma_sync_wait(ptr noundef nonnull %76, i32 noundef %95) #8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %99) #8
  br label %102

102:                                              ; preds = %101, %98, %97, %91, %78
  %103 = add nuw i32 %67, 1
  %104 = icmp eq i32 %103, %34
  br i1 %104, label %56, label %66

105:                                              ; preds = %154, %59
  %106 = phi i32 [ 0, %59 ], [ %155, %154 ]
  %107 = load ptr, ptr %60, align 4
  %108 = getelementptr i8, ptr %107, i32 %57
  %109 = shl i32 %106, 2
  %110 = getelementptr i8, ptr %108, i32 %109
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = getelementptr i8, ptr %110, i32 1
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 8
  %117 = or i32 %116, %112
  %118 = getelementptr i8, ptr %110, i32 2
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 16
  %122 = or i32 %117, %121
  %123 = getelementptr i8, ptr %110, i32 3
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl nuw i32 %125, 24
  %127 = or i32 %122, %126
  %128 = load ptr, ptr %61, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %105
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %131 = load ptr, ptr %65, align 4
  %132 = getelementptr i8, ptr %131, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %127) #8, !srcloc !11
  br label %154

133:                                              ; preds = %105
  %134 = load ptr, ptr %62, align 4
  store i32 %127, ptr %134, align 4
  %135 = load ptr, ptr %128, align 4
  %136 = getelementptr inbounds %struct.dma_device, ptr %135, i32 0, i32 30
  %137 = load ptr, ptr %136, align 4
  %138 = load i32, ptr %63, align 4
  %139 = add i32 %138, 32
  %140 = load i32, ptr %64, align 4
  %141 = call ptr %137(ptr noundef nonnull %128, i32 noundef %139, i32 noundef %140, i32 noundef 4, i32 noundef 0) #8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %154

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %141, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  %147 = call i32 %146(ptr noundef nonnull %141) #8
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %147) #8
  br label %154

150:                                              ; preds = %144
  %151 = call i32 @dma_sync_wait(ptr noundef nonnull %128, i32 noundef %147) #8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %151) #8
  br label %154

154:                                              ; preds = %153, %150, %149, %143, %130
  %155 = add nuw nsw i32 %106, 1
  %156 = icmp eq i32 %155, %33
  br i1 %156, label %157, label %105

157:                                              ; preds = %154, %56, %22
  %158 = phi i32 [ %42, %56 ], [ %21, %22 ], [ %42, %154 ]
  %159 = phi ptr [ %43, %56 ], [ %23, %22 ], [ %43, %154 ]
  %160 = phi i32 [ %46, %56 ], [ %26, %22 ], [ %46, %154 ]
  %161 = phi i32 [ 1025, %56 ], [ 1025, %22 ], [ 1537, %154 ]
  %162 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 2
  %163 = load i16, ptr %162, align 2
  %164 = shl i16 %163, 2
  %165 = and i16 %164, 8
  %166 = zext i16 %165 to i32
  %167 = or i32 %160, %166
  %168 = or i32 %167, 4
  %169 = select i1 %7, i32 %168, i32 %167
  %170 = or i32 %169, %161
  %171 = getelementptr i8, ptr %0, i32 168
  store i32 0, ptr %171, align 4
  %172 = getelementptr i8, ptr %0, i32 152
  store i32 0, ptr %172, align 4
  %173 = getelementptr i8, ptr %0, i32 52
  %174 = load ptr, ptr %173, align 4
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i32 36, i32 48
  %178 = getelementptr i8, ptr %0, i32 36
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %157
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %182 = getelementptr i8, ptr %0, i32 32
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i8, ptr %183, i32 %177
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 2097154) #8, !srcloc !11
  br label %209

185:                                              ; preds = %157
  %186 = getelementptr i8, ptr %0, i32 44
  %187 = load ptr, ptr %186, align 4
  store i32 2097154, ptr %187, align 4
  %188 = load ptr, ptr %179, align 4
  %189 = getelementptr inbounds %struct.dma_device, ptr %188, i32 0, i32 30
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr i8, ptr %0, i32 48
  %192 = load i32, ptr %191, align 4
  %193 = add i32 %192, %177
  %194 = getelementptr i8, ptr %0, i32 40
  %195 = load i32, ptr %194, align 4
  %196 = call ptr %190(ptr noundef nonnull %179, i32 noundef %193, i32 noundef %195, i32 noundef 4, i32 noundef 0) #8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %209

199:                                              ; preds = %185
  %200 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %196, i32 0, i32 4
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 %201(ptr noundef nonnull %196) #8
  %203 = icmp sgt i32 %202, -1
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %202) #8
  br label %209

205:                                              ; preds = %199
  %206 = call i32 @dma_sync_wait(ptr noundef nonnull %179, i32 noundef %202) #8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %206) #8
  br label %209

209:                                              ; preds = %208, %205, %204, %198, %181
  %210 = load i32, ptr %159, align 4
  %211 = icmp eq i32 %210, 0
  %212 = load ptr, ptr %173, align 4
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, i32 40, i32 52
  %216 = load ptr, ptr %178, align 4
  %217 = icmp eq ptr %216, null
  br i1 %211, label %247, label %218

218:                                              ; preds = %209
  br i1 %217, label %219, label %223

219:                                              ; preds = %218
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %220 = getelementptr i8, ptr %0, i32 32
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr i8, ptr %221, i32 %215
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 2113472) #8, !srcloc !11
  br label %276

223:                                              ; preds = %218
  %224 = getelementptr i8, ptr %0, i32 44
  %225 = load ptr, ptr %224, align 4
  store i32 2113472, ptr %225, align 4
  %226 = load ptr, ptr %216, align 4
  %227 = getelementptr inbounds %struct.dma_device, ptr %226, i32 0, i32 30
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr i8, ptr %0, i32 48
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, %215
  %232 = getelementptr i8, ptr %0, i32 40
  %233 = load i32, ptr %232, align 4
  %234 = call ptr %228(ptr noundef nonnull %216, i32 noundef %231, i32 noundef %233, i32 noundef 4, i32 noundef 0) #8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %237

236:                                              ; preds = %223
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %276

237:                                              ; preds = %223
  %238 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %234, i32 0, i32 4
  %239 = load ptr, ptr %238, align 4
  %240 = call i32 %239(ptr noundef nonnull %234) #8
  %241 = icmp sgt i32 %240, -1
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %240) #8
  br label %276

243:                                              ; preds = %237
  %244 = call i32 @dma_sync_wait(ptr noundef nonnull %216, i32 noundef %240) #8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %276, label %246

246:                                              ; preds = %243
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %244) #8
  br label %276

247:                                              ; preds = %209
  br i1 %217, label %248, label %252

248:                                              ; preds = %247
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %249 = getelementptr i8, ptr %0, i32 32
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr i8, ptr %250, i32 %215
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 16322) #8, !srcloc !11
  br label %276

252:                                              ; preds = %247
  %253 = getelementptr i8, ptr %0, i32 44
  %254 = load ptr, ptr %253, align 4
  store i32 16322, ptr %254, align 4
  %255 = load ptr, ptr %216, align 4
  %256 = getelementptr inbounds %struct.dma_device, ptr %255, i32 0, i32 30
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr i8, ptr %0, i32 48
  %259 = load i32, ptr %258, align 4
  %260 = add i32 %259, %215
  %261 = getelementptr i8, ptr %0, i32 40
  %262 = load i32, ptr %261, align 4
  %263 = call ptr %257(ptr noundef nonnull %216, i32 noundef %260, i32 noundef %262, i32 noundef 4, i32 noundef 0) #8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %252
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %276

266:                                              ; preds = %252
  %267 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %263, i32 0, i32 4
  %268 = load ptr, ptr %267, align 4
  %269 = call i32 %268(ptr noundef nonnull %263) #8
  %270 = icmp sgt i32 %269, -1
  br i1 %270, label %272, label %271

271:                                              ; preds = %266
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %269) #8
  br label %276

272:                                              ; preds = %266
  %273 = call i32 @dma_sync_wait(ptr noundef nonnull %216, i32 noundef %269) #8
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %273) #8
  br label %276

276:                                              ; preds = %275, %272, %271, %265, %248, %246, %243, %242, %236, %219
  %277 = load ptr, ptr %178, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %280 = getelementptr i8, ptr %0, i32 32
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr i8, ptr %281, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %158) #8, !srcloc !11
  br label %307

283:                                              ; preds = %276
  %284 = getelementptr i8, ptr %0, i32 44
  %285 = load ptr, ptr %284, align 4
  store i32 %158, ptr %285, align 4
  %286 = load ptr, ptr %277, align 4
  %287 = getelementptr inbounds %struct.dma_device, ptr %286, i32 0, i32 30
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr i8, ptr %0, i32 48
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, 8
  %292 = getelementptr i8, ptr %0, i32 40
  %293 = load i32, ptr %292, align 4
  %294 = call ptr %288(ptr noundef nonnull %277, i32 noundef %291, i32 noundef %293, i32 noundef 4, i32 noundef 0) #8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %283
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %307

297:                                              ; preds = %283
  %298 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %294, i32 0, i32 4
  %299 = load ptr, ptr %298, align 4
  %300 = call i32 %299(ptr noundef nonnull %294) #8
  %301 = icmp sgt i32 %300, -1
  br i1 %301, label %303, label %302

302:                                              ; preds = %297
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %300) #8
  br label %307

303:                                              ; preds = %297
  %304 = call i32 @dma_sync_wait(ptr noundef nonnull %277, i32 noundef %300) #8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %303
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %304) #8
  br label %307

307:                                              ; preds = %306, %303, %302, %296, %279
  %308 = load ptr, ptr %178, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %311 = getelementptr i8, ptr %0, i32 32
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr i8, ptr %312, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %170) #8, !srcloc !11
  br label %338

314:                                              ; preds = %307
  %315 = getelementptr i8, ptr %0, i32 44
  %316 = load ptr, ptr %315, align 4
  store i32 %170, ptr %316, align 4
  %317 = load ptr, ptr %308, align 4
  %318 = getelementptr inbounds %struct.dma_device, ptr %317, i32 0, i32 30
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr i8, ptr %0, i32 48
  %321 = load i32, ptr %320, align 4
  %322 = add i32 %321, 4
  %323 = getelementptr i8, ptr %0, i32 40
  %324 = load i32, ptr %323, align 4
  %325 = call ptr %319(ptr noundef nonnull %308, i32 noundef %322, i32 noundef %324, i32 noundef 4, i32 noundef 0) #8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %328

327:                                              ; preds = %314
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %338

328:                                              ; preds = %314
  %329 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %325, i32 0, i32 4
  %330 = load ptr, ptr %329, align 4
  %331 = call i32 %330(ptr noundef nonnull %325) #8
  %332 = icmp sgt i32 %331, -1
  br i1 %332, label %334, label %333

333:                                              ; preds = %328
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %331) #8
  br label %338

334:                                              ; preds = %328
  %335 = call i32 @dma_sync_wait(ptr noundef nonnull %308, i32 noundef %331) #8
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %334
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %335) #8
  br label %338

338:                                              ; preds = %337, %334, %333, %327, %310
  %339 = call i32 @wait_for_completion_timeout(ptr noundef %172, i32 noundef 100) #8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %354

341:                                              ; preds = %338
  %342 = load ptr, ptr %4, align 4
  %343 = getelementptr inbounds %struct.platform_device, ptr %342, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %343, ptr noundef nonnull @.str.43) #9
  %344 = load ptr, ptr %4, align 4
  %345 = getelementptr inbounds %struct.platform_device, ptr %344, i32 0, i32 3
  %346 = getelementptr i8, ptr %0, i32 32
  %347 = load ptr, ptr %346, align 4
  %348 = load ptr, ptr %173, align 4
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, 0
  %351 = select i1 %350, i32 36, i32 48
  %352 = getelementptr i8, ptr %347, i32 %351
  %353 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %352) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %345, ptr noundef nonnull @.str.44, i32 noundef %353) #9
  br label %356

354:                                              ; preds = %338
  %355 = load i32, ptr %171, align 4
  br label %356

356:                                              ; preds = %354, %341
  %357 = phi i32 [ %355, %354 ], [ -110, %341 ]
  %358 = load ptr, ptr %173, align 4
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  %361 = select i1 %360, i32 40, i32 52
  %362 = load ptr, ptr %178, align 4
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %368

364:                                              ; preds = %356
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %365 = getelementptr i8, ptr %0, i32 32
  %366 = load ptr, ptr %365, align 4
  %367 = getelementptr i8, ptr %366, i32 %361
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %367, i32 16320) #8, !srcloc !11
  br label %392

368:                                              ; preds = %356
  %369 = getelementptr i8, ptr %0, i32 44
  %370 = load ptr, ptr %369, align 4
  store i32 16320, ptr %370, align 4
  %371 = load ptr, ptr %362, align 4
  %372 = getelementptr inbounds %struct.dma_device, ptr %371, i32 0, i32 30
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr i8, ptr %0, i32 48
  %375 = load i32, ptr %374, align 4
  %376 = add i32 %375, %361
  %377 = getelementptr i8, ptr %0, i32 40
  %378 = load i32, ptr %377, align 4
  %379 = call ptr %373(ptr noundef nonnull %362, i32 noundef %376, i32 noundef %378, i32 noundef 4, i32 noundef 0) #8
  %380 = icmp eq ptr %379, null
  br i1 %380, label %381, label %382

381:                                              ; preds = %368
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %392

382:                                              ; preds = %368
  %383 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %379, i32 0, i32 4
  %384 = load ptr, ptr %383, align 4
  %385 = call i32 %384(ptr noundef nonnull %379) #8
  %386 = icmp sgt i32 %385, -1
  br i1 %386, label %388, label %387

387:                                              ; preds = %382
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %385) #8
  br label %392

388:                                              ; preds = %382
  %389 = call i32 @dma_sync_wait(ptr noundef nonnull %362, i32 noundef %385) #8
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %388
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %389) #8
  br label %392

392:                                              ; preds = %391, %388, %387, %381, %364
  %393 = icmp eq i32 %357, 0
  br i1 %393, label %394, label %436

394:                                              ; preds = %392
  %395 = load i32, ptr %159, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %572, label %397

397:                                              ; preds = %394
  %398 = getelementptr i8, ptr %0, i32 32
  %399 = load ptr, ptr %398, align 4
  %400 = load ptr, ptr %173, align 4
  %401 = load i32, ptr %400, align 4
  %402 = icmp eq i32 %401, 0
  %403 = select i1 %402, i32 12, i32 20
  %404 = getelementptr i8, ptr %399, i32 %403
  %405 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %404) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %406 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %407 = load ptr, ptr %406, align 4
  %408 = and i32 %405, 16777216
  %409 = icmp eq i32 %408, 0
  %410 = lshr i32 %405, 8
  br i1 %409, label %427, label %411

411:                                              ; preds = %397
  %412 = and i32 %410, 65535
  %413 = load i32, ptr %159, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %435

415:                                              ; preds = %411
  %416 = icmp eq i32 %412, 0
  br i1 %416, label %572, label %417

417:                                              ; preds = %417, %415
  %418 = phi i32 [ %424, %417 ], [ 0, %415 ]
  %419 = load ptr, ptr %398, align 4
  %420 = getelementptr i8, ptr %419, i32 36
  %421 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %420) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %422 = trunc i32 %421 to i8
  %423 = getelementptr i8, ptr %407, i32 %418
  store i8 %422, ptr %423, align 1
  %424 = add nuw i32 %418, 1
  %425 = load i32, ptr %159, align 4
  %426 = icmp ult i32 %424, %425
  br i1 %426, label %417, label %572

427:                                              ; preds = %397
  %428 = trunc i32 %410 to i8
  store i8 %428, ptr %407, align 1
  %429 = load i32, ptr %159, align 4
  %430 = icmp ugt i32 %429, 1
  br i1 %430, label %431, label %572

431:                                              ; preds = %427
  %432 = lshr i32 %405, 16
  %433 = trunc i32 %432 to i8
  %434 = getelementptr i8, ptr %407, i32 1
  store i8 %433, ptr %434, align 1
  br label %572

435:                                              ; preds = %411
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %412, i32 noundef %413) #8
  br label %436

436:                                              ; preds = %435, %392
  %437 = phi i32 [ %357, %392 ], [ -6, %435 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %437) #8
  %438 = getelementptr i8, ptr %0, i32 32
  %439 = load ptr, ptr %438, align 4
  %440 = getelementptr i8, ptr %439, i32 4
  %441 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %440) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %442 = and i32 %441, -2
  %443 = load ptr, ptr %178, align 4
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %448

445:                                              ; preds = %436
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %446 = load ptr, ptr %438, align 4
  %447 = getelementptr i8, ptr %446, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %447, i32 %442) #8, !srcloc !11
  br label %472

448:                                              ; preds = %436
  %449 = getelementptr i8, ptr %0, i32 44
  %450 = load ptr, ptr %449, align 4
  store i32 %442, ptr %450, align 4
  %451 = load ptr, ptr %443, align 4
  %452 = getelementptr inbounds %struct.dma_device, ptr %451, i32 0, i32 30
  %453 = load ptr, ptr %452, align 4
  %454 = getelementptr i8, ptr %0, i32 48
  %455 = load i32, ptr %454, align 4
  %456 = add i32 %455, 4
  %457 = getelementptr i8, ptr %0, i32 40
  %458 = load i32, ptr %457, align 4
  %459 = call ptr %453(ptr noundef nonnull %443, i32 noundef %456, i32 noundef %458, i32 noundef 4, i32 noundef 0) #8
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %462

461:                                              ; preds = %448
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %472

462:                                              ; preds = %448
  %463 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %459, i32 0, i32 4
  %464 = load ptr, ptr %463, align 4
  %465 = call i32 %464(ptr noundef nonnull %459) #8
  %466 = icmp sgt i32 %465, -1
  br i1 %466, label %468, label %467

467:                                              ; preds = %462
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %465) #8
  br label %472

468:                                              ; preds = %462
  %469 = call i32 @dma_sync_wait(ptr noundef nonnull %443, i32 noundef %465) #8
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %468
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %469) #8
  br label %472

472:                                              ; preds = %471, %468, %467, %461, %445
  %473 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %473(i32 noundef 214748) #8
  %474 = load ptr, ptr %438, align 4
  %475 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %474) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %476 = load ptr, ptr %173, align 4
  %477 = load i32, ptr %476, align 4
  %478 = icmp eq i32 %477, 0
  %479 = select i1 %478, i32 248, i32 240
  %480 = or i32 %479, %475
  %481 = load ptr, ptr %178, align 4
  %482 = icmp eq ptr %481, null
  br i1 %482, label %483, label %485

483:                                              ; preds = %472
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %484 = load ptr, ptr %438, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %484, i32 %480) #8, !srcloc !11
  br label %508

485:                                              ; preds = %472
  %486 = getelementptr i8, ptr %0, i32 44
  %487 = load ptr, ptr %486, align 4
  store i32 %480, ptr %487, align 4
  %488 = load ptr, ptr %481, align 4
  %489 = getelementptr inbounds %struct.dma_device, ptr %488, i32 0, i32 30
  %490 = load ptr, ptr %489, align 4
  %491 = getelementptr i8, ptr %0, i32 48
  %492 = load i32, ptr %491, align 4
  %493 = getelementptr i8, ptr %0, i32 40
  %494 = load i32, ptr %493, align 4
  %495 = call ptr %490(ptr noundef nonnull %481, i32 noundef %492, i32 noundef %494, i32 noundef 4, i32 noundef 0) #8
  %496 = icmp eq ptr %495, null
  br i1 %496, label %497, label %498

497:                                              ; preds = %485
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %508

498:                                              ; preds = %485
  %499 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %495, i32 0, i32 4
  %500 = load ptr, ptr %499, align 4
  %501 = call i32 %500(ptr noundef nonnull %495) #8
  %502 = icmp sgt i32 %501, -1
  br i1 %502, label %504, label %503

503:                                              ; preds = %498
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %501) #8
  br label %508

504:                                              ; preds = %498
  %505 = call i32 @dma_sync_wait(ptr noundef nonnull %481, i32 noundef %501) #8
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %504
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %505) #8
  br label %508

508:                                              ; preds = %507, %504, %503, %497, %483
  %509 = load ptr, ptr %178, align 4
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %514

511:                                              ; preds = %508
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %512 = load ptr, ptr %438, align 4
  %513 = getelementptr i8, ptr %512, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 0) #8, !srcloc !11
  br label %538

514:                                              ; preds = %508
  %515 = getelementptr i8, ptr %0, i32 44
  %516 = load ptr, ptr %515, align 4
  store i32 0, ptr %516, align 4
  %517 = load ptr, ptr %509, align 4
  %518 = getelementptr inbounds %struct.dma_device, ptr %517, i32 0, i32 30
  %519 = load ptr, ptr %518, align 4
  %520 = getelementptr i8, ptr %0, i32 48
  %521 = load i32, ptr %520, align 4
  %522 = add i32 %521, 4
  %523 = getelementptr i8, ptr %0, i32 40
  %524 = load i32, ptr %523, align 4
  %525 = call ptr %519(ptr noundef nonnull %509, i32 noundef %522, i32 noundef %524, i32 noundef 4, i32 noundef 0) #8
  %526 = icmp eq ptr %525, null
  br i1 %526, label %527, label %528

527:                                              ; preds = %514
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %538

528:                                              ; preds = %514
  %529 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %525, i32 0, i32 4
  %530 = load ptr, ptr %529, align 4
  %531 = call i32 %530(ptr noundef nonnull %525) #8
  %532 = icmp sgt i32 %531, -1
  br i1 %532, label %534, label %533

533:                                              ; preds = %528
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %531) #8
  br label %538

534:                                              ; preds = %528
  %535 = call i32 @dma_sync_wait(ptr noundef nonnull %509, i32 noundef %531) #8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %538, label %537

537:                                              ; preds = %534
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %535) #8
  br label %538

538:                                              ; preds = %537, %534, %533, %527, %511
  %539 = load ptr, ptr %173, align 4
  %540 = load i32, ptr %539, align 4
  %541 = icmp eq i32 %540, 0
  %542 = select i1 %541, i32 40, i32 52
  %543 = load ptr, ptr %178, align 4
  %544 = icmp eq ptr %543, null
  br i1 %544, label %545, label %548

545:                                              ; preds = %538
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %546 = load ptr, ptr %438, align 4
  %547 = getelementptr i8, ptr %546, i32 %542
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %547, i32 16320) #8, !srcloc !11
  br label %572

548:                                              ; preds = %538
  %549 = getelementptr i8, ptr %0, i32 44
  %550 = load ptr, ptr %549, align 4
  store i32 16320, ptr %550, align 4
  %551 = load ptr, ptr %543, align 4
  %552 = getelementptr inbounds %struct.dma_device, ptr %551, i32 0, i32 30
  %553 = load ptr, ptr %552, align 4
  %554 = getelementptr i8, ptr %0, i32 48
  %555 = load i32, ptr %554, align 4
  %556 = add i32 %555, %542
  %557 = getelementptr i8, ptr %0, i32 40
  %558 = load i32, ptr %557, align 4
  %559 = call ptr %553(ptr noundef nonnull %543, i32 noundef %556, i32 noundef %558, i32 noundef 4, i32 noundef 0) #8
  %560 = icmp eq ptr %559, null
  br i1 %560, label %561, label %562

561:                                              ; preds = %548
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %572

562:                                              ; preds = %548
  %563 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %559, i32 0, i32 4
  %564 = load ptr, ptr %563, align 4
  %565 = call i32 %564(ptr noundef nonnull %559) #8
  %566 = icmp sgt i32 %565, -1
  br i1 %566, label %568, label %567

567:                                              ; preds = %562
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %565) #8
  br label %572

568:                                              ; preds = %562
  %569 = call i32 @dma_sync_wait(ptr noundef nonnull %543, i32 noundef %565) #8
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %572, label %571

571:                                              ; preds = %568
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %569) #8
  br label %572

572:                                              ; preds = %571, %568, %567, %561, %545, %431, %427, %417, %415, %394
  %573 = phi i32 [ 0, %394 ], [ %437, %545 ], [ %437, %561 ], [ %437, %567 ], [ %437, %568 ], [ %437, %571 ], [ 0, %431 ], [ 0, %427 ], [ 0, %415 ], [ 0, %417 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %573
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.dma_cap_mask_t, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @vc4_dsi_dt_match, ptr noundef %0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %228, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 10
  store ptr %14, ptr %15, align 4
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 104, i32 noundef 3520) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %228, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 4
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 4, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vc4_encoder, ptr %16, i32 0, i32 1
  store i32 5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %16, i32 0, i32 1
  store ptr %9, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 2
  store ptr %16, ptr %23, align 4
  %24 = tail call ptr @vc4_ioremap_regs(ptr noundef %5, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = ptrtoint ptr %24 to i32
  br label %228

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 23
  %31 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 23, i32 2
  store ptr %24, ptr %31, align 4
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr inbounds %struct.vc4_dsi_variant, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %30, align 4
  %35 = getelementptr inbounds %struct.vc4_dsi_variant, ptr %32, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 23, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %32, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 116, i32 140
  %41 = getelementptr i8, ptr %24, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %43 = icmp eq i32 %42, 6583145
  br i1 %43, label %52, label %44

44:                                               ; preds = %29
  %45 = load ptr, ptr %25, align 4
  %46 = load ptr, ptr %15, align 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 116, i32 140
  %50 = getelementptr i8, ptr %45, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %51, i32 noundef 6583145) #9
  br label %228

52:                                               ; preds = %29
  %53 = load ptr, ptr %15, align 4
  %54 = getelementptr inbounds %struct.vc4_dsi_variant, ptr %53, i32 0, i32 1
  %55 = load i8, ptr %54, align 4, !range !20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 7
  %59 = tail call ptr @dma_alloc_attrs(ptr noundef %0, i32 noundef 4, ptr noundef %58, i32 noundef 3264, i32 noundef 0) #8
  %60 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 8
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %228

63:                                               ; preds = %57
  store i32 0, ptr %4, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %4) #8
  %64 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %4) #8
  %65 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 6
  store ptr %64, ptr %65, align 4
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = icmp eq ptr %64, inttoptr (i32 -517 to ptr)
  br i1 %68, label %228, label %69

69:                                               ; preds = %67
  %70 = ptrtoint ptr %64 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %70) #8
  br label %228

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %73 = load ptr, ptr %72, align 8
  %74 = call ptr @__of_get_address(ptr noundef %73, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #8
  %77 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 9
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %71, %52
  %79 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 21
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 21, i32 1
  call void @__init_swait_queue_head(ptr noundef %80, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #8
  %81 = load ptr, ptr %15, align 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 40, i32 52
  %85 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %89 = load ptr, ptr %25, align 4
  %90 = getelementptr i8, ptr %89, i32 %84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 16320) #8, !srcloc !11
  br label %115

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 8
  %93 = load ptr, ptr %92, align 4
  store i32 16320, ptr %93, align 4
  %94 = load ptr, ptr %86, align 4
  %95 = getelementptr inbounds %struct.dma_device, ptr %94, i32 0, i32 30
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 9
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %84
  %100 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 7
  %101 = load i32, ptr %100, align 4
  %102 = call ptr %96(ptr noundef nonnull %86, i32 noundef %99, i32 noundef %101, i32 noundef 4, i32 noundef 0) #8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %115

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %102, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 %107(ptr noundef nonnull %102) #8
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %108) #8
  br label %115

111:                                              ; preds = %105
  %112 = call i32 @dma_sync_wait(ptr noundef nonnull %86, i32 noundef %108) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %112) #8
  br label %115

115:                                              ; preds = %114, %111, %110, %104, %88
  %116 = load ptr, ptr %15, align 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 36, i32 48
  %120 = load ptr, ptr %25, align 4
  %121 = getelementptr i8, ptr %120, i32 %119
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %123 = load ptr, ptr %85, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %126 = load ptr, ptr %25, align 4
  %127 = getelementptr i8, ptr %126, i32 %119
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %122) #8, !srcloc !11
  br label %152

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 8
  %130 = load ptr, ptr %129, align 4
  store i32 %122, ptr %130, align 4
  %131 = load ptr, ptr %123, align 4
  %132 = getelementptr inbounds %struct.dma_device, ptr %131, i32 0, i32 30
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 9
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, %119
  %137 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 7
  %138 = load i32, ptr %137, align 4
  %139 = call ptr %133(ptr noundef nonnull %123, i32 noundef %136, i32 noundef %138, i32 noundef 4, i32 noundef 0) #8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %152

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %139, i32 0, i32 4
  %144 = load ptr, ptr %143, align 4
  %145 = call i32 %144(ptr noundef nonnull %139) #8
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %145) #8
  br label %152

148:                                              ; preds = %142
  %149 = call i32 @dma_sync_wait(ptr noundef nonnull %123, i32 noundef %145) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %149) #8
  br label %152

152:                                              ; preds = %151, %148, %147, %141, %125
  %153 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 8
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  %156 = call i32 @platform_get_irq(ptr noundef %5, i32 noundef 0) #8
  br i1 %155, label %159, label %157

157:                                              ; preds = %152
  %158 = call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %156, ptr noundef nonnull @vc4_dsi_irq_defer_to_thread_handler, ptr noundef nonnull @vc4_dsi_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.6, ptr noundef %9) #8
  br label %161

159:                                              ; preds = %152
  %160 = call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %156, ptr noundef nonnull @vc4_dsi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %9) #8
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  switch i32 %162, label %163 [
    i32 0, label %164
    i32 -517, label %228
  ]

163:                                              ; preds = %161
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %162) #9
  br label %228

164:                                              ; preds = %161
  %165 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  %166 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 16
  store ptr %165, ptr %166, align 4
  %167 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = icmp eq ptr %165, inttoptr (i32 -517 to ptr)
  br i1 %169, label %228, label %170

170:                                              ; preds = %168
  %171 = ptrtoint ptr %165 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %171) #9
  br label %228

172:                                              ; preds = %164
  %173 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.10) #8
  %174 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 17
  store ptr %173, ptr %174, align 4
  %175 = icmp ugt ptr %173, inttoptr (i32 -4096 to ptr)
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = icmp eq ptr %173, inttoptr (i32 -517 to ptr)
  br i1 %177, label %228, label %178

178:                                              ; preds = %176
  %179 = ptrtoint ptr %173 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %179) #9
  br label %228

180:                                              ; preds = %172
  %181 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.12) #8
  %182 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 20
  store ptr %181, ptr %182, align 4
  %183 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = icmp eq ptr %181, inttoptr (i32 -517 to ptr)
  br i1 %185, label %228, label %186

186:                                              ; preds = %184
  %187 = ptrtoint ptr %181 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %187) #9
  br label %228

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %190 = load ptr, ptr %189, align 8
  %191 = call ptr @devm_drm_of_get_bridge(ptr noundef %0, ptr noundef %190, i32 noundef 0, i32 noundef 0) #8
  %192 = getelementptr inbounds %struct.vc4_dsi, ptr %9, i32 0, i32 3
  store ptr %191, ptr %192, align 4
  %193 = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = ptrtoint ptr %191 to i32
  br label %228

196:                                              ; preds = %188
  %197 = load ptr, ptr %166, align 4
  %198 = call i32 @clk_set_rate(ptr noundef %197, i32 noundef 100000000) #8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %198) #9
  br label %228

201:                                              ; preds = %196
  %202 = call fastcc i32 @vc4_dsi_init_phy_clocks(ptr noundef %9)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %228

204:                                              ; preds = %201
  %205 = load ptr, ptr %23, align 4
  %206 = call i32 @drm_simple_encoder_init(ptr noundef %7, ptr noundef %205, i32 noundef 6) #8
  %207 = load ptr, ptr %23, align 4
  %208 = getelementptr inbounds %struct.drm_encoder, ptr %207, i32 0, i32 11
  store ptr @vc4_dsi_encoder_helper_funcs, ptr %208, align 4
  %209 = load ptr, ptr %23, align 4
  %210 = load ptr, ptr %192, align 4
  %211 = call i32 @drm_bridge_attach(ptr noundef %209, ptr noundef %210, ptr noundef null, i32 noundef 0) #8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %204
  %214 = load ptr, ptr %23, align 4
  %215 = getelementptr inbounds %struct.drm_encoder, ptr %214, i32 0, i32 9
  %216 = load volatile ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, %215
  br i1 %217, label %224, label %218

218:                                              ; preds = %213
  %219 = load ptr, ptr %19, align 4
  %220 = getelementptr inbounds %struct.drm_encoder, ptr %214, i32 0, i32 9, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  store ptr %19, ptr %222, align 4
  store ptr %216, ptr %19, align 4
  store ptr %219, ptr %221, align 4
  %223 = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  store ptr %221, ptr %223, align 4
  store volatile ptr %215, ptr %215, align 4
  store ptr %215, ptr %220, align 4
  br label %224

224:                                              ; preds = %218, %213
  %225 = load ptr, ptr %15, align 4
  %226 = getelementptr inbounds %struct.vc4_dsi_variant, ptr %225, i32 0, i32 2
  %227 = load ptr, ptr %226, align 4
  call void @vc4_debugfs_add_regset32(ptr noundef %7, ptr noundef %227, ptr noundef %30) #8
  call void @pm_runtime_enable(ptr noundef %0) #8
  br label %228

228:                                              ; preds = %224, %204, %201, %200, %194, %186, %184, %178, %176, %170, %168, %163, %161, %69, %67, %62, %44, %27, %12, %3
  %229 = phi i32 [ %28, %27 ], [ -19, %44 ], [ %195, %194 ], [ %198, %200 ], [ 0, %224 ], [ -12, %62 ], [ -19, %3 ], [ -12, %12 ], [ %70, %69 ], [ -517, %67 ], [ %162, %161 ], [ %162, %163 ], [ %171, %170 ], [ -517, %168 ], [ %179, %178 ], [ -517, %176 ], [ %187, %186 ], [ -517, %184 ], [ %202, %201 ], [ %211, %204 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_dsi_unbind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #8
  %6 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %12, ptr %16, align 4
  store ptr %9, ptr %12, align 4
  store ptr %13, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %14, align 4
  %18 = load ptr, ptr %7, align 4
  br label %19

19:                                               ; preds = %11, %3
  %20 = phi ptr [ %8, %3 ], [ %18, %11 ]
  tail call void @drm_encoder_cleanup(ptr noundef %20) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsi_dma_workaround_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %8 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #8, !srcloc !11
  br label %35

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  store i32 %2, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 30
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %1
  %20 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr %16(ptr noundef nonnull %5, i32 noundef %19, i32 noundef %21, i32 noundef 4, i32 noundef 0) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %35

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef nonnull %22) #8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %28) #8
  br label %35

31:                                               ; preds = %25
  %32 = tail call i32 @dma_sync_wait(ptr noundef nonnull %5, i32 noundef %28) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %32) #8
  br label %35

35:                                               ; preds = %34, %31, %30, %24, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_irq_defer_to_thread_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 36, i32 48
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 2
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dsi_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 36, i32 48
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 36, i32 48
  %16 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %11) #8, !srcloc !11
  br label %46

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  store i32 %11, ptr %24, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 30
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %15
  %31 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr %27(ptr noundef nonnull %17, i32 noundef %30, i32 noundef %32, i32 noundef 4, i32 noundef 0) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %46

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef nonnull %33) #8
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %39) #8
  br label %46

42:                                               ; preds = %36
  %43 = tail call i32 @dma_sync_wait(ptr noundef nonnull %17, i32 noundef %39) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %43) #8
  br label %46

46:                                               ; preds = %45, %42, %41, %35, %19
  %47 = and i32 %11, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 4
  %51 = load i32, ptr %50, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %51, ptr noundef nonnull @.str.19) #8
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ 0, %46 ], [ 1, %49 ]
  %54 = and i32 %11, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 4
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %58, ptr noundef nonnull @.str.20) #8
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %53, %52 ], [ 1, %56 ]
  %61 = and i32 %11, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %5, align 4
  %65 = load i32, ptr %64, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %65, ptr noundef nonnull @.str.21) #8
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %60, %59 ], [ 1, %63 ]
  %68 = and i32 %11, 512
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %5, align 4
  %72 = load i32, ptr %71, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %72, ptr noundef nonnull @.str.22) #8
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i32 [ %67, %66 ], [ 1, %70 ]
  %75 = and i32 %11, 1024
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %5, align 4
  %79 = load i32, ptr %78, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %79, ptr noundef nonnull @.str.23) #8
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i32 [ %74, %73 ], [ 1, %77 ]
  %82 = and i32 %11, 2048
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 4
  %86 = load i32, ptr %85, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %86, ptr noundef nonnull @.str.24) #8
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i32 [ %81, %80 ], [ 1, %84 ]
  %89 = and i32 %11, 4096
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %5, align 4
  %93 = load i32, ptr %92, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %93, ptr noundef nonnull @.str.25) #8
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i32 [ %88, %87 ], [ 1, %91 ]
  %96 = and i32 %11, 8192
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %5, align 4
  %100 = load i32, ptr %99, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %100, ptr noundef nonnull @.str.26) #8
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi i32 [ %95, %94 ], [ 1, %98 ]
  %103 = and i32 %11, 2097154
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 21
  tail call void @complete(ptr noundef %106) #8
  br label %111

107:                                              ; preds = %101
  br i1 %76, label %111, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 21
  tail call void @complete(ptr noundef %109) #8
  %110 = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 22
  store i32 -110, ptr %110, align 4
  br label %111

111:                                              ; preds = %108, %107, %105
  %112 = phi i32 [ %102, %107 ], [ 1, %108 ], [ 1, %105 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_of_get_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_dsi_init_phy_clocks(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca [16 x i8], align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %7 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @__clk_get_name(ptr noundef %8) #8
  store ptr %9, ptr %2, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 16, i32 noundef 3520) #8
  %11 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 19
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %1
  store i32 3, ptr %10, align 4
  %14 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 10
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  %18 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %19 = load ptr, ptr %14, align 4
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %20, ptr noundef nonnull @.str.28)
  %22 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 0, i32 1
  store i32 1, ptr %22, align 4
  %23 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 0, i32 2
  store i32 8, ptr %23, align 4
  %24 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 0, i32 0, i32 2
  store ptr %3, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %25, i8 0, i32 16, i1 false)
  store ptr %2, ptr %15, align 4
  store i8 1, ptr %16, align 4
  store ptr %4, ptr %3, align 4
  store ptr @clk_fixed_factor_ops, ptr %17, align 4
  %26 = call i32 @devm_clk_hw_register(ptr noundef %6, ptr noundef %18) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %43, %30, %13
  %29 = phi i32 [ %26, %13 ], [ %41, %30 ], [ %54, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  br label %63

30:                                               ; preds = %13
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr %struct.clk_hw_onecell_data, ptr %31, i32 0, i32 1, i32 0
  store ptr %18, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  %33 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %34 = load ptr, ptr %14, align 4
  %35 = load i32, ptr %34, align 4
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %35, ptr noundef nonnull @.str.29)
  %37 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 1, i32 1
  store i32 1, ptr %37, align 4
  %38 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 1, i32 2
  store i32 4, ptr %38, align 4
  %39 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 2
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %40, i8 0, i32 16, i1 false)
  store ptr %2, ptr %15, align 4
  store i8 1, ptr %16, align 4
  store ptr %4, ptr %3, align 4
  store ptr @clk_fixed_factor_ops, ptr %17, align 4
  %41 = call i32 @devm_clk_hw_register(ptr noundef %6, ptr noundef %33) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %28

43:                                               ; preds = %30
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr %struct.clk_hw_onecell_data, ptr %44, i32 0, i32 1, i32 1
  store ptr %33, ptr %45, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  %46 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %47 = load ptr, ptr %14, align 4
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %48, ptr noundef nonnull @.str.30)
  %50 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 2, i32 1
  store i32 1, ptr %50, align 4
  %51 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 2, i32 2
  store i32 2, ptr %51, align 4
  %52 = getelementptr %struct.vc4_dsi, ptr %0, i32 0, i32 18, i32 2, i32 0, i32 2
  store ptr %3, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %53, i8 0, i32 16, i1 false)
  store ptr %2, ptr %15, align 4
  store i8 1, ptr %16, align 4
  store ptr %4, ptr %3, align 4
  store ptr @clk_fixed_factor_ops, ptr %17, align 4
  %54 = call i32 @devm_clk_hw_register(ptr noundef %6, ptr noundef %46) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %28

56:                                               ; preds = %43
  %57 = load ptr, ptr %11, align 4
  %58 = getelementptr %struct.clk_hw_onecell_data, ptr %57, i32 0, i32 1, i32 2
  store ptr %46, ptr %58, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  %59 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 25
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %11, align 4
  %62 = call i32 @of_clk_add_hw_provider(ptr noundef %60, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %61) #8
  br label %63

63:                                               ; preds = %56, %28, %1
  %64 = phi i32 [ %29, %28 ], [ %62, %56 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_sync_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vc4_dsi_encoder_mode_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @clk_get_parent(ptr noundef %7) #8
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #8
  %10 = load i32, ptr %1, align 4
  %11 = mul i32 %10, 1000
  %12 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %11, %13
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %35, label %16

16:                                               ; preds = %3
  %17 = lshr i32 %9, 1
  %18 = icmp ult i32 %17, %14
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = udiv i32 %9, 3
  %21 = icmp ult i32 %20, %14
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = lshr i32 %9, 2
  %24 = icmp ult i32 %23, %14
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = udiv i32 %9, 5
  %27 = icmp ult i32 %26, %14
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = udiv i32 %9, 6
  %30 = icmp ult i32 %29, %14
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = udiv i32 %9, 7
  %33 = icmp ult i32 %32, %14
  %34 = select i1 %33, i32 6, i32 8
  br label %35

35:                                               ; preds = %31, %28, %25, %22, %19, %16, %3
  %36 = phi i32 [ 0, %3 ], [ 1, %16 ], [ 2, %19 ], [ 3, %22 ], [ 4, %25 ], [ 5, %28 ], [ %34, %31 ]
  %37 = udiv i32 %9, %36
  %38 = udiv i32 %37, %13
  %39 = udiv i32 %38, 1000
  store i32 %39, ptr %2, align 4
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = mul i32 %39, %42
  %44 = load i32, ptr %1, align 4
  %45 = sdiv i32 %43, %44
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  store i16 %46, ptr %47, align 2
  %48 = load i16, ptr %40, align 2
  %49 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  %50 = load i16, ptr %49, align 4
  %51 = sub i16 %46, %48
  %52 = add i16 %51, %50
  store i16 %52, ptr %49, align 4
  %53 = load i16, ptr %40, align 2
  %54 = sub i16 %46, %53
  %55 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %56 = load i16, ptr %55, align 2
  %57 = add i16 %54, %56
  store i16 %57, ptr %55, align 2
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_dsi_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 4
  %6 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -56
  %9 = icmp eq ptr %7, %5
  br i1 %9, label %24, label %10

10:                                               ; preds = %19, %1
  %11 = phi ptr [ %22, %19 ], [ %8, %1 ]
  %12 = phi ptr [ %21, %19 ], [ %7, %1 ]
  %13 = getelementptr i8, ptr %12, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void %16(ptr noundef %11) #8
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 -56
  %23 = icmp eq ptr %21, %5
  br i1 %23, label %24, label %10

24:                                               ; preds = %19, %1
  %25 = phi ptr [ %8, %1 ], [ %22, %19 ]
  tail call fastcc void @vc4_dsi_ulps(ptr noundef %3, i1 noundef zeroext true)
  %26 = getelementptr inbounds %struct.drm_bridge, ptr %25, i32 0, i32 3
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %41, label %28

28:                                               ; preds = %37, %24
  %29 = phi ptr [ %38, %37 ], [ %26, %24 ]
  %30 = phi ptr [ %39, %37 ], [ %25, %24 ]
  %31 = getelementptr inbounds %struct.drm_bridge, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  tail call void %34(ptr noundef %30) #8
  br label %37

37:                                               ; preds = %36, %28
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr i8, ptr %38, i32 -56
  %40 = icmp eq ptr %38, %5
  br i1 %40, label %41, label %28

41:                                               ; preds = %37, %24
  %42 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %43 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  tail call void @clk_disable(ptr noundef %44) #8
  tail call void @clk_unprepare(ptr noundef %44) #8
  %45 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 16
  %46 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %46) #8
  tail call void @clk_unprepare(ptr noundef %46) #8
  %47 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 20
  %48 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %48) #8
  tail call void @clk_unprepare(ptr noundef %48) #8
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_dsi_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %6, align 4
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %17) #8
  br label %580

18:                                               ; preds = %1
  %19 = mul i32 %11, 1000
  %20 = add i32 %19, 1000
  %21 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, %20
  %24 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_set_rate(ptr noundef %25, i32 noundef %23) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.36, i32 noundef %23, i32 noundef %26) #9
  br label %31

31:                                               ; preds = %28, %18
  %32 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1272, i32 1264
  %37 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %41 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %36) #8, !srcloc !11
  br label %66

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  store i32 %36, ptr %45, align 4
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 30
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = tail call ptr %48(ptr noundef nonnull %38, i32 noundef %50, i32 noundef %52, i32 noundef 4, i32 noundef 0) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %66

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef nonnull %53) #8
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %59) #8
  br label %66

62:                                               ; preds = %56
  %63 = tail call i32 @dma_sync_wait(ptr noundef nonnull %38, i32 noundef %59) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %63) #8
  br label %66

66:                                               ; preds = %65, %62, %61, %55, %40
  %67 = load ptr, ptr %37, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %70 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 10240) #8, !srcloc !11
  br label %95

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  store i32 10240, ptr %74, align 4
  %75 = load ptr, ptr %67, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 30
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 9
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = tail call ptr %77(ptr noundef nonnull %67, i32 noundef %79, i32 noundef %81, i32 noundef 4, i32 noundef 0) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %95

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %82, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 %87(ptr noundef nonnull %82) #8
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %88) #8
  br label %95

91:                                               ; preds = %85
  %92 = tail call i32 @dma_sync_wait(ptr noundef nonnull %67, i32 noundef %88) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %92) #8
  br label %95

95:                                               ; preds = %94, %91, %90, %84, %69
  %96 = load ptr, ptr %32, align 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 44, i32 56
  %100 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %99
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %104 = load ptr, ptr %37, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %107 = load ptr, ptr %100, align 4
  %108 = getelementptr i8, ptr %107, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %103) #8, !srcloc !11
  br label %133

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  store i32 %103, ptr %111, align 4
  %112 = load ptr, ptr %104, align 4
  %113 = getelementptr inbounds %struct.dma_device, ptr %112, i32 0, i32 30
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 9
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, %99
  %118 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 7
  %119 = load i32, ptr %118, align 4
  %120 = tail call ptr %114(ptr noundef nonnull %104, i32 noundef %117, i32 noundef %119, i32 noundef 4, i32 noundef 0) #8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %133

123:                                              ; preds = %109
  %124 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %120, i32 0, i32 4
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 %125(ptr noundef nonnull %120) #8
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %126) #8
  br label %133

129:                                              ; preds = %123
  %130 = tail call i32 @dma_sync_wait(ptr noundef nonnull %104, i32 noundef %126) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %130) #8
  br label %133

133:                                              ; preds = %132, %129, %128, %122, %106
  %134 = load ptr, ptr %32, align 4
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  %137 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 12
  %138 = load i32, ptr %137, align 4
  br i1 %136, label %139, label %211

139:                                              ; preds = %133
  %140 = icmp ult i32 %138, 2
  %141 = select i1 %140, i32 375, i32 119
  %142 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 15
  %143 = load i32, ptr %142, align 4
  %144 = shl i32 %143, 11
  %145 = and i32 %144, 2048
  %146 = or i32 %145, %141
  %147 = xor i32 %146, 2048
  %148 = load ptr, ptr %37, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %151 = load ptr, ptr %100, align 4
  %152 = getelementptr i8, ptr %151, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %147) #8, !srcloc !11
  br label %177

153:                                              ; preds = %139
  %154 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 8
  %155 = load ptr, ptr %154, align 4
  store i32 %147, ptr %155, align 4
  %156 = load ptr, ptr %148, align 4
  %157 = getelementptr inbounds %struct.dma_device, ptr %156, i32 0, i32 30
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 9
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, 100
  %162 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = tail call ptr %158(ptr noundef nonnull %148, i32 noundef %161, i32 noundef %163, i32 noundef 4, i32 noundef 0) #8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %177

167:                                              ; preds = %153
  %168 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %164, i32 0, i32 4
  %169 = load ptr, ptr %168, align 4
  %170 = tail call i32 %169(ptr noundef nonnull %164) #8
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %170) #8
  br label %177

173:                                              ; preds = %167
  %174 = tail call i32 @dma_sync_wait(ptr noundef nonnull %148, i32 noundef %170) #8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %174) #8
  br label %177

177:                                              ; preds = %176, %173, %172, %166, %150
  %178 = load ptr, ptr %32, align 4
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 104, i32 116
  %182 = load ptr, ptr %37, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %185 = load ptr, ptr %100, align 4
  %186 = getelementptr i8, ptr %185, i32 %181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 1638) #8, !srcloc !11
  br label %286

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 8
  %189 = load ptr, ptr %188, align 4
  store i32 1638, ptr %189, align 4
  %190 = load ptr, ptr %182, align 4
  %191 = getelementptr inbounds %struct.dma_device, ptr %190, i32 0, i32 30
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 9
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, %181
  %196 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 7
  %197 = load i32, ptr %196, align 4
  %198 = tail call ptr %192(ptr noundef nonnull %182, i32 noundef %195, i32 noundef %197, i32 noundef 4, i32 noundef 0) #8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %187
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %286

201:                                              ; preds = %187
  %202 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %198, i32 0, i32 4
  %203 = load ptr, ptr %202, align 4
  %204 = tail call i32 %203(ptr noundef nonnull %198) #8
  %205 = icmp sgt i32 %204, -1
  br i1 %205, label %207, label %206

206:                                              ; preds = %201
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %204) #8
  br label %286

207:                                              ; preds = %201
  %208 = tail call i32 @dma_sync_wait(ptr noundef nonnull %182, i32 noundef %204) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %286, label %210

210:                                              ; preds = %207
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %208) #8
  br label %286

211:                                              ; preds = %133
  %212 = icmp ult i32 %138, 4
  %213 = select i1 %212, i32 -613678729, i32 -613678985
  %214 = icmp ult i32 %138, 3
  %215 = or i32 %213, 512
  %216 = select i1 %214, i32 %215, i32 %213
  %217 = icmp ult i32 %138, 2
  %218 = or i32 %216, 1024
  %219 = select i1 %217, i32 %218, i32 %216
  %220 = or i32 %219, 8192
  %221 = load ptr, ptr %37, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %211
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %224 = load ptr, ptr %100, align 4
  %225 = getelementptr i8, ptr %224, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %220) #8, !srcloc !11
  br label %250

226:                                              ; preds = %211
  %227 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 8
  %228 = load ptr, ptr %227, align 4
  store i32 %220, ptr %228, align 4
  %229 = load ptr, ptr %221, align 4
  %230 = getelementptr inbounds %struct.dma_device, ptr %229, i32 0, i32 30
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 9
  %233 = load i32, ptr %232, align 4
  %234 = add i32 %233, 112
  %235 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 7
  %236 = load i32, ptr %235, align 4
  %237 = tail call ptr %231(ptr noundef nonnull %221, i32 noundef %234, i32 noundef %236, i32 noundef 4, i32 noundef 0) #8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %226
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %250

240:                                              ; preds = %226
  %241 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %237, i32 0, i32 4
  %242 = load ptr, ptr %241, align 4
  %243 = tail call i32 %242(ptr noundef nonnull %237) #8
  %244 = icmp sgt i32 %243, -1
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %243) #8
  br label %250

246:                                              ; preds = %240
  %247 = tail call i32 @dma_sync_wait(ptr noundef nonnull %221, i32 noundef %243) #8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %247) #8
  br label %250

250:                                              ; preds = %249, %246, %245, %239, %223
  %251 = load ptr, ptr %32, align 4
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  %254 = select i1 %253, i32 104, i32 116
  %255 = load ptr, ptr %37, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %250
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %258 = load ptr, ptr %100, align 4
  %259 = getelementptr i8, ptr %258, i32 %254
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 0) #8, !srcloc !11
  br label %284

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 8
  %262 = load ptr, ptr %261, align 4
  store i32 0, ptr %262, align 4
  %263 = load ptr, ptr %255, align 4
  %264 = getelementptr inbounds %struct.dma_device, ptr %263, i32 0, i32 30
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 9
  %267 = load i32, ptr %266, align 4
  %268 = add i32 %267, %254
  %269 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 7
  %270 = load i32, ptr %269, align 4
  %271 = tail call ptr %265(ptr noundef nonnull %255, i32 noundef %268, i32 noundef %270, i32 noundef 4, i32 noundef 0) #8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %260
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %284

274:                                              ; preds = %260
  %275 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %271, i32 0, i32 4
  %276 = load ptr, ptr %275, align 4
  %277 = tail call i32 %276(ptr noundef nonnull %271) #8
  %278 = icmp sgt i32 %277, -1
  br i1 %278, label %280, label %279

279:                                              ; preds = %274
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %277) #8
  br label %284

280:                                              ; preds = %274
  %281 = tail call i32 @dma_sync_wait(ptr noundef nonnull %255, i32 noundef %277) #8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %280
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %281) #8
  br label %284

284:                                              ; preds = %283, %280, %279, %273, %257
  %285 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %285(i32 noundef 214748000) #8
  br label %286

286:                                              ; preds = %284, %210, %207, %206, %200, %184
  %287 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 16
  %288 = load ptr, ptr %287, align 4
  %289 = tail call i32 @clk_prepare(ptr noundef %288) #8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = tail call i32 @clk_enable(ptr noundef %288) #8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  tail call void @clk_unprepare(ptr noundef %288) #8
  br label %295

295:                                              ; preds = %294, %286
  %296 = phi i32 [ %292, %294 ], [ %289, %286 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %296) #8
  br label %580

297:                                              ; preds = %291
  %298 = load ptr, ptr %24, align 4
  %299 = tail call i32 @clk_prepare(ptr noundef %298) #8
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = tail call i32 @clk_enable(ptr noundef %298) #8
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %301
  tail call void @clk_unprepare(ptr noundef %298) #8
  br label %305

305:                                              ; preds = %304, %297
  %306 = phi i32 [ %302, %304 ], [ %299, %297 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %306) #8
  br label %580

307:                                              ; preds = %301
  %308 = load ptr, ptr %24, align 4
  %309 = tail call i32 @clk_get_rate(ptr noundef %308) #8
  %310 = lshr exact i32 %23, 3
  %311 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 20
  %312 = load ptr, ptr %311, align 4
  %313 = tail call i32 @clk_set_rate(ptr noundef %312, i32 noundef %310) #8
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %307
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.40, i32 noundef %310, i32 noundef %313) #9
  br label %316

316:                                              ; preds = %315, %307
  %317 = load ptr, ptr %311, align 4
  %318 = tail call i32 @clk_prepare(ptr noundef %317) #8
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %316
  %321 = tail call i32 @clk_enable(ptr noundef %317) #8
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  tail call void @clk_unprepare(ptr noundef %317) #8
  br label %324

324:                                              ; preds = %323, %316
  %325 = phi i32 [ %321, %323 ], [ %318, %316 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41, i32 noundef %325) #8
  br label %580

326:                                              ; preds = %320
  %327 = add i32 %309, 499999999
  %328 = udiv i32 %327, %309
  %329 = load ptr, ptr %32, align 4
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, 0
  %332 = select i1 %331, i32 68, i32 80
  %333 = add i32 %328, -1
  %334 = add i32 %328, 261
  %335 = udiv i32 %334, %328
  %336 = add i32 %335, 7
  %337 = and i32 %336, 15872
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %340, label %339, !prof !25

339:                                              ; preds = %326
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 968, i32 noundef 9, ptr noundef null) #8
  br label %340

340:                                              ; preds = %339, %326
  %341 = shl i32 %336, 18
  %342 = and i32 %341, 132120576
  %343 = udiv i32 %333, %328
  %344 = add i32 %343, 15
  %345 = and i32 %344, -8
  %346 = and i32 %344, 8388096
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348, !prof !25

348:                                              ; preds = %340
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 970, i32 noundef 9, ptr noundef null) #8
  br label %349

349:                                              ; preds = %348, %340
  %350 = shl i32 %344, 9
  %351 = and i32 %350, 258048
  %352 = or i32 %351, %342
  %353 = add i32 %328, 37
  %354 = udiv i32 %353, %328
  %355 = add i32 %354, 7
  %356 = icmp ult i32 %355, 512
  br i1 %356, label %358, label %357, !prof !25

357:                                              ; preds = %349
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 972, i32 noundef 9, ptr noundef null) #8
  br label %358

358:                                              ; preds = %357, %349
  %359 = and i32 %355, 504
  %360 = or i32 %352, %359
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %332, i32 noundef %360)
  %361 = load ptr, ptr %32, align 4
  %362 = load i32, ptr %361, align 4
  %363 = icmp eq i32 %362, 0
  %364 = select i1 %363, i32 72, i32 84
  %365 = add i32 %328, 59
  %366 = udiv i32 %365, %328
  %367 = add i32 %366, 7
  %368 = and i32 %367, 8388096
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %371, label %370, !prof !25

370:                                              ; preds = %358
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 976, i32 noundef 9, ptr noundef null) #8
  br label %371

371:                                              ; preds = %370, %358
  %372 = shl i32 %367, 9
  %373 = and i32 %372, 258048
  %374 = add i32 %366, 59
  %375 = icmp ult i32 %374, 512
  br i1 %375, label %377, label %376, !prof !25

376:                                              ; preds = %371
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 978, i32 noundef 9, ptr noundef null) #8
  br label %377

377:                                              ; preds = %376, %371
  %378 = and i32 %374, 504
  %379 = or i32 %373, %378
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %364, i32 noundef %379)
  %380 = load ptr, ptr %32, align 4
  %381 = load i32, ptr %380, align 4
  %382 = icmp eq i32 %381, 0
  %383 = select i1 %382, i32 76, i32 88
  %384 = add i32 %328, 999999
  %385 = udiv i32 %384, %328
  %386 = add i32 %385, 7
  %387 = icmp ult i32 %386, 16777216
  br i1 %387, label %389, label %388, !prof !25

388:                                              ; preds = %377
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 982, i32 noundef 9, ptr noundef null) #8
  br label %389

389:                                              ; preds = %388, %377
  %390 = and i32 %386, 16777208
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %383, i32 noundef %390)
  %391 = load ptr, ptr %32, align 4
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 0
  %394 = select i1 %393, i32 80, i32 92
  %395 = add i32 %328, 99
  %396 = udiv i32 %395, %328
  %397 = add i32 %396, 7
  %398 = and i32 %397, 15872
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %401, label %400, !prof !25

400:                                              ; preds = %389
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 986, i32 noundef 9, ptr noundef null) #8
  br label %401

401:                                              ; preds = %400, %389
  %402 = shl i32 %397, 18
  %403 = and i32 %402, 132120576
  %404 = add i32 %328, 104
  %405 = udiv i32 %404, %328
  %406 = add i32 %405, 13
  %407 = and i32 %406, 8388096
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %410, label %409, !prof !25

409:                                              ; preds = %401
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 988, i32 noundef 9, ptr noundef null) #8
  br label %410

410:                                              ; preds = %409, %401
  %411 = shl i32 %406, 9
  %412 = and i32 %411, 258048
  %413 = or i32 %412, %403
  %414 = add i32 %328, 39
  %415 = udiv i32 %414, %328
  %416 = add i32 %415, 11
  %417 = icmp ult i32 %416, 512
  br i1 %417, label %419, label %418, !prof !25

418:                                              ; preds = %410
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 990, i32 noundef 9, ptr noundef null) #8
  br label %419

419:                                              ; preds = %418, %410
  %420 = and i32 %416, 504
  %421 = or i32 %413, %420
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %394, i32 noundef %421)
  %422 = load ptr, ptr %32, align 4
  %423 = load i32, ptr %422, align 4
  %424 = icmp eq i32 %423, 0
  %425 = select i1 %424, i32 84, i32 96
  %426 = icmp ult i32 %367, 512
  br i1 %426, label %428, label %427, !prof !25

427:                                              ; preds = %419
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 994, i32 noundef 9, ptr noundef null) #8
  br label %428

428:                                              ; preds = %427, %419
  %429 = and i32 %367, 504
  %430 = add i32 %366, 11
  %431 = and i32 %430, -8
  %432 = tail call i32 @llvm.umax.i32(i32 %345, i32 %431)
  %433 = and i32 %432, 8388096
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %436, label %435, !prof !25

435:                                              ; preds = %428
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %436

436:                                              ; preds = %435, %428
  %437 = shl i32 %432, 9
  %438 = and i32 %437, 258048
  %439 = or i32 %438, %429
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %425, i32 noundef %439)
  %440 = load ptr, ptr %32, align 4
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  %443 = select i1 %442, i32 88, i32 100
  %444 = add i32 %328, 4999999
  %445 = udiv i32 %444, %328
  %446 = add i32 %445, 7
  %447 = icmp ult i32 %446, 16777216
  br i1 %447, label %449, label %448, !prof !25

448:                                              ; preds = %436
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1011, i32 noundef 9, ptr noundef null) #8
  br label %449

449:                                              ; preds = %448, %436
  %450 = and i32 %446, 16777208
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %443, i32 noundef %450)
  %451 = load ptr, ptr %32, align 4
  %452 = load i32, ptr %451, align 4
  %453 = icmp eq i32 %452, 0
  %454 = select i1 %453, i32 92, i32 104
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %454, i32 noundef 503715846)
  %455 = load ptr, ptr %32, align 4
  %456 = load i32, ptr %455, align 4
  %457 = icmp eq i32 %456, 0
  %458 = select i1 %457, i32 96, i32 108
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %458, i32 noundef 100000)
  %459 = load ptr, ptr %32, align 4
  %460 = load i32, ptr %459, align 4
  %461 = icmp eq i32 %460, 0
  %462 = select i1 %461, i32 64, i32 76
  %463 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 12
  %464 = load i32, ptr %463, align 4
  %465 = icmp ugt i32 %464, 1
  %466 = select i1 %465, i32 17, i32 1
  %467 = icmp ugt i32 %464, 2
  %468 = select i1 %467, i32 256, i32 0
  %469 = icmp ugt i32 %464, 3
  %470 = select i1 %469, i32 4096, i32 0
  %471 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 15
  %472 = load i32, ptr %471, align 4
  %473 = and i32 %472, 1024
  %474 = icmp eq i32 %473, 0
  %475 = select i1 %461, i32 1024, i32 262144
  %476 = select i1 %474, i32 %475, i32 0
  %477 = select i1 %461, i32 20736, i32 5308416
  %478 = or i32 %477, %468
  %479 = or i32 %478, %466
  %480 = or i32 %479, %470
  %481 = or i32 %480, %476
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %462, i32 noundef %481)
  %482 = load ptr, ptr %100, align 4
  %483 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %482) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %484 = or i32 %483, 512
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef 0, i32 noundef %484)
  %485 = load ptr, ptr %32, align 4
  %486 = load i32, ptr %485, align 4
  %487 = icmp eq i32 %486, 0
  %488 = select i1 %487, i32 48, i32 60
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %488, i32 noundef 0)
  %489 = load ptr, ptr %32, align 4
  %490 = load i32, ptr %489, align 4
  %491 = icmp eq i32 %490, 0
  %492 = select i1 %491, i32 52, i32 64
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %492, i32 noundef 16777215)
  %493 = load ptr, ptr %32, align 4
  %494 = load i32, ptr %493, align 4
  %495 = icmp eq i32 %494, 0
  %496 = select i1 %495, i32 56, i32 68
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %496, i32 noundef 100000)
  %497 = load ptr, ptr %32, align 4
  %498 = load i32, ptr %497, align 4
  %499 = icmp eq i32 %498, 0
  %500 = select i1 %499, i32 60, i32 72
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %500, i32 noundef 100000)
  %501 = load ptr, ptr %32, align 4
  %502 = load i32, ptr %501, align 4
  %503 = icmp eq i32 %502, 0
  %504 = select i1 %503, i32 28, i32 44
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %504, i32 noundef 5)
  %505 = load ptr, ptr %100, align 4
  %506 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %505) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  %507 = or i32 %506, 1
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef 0, i32 noundef %507)
  %508 = load ptr, ptr %32, align 4
  %509 = load i32, ptr %508, align 4
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %516, label %511

511:                                              ; preds = %449
  %512 = load ptr, ptr %100, align 4
  %513 = getelementptr i8, ptr %512, i32 112
  %514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %513) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %515 = and i32 %514, -8193
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef 112, i32 noundef %515)
  br label %516

516:                                              ; preds = %511, %449
  tail call fastcc void @vc4_dsi_ulps(ptr noundef %8, i1 noundef zeroext false)
  %517 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 4
  %518 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 4, i32 1
  %519 = load ptr, ptr %518, align 4
  %520 = icmp eq ptr %519, %517
  br i1 %520, label %534, label %521

521:                                              ; preds = %530, %516
  %522 = phi ptr [ %532, %530 ], [ %519, %516 ]
  %523 = getelementptr i8, ptr %522, i32 24
  %524 = load ptr, ptr %523, align 4
  %525 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %524, i32 0, i32 7
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %530, label %528

528:                                              ; preds = %521
  %529 = getelementptr i8, ptr %522, i32 -56
  tail call void %526(ptr noundef %529) #8
  br label %530

530:                                              ; preds = %528, %521
  %531 = getelementptr inbounds %struct.list_head, ptr %522, i32 0, i32 1
  %532 = load ptr, ptr %531, align 4
  %533 = icmp eq ptr %532, %517
  br i1 %533, label %534, label %521

534:                                              ; preds = %530, %516
  %535 = load i32, ptr %471, align 4
  %536 = and i32 %535, 1
  %537 = icmp eq i32 %536, 0
  %538 = load ptr, ptr %32, align 4
  %539 = load i32, ptr %538, align 4
  %540 = icmp eq i32 %539, 0
  %541 = select i1 %540, i32 24, i32 40
  br i1 %537, label %564, label %542

542:                                              ; preds = %534
  %543 = load i32, ptr %21, align 4
  %544 = and i32 %543, 523776
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %548, label %546, !prof !25

546:                                              ; preds = %542
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1080, i32 noundef 9, ptr noundef null) #8
  %547 = load i32, ptr %21, align 4
  br label %548

548:                                              ; preds = %546, %542
  %549 = phi i32 [ %547, %546 ], [ %543, %542 ]
  %550 = shl i32 %549, 13
  %551 = and i32 %550, 4186112
  %552 = getelementptr inbounds %struct.vc4_dsi, ptr %8, i32 0, i32 13
  %553 = load i32, ptr %552, align 4
  %554 = and i32 %553, 1073741820
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %558, label %556, !prof !25

556:                                              ; preds = %548
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1081, i32 noundef 9, ptr noundef null) #8
  %557 = load i32, ptr %552, align 4
  br label %558

558:                                              ; preds = %556, %548
  %559 = phi i32 [ %557, %556 ], [ %553, %548 ]
  %560 = shl i32 %559, 2
  %561 = and i32 %560, 12
  %562 = or i32 %551, %561
  %563 = or i32 %562, 4113
  br label %564

564:                                              ; preds = %558, %534
  %565 = phi i32 [ %563, %558 ], [ 3, %534 ]
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %8, i32 noundef %541, i32 noundef %565)
  %566 = load ptr, ptr %517, align 4
  %567 = icmp eq ptr %566, %517
  br i1 %567, label %580, label %568

568:                                              ; preds = %577, %564
  %569 = phi ptr [ %578, %577 ], [ %566, %564 ]
  %570 = getelementptr i8, ptr %569, i32 24
  %571 = load ptr, ptr %570, align 4
  %572 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %571, i32 0, i32 8
  %573 = load ptr, ptr %572, align 4
  %574 = icmp eq ptr %573, null
  br i1 %574, label %577, label %575

575:                                              ; preds = %568
  %576 = getelementptr i8, ptr %569, i32 -56
  tail call void %573(ptr noundef %576) #8
  br label %577

577:                                              ; preds = %575, %568
  %578 = load ptr, ptr %569, align 4
  %579 = icmp eq ptr %578, %517
  br i1 %579, label %580, label %568

580:                                              ; preds = %577, %564, %324, %305, %295, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_dsi_ulps(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 514, i32 131074
  %12 = select i1 %6, i32 2, i32 %11
  %13 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 1
  %16 = select i1 %15, i32 32, i32 0
  %17 = or i32 %16, %12
  %18 = icmp ugt i32 %14, 2
  %19 = select i1 %18, i32 512, i32 0
  %20 = or i32 %17, %19
  %21 = icmp ugt i32 %14, 3
  %22 = select i1 %21, i32 8192, i32 0
  %23 = or i32 %20, %22
  %24 = shl nuw nsw i32 %5, 8
  %25 = select i1 %15, i32 134217728, i32 0
  %26 = or i32 %25, %24
  %27 = select i1 %18, i32 536870912, i32 0
  %28 = or i32 %26, %27
  %29 = select i1 %21, i32 -2147483648, i32 0
  %30 = or i32 %28, %29
  %31 = or i32 %30, 33554432
  %32 = shl nuw nsw i32 %5, 6
  %33 = select i1 %15, i32 67108864, i32 0
  %34 = or i32 %33, %32
  %35 = select i1 %18, i32 268435456, i32 0
  %36 = or i32 %34, %35
  %37 = select i1 %21, i32 1073741824, i32 0
  %38 = or i32 %36, %37
  %39 = or i32 %38, 16777216
  %40 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 10
  %43 = icmp eq i32 %9, 0
  %44 = select i1 %43, i32 100, i32 112
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %47 = load ptr, ptr %42, align 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 16777216, i32 16384
  %51 = and i32 %50, %46
  %52 = icmp eq i32 %51, 0
  %53 = xor i1 %52, %1
  br i1 %53, label %361, label %54

54:                                               ; preds = %2
  %55 = select i1 %49, i32 44, i32 56
  %56 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %40, align 4
  %61 = getelementptr i8, ptr %60, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %31) #8, !srcloc !11
  br label %86

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  store i32 %31, ptr %64, align 4
  %65 = load ptr, ptr %57, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 30
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %55
  %71 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = tail call ptr %67(ptr noundef nonnull %57, i32 noundef %70, i32 noundef %72, i32 noundef 4, i32 noundef 0) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %86

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %73, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef nonnull %73) #8
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %79) #8
  br label %86

82:                                               ; preds = %76
  %83 = tail call i32 @dma_sync_wait(ptr noundef nonnull %57, i32 noundef %79) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %83) #8
  br label %86

86:                                               ; preds = %85, %82, %81, %75, %59
  %87 = load ptr, ptr %42, align 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 64, i32 76
  %91 = load ptr, ptr %40, align 4
  %92 = getelementptr i8, ptr %91, i32 %90
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %94 = or i32 %93, %23
  %95 = load ptr, ptr %56, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %98 = load ptr, ptr %40, align 4
  %99 = getelementptr i8, ptr %98, i32 %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %94) #8, !srcloc !11
  br label %124

100:                                              ; preds = %86
  %101 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  store i32 %94, ptr %102, align 4
  %103 = load ptr, ptr %95, align 4
  %104 = getelementptr inbounds %struct.dma_device, ptr %103, i32 0, i32 30
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %90
  %109 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = tail call ptr %105(ptr noundef nonnull %95, i32 noundef %108, i32 noundef %110, i32 noundef 4, i32 noundef 0) #8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %124

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %111, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = tail call i32 %116(ptr noundef nonnull %111) #8
  %118 = icmp sgt i32 %117, -1
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %117) #8
  br label %124

120:                                              ; preds = %114
  %121 = tail call i32 @dma_sync_wait(ptr noundef nonnull %95, i32 noundef %117) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %121) #8
  br label %124

124:                                              ; preds = %123, %120, %119, %113, %97
  %125 = tail call i64 @ktime_get_raw() #8
  %126 = add i64 %125, 200000000
  %127 = tail call i64 @ktime_get_raw() #8
  %128 = icmp sgt i64 %127, %126
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %129 = load ptr, ptr %40, align 4
  %130 = load ptr, ptr %42, align 4
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 44, i32 56
  %134 = getelementptr i8, ptr %129, i32 %133
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  %136 = and i32 %135, %31
  %137 = icmp eq i32 %136, %31
  %138 = select i1 %137, i1 true, i1 %128
  br i1 %138, label %156, label %139

139:                                              ; preds = %139, %124
  %140 = phi i32 [ %143, %139 ], [ 10, %124 ]
  %141 = shl i32 %140, 1
  tail call void @usleep_range_state(i32 noundef %140, i32 noundef %141, i32 noundef 2) #8
  %142 = icmp slt i32 %140, 1000
  %143 = select i1 %142, i32 %141, i32 %140
  %144 = tail call i64 @ktime_get_raw() #8
  %145 = icmp sgt i64 %144, %126
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %146 = load ptr, ptr %40, align 4
  %147 = load ptr, ptr %42, align 4
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 44, i32 56
  %151 = getelementptr i8, ptr %146, i32 %150
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  %153 = and i32 %152, %31
  %154 = icmp eq i32 %153, %31
  %155 = select i1 %154, i1 true, i1 %145
  br i1 %155, label %156, label %139

156:                                              ; preds = %139, %124
  %157 = phi i1 [ %137, %124 ], [ %154, %139 ]
  br i1 %157, label %207, label %158

158:                                              ; preds = %156
  %159 = load ptr, ptr %0, align 4
  %160 = getelementptr inbounds %struct.platform_device, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %40, align 4
  %162 = load ptr, ptr %42, align 4
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i32 44, i32 56
  %166 = getelementptr i8, ptr %161, i32 %165
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.32, i32 noundef %167) #9
  %168 = load ptr, ptr %42, align 4
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 64, i32 76
  %172 = load ptr, ptr %40, align 4
  %173 = getelementptr i8, ptr %172, i32 %171
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !33
  %175 = xor i32 %23, -1
  %176 = and i32 %174, %175
  %177 = load ptr, ptr %56, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %158
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %180 = load ptr, ptr %40, align 4
  %181 = getelementptr i8, ptr %180, i32 %171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %176) #8, !srcloc !11
  br label %206

182:                                              ; preds = %158
  %183 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %184 = load ptr, ptr %183, align 4
  store i32 %176, ptr %184, align 4
  %185 = load ptr, ptr %177, align 4
  %186 = getelementptr inbounds %struct.dma_device, ptr %185, i32 0, i32 30
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, %171
  %191 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %192 = load i32, ptr %191, align 4
  %193 = tail call ptr %187(ptr noundef nonnull %177, i32 noundef %190, i32 noundef %192, i32 noundef 4, i32 noundef 0) #8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %182
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %206

196:                                              ; preds = %182
  %197 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %193, i32 0, i32 4
  %198 = load ptr, ptr %197, align 4
  %199 = tail call i32 %198(ptr noundef nonnull %193) #8
  %200 = icmp sgt i32 %199, -1
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %199) #8
  br label %206

202:                                              ; preds = %196
  %203 = tail call i32 @dma_sync_wait(ptr noundef nonnull %177, i32 noundef %199) #8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %203) #8
  br label %206

206:                                              ; preds = %205, %202, %201, %195, %179
  tail call fastcc void @vc4_dsi_latch_ulps(ptr noundef %0, i1 noundef zeroext false)
  br label %361

207:                                              ; preds = %156
  tail call fastcc void @vc4_dsi_latch_ulps(ptr noundef %0, i1 noundef zeroext %1)
  %208 = load ptr, ptr %42, align 4
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 44, i32 56
  %212 = load ptr, ptr %56, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %215 = load ptr, ptr %40, align 4
  %216 = getelementptr i8, ptr %215, i32 %211
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %39) #8, !srcloc !11
  br label %241

217:                                              ; preds = %207
  %218 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %219 = load ptr, ptr %218, align 4
  store i32 %39, ptr %219, align 4
  %220 = load ptr, ptr %212, align 4
  %221 = getelementptr inbounds %struct.dma_device, ptr %220, i32 0, i32 30
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, %211
  %226 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %227 = load i32, ptr %226, align 4
  %228 = tail call ptr %222(ptr noundef nonnull %212, i32 noundef %225, i32 noundef %227, i32 noundef 4, i32 noundef 0) #8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %217
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %241

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %228, i32 0, i32 4
  %233 = load ptr, ptr %232, align 4
  %234 = tail call i32 %233(ptr noundef nonnull %228) #8
  %235 = icmp sgt i32 %234, -1
  br i1 %235, label %237, label %236

236:                                              ; preds = %231
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %234) #8
  br label %241

237:                                              ; preds = %231
  %238 = tail call i32 @dma_sync_wait(ptr noundef nonnull %212, i32 noundef %234) #8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %238) #8
  br label %241

241:                                              ; preds = %240, %237, %236, %230, %214
  %242 = load ptr, ptr %42, align 4
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %244, i32 64, i32 76
  %246 = load ptr, ptr %40, align 4
  %247 = getelementptr i8, ptr %246, i32 %245
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !34
  %249 = xor i32 %23, -1
  %250 = and i32 %248, %249
  %251 = load ptr, ptr %56, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %241
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %254 = load ptr, ptr %40, align 4
  %255 = getelementptr i8, ptr %254, i32 %245
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %250) #8, !srcloc !11
  br label %280

256:                                              ; preds = %241
  %257 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %258 = load ptr, ptr %257, align 4
  store i32 %250, ptr %258, align 4
  %259 = load ptr, ptr %251, align 4
  %260 = getelementptr inbounds %struct.dma_device, ptr %259, i32 0, i32 30
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %263 = load i32, ptr %262, align 4
  %264 = add i32 %263, %245
  %265 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %266 = load i32, ptr %265, align 4
  %267 = tail call ptr %261(ptr noundef nonnull %251, i32 noundef %264, i32 noundef %266, i32 noundef 4, i32 noundef 0) #8
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %270

269:                                              ; preds = %256
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %280

270:                                              ; preds = %256
  %271 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %267, i32 0, i32 4
  %272 = load ptr, ptr %271, align 4
  %273 = tail call i32 %272(ptr noundef nonnull %267) #8
  %274 = icmp sgt i32 %273, -1
  br i1 %274, label %276, label %275

275:                                              ; preds = %270
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %273) #8
  br label %280

276:                                              ; preds = %270
  %277 = tail call i32 @dma_sync_wait(ptr noundef nonnull %251, i32 noundef %273) #8
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %277) #8
  br label %280

280:                                              ; preds = %279, %276, %275, %269, %253
  %281 = tail call i64 @ktime_get_raw() #8
  %282 = add i64 %281, 200000000
  %283 = tail call i64 @ktime_get_raw() #8
  %284 = icmp sgt i64 %283, %282
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %285 = load ptr, ptr %40, align 4
  %286 = load ptr, ptr %42, align 4
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq i32 %287, 0
  %289 = select i1 %288, i32 44, i32 56
  %290 = getelementptr i8, ptr %285, i32 %289
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %292 = and i32 %291, %39
  %293 = icmp eq i32 %292, %39
  %294 = select i1 %293, i1 true, i1 %284
  br i1 %294, label %312, label %295

295:                                              ; preds = %295, %280
  %296 = phi i32 [ %299, %295 ], [ 10, %280 ]
  %297 = shl i32 %296, 1
  tail call void @usleep_range_state(i32 noundef %296, i32 noundef %297, i32 noundef 2) #8
  %298 = icmp slt i32 %296, 1000
  %299 = select i1 %298, i32 %297, i32 %296
  %300 = tail call i64 @ktime_get_raw() #8
  %301 = icmp sgt i64 %300, %282
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %302 = load ptr, ptr %40, align 4
  %303 = load ptr, ptr %42, align 4
  %304 = load i32, ptr %303, align 4
  %305 = icmp eq i32 %304, 0
  %306 = select i1 %305, i32 44, i32 56
  %307 = getelementptr i8, ptr %302, i32 %306
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %307) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %309 = and i32 %308, %39
  %310 = icmp eq i32 %309, %39
  %311 = select i1 %310, i1 true, i1 %301
  br i1 %311, label %312, label %295

312:                                              ; preds = %295, %280
  %313 = phi i1 [ %293, %280 ], [ %310, %295 ]
  br i1 %313, label %361, label %314

314:                                              ; preds = %312
  %315 = load ptr, ptr %0, align 4
  %316 = getelementptr inbounds %struct.platform_device, ptr %315, i32 0, i32 3
  %317 = load ptr, ptr %40, align 4
  %318 = load ptr, ptr %42, align 4
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 %319, 0
  %321 = select i1 %320, i32 44, i32 56
  %322 = getelementptr i8, ptr %317, i32 %321
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !37
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %316, ptr noundef nonnull @.str.33, i32 noundef %323) #9
  %324 = load ptr, ptr %42, align 4
  %325 = load i32, ptr %324, align 4
  %326 = icmp eq i32 %325, 0
  %327 = select i1 %326, i32 64, i32 76
  %328 = load ptr, ptr %40, align 4
  %329 = getelementptr i8, ptr %328, i32 %327
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %329) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !38
  %331 = and i32 %330, %249
  %332 = load ptr, ptr %56, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %314
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %335 = load ptr, ptr %40, align 4
  %336 = getelementptr i8, ptr %335, i32 %327
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %331) #8, !srcloc !11
  br label %361

337:                                              ; preds = %314
  %338 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %339 = load ptr, ptr %338, align 4
  store i32 %331, ptr %339, align 4
  %340 = load ptr, ptr %332, align 4
  %341 = getelementptr inbounds %struct.dma_device, ptr %340, i32 0, i32 30
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %344 = load i32, ptr %343, align 4
  %345 = add i32 %344, %327
  %346 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %347 = load i32, ptr %346, align 4
  %348 = tail call ptr %342(ptr noundef nonnull %332, i32 noundef %345, i32 noundef %347, i32 noundef 4, i32 noundef 0) #8
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %351

350:                                              ; preds = %337
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %361

351:                                              ; preds = %337
  %352 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %348, i32 0, i32 4
  %353 = load ptr, ptr %352, align 4
  %354 = tail call i32 %353(ptr noundef nonnull %348) #8
  %355 = icmp sgt i32 %354, -1
  br i1 %355, label %357, label %356

356:                                              ; preds = %351
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %354) #8
  br label %361

357:                                              ; preds = %351
  %358 = tail call i32 @dma_sync_wait(ptr noundef nonnull %332, i32 noundef %354) #8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %357
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %358) #8
  br label %361

361:                                              ; preds = %360, %357, %356, %350, %334, %312, %206, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_dsi_latch_ulps(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 100, i32 112
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 16777216, i32 16384
  %16 = or i32 %15, %11
  %17 = select i1 %14, i32 -16777217, i32 -16385
  %18 = and i32 %17, %11
  %19 = select i1 %1, i32 %16, i32 %18
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %20, i32 100, i32 112
  %22 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %19) #8, !srcloc !11
  br label %52

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  store i32 %19, ptr %30, align 4
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 30
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %21
  %37 = getelementptr inbounds %struct.vc4_dsi, ptr %0, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = tail call ptr %33(ptr noundef nonnull %23, i32 noundef %36, i32 noundef %38, i32 noundef 4, i32 noundef 0) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %52

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %39, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef nonnull %39) #8
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %45) #8
  br label %52

48:                                               ; preds = %42
  %49 = tail call i32 @dma_sync_wait(ptr noundef nonnull %23, i32 noundef %45) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %49) #8
  br label %52

52:                                               ; preds = %51, %48, %47, %41, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155759431}
!11 = !{i64 5206746}
!12 = !{i64 5207164}
!13 = !{i64 2160790926}
!14 = !{i64 2160793105}
!15 = !{i64 2160834460}
!16 = !{i64 2160921803}
!17 = !{i64 2160924959}
!18 = !{i64 2160937641}
!19 = !{i64 2160938969}
!20 = !{i8 0, i8 2}
!21 = !{i64 2160942209}
!22 = !{i64 2160932579}
!23 = !{i64 2160933184}
!24 = !{i64 2155790644}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2159525388}
!27 = !{i64 2159654841}
!28 = !{i64 2155767319}
!29 = !{i64 2155769027}
!30 = !{i64 2155771305}
!31 = !{i64 2155771093}
!32 = !{i64 2155772623}
!33 = !{i64 2155773820}
!34 = !{i64 2155775235}
!35 = !{i64 2155777514}
!36 = !{i64 2155777302}
!37 = !{i64 2155778832}
!38 = !{i64 2155780029}
!39 = !{i64 2155764336}
