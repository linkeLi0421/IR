; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hdmi_phy_cfg = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hdmi_pll_8996 = type { ptr, %struct.clk_hw, ptr, [4 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_8996_phy_pll_reg_cfg = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32 }

@.str = private unnamed_addr constant [9 x i8] c"hdmi_pll\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HDMI_PLL\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to map pll base\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hdmi_tx_l%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"HDMI_TX_L%d\00", align 1
@pll_init = internal constant %struct.clk_init_data { ptr @.str.7, ptr @hdmi_8996_pll_ops, ptr @hdmi_pll_parents, ptr null, ptr null, i8 1, i32 8 }, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"*ERROR* failed to register pll clock\0A\00", align 1
@hdmi_phy_8996_reg_names = internal constant [2 x ptr] [ptr @.str.55, ptr @.str.56], align 4
@hdmi_phy_8996_clk_names = internal constant [2 x ptr] [ptr @.str.57, ptr @.str.58], align 4
@msm_hdmi_phy_8996_cfg = dso_local local_unnamed_addr constant %struct.hdmi_phy_cfg { i32 3, ptr null, ptr null, ptr @hdmi_phy_8996_reg_names, i32 2, ptr @hdmi_phy_8996_clk_names, i32 2 }, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"hdmipll\00", align 1
@hdmi_8996_pll_ops = internal constant %struct.clk_ops { ptr @hdmi_8996_pll_prepare, ptr @hdmi_8996_pll_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_8996_pll_is_enabled, ptr null, ptr null, ptr null, ptr @hdmi_8996_pll_recalc_rate, ptr @hdmi_8996_pll_round_rate, ptr null, ptr null, ptr null, ptr @hdmi_8996_pll_set_clk_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@hdmi_pll_parents = internal constant [1 x ptr] [ptr @.str.54], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Waiting for PLL lock\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"HDMI PLL is %slocked\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"*not* \00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Waiting for PHY ready\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"PHY is %sready\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"PLL calculation failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Disabling PHY\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"VCO freq: %llu\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"fdata: %llu\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"pix_clk: %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"tmds clk: %llu\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"HSCLK_SEL: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"DEC_START: %llu\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"DIV_FRAC_START: %llu\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"PLL_CPCTRL: %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"PLL_RCTRL: %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"PLL_CCTRL: %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"INTEGLOOP_GAIN: %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"TX_BAND: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"PLL_CMP: %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"com_svs_mode_clk_sel = 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"com_hsclk_sel = 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"com_lock_cmp_en = 0x%x\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"com_pll_cctrl_mode0 = 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"com_pll_rctrl_mode0 = 0x%x\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"com_cp_ctrl_mode0 = 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"com_dec_start_mode0 = 0x%x\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"com_div_frac_start1_mode0 = 0x%x\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"com_div_frac_start2_mode0 = 0x%x\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"com_div_frac_start3_mode0 = 0x%x\0A\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"com_integloop_gain0_mode0 = 0x%x\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"com_integloop_gain1_mode0 = 0x%x\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"com_lock_cmp1_mode0 = 0x%x\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"com_lock_cmp2_mode0 = 0x%x\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"com_lock_cmp3_mode0 = 0x%x\0A\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"com_core_clk_en = 0x%x\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"com_coreclk_div = 0x%x\0A\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"phy_mode = 0x%x\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"tx_l0_lane_mode = 0x%x\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"tx_l2_lane_mode = 0x%x\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"tx_l%d_tx_band = 0x%x\0A\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"tx_l%d_tx_drv_lvl = 0x%x\0A\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"tx_l%d_tx_emp_post1_lvl = 0x%x\0A\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"tx_l%d_vmode_ctrl1 = 0x%x\0A\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"tx_l%d_vmode_ctrl2 = 0x%x\0A\00", align 1
@__const.pll_get_post_div.ratio = private unnamed_addr constant [15 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 9, i32 10, i32 12, i32 14, i32 15, i32 20, i32 21, i32 25, i32 28, i32 35], align 4
@__const.pll_get_post_div.hs_divsel = private unnamed_addr constant [15 x i32] [i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 2, i32 9, i32 3, i32 13, i32 10, i32 7, i32 14, i32 11, i32 15], align 4
@__const.pll_get_post_div.tx_band_sel = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.54 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"vcca\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"ref\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_pll_8996_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 36, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  store ptr %0, ptr %5, align 4
  %8 = tail call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  %9 = getelementptr inbounds %struct.hdmi_pll_8996, ptr %5, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 0)
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 0)
  %14 = call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %15 = getelementptr %struct.hdmi_pll_8996, ptr %5, i32 0, i32 3, i32 0
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %18, label %19

17:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %43

18:                                               ; preds = %31, %25, %19, %11
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  br label %43

19:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 1)
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 1)
  %22 = call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %23 = getelementptr %struct.hdmi_pll_8996, ptr %5, i32 0, i32 3, i32 1
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %18, label %25

25:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 2)
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 2)
  %28 = call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %29 = getelementptr %struct.hdmi_pll_8996, ptr %5, i32 0, i32 3, i32 2
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %18, label %31

31:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 3)
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 3)
  %34 = call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %35 = getelementptr %struct.hdmi_pll_8996, ptr %5, i32 0, i32 3, i32 3
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %18, label %37

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  %38 = getelementptr inbounds %struct.hdmi_pll_8996, ptr %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.hdmi_pll_8996, ptr %5, i32 0, i32 1, i32 2
  store ptr @pll_init, ptr %39, align 4
  %40 = call ptr @devm_clk_register(ptr noundef %4, ptr noundef %38) #7
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #7
  br label %43

43:                                               ; preds = %42, %37, %18, %17, %1
  %44 = phi i32 [ -12, %17 ], [ -22, %42 ], [ -12, %1 ], [ -12, %18 ], [ 0, %37 ]
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_phy, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %7) #7
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #7
  %9 = load ptr, ptr %6, align 4
  tail call void @msm_writel(i32 noundef 25, ptr noundef %9) #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8) #7
  %11 = getelementptr i8, ptr %0, i32 12
  br label %12

12:                                               ; preds = %19, %1
  %13 = phi i32 [ 99, %1 ], [ %21, %19 ]
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i8, ptr %14, i32 400
  %16 = tail call i32 @msm_readl(ptr noundef %15) #7
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 32212200) #7
  %21 = add nsw i32 %13, -1
  %22 = icmp eq i32 %13, 0
  br i1 %22, label %23, label %12

23:                                               ; preds = %19
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #7
  br label %63

24:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  %25 = getelementptr i8, ptr %0, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %27) #7
  %28 = getelementptr i8, ptr %0, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %30) #7
  %31 = getelementptr i8, ptr %0, i32 24
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %33) #7
  %34 = getelementptr i8, ptr %0, i32 28
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %36) #7
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr i8, ptr %37, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %38) #7
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr i8, ptr %39, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %40) #7
  %41 = load ptr, ptr %11, align 4
  %42 = getelementptr i8, ptr %41, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %42) #7
  %43 = load ptr, ptr %11, align 4
  %44 = getelementptr i8, ptr %43, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %44) #7
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  tail call void @msm_writel(i32 noundef 2, ptr noundef %46) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #7
  br label %47

47:                                               ; preds = %54, %24
  %48 = phi i32 [ 99, %24 ], [ %56, %54 ]
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr i8, ptr %49, i32 156
  %51 = tail call i32 @msm_readl(ptr noundef %50) #7
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 32212200) #7
  %56 = add nsw i32 %48, -1
  %57 = icmp eq i32 %48, 0
  br i1 %57, label %58, label %47

58:                                               ; preds = %54
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #7
  br label %63

59:                                               ; preds = %47
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #7
  %60 = load ptr, ptr %6, align 4
  tail call void @msm_writel(i32 noundef 24, ptr noundef %60) #7
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #7
  %62 = load ptr, ptr %6, align 4
  tail call void @msm_writel(i32 noundef 25, ptr noundef %62) #7
  br label %63

63:                                               ; preds = %59, %58, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_8996_pll_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_phy, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @msm_writel(i32 noundef 6, ptr noundef %7) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 400
  %5 = tail call i32 @msm_readl(ptr noundef %4) #7
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = tail call i32 @msm_readl(ptr noundef %5) #7
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 80
  %9 = tail call i32 @msm_readl(ptr noundef %8) #7
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 84
  %12 = tail call i32 @msm_readl(ptr noundef %11) #7
  %13 = shl i32 %9, 8
  %14 = or i32 %13, %6
  %15 = shl i32 %12, 16
  %16 = or i32 %14, %15
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = zext i32 %1 to i64
  %20 = mul nuw nsw i64 %19, 10
  %21 = mul i64 %20, %18
  %22 = lshr i64 %21, 11
  %23 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %22, i64 3689348814741910323) #8, !srcloc !9
  %24 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %22, i64 %23) #8, !srcloc !10
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_8996_pll_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 600000000)
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 25000000)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_set_clk_rate(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [60 x i64], align 8
  %5 = alloca %struct.hdmi_8996_phy_pll_reg_cfg, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %5) #7
  %10 = zext i32 %1 to i64
  %11 = mul nuw nsw i64 %10, 10
  %12 = lshr i32 %1, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(204) %5, i8 0, i64 204, i1 false)
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(480) %4, i8 0, i32 480, i1 false) #7, !annotation !8
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi i32 [ 0, %3 ], [ %37, %13 ]
  %15 = phi i32 [ 0, %3 ], [ %35, %13 ]
  %16 = getelementptr [15 x i32], ptr @__const.pll_get_post_div.ratio, i32 0, i32 %14
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %11, %18
  %20 = or i32 %15, 1
  %21 = getelementptr [60 x i64], ptr %4, i32 0, i32 %15
  store i64 %19, ptr %21, align 8
  %22 = shl i32 %17, 1
  %23 = zext i32 %22 to i64
  %24 = mul i64 %11, %23
  %25 = or i32 %15, 2
  %26 = getelementptr [60 x i64], ptr %4, i32 0, i32 %20
  store i64 %24, ptr %26, align 8
  %27 = shl i32 %17, 2
  %28 = zext i32 %27 to i64
  %29 = mul i64 %11, %28
  %30 = or i32 %15, 3
  %31 = getelementptr [60 x i64], ptr %4, i32 0, i32 %25
  store i64 %29, ptr %31, align 8
  %32 = shl i32 %17, 3
  %33 = zext i32 %32 to i64
  %34 = mul i64 %11, %33
  %35 = add nuw nsw i32 %15, 4
  %36 = getelementptr [60 x i64], ptr %4, i32 0, i32 %30
  store i64 %34, ptr %36, align 8
  %37 = add nuw nsw i32 %14, 1
  %38 = icmp eq i32 %37, 15
  br i1 %38, label %39, label %13

39:                                               ; preds = %13
  %40 = zext i32 %12 to i64
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ %52, %41 ], [ 0, %39 ]
  %43 = phi i32 [ %51, %41 ], [ -1, %39 ]
  %44 = phi i64 [ %50, %41 ], [ 12000000000, %39 ]
  %45 = getelementptr [60 x i64], ptr %4, i32 0, i32 %42
  %46 = load i64, ptr %45, align 8
  %47 = icmp ult i64 %46, 8000000000
  %48 = icmp ugt i64 %46, %44
  %49 = select i1 %47, i1 true, i1 %48
  %50 = select i1 %49, i64 %44, i64 %46
  %51 = select i1 %49, i32 %43, i32 %42
  %52 = add nuw nsw i32 %42, 1
  %53 = icmp eq i32 %52, 60
  br i1 %53, label %54, label %41

54:                                               ; preds = %41
  %55 = icmp ugt i64 %11, 3400000000
  %56 = select i1 %55, i64 %40, i64 %10
  %57 = icmp eq i32 %51, -1
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = lshr exact i64 %11, 1
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ 0, %58 ], [ %84, %60 ]
  %62 = phi i32 [ 0, %58 ], [ %82, %60 ]
  %63 = getelementptr [15 x i32], ptr @__const.pll_get_post_div.ratio, i32 0, i32 %61
  %64 = load i32, ptr %63, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %59, %65
  %67 = or i32 %62, 1
  %68 = getelementptr [60 x i64], ptr %4, i32 0, i32 %62
  store i64 %66, ptr %68, align 8
  %69 = shl i32 %64, 1
  %70 = zext i32 %69 to i64
  %71 = mul i64 %59, %70
  %72 = or i32 %62, 2
  %73 = getelementptr [60 x i64], ptr %4, i32 0, i32 %67
  store i64 %71, ptr %73, align 8
  %74 = shl i32 %64, 2
  %75 = zext i32 %74 to i64
  %76 = mul i64 %59, %75
  %77 = or i32 %62, 3
  %78 = getelementptr [60 x i64], ptr %4, i32 0, i32 %72
  store i64 %76, ptr %78, align 8
  %79 = shl i32 %64, 3
  %80 = zext i32 %79 to i64
  %81 = mul i64 %59, %80
  %82 = add nuw nsw i32 %62, 4
  %83 = getelementptr [60 x i64], ptr %4, i32 0, i32 %77
  store i64 %81, ptr %83, align 8
  %84 = add nuw nsw i32 %61, 1
  %85 = icmp eq i32 %84, 15
  br i1 %85, label %86, label %60

86:                                               ; preds = %86, %60
  %87 = phi i32 [ %97, %86 ], [ 0, %60 ]
  %88 = phi i32 [ %96, %86 ], [ -1, %60 ]
  %89 = phi i64 [ %95, %86 ], [ 12000000000, %60 ]
  %90 = getelementptr [60 x i64], ptr %4, i32 0, i32 %87
  %91 = load i64, ptr %90, align 8
  %92 = icmp ult i64 %91, 8000000000
  %93 = icmp ugt i64 %91, %89
  %94 = select i1 %92, i1 true, i1 %93
  %95 = select i1 %94, i64 %89, i64 %91
  %96 = select i1 %94, i32 %88, i32 %87
  %97 = add nuw nsw i32 %87, 1
  %98 = icmp eq i32 %97, 60
  br i1 %98, label %99, label %86

99:                                               ; preds = %86
  %100 = icmp eq i32 %96, -1
  br i1 %100, label %296, label %101

101:                                              ; preds = %99, %54
  %102 = phi i64 [ %50, %54 ], [ %95, %99 ]
  %103 = phi i32 [ %51, %54 ], [ %96, %99 ]
  %104 = freeze i32 %103
  %105 = sdiv i32 %104, 4
  %106 = mul i32 %105, 4
  %107 = sub i32 %104, %106
  %108 = getelementptr [4 x i32], ptr @__const.pll_get_post_div.tx_band_sel, i32 0, i32 %107
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr [15 x i32], ptr @__const.pll_get_post_div.ratio, i32 0, i32 %105
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr [15 x i32], ptr @__const.pll_get_post_div.hs_divsel, i32 0, i32 %105
  %113 = load i32, ptr %112, align 4
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %4) #7
  %114 = shl i32 %2, 2
  %115 = icmp ult i64 %102, 4294967296
  br i1 %115, label %116, label %120, !prof !11

116:                                              ; preds = %101
  %117 = trunc i64 %102 to i32
  %118 = udiv i32 %117, %114
  %119 = zext i32 %118 to i64
  br label %123

120:                                              ; preds = %101
  %121 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %114, i64 %102) #8, !srcloc !12
  %122 = extractvalue { i64, i64 } %121, 1
  br label %123

123:                                              ; preds = %120, %116
  %124 = phi i64 [ %119, %116 ], [ %122, %120 ]
  %125 = shl i64 %102, 20
  %126 = icmp ult i64 %125, 4294967296
  br i1 %126, label %127, label %134, !prof !11

127:                                              ; preds = %123
  %128 = trunc i64 %125 to i32
  %129 = freeze i32 %128
  %130 = udiv i32 %129, %114
  %131 = mul i32 %130, %114
  %132 = sub i32 %129, %131
  %133 = zext i32 %130 to i64
  br label %140

134:                                              ; preds = %123
  %135 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %114, i64 %125) #8, !srcloc !12
  %136 = extractvalue { i64, i64 } %135, 0
  %137 = extractvalue { i64, i64 } %135, 1
  %138 = lshr i64 %136, 32
  %139 = trunc i64 %138 to i32
  br label %140

140:                                              ; preds = %134, %127
  %141 = phi i64 [ %133, %127 ], [ %137, %134 ]
  %142 = phi i32 [ %132, %127 ], [ %139, %134 ]
  %143 = mul i64 %124, -1048576
  %144 = add i64 %143, %141
  %145 = lshr exact i32 %114, 1
  %146 = icmp ugt i32 %142, %145
  %147 = zext i1 %146 to i64
  %148 = add i64 %144, %147
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = udiv i32 %2, 20
  %152 = udiv i32 11000000, %151
  br label %153

153:                                              ; preds = %150, %140
  %154 = phi i32 [ 1, %140 ], [ 40, %150 ]
  %155 = phi i32 [ 16, %140 ], [ 22, %150 ]
  %156 = phi i32 [ 35, %140 ], [ %152, %150 ]
  %157 = shl i32 %2, 6
  %158 = udiv i32 %157, 19200000
  %159 = mul i32 %2, 1022
  %160 = udiv i32 %159, 100
  %161 = select i1 %149, i32 %160, i32 %158
  %162 = zext i32 %161 to i64
  %163 = icmp ugt i64 %11, 1499999999
  %164 = select i1 %163, i64 1, i64 2
  %165 = shl nuw nsw i64 %162, %164
  %166 = tail call i64 @llvm.umin.i64(i64 %165, i64 2046) #7
  %167 = trunc i64 %166 to i32
  %168 = icmp ult i64 %102, 4294967296
  br i1 %168, label %169, label %173, !prof !11

169:                                              ; preds = %153
  %170 = trunc i64 %102 to i32
  %171 = udiv i32 %170, %111
  %172 = zext i32 %171 to i64
  br label %176

173:                                              ; preds = %153
  %174 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %111, i64 %102) #8, !srcloc !12
  %175 = extractvalue { i64, i64 } %174, 1
  br label %176

176:                                              ; preds = %173, %169
  %177 = phi i64 [ %172, %169 ], [ %175, %173 ]
  %178 = shl i64 %177, 10
  %179 = mul i32 %2, 10
  %180 = icmp ult i64 %178, 4294967296
  br i1 %180, label %181, label %188, !prof !11

181:                                              ; preds = %176
  %182 = trunc i64 %178 to i32
  %183 = freeze i32 %182
  %184 = udiv i32 %183, %179
  %185 = mul i32 %184, %179
  %186 = sub i32 %183, %185
  %187 = zext i32 %184 to i64
  br label %194

188:                                              ; preds = %176
  %189 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %179, i64 %178) #8, !srcloc !12
  %190 = extractvalue { i64, i64 } %189, 0
  %191 = extractvalue { i64, i64 } %189, 1
  %192 = lshr i64 %190, 32
  %193 = trunc i64 %192 to i32
  br label %194

194:                                              ; preds = %188, %181
  %195 = phi i64 [ %187, %181 ], [ %191, %188 ]
  %196 = phi i32 [ %186, %181 ], [ %193, %188 ]
  %197 = lshr exact i32 %179, 1
  %198 = icmp ugt i32 %196, %197
  %199 = zext i1 %198 to i64
  %200 = add i64 %195, %199
  %201 = trunc i64 %200 to i32
  %202 = add i32 %201, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i64 noundef %102) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i64 noundef %177) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i64 noundef %56) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %113) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i64 noundef %124) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i64 noundef %148) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %156) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %155) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %154) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %167) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %109) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef %202) #7
  %203 = icmp ugt i64 %11, 1500000000
  %204 = select i1 %203, i32 1, i32 2
  %205 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 2
  store i32 %204, ptr %205, align 4
  %206 = or i32 %113, 32
  %207 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 3
  store i32 %206, ptr %207, align 4
  %208 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 4
  store i32 %154, ptr %208, align 4
  %209 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 5
  store i32 %155, ptr %209, align 4
  %210 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 6
  store i32 %156, ptr %210, align 4
  %211 = trunc i64 %124 to i32
  %212 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 7
  store i32 %211, ptr %212, align 4
  %213 = trunc i64 %148 to i32
  %214 = and i32 %213, 255
  %215 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 8
  store i32 %214, ptr %215, align 4
  %216 = lshr i32 %213, 8
  %217 = and i32 %216, 255
  %218 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 9
  store i32 %217, ptr %218, align 4
  %219 = lshr i32 %213, 16
  %220 = and i32 %219, 15
  %221 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 10
  store i32 %220, ptr %221, align 4
  %222 = and i32 %167, 254
  %223 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 11
  store i32 %222, ptr %223, align 4
  %224 = lshr i32 %167, 8
  %225 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 12
  store i32 %224, ptr %225, align 4
  %226 = and i32 %202, 255
  %227 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 14
  store i32 %226, ptr %227, align 4
  %228 = lshr i32 %202, 8
  %229 = and i32 %228, 255
  %230 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 15
  store i32 %229, ptr %230, align 4
  %231 = lshr i32 %202, 16
  %232 = and i32 %231, 3
  %233 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 16
  store i32 %232, ptr %233, align 4
  %234 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 13
  store i32 0, ptr %234, align 4
  %235 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 17
  store i32 44, ptr %235, align 4
  %236 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 18
  store i32 5, ptr %236, align 4
  %237 = select i1 %55, i32 16, i32 0
  %238 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 26
  store i32 %237, ptr %238, align 4
  %239 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 19
  store i32 0, ptr %239, align 4
  %240 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  store i32 67, ptr %240, align 4
  store i32 67, ptr %5, align 4
  %241 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 25
  %242 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 25, i32 2
  store i32 12, ptr %242, align 4
  %243 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 25, i32 1
  store i32 12, ptr %243, align 4
  store i32 12, ptr %241, align 4
  %244 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 25, i32 3
  store i32 3, ptr %244, align 4
  %245 = add i32 %109, 4
  %246 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 1, i32 0
  store i32 %245, ptr %246, align 4
  %247 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 1, i32 1
  store i32 %245, ptr %247, align 4
  %248 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 1, i32 2
  store i32 %245, ptr %248, align 4
  %249 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 1, i32 3
  store i32 %245, ptr %249, align 4
  br i1 %55, label %250, label %263

250:                                              ; preds = %194
  %251 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20
  %252 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 2
  store i32 37, ptr %252, align 4
  %253 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 1
  store i32 37, ptr %253, align 4
  store i32 37, ptr %251, align 4
  %254 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 3
  store i32 34, ptr %254, align 4
  %255 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21
  %256 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 2
  store i32 35, ptr %256, align 4
  %257 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 1
  store i32 35, ptr %257, align 4
  store i32 35, ptr %255, align 4
  %258 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 3
  store i32 39, ptr %258, align 4
  %259 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22
  %260 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23
  %261 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %259, i8 0, i64 16, i1 false) #7
  store i32 13, ptr %261, align 4
  %262 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 1
  store i32 13, ptr %262, align 4
  store i32 13, ptr %260, align 4
  br label %297

263:                                              ; preds = %194
  %264 = icmp ugt i64 %11, 750000000
  %265 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 0
  br i1 %264, label %281, label %266

266:                                              ; preds = %263
  store i32 32, ptr %265, align 4
  %267 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 0
  store i32 32, ptr %267, align 4
  %268 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 0
  store i32 0, ptr %268, align 4
  %269 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 0
  store i32 14, ptr %269, align 4
  %270 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 1
  store i32 32, ptr %270, align 4
  %271 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 1
  store i32 32, ptr %271, align 4
  %272 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 1
  store i32 0, ptr %272, align 4
  %273 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 1
  store i32 14, ptr %273, align 4
  %274 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 2
  store i32 32, ptr %274, align 4
  %275 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 2
  store i32 32, ptr %275, align 4
  %276 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 2
  store i32 0, ptr %276, align 4
  %277 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 2
  store i32 14, ptr %277, align 4
  %278 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 3
  store i32 32, ptr %278, align 4
  %279 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 3
  store i32 32, ptr %279, align 4
  %280 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 3
  store i32 0, ptr %280, align 4
  br label %297

281:                                              ; preds = %263
  store i32 37, ptr %265, align 4
  %282 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 0
  store i32 35, ptr %282, align 4
  %283 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 0
  store i32 0, ptr %283, align 4
  %284 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 1
  store i32 37, ptr %284, align 4
  %285 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 1
  store i32 35, ptr %285, align 4
  %286 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 1
  store i32 0, ptr %286, align 4
  %287 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 2
  store i32 37, ptr %287, align 4
  %288 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 2
  store i32 35, ptr %288, align 4
  %289 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 2
  store i32 0, ptr %289, align 4
  %290 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 3
  store i32 37, ptr %290, align 4
  %291 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 3
  store i32 35, ptr %291, align 4
  %292 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 3
  store i32 0, ptr %292, align 4
  %293 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23
  %294 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 2
  store i32 13, ptr %294, align 4
  %295 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 1
  store i32 13, ptr %295, align 4
  store i32 13, ptr %293, align 4
  br label %297

296:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %4) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #7
  br label %476

297:                                              ; preds = %281, %266, %250
  %298 = phi i32 [ 32, %266 ], [ 35, %281 ], [ 39, %250 ]
  %299 = phi i32 [ 32, %266 ], [ 37, %281 ], [ 34, %250 ]
  %300 = phi i32 [ 14, %266 ], [ 13, %281 ], [ 13, %250 ]
  %301 = phi i32 [ 32, %266 ], [ 35, %281 ], [ 35, %250 ]
  %302 = phi i32 [ 32, %266 ], [ 37, %281 ], [ 37, %250 ]
  %303 = phi i32 [ 14, %266 ], [ 0, %281 ], [ 0, %250 ]
  %304 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 3
  store i32 %303, ptr %304, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %204) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %206) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 0) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %154) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %155) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %156) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %211) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %214) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %217) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %220) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %222) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %224) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef %226) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef %229) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %232) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef 44) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.45, i32 noundef 5) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %237) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.47, i32 noundef 67) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.48, i32 noundef 67) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef %245) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef %302) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %301) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef %300) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef %245) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 1, i32 noundef %302) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef %301) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef %300) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 2, i32 noundef %245) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 2, i32 noundef %302) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef %301) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 2, i32 noundef 0) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 2, i32 noundef %300) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 3, i32 noundef %245) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 3, i32 noundef %299) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 3, i32 noundef %298) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 3, i32 noundef 0) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 3, i32 noundef %303) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #7
  %305 = getelementptr inbounds %struct.hdmi_phy, ptr %9, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr i8, ptr %306, i32 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %307) #7
  %308 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %308(i32 noundef 107374000) #7
  %309 = getelementptr i8, ptr %0, i32 12
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr i8, ptr %310, i32 368
  tail call void @msm_writel(i32 noundef 4, ptr noundef %311) #7
  %312 = load ptr, ptr %305, align 4
  %313 = getelementptr i8, ptr %312, i32 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %313) #7
  %314 = load ptr, ptr %309, align 4
  %315 = getelementptr i8, ptr %314, i32 180
  tail call void @msm_writel(i32 noundef 32, ptr noundef %315) #7
  %316 = load ptr, ptr %305, align 4
  %317 = getelementptr i8, ptr %316, i32 76
  tail call void @msm_writel(i32 noundef 15, ptr noundef %317) #7
  %318 = load ptr, ptr %305, align 4
  %319 = getelementptr i8, ptr %318, i32 80
  tail call void @msm_writel(i32 noundef 15, ptr noundef %319) #7
  %320 = getelementptr i8, ptr %0, i32 16
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr i8, ptr %321, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %322) #7
  %323 = load ptr, ptr %320, align 4
  %324 = getelementptr i8, ptr %323, i32 60
  tail call void @msm_writel(i32 noundef %245, ptr noundef %324) #7
  %325 = load ptr, ptr %320, align 4
  %326 = getelementptr i8, ptr %325, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %326) #7
  %327 = getelementptr i8, ptr %0, i32 20
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr i8, ptr %328, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %329) #7
  %330 = load i32, ptr %247, align 4
  %331 = load ptr, ptr %327, align 4
  %332 = getelementptr i8, ptr %331, i32 60
  tail call void @msm_writel(i32 noundef %330, ptr noundef %332) #7
  %333 = load ptr, ptr %327, align 4
  %334 = getelementptr i8, ptr %333, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %334) #7
  %335 = getelementptr i8, ptr %0, i32 24
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr i8, ptr %336, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %337) #7
  %338 = load i32, ptr %248, align 4
  %339 = load ptr, ptr %335, align 4
  %340 = getelementptr i8, ptr %339, i32 60
  tail call void @msm_writel(i32 noundef %338, ptr noundef %340) #7
  %341 = load ptr, ptr %335, align 4
  %342 = getelementptr i8, ptr %341, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %342) #7
  %343 = getelementptr i8, ptr %0, i32 28
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr i8, ptr %344, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %345) #7
  %346 = load i32, ptr %249, align 4
  %347 = load ptr, ptr %343, align 4
  %348 = getelementptr i8, ptr %347, i32 60
  tail call void @msm_writel(i32 noundef %346, ptr noundef %348) #7
  %349 = load ptr, ptr %343, align 4
  %350 = getelementptr i8, ptr %349, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %350) #7
  %351 = load i32, ptr %5, align 4
  %352 = getelementptr i8, ptr %0, i32 16
  %353 = load ptr, ptr %352, align 4
  %354 = getelementptr i8, ptr %353, i32 148
  tail call void @msm_writel(i32 noundef %351, ptr noundef %354) #7
  %355 = load i32, ptr %240, align 4
  %356 = getelementptr i8, ptr %0, i32 24
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr i8, ptr %357, i32 148
  tail call void @msm_writel(i32 noundef %355, ptr noundef %358) #7
  %359 = load ptr, ptr %309, align 4
  %360 = getelementptr i8, ptr %359, i32 64
  tail call void @msm_writel(i32 noundef 30, ptr noundef %360) #7
  %361 = load ptr, ptr %309, align 4
  %362 = getelementptr i8, ptr %361, i32 52
  tail call void @msm_writel(i32 noundef 7, ptr noundef %362) #7
  %363 = load ptr, ptr %309, align 4
  %364 = getelementptr i8, ptr %363, i32 172
  tail call void @msm_writel(i32 noundef 55, ptr noundef %364) #7
  %365 = load ptr, ptr %309, align 4
  %366 = getelementptr i8, ptr %365, i32 60
  tail call void @msm_writel(i32 noundef 2, ptr noundef %366) #7
  %367 = load ptr, ptr %309, align 4
  %368 = getelementptr i8, ptr %367, i32 56
  tail call void @msm_writel(i32 noundef 14, ptr noundef %368) #7
  %369 = load i32, ptr %205, align 4
  %370 = load ptr, ptr %309, align 4
  %371 = getelementptr i8, ptr %370, i32 412
  tail call void @msm_writel(i32 noundef %369, ptr noundef %371) #7
  %372 = load ptr, ptr %309, align 4
  %373 = getelementptr i8, ptr %372, i32 112
  tail call void @msm_writel(i32 noundef 15, ptr noundef %373) #7
  %374 = load ptr, ptr %309, align 4
  %375 = getelementptr i8, ptr %374, i32 72
  tail call void @msm_writel(i32 noundef 15, ptr noundef %375) #7
  %376 = load i32, ptr %239, align 4
  %377 = load ptr, ptr %309, align 4
  %378 = getelementptr i8, ptr %377, i32 292
  tail call void @msm_writel(i32 noundef %376, ptr noundef %378) #7
  %379 = load ptr, ptr %309, align 4
  %380 = getelementptr i8, ptr %379, i32 368
  tail call void @msm_writel(i32 noundef 6, ptr noundef %380) #7
  %381 = load ptr, ptr %309, align 4
  %382 = getelementptr i8, ptr %381, i32 372
  tail call void @msm_writel(i32 noundef 48, ptr noundef %382) #7
  %383 = load i32, ptr %207, align 4
  %384 = load ptr, ptr %309, align 4
  %385 = getelementptr i8, ptr %384, i32 376
  tail call void @msm_writel(i32 noundef %383, ptr noundef %385) #7
  %386 = load i32, ptr %234, align 4
  %387 = load ptr, ptr %309, align 4
  %388 = getelementptr i8, ptr %387, i32 200
  tail call void @msm_writel(i32 noundef %386, ptr noundef %388) #7
  %389 = load i32, ptr %208, align 4
  %390 = load ptr, ptr %309, align 4
  %391 = getelementptr i8, ptr %390, i32 144
  tail call void @msm_writel(i32 noundef %389, ptr noundef %391) #7
  %392 = load i32, ptr %209, align 4
  %393 = load ptr, ptr %309, align 4
  %394 = getelementptr i8, ptr %393, i32 132
  tail call void @msm_writel(i32 noundef %392, ptr noundef %394) #7
  %395 = load i32, ptr %210, align 4
  %396 = load ptr, ptr %309, align 4
  %397 = getelementptr i8, ptr %396, i32 120
  tail call void @msm_writel(i32 noundef %395, ptr noundef %397) #7
  %398 = load i32, ptr %212, align 4
  %399 = load ptr, ptr %309, align 4
  %400 = getelementptr i8, ptr %399, i32 208
  tail call void @msm_writel(i32 noundef %398, ptr noundef %400) #7
  %401 = load i32, ptr %215, align 4
  %402 = load ptr, ptr %309, align 4
  %403 = getelementptr i8, ptr %402, i32 220
  tail call void @msm_writel(i32 noundef %401, ptr noundef %403) #7
  %404 = load i32, ptr %218, align 4
  %405 = load ptr, ptr %309, align 4
  %406 = getelementptr i8, ptr %405, i32 224
  tail call void @msm_writel(i32 noundef %404, ptr noundef %406) #7
  %407 = load i32, ptr %221, align 4
  %408 = load ptr, ptr %309, align 4
  %409 = getelementptr i8, ptr %408, i32 228
  tail call void @msm_writel(i32 noundef %407, ptr noundef %409) #7
  %410 = load i32, ptr %223, align 4
  %411 = load ptr, ptr %309, align 4
  %412 = getelementptr i8, ptr %411, i32 264
  tail call void @msm_writel(i32 noundef %410, ptr noundef %412) #7
  %413 = load i32, ptr %225, align 4
  %414 = load ptr, ptr %309, align 4
  %415 = getelementptr i8, ptr %414, i32 268
  tail call void @msm_writel(i32 noundef %413, ptr noundef %415) #7
  %416 = load i32, ptr %227, align 4
  %417 = load ptr, ptr %309, align 4
  %418 = getelementptr i8, ptr %417, i32 76
  tail call void @msm_writel(i32 noundef %416, ptr noundef %418) #7
  %419 = load i32, ptr %230, align 4
  %420 = load ptr, ptr %309, align 4
  %421 = getelementptr i8, ptr %420, i32 80
  tail call void @msm_writel(i32 noundef %419, ptr noundef %421) #7
  %422 = load i32, ptr %233, align 4
  %423 = load ptr, ptr %309, align 4
  %424 = getelementptr i8, ptr %423, i32 84
  tail call void @msm_writel(i32 noundef %422, ptr noundef %424) #7
  %425 = load ptr, ptr %309, align 4
  %426 = getelementptr i8, ptr %425, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %426) #7
  %427 = load i32, ptr %235, align 4
  %428 = load ptr, ptr %309, align 4
  %429 = getelementptr i8, ptr %428, i32 396
  tail call void @msm_writel(i32 noundef %427, ptr noundef %429) #7
  %430 = load i32, ptr %236, align 4
  %431 = load ptr, ptr %309, align 4
  %432 = getelementptr i8, ptr %431, i32 388
  tail call void @msm_writel(i32 noundef %430, ptr noundef %432) #7
  %433 = load ptr, ptr %309, align 4
  %434 = getelementptr i8, ptr %433, i32 404
  tail call void @msm_writel(i32 noundef 2, ptr noundef %434) #7
  %435 = load ptr, ptr %309, align 4
  %436 = getelementptr i8, ptr %435, i32 196
  tail call void @msm_writel(i32 noundef 21, ptr noundef %436) #7
  br label %437

437:                                              ; preds = %437, %297
  %438 = phi i32 [ 0, %297 ], [ %468, %437 ]
  %439 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 20, i32 %438
  %440 = load i32, ptr %439, align 4
  %441 = getelementptr %struct.hdmi_pll_8996, ptr %6, i32 0, i32 3, i32 %438
  %442 = load ptr, ptr %441, align 4
  %443 = getelementptr i8, ptr %442, i32 44
  tail call void @msm_writel(i32 noundef %440, ptr noundef %443) #7
  %444 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 21, i32 %438
  %445 = load i32, ptr %444, align 4
  %446 = load ptr, ptr %441, align 4
  %447 = getelementptr i8, ptr %446, i32 24
  tail call void @msm_writel(i32 noundef %445, ptr noundef %447) #7
  %448 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 22, i32 %438
  %449 = load i32, ptr %448, align 4
  %450 = load ptr, ptr %441, align 4
  %451 = getelementptr i8, ptr %450, i32 248
  tail call void @msm_writel(i32 noundef %449, ptr noundef %451) #7
  %452 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 23, i32 %438
  %453 = load i32, ptr %452, align 4
  %454 = load ptr, ptr %441, align 4
  %455 = getelementptr i8, ptr %454, i32 252
  tail call void @msm_writel(i32 noundef %453, ptr noundef %455) #7
  %456 = load ptr, ptr %441, align 4
  %457 = getelementptr i8, ptr %456, i32 48
  tail call void @msm_writel(i32 noundef 0, ptr noundef %457) #7
  %458 = load ptr, ptr %441, align 4
  %459 = getelementptr i8, ptr %458, i32 84
  tail call void @msm_writel(i32 noundef 0, ptr noundef %459) #7
  %460 = load ptr, ptr %441, align 4
  %461 = getelementptr i8, ptr %460, i32 200
  tail call void @msm_writel(i32 noundef 3, ptr noundef %461) #7
  %462 = load ptr, ptr %441, align 4
  %463 = getelementptr i8, ptr %462, i32 112
  tail call void @msm_writel(i32 noundef 64, ptr noundef %463) #7
  %464 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %5, i32 0, i32 25, i32 %438
  %465 = load i32, ptr %464, align 4
  %466 = load ptr, ptr %441, align 4
  %467 = getelementptr i8, ptr %466, i32 36
  tail call void @msm_writel(i32 noundef %465, ptr noundef %467) #7
  %468 = add nuw nsw i32 %438, 1
  %469 = icmp eq i32 %468, 4
  br i1 %469, label %470, label %437

470:                                              ; preds = %437
  %471 = load i32, ptr %238, align 4
  %472 = load ptr, ptr %305, align 4
  %473 = getelementptr i8, ptr %472, i32 8
  tail call void @msm_writel(i32 noundef %471, ptr noundef %473) #7
  %474 = load ptr, ptr %305, align 4
  %475 = getelementptr i8, ptr %474, i32 4
  tail call void @msm_writel(i32 noundef 31, ptr noundef %475) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  br label %476

476:                                              ; preds = %470, %296
  %477 = phi i32 [ -22, %296 ], [ 0, %470 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %5) #7
  ret i32 %477
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 1186882, i64 1186909}
!10 = !{i64 1187222, i64 1187249, i64 1187283, i64 1187304}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148672543, i64 2148672823, i64 2148673157, i64 2148673491}
!13 = !{i64 2155762046}
