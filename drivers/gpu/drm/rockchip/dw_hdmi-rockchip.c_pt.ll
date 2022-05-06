; ModuleID = '/llk/IR/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
%struct.dw_hdmi_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_hdmi_chip_data = type { i32, i32, i32 }
%struct.dw_hdmi_mpll_config = type { i32, [3 x %struct.anon.72] }
%struct.anon.72 = type { i16, i16 }
%struct.dw_hdmi_curr_ctrl = type { i32, [3 x i16] }
%struct.dw_hdmi_phy_config = type { i32, i16, i16, i16 }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rockchip_hdmi = type { ptr, ptr, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@dw_hdmi_rockchip_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_hdmi_drv_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [16 x i8] c"dwhdmi-rockchip\00", align 1
@dw_hdmi_rockchip_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @dw_hdmi_rockchip_resume, ptr null, ptr @dw_hdmi_rockchip_resume, ptr null, ptr @dw_hdmi_rockchip_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dw_hdmi_rockchip_pltfm_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @dw_hdmi_rockchip_probe, ptr @dw_hdmi_rockchip_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_hdmi_rockchip_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_hdmi_rockchip_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@rk3228_hdmi_drv_data = internal constant %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr @rk3228_hdmi_phy_ops, ptr @.str.1, ptr @rk3228_chip_data, i32 1, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, align 4
@rk3288_hdmi_drv_data = internal constant %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr null, ptr null, ptr @rk3288_chip_data, i32 0, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, align 4
@rk3328_hdmi_drv_data = internal constant %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 1, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr @rk3328_hdmi_phy_ops, ptr @.str.1, ptr @rk3328_chip_data, i32 1, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, align 4
@rk3399_hdmi_drv_data = internal constant %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 1, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr null, ptr null, ptr @rk3399_chip_data, i32 0, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, align 4
@rk3228_hdmi_phy_ops = internal constant %struct.dw_hdmi_phy_ops { ptr @dw_hdmi_rockchip_genphy_init, ptr @dw_hdmi_rockchip_genphy_disable, ptr @dw_hdmi_phy_read_hpd, ptr @dw_hdmi_phy_update_hpd, ptr @dw_hdmi_rk3228_setup_hpd }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"inno_dw_hdmi_phy2\00", align 1
@rk3228_chip_data = internal global %struct.rockchip_hdmi_chip_data { i32 -1, i32 0, i32 0 }, align 4
@rockchip_mpll_cfg = internal constant [13 x %struct.dw_hdmi_mpll_config] [%struct.dw_hdmi_mpll_config { i32 27000000, [3 x %struct.anon.72] [%struct.anon.72 { i16 179, i16 0 }, %struct.anon.72 { i16 8531, i16 0 }, %struct.anon.72 { i16 16627, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 36000000, [3 x %struct.anon.72] [%struct.anon.72 { i16 179, i16 0 }, %struct.anon.72 { i16 8531, i16 0 }, %struct.anon.72 { i16 16627, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 40000000, [3 x %struct.anon.72] [%struct.anon.72 { i16 179, i16 0 }, %struct.anon.72 { i16 8531, i16 0 }, %struct.anon.72 { i16 16627, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 54000000, [3 x %struct.anon.72] [%struct.anon.72 { i16 114, i16 1 }, %struct.anon.72 { i16 8514, i16 1 }, %struct.anon.72 { i16 16546, i16 1 }] }, %struct.dw_hdmi_mpll_config { i32 65000000, [3 x %struct.anon.72] [%struct.anon.72 { i16 114, i16 1 }, %struct.anon.72 { i16 8514, i16 1 }, %struct.anon.72 { i16 16546, i16 1 }] }, %struct.dw_hdmi_mpll_config { i32 66000000, [3 x %struct.anon.72] [%struct.anon.72 { i16 318, i16 3 }, %struct.anon.72 { i16 8574, i16 2 }, %struct.anon.72 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 74250000, [3 x %struct.anon.72] [%struct.anon.72 { i16 114, i16 1 }, %struct.anon.72 { i16 8517, i16 2 }, %struct.anon.72 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 83500000, [3 x %struct.anon.72] [%struct.anon.72 { i16 114, i16 1 }, %struct.anon.72 zeroinitializer, %struct.anon.72 zeroinitializer] }, %struct.dw_hdmi_mpll_config { i32 108000000, [3 x %struct.anon.72] [%struct.anon.72 { i16 81, i16 2 }, %struct.anon.72 { i16 8517, i16 2 }, %struct.anon.72 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 106500000, [3 x %struct.anon.72] [%struct.anon.72 { i16 81, i16 2 }, %struct.anon.72 { i16 8517, i16 2 }, %struct.anon.72 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 146250000, [3 x %struct.anon.72] [%struct.anon.72 { i16 81, i16 2 }, %struct.anon.72 { i16 8517, i16 2 }, %struct.anon.72 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 148500000, [3 x %struct.anon.72] [%struct.anon.72 { i16 81, i16 3 }, %struct.anon.72 { i16 8524, i16 3 }, %struct.anon.72 { i16 16484, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 -1, [3 x %struct.anon.72] [%struct.anon.72 { i16 160, i16 10 }, %struct.anon.72 { i16 8193, i16 15 }, %struct.anon.72 { i16 16386, i16 15 }] }], align 4
@rockchip_cur_ctr = internal constant [8 x %struct.dw_hdmi_curr_ctrl] [%struct.dw_hdmi_curr_ctrl { i32 40000000, [3 x i16] [i16 24, i16 24, i16 24] }, %struct.dw_hdmi_curr_ctrl { i32 65000000, [3 x i16] [i16 40, i16 40, i16 40] }, %struct.dw_hdmi_curr_ctrl { i32 66000000, [3 x i16] [i16 56, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 74250000, [3 x i16] [i16 40, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 83500000, [3 x i16] [i16 40, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 146250000, [3 x i16] [i16 56, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 148500000, [3 x i16] [i16 0, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 -1, [3 x i16] zeroinitializer }], align 4
@rockchip_phy_config = internal constant [4 x %struct.dw_hdmi_phy_config] [%struct.dw_hdmi_phy_config { i32 74250000, i16 -32759, i16 4, i16 626 }, %struct.dw_hdmi_phy_config { i32 148500000, i16 -32725, i16 4, i16 653 }, %struct.dw_hdmi_phy_config { i32 297000000, i16 -32711, i16 5, i16 653 }, %struct.dw_hdmi_phy_config { i32 -1, i16 0, i16 0, i16 0 }], align 4
@rk3288_chip_data = internal global %struct.rockchip_hdmi_chip_data { i32 604, i32 1048576, i32 1048592 }, align 4
@rk3328_hdmi_phy_ops = internal constant %struct.dw_hdmi_phy_ops { ptr @dw_hdmi_rockchip_genphy_init, ptr @dw_hdmi_rockchip_genphy_disable, ptr @dw_hdmi_rk3328_read_hpd, ptr @dw_hdmi_phy_update_hpd, ptr @dw_hdmi_rk3328_setup_hpd }, align 4
@rk3328_chip_data = internal global %struct.rockchip_hdmi_chip_data { i32 -1, i32 0, i32 0 }, align 4
@rk3399_chip_data = internal global %struct.rockchip_hdmi_chip_data { i32 25168, i32 4194304, i32 4194368 }, align 4
@dw_hdmi_rockchip_ops = internal constant %struct.component_ops { ptr @dw_hdmi_rockchip_bind, ptr @dw_hdmi_rockchip_unbind }, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"*ERROR* Unable to parse OF data\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"*ERROR* failed to get phy\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"*ERROR* Failed to enable HDMI vpll: %d\0A\00", align 1
@dw_hdmi_rockchip_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @dw_hdmi_rockchip_encoder_mode_fixup, ptr null, ptr null, ptr @dw_hdmi_rockchip_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @dw_hdmi_rockchip_encoder_disable, ptr @dw_hdmi_rockchip_encoder_enable, ptr @dw_hdmi_rockchip_encoder_atomic_check }, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"*ERROR* Unable to get rockchip,grf\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vpll\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"*ERROR* failed to get vpll clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"grf\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"*ERROR* failed to get grf clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to enable grfclk %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"*ERROR* Could not write to GRF: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"vop %s output to hdmi\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"LIT\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"BIG\00", align 1

@__mod_of__dw_hdmi_rockchip_dt_ids_device_table = dso_local alias [5 x %struct.of_device_id], ptr @dw_hdmi_rockchip_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @dw_hdmi_rockchip_ops) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @dw_hdmi_rockchip_ops) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #1 {
  %5 = load i32, ptr %3, align 4
  %6 = mul i32 %5, 1000
  switch i32 %6, label %7 [
    i32 27000000, label %8
    i32 36000000, label %8
    i32 40000000, label %8
    i32 54000000, label %8
    i32 65000000, label %8
    i32 66000000, label %8
    i32 74250000, label %8
    i32 83500000, label %8
    i32 108000000, label %8
    i32 106500000, label %8
    i32 146250000, label %8
    i32 148500000, label %8
  ]

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %9 = phi i32 [ 0, %4 ], [ -2, %7 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_genphy_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @phy_power_on(ptr noundef %6) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_genphy_disable(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @phy_power_off(ptr noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_hdmi_phy_read_hpd(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_update_hpd(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_hdmi_rk3228_setup_hpd(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @dw_hdmi_phy_setup_hpd(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1048, i32 noundef 7340144) #7
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1032, i32 noundef 1610637312) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_setup_hpd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rk3328_read_hpd(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @dw_hdmi_phy_read_hpd(ptr noundef %0, ptr noundef %1) #7
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = select i1 %4, i32 100664832, i32 100663296
  %8 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1040, i32 noundef %7) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_hdmi_rk3328_setup_hpd(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @dw_hdmi_phy_setup_hpd(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1040, i32 noundef 788529152) #7
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 1036, i32 noundef -268435456) #7
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1032, i32 noundef 201591808) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %94, label %8

8:                                                ; preds = %3
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 100, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %94, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8
  %13 = tail call ptr @of_match_node(ptr noundef nonnull @dw_hdmi_rockchip_dt_ids, ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @devm_kmemdup(ptr noundef %0, ptr noundef %15, i32 noundef 60, i32 noundef 3264) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %94, label %18

18:                                               ; preds = %11
  store ptr %0, ptr %9, align 4
  %19 = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %16, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  store ptr %9, ptr %19, align 4
  %22 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 2
  %23 = load ptr, ptr %5, align 8
  %24 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %2, ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 2, i32 6
  store i32 %24, ptr %25, align 4
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %94, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 25
  %30 = load ptr, ptr %29, align 8
  %31 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %30, ptr noundef nonnull @.str.7) #7
  %32 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %34 = load ptr, ptr %9, align 4
  br i1 %33, label %35, label %36

35:                                               ; preds = %27
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #7
  br label %55

36:                                               ; preds = %27
  %37 = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef nonnull @.str.9) #7
  %38 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 4
  store ptr %37, ptr %38, align 4
  %39 = ptrtoint ptr %37 to i32
  switch i32 %39, label %41 [
    i32 -2, label %40
    i32 -517, label %60
  ]

40:                                               ; preds = %36
  store ptr null, ptr %38, align 4
  br label %45

41:                                               ; preds = %36
  %42 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #7
  br label %55

45:                                               ; preds = %41, %40
  %46 = load ptr, ptr %9, align 4
  %47 = tail call ptr @devm_clk_get(ptr noundef %46, ptr noundef nonnull @.str.11) #7
  %48 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 5
  store ptr %47, ptr %48, align 4
  %49 = ptrtoint ptr %47 to i32
  switch i32 %49, label %51 [
    i32 -2, label %50
    i32 -517, label %60
  ]

50:                                               ; preds = %45
  store ptr null, ptr %48, align 4
  br label %63

51:                                               ; preds = %45
  %52 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %63

53:                                               ; preds = %51
  %54 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %54, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #7
  br label %55

55:                                               ; preds = %53, %43, %35
  %56 = phi ptr [ %32, %35 ], [ %48, %53 ], [ %38, %43 ]
  %57 = load ptr, ptr %56, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = icmp eq ptr %57, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55, %45, %36
  %61 = phi i32 [ %58, %55 ], [ %39, %36 ], [ %49, %45 ]
  %62 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %94

63:                                               ; preds = %55, %51, %50
  %64 = tail call ptr @devm_phy_optional_get(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %65 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 7
  store ptr %64, ptr %65, align 4
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = icmp eq ptr %64, inttoptr (i32 -517 to ptr)
  br i1 %68, label %94, label %69

69:                                               ; preds = %67
  %70 = ptrtoint ptr %64 to i32
  %71 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %71, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #7
  br label %94

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @clk_prepare(ptr noundef %74) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = tail call i32 @clk_enable(ptr noundef %74) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  tail call void @clk_unprepare(ptr noundef %74) #7
  br label %81

81:                                               ; preds = %80, %72
  %82 = phi i32 [ %78, %80 ], [ %75, %72 ]
  %83 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %83, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %82) #7
  br label %94

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 2, i32 11
  store ptr @dw_hdmi_rockchip_encoder_helper_funcs, ptr %85, align 4
  %86 = tail call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %22, i32 noundef 2) #7
  %87 = getelementptr i8, ptr %0, i32 64
  store ptr %9, ptr %87, align 8
  %88 = tail call ptr @dw_hdmi_bind(ptr noundef %4, ptr noundef %22, ptr noundef nonnull %16) #7
  %89 = getelementptr inbounds %struct.rockchip_hdmi, ptr %9, i32 0, i32 6
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = ptrtoint ptr %88 to i32
  tail call void @drm_encoder_cleanup(ptr noundef %22) #7
  %93 = load ptr, ptr %73, align 4
  tail call void @clk_disable(ptr noundef %93) #7
  tail call void @clk_unprepare(ptr noundef %93) #7
  br label %94

94:                                               ; preds = %91, %84, %81, %69, %67, %60, %18, %11, %8, %3
  %95 = phi i32 [ %61, %60 ], [ %82, %81 ], [ -19, %3 ], [ -12, %8 ], [ -12, %11 ], [ -517, %18 ], [ %70, %69 ], [ -517, %67 ], [ %92, %91 ], [ 0, %84 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rockchip_hdmi, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @dw_hdmi_unbind(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.rockchip_hdmi, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_hdmi_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw_hdmi_rockchip_encoder_mode_fixup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_encoder_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 76
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = mul i32 %6, 1000
  %8 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %7) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dw_hdmi_rockchip_encoder_disable(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_encoder_enable(ptr noundef %0) #0 {
  %2 = alloca %struct.of_endpoint, align 4
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #7, !annotation !8
  %12 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %11, ptr noundef %0, ptr noundef nonnull %2) #7
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.of_endpoint, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = select i1 %13, i32 %15, i32 %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.rockchip_hdmi_chip_data, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.rockchip_hdmi_chip_data, ptr %18, i32 0, i32 1
  %21 = select i1 %17, ptr %20, ptr %19
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 80
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @clk_prepare(ptr noundef %24) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = call i32 @clk_enable(ptr noundef %24) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  call void @clk_unprepare(ptr noundef %24) #7
  br label %31

31:                                               ; preds = %30, %8
  %32 = phi i32 [ %25, %8 ], [ %28, %30 ]
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, i32 noundef %32) #7
  br label %49

36:                                               ; preds = %31, %27
  %37 = getelementptr i8, ptr %0, i32 -4
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @regmap_write(ptr noundef %38, i32 noundef %40, i32 noundef %22) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14, i32 noundef %41) #7
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ @.str.16, %43 ], [ @.str.17, %36 ]
  %47 = load ptr, ptr %23, align 4
  call void @clk_disable(ptr noundef %47) #7
  call void @clk_unprepare(ptr noundef %47) #7
  %48 = load ptr, ptr %3, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %48, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull %46) #7
  br label %49

49:                                               ; preds = %45, %34, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dw_hdmi_rockchip_encoder_atomic_check(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #5 {
  %4 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 2
  store i32 15, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 1
  store i32 11, ptr %5, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_unbind(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_hdmi, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @dw_hdmi_resume(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_resume(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
