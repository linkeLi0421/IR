; ModuleID = '/llk/IR/drivers/gpu/drm/imx/dw_hdmi-imx.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/dw_hdmi-imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
%struct.dw_hdmi_mpll_config = type { i32, [3 x %struct.anon] }
%struct.anon = type { i16, i16 }
%struct.dw_hdmi_curr_ctrl = type { i32, [3 x i16] }
%struct.dw_hdmi_phy_config = type { i32, i16, i16, i16 }
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
%struct.imx_hdmi = type { ptr, ptr, ptr, ptr }
%struct.imx_hdmi_encoder = type { %struct.drm_encoder, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@dw_hdmi_imx_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6dl-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_hdmi_drv_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author271 = internal constant [42 x i8] c"author=Andy Yan <andy.yan@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [39 x i8] c"author=Yakir Yang <ykk@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [51 x i8] c"description=IMX6 Specific DW-HDMI Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias275 = internal constant [26 x i8] c"alias=platform:dwhdmi-imx\00", section ".modinfo", align 1
@imx6q_hdmi_drv_data = internal global %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @imx6q_hdmi_mode_valid, ptr null, ptr null, ptr null, i32 0, ptr @imx_mpll_cfg, ptr @imx_cur_ctr, ptr @imx_phy_config, ptr null, i8 0 }, align 4
@imx6dl_hdmi_drv_data = internal global %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @imx6dl_hdmi_mode_valid, ptr null, ptr null, ptr null, i32 0, ptr @imx_mpll_cfg, ptr @imx_cur_ctr, ptr @imx_phy_config, ptr null, i8 0 }, align 4
@imx_mpll_cfg = internal constant [5 x %struct.dw_hdmi_mpll_config] [%struct.dw_hdmi_mpll_config { i32 45250000, [3 x %struct.anon] [%struct.anon { i16 480, i16 0 }, %struct.anon { i16 8673, i16 0 }, %struct.anon { i16 16866, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 92500000, [3 x %struct.anon] [%struct.anon { i16 320, i16 5 }, %struct.anon { i16 8513, i16 5 }, %struct.anon { i16 16706, i16 5 }] }, %struct.dw_hdmi_mpll_config { i32 148500000, [3 x %struct.anon] [%struct.anon { i16 160, i16 10 }, %struct.anon { i16 8353, i16 10 }, %struct.anon { i16 16546, i16 10 }] }, %struct.dw_hdmi_mpll_config { i32 216000000, [3 x %struct.anon] [%struct.anon { i16 160, i16 10 }, %struct.anon { i16 8193, i16 15 }, %struct.anon { i16 16386, i16 15 }] }, %struct.dw_hdmi_mpll_config { i32 -1, [3 x %struct.anon] zeroinitializer }], align 4
@imx_cur_ctr = internal constant [7 x %struct.dw_hdmi_curr_ctrl] [%struct.dw_hdmi_curr_ctrl { i32 54000000, [3 x i16] [i16 2332, i16 2332, i16 1756] }, %struct.dw_hdmi_curr_ctrl { i32 58400000, [3 x i16] [i16 2332, i16 1756, i16 1756] }, %struct.dw_hdmi_curr_ctrl { i32 72000000, [3 x i16] [i16 1756, i16 1756, i16 2332] }, %struct.dw_hdmi_curr_ctrl { i32 74250000, [3 x i16] [i16 1756, i16 2908, i16 2332] }, %struct.dw_hdmi_curr_ctrl { i32 118800000, [3 x i16] [i16 2332, i16 2332, i16 1756] }, %struct.dw_hdmi_curr_ctrl { i32 216000000, [3 x i16] [i16 1756, i16 2908, i16 2332] }, %struct.dw_hdmi_curr_ctrl { i32 -1, [3 x i16] zeroinitializer }], align 4
@imx_phy_config = internal constant [2 x %struct.dw_hdmi_phy_config] [%struct.dw_hdmi_phy_config { i32 216000000, i16 -32755, i16 5, i16 429 }, %struct.dw_hdmi_phy_config { i32 -1, i16 0, i16 0, i16 0 }], align 4
@dw_hdmi_imx_platform_driver = internal global %struct.platform_driver { ptr @dw_hdmi_imx_probe, ptr @dw_hdmi_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_hdmi_imx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"dwhdmi-imx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gpr\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Unable to get gpr\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to find bridge\0A\00", align 1
@dw_hdmi_imx_ops = internal constant %struct.component_ops { ptr @dw_hdmi_imx_bind, ptr null }, align 4
@dw_hdmi_imx_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_hdmi_imx_encoder_enable, ptr @dw_hdmi_imx_atomic_check }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias275, ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_license274], section "llvm.metadata"

@__mod_of__dw_hdmi_imx_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @dw_hdmi_imx_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_hdmi_imx_platform_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_hdmi_imx_platform_driver) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @imx6q_hdmi_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #1 {
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 13500
  %7 = icmp sgt i32 %5, 216000
  %8 = select i1 %7, i32 15, i32 0
  %9 = select i1 %6, i32 16, i32 %8
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @imx6dl_hdmi_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #1 {
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 13500
  %7 = icmp sgt i32 %5, 216000
  %8 = select i1 %7, i32 15, i32 0
  %9 = select i1 %6, i32 16, i32 %8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_imx_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @dw_hdmi_imx_dt_ids, ptr noundef %4) #8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %9, align 8
  store ptr %2, ptr %6, align 4
  %10 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  %11 = getelementptr inbounds %struct.imx_hdmi, ptr %6, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2) #9
  %15 = load ptr, ptr %11, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %33

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @dw_hdmi_probe(ptr noundef %0, ptr noundef %19) #8
  %21 = getelementptr inbounds %struct.imx_hdmi, ptr %6, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %20 to i32
  br label %33

25:                                               ; preds = %17
  %26 = tail call ptr @of_drm_find_bridge(ptr noundef %4) #8
  %27 = getelementptr inbounds %struct.imx_hdmi, ptr %6, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.3) #9
  br label %33

31:                                               ; preds = %25
  %32 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @dw_hdmi_imx_ops) #8
  br label %33

33:                                               ; preds = %31, %29, %23, %13, %1
  %34 = phi i32 [ %16, %13 ], [ %24, %23 ], [ %32, %31 ], [ -19, %29 ], [ -12, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_imx_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %4, ptr noundef nonnull @dw_hdmi_imx_ops) #8
  %5 = getelementptr inbounds %struct.imx_hdmi, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @dw_hdmi_remove(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_hdmi_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_hdmi_imx_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @__drmm_simple_encoder_alloc(ptr noundef %2, i32 noundef 76, i32 noundef 0, i32 noundef 2) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.imx_hdmi_encoder, ptr %4, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @imx_drm_encoder_parse_of(ptr noundef %2, ptr noundef %4, ptr noundef %13) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.drm_encoder, ptr %4, i32 0, i32 11
  store ptr @dw_hdmi_imx_encoder_helper_funcs, ptr %17, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.imx_hdmi, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @drm_bridge_attach(ptr noundef %4, ptr noundef %20, ptr noundef null, i32 noundef 0) #8
  br label %22

22:                                               ; preds = %16, %8, %6
  %23 = phi i32 [ %7, %6 ], [ %21, %16 ], [ %14, %8 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_hdmi_imx_encoder_enable(ptr noundef %0) #3 {
  %2 = alloca %struct.of_endpoint, align 4
  %3 = getelementptr inbounds %struct.imx_hdmi_encoder, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #8, !annotation !8
  %8 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %2, align 4
  %11 = select i1 %9, i32 %10, i32 %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %12 = getelementptr inbounds %struct.imx_hdmi, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = shl i32 %11, 2
  %15 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 12, i32 noundef 12, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dw_hdmi_imx_atomic_check(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #6 {
  %4 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 1
  store i32 4106, ptr %4, align 4
  %5 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 3
  store i32 2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 4
  store i32 3, ptr %6, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
