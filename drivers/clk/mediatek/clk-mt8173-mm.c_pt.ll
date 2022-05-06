; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt8173-mm.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8173-mm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_clk_mt8173_mm__162_146_clk_mt8173_mm_drv_init6 = internal global ptr @clk_mt8173_mm_drv_init, section ".initcall6.init", align 4
@clk_mt8173_mm_drv = internal global %struct.platform_driver { ptr @clk_mt8173_mm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"clk-mt8173-mm\00", align 1
@mt8173_mm_clks = internal constant [52 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.1, ptr @.str.2, ptr @mm0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.3, ptr @.str.2, ptr @mm0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.4, ptr @.str.2, ptr @mm0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.5, ptr @.str.2, ptr @mm0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.6, ptr @.str.2, ptr @mm0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.7, ptr @.str.2, ptr @mm0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.8, ptr @.str.2, ptr @mm0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.9, ptr @.str.2, ptr @mm0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.10, ptr @.str.2, ptr @mm0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.11, ptr @.str.2, ptr @mm0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.12, ptr @.str.2, ptr @mm0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.13, ptr @.str.2, ptr @mm0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.14, ptr @.str.2, ptr @mm0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.15, ptr @.str.2, ptr @mm0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.16, ptr @.str.17, ptr @mm0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.18, ptr @.str.2, ptr @mm0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.19, ptr @.str.2, ptr @mm0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.20, ptr @.str.2, ptr @mm0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.21, ptr @.str.2, ptr @mm0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.22, ptr @.str.2, ptr @mm0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.23, ptr @.str.2, ptr @mm0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.24, ptr @.str.2, ptr @mm0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.25, ptr @.str.2, ptr @mm0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.26, ptr @.str.2, ptr @mm0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.27, ptr @.str.2, ptr @mm0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.28, ptr @.str.2, ptr @mm0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.29, ptr @.str.2, ptr @mm0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.30, ptr @.str.2, ptr @mm0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.31, ptr @.str.2, ptr @mm0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.32, ptr @.str.2, ptr @mm0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.33, ptr @.str.2, ptr @mm0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.34, ptr @.str.2, ptr @mm1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.35, ptr @.str.36, ptr @mm1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.37, ptr @.str.2, ptr @mm1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.38, ptr @.str.36, ptr @mm1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.39, ptr @.str.2, ptr @mm1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.40, ptr @.str.41, ptr @mm1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.42, ptr @.str.2, ptr @mm1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.43, ptr @.str.44, ptr @mm1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.45, ptr @.str.46, ptr @mm1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.47, ptr @.str.2, ptr @mm1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.48, ptr @.str.49, ptr @mm1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.50, ptr @.str.2, ptr @mm1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.51, ptr @.str.46, ptr @mm1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 45, ptr @.str.52, ptr @.str.53, ptr @mm1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.54, ptr @.str.55, ptr @mm1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.56, ptr @.str.57, ptr @mm1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.58, ptr @.str.49, ptr @mm1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.59, ptr @.str.60, ptr @mm1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.61, ptr @.str.2, ptr @mm1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.62, ptr @.str.63, ptr @mm1_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.64, ptr @.str.65, ptr @mm1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"mm_smi_common\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mm_sel\00", align 1
@mm0_cg_regs = internal constant %struct.mtk_gate_regs { i32 256, i32 264, i32 260 }, align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"mm_smi_larb0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"mm_cam_mdp\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"mm_mdp_rdma0\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"mm_mdp_rdma1\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"mm_mdp_rsz0\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"mm_mdp_rsz1\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"mm_mdp_rsz2\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"mm_mdp_tdshp0\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"mm_mdp_tdshp1\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"mm_mdp_wdma\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"mm_mdp_wrot0\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"mm_mdp_wrot1\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"mm_fake_eng\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"mm_mutex_32k\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"rtc_sel\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"mm_disp_ovl0\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"mm_disp_ovl1\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"mm_disp_rdma0\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"mm_disp_rdma1\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"mm_disp_rdma2\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"mm_disp_wdma0\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"mm_disp_wdma1\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"mm_disp_color0\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"mm_disp_color1\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"mm_disp_aal\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"mm_disp_gamma\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"mm_disp_ufoe\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"mm_disp_split0\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"mm_disp_split1\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"mm_disp_merge\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"mm_disp_od\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"mm_disp_pwm0mm\00", align 1
@mm1_cg_regs = internal constant %struct.mtk_gate_regs { i32 272, i32 280, i32 276 }, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"mm_disp_pwm026m\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"pwm_sel\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"mm_disp_pwm1mm\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"mm_disp_pwm126m\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"mm_dsi0_engine\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"mm_dsi0_digital\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"dsi0_dig\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"mm_dsi1_engine\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"mm_dsi1_digital\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"dsi1_dig\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"mm_dpi_pixel\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"dpi0_sel\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"mm_dpi_engine\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"mm_dpi1_pixel\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"lvds_pxl\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"mm_dpi1_engine\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"mm_hdmi_pixel\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"mm_hdmi_pllck\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"hdmi_sel\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"mm_hdmi_audio\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"apll1\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"mm_hdmi_spdif\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"apll2\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"mm_lvds_pixel\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"mm_lvds_cts\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"lvds_cts\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"mm_smi_larb4\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"mm_hdmi_hdcp\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"hdcp_sel\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"mm_hdmi_hdcp24m\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"hdcp_24m_sel\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_mt8173_mm__162_146_clk_mt8173_mm_drv_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clk_mt8173_mm_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt8173_mm_drv, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mt8173_mm_probe(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @mtk_alloc_clk_data(i32 noundef 53) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @mtk_clk_register_gates(ptr noundef %5, ptr noundef nonnull @mt8173_mm_clks, i32 noundef 52, ptr noundef nonnull %6) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @of_clk_add_provider(ptr noundef %5, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %6) #3
  br label %13

13:                                               ; preds = %11, %8, %1
  %14 = phi i32 [ -12, %1 ], [ %9, %8 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
