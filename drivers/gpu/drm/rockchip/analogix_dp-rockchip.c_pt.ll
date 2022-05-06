; ModuleID = '/llk/IR/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_dp_chip_data = type { i32, i32, i32, i32 }
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
%struct.rockchip_dp_device = type { ptr, ptr, %struct.drm_encoder, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, %struct.analogix_dp_plat_data }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.analogix_dp_plat_data = type { i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }

@rockchip_dp_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-dp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_dp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-edp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_edp }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [12 x i8] c"rockchip-dp\00", align 1
@rockchip_dp_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_dp_suspend, ptr @rockchip_dp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rockchip_dp_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @rockchip_dp_probe, ptr @rockchip_dp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_dp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_dp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@rk3288_dp = internal constant %struct.rockchip_dp_chip_data { i32 604, i32 2097152, i32 2097184, i32 1 }, align 4
@rk3399_edp = internal constant %struct.rockchip_dp_chip_data { i32 25168, i32 2097152, i32 2097184, i32 2 }, align 4
@rockchip_dp_component_ops = internal constant %struct.component_ops { ptr @rockchip_dp_bind, ptr @rockchip_dp_unbind }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"*ERROR* failed to enable pclk %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Swapping display color format from YUV to RGB\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to get rockchip,grf property\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"grf\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"*ERROR* failed to get grf clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to get pclk property\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to get dp reset control\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to create drm encoder\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"possible_crtcs = 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"failed to initialize encoder with drm\0A\00", align 1
@rockchip_dp_encoder_helper_funcs = internal global %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @rockchip_dp_drm_encoder_mode_fixup, ptr null, ptr null, ptr @rockchip_dp_drm_encoder_mode_set, ptr null, ptr null, ptr @rockchip_dp_drm_encoder_disable, ptr @rockchip_dp_drm_encoder_enable, ptr null, ptr null, ptr @rockchip_dp_drm_encoder_atomic_check }, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"*ERROR* line flag irq timed out\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"vop %s output to dp\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"LIT\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"BIG\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to enable grfclk %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"*ERROR* Could not write to GRF: %d\0A\00", align 1

@__mod_of__rockchip_dp_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @rockchip_dp_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %8, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %6
  %12 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 256, i32 noundef 3520) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 9
  store ptr inttoptr (i32 -19 to ptr), ptr %16, align 4
  %17 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 8
  store ptr %4, ptr %17, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 10
  %20 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 10, i32 1
  store ptr %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rockchip_dp_chip_data, ptr %4, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %23 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 10, i32 5
  store ptr @rockchip_dp_poweron_start, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 10, i32 7
  store ptr @rockchip_dp_powerdown, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 10, i32 9
  store ptr @rockchip_dp_get_modes, ptr %25, align 4
  %26 = load ptr, ptr %7, align 8
  %27 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %26, ptr noundef nonnull @.str.5) #6
  %28 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 6
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %45, label %30

30:                                               ; preds = %14
  %31 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  %32 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 5
  store ptr %31, ptr %32, align 4
  %33 = ptrtoint ptr %31 to i32
  switch i32 %33, label %35 [
    i32 -2, label %34
    i32 -517, label %59
  ]

34:                                               ; preds = %30
  store ptr null, ptr %32, align 4
  br label %37

35:                                               ; preds = %30
  %36 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %45, label %37

37:                                               ; preds = %35, %34
  %38 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  %39 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 4
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %43 = getelementptr inbounds %struct.rockchip_dp_device, ptr %12, i32 0, i32 7
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %37, %35, %14
  %46 = phi ptr [ @.str.6, %14 ], [ @.str.8, %35 ], [ @.str.10, %37 ], [ @.str.12, %41 ]
  %47 = phi ptr [ %28, %14 ], [ %32, %35 ], [ %39, %37 ], [ %43, %41 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %46) #6
  %48 = load ptr, ptr %47, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = icmp slt ptr %48, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %45, %41
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %52, align 8
  %53 = call ptr @analogix_dp_probe(ptr noundef %3, ptr noundef %19) #6
  store ptr %53, ptr %16, align 4
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %53 to i32
  br label %59

57:                                               ; preds = %51
  %58 = call i32 @component_add(ptr noundef %3, ptr noundef nonnull @rockchip_dp_component_ops) #6
  br label %59

59:                                               ; preds = %57, %55, %45, %30, %11, %6, %1
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ], [ -19, %1 ], [ %9, %6 ], [ -12, %11 ], [ %49, %45 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %4, ptr noundef nonnull @rockchip_dp_component_ops) #6
  %5 = getelementptr inbounds %struct.rockchip_dp_device, ptr %3, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  tail call void @analogix_dp_remove(ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_poweron_start(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %4, %1 ], [ %7, %9 ]
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %0, i32 -212
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %11) #6
  br label %22

16:                                               ; preds = %10, %6
  %17 = getelementptr i8, ptr %0, i32 -12
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @reset_control_assert(ptr noundef %18) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 @reset_control_deassert(ptr noundef %20) #6
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i32 [ %11, %13 ], [ 0, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_powerdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_get_modes(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #6
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, -8
  %10 = or i32 %9, 1
  store i32 %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  store i32 8, ptr %11, align 8
  br label %12

12:                                               ; preds = %7, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @analogix_dp_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %2, ptr noundef %10) #6
  %12 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 2, i32 6
  store i32 %11, ptr %12, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %11) #6
  %13 = tail call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %6, i32 noundef 2) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %28

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 2, i32 11
  store ptr @rockchip_dp_encoder_helper_funcs, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 10, i32 2
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @analogix_dp_bind(ptr noundef %20, ptr noundef %2) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 2, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %6) #6
  br label %28

28:                                               ; preds = %23, %16, %15
  %29 = phi i32 [ %13, %15 ], [ %21, %23 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_dp_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void @analogix_dp_unbind(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.rockchip_dp_device, ptr %5, i32 0, i32 2, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_dp_drm_encoder_mode_fixup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #3 {
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rockchip_dp_drm_encoder_mode_set(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_dp_drm_encoder_disable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.__drm_connnectors_state, ptr %13, i32 %7, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr %struct.__drm_crtcs_state, ptr %23, i32 %25, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 16
  %31 = load i8, ptr %30, align 2, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @rockchip_drm_wait_vact_end(ptr noundef nonnull %19, i32 noundef 100) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %0, i32 -4
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #6
  br label %39

39:                                               ; preds = %36, %33, %29, %21, %17, %11, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_dp_drm_encoder_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_endpoint, align 4
  %4 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.__drm_connnectors_state, ptr %14, i32 %8, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %80, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %80, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_crtc, ptr %20, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr %struct.__drm_crtcs_state, ptr %24, i32 %26, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 16
  %32 = load i8, ptr %31, align 2, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %30, %22
  %35 = getelementptr i8, ptr %0, i32 -4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 25
  %38 = load ptr, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #6, !annotation !9
  %39 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %38, ptr noundef %0, ptr noundef nonnull %3) #6
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.of_endpoint, ptr %3, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = select i1 %40, i32 %42, i32 %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %80, label %45

45:                                               ; preds = %34
  %46 = icmp eq i32 %43, 0
  %47 = getelementptr i8, ptr %0, i32 200
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rockchip_dp_chip_data, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.rockchip_dp_chip_data, ptr %48, i32 0, i32 2
  %51 = select i1 %46, ptr @.str.19, ptr @.str.18
  %52 = select i1 %46, ptr %49, ptr %50
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %35, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %54, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull %51) #6
  %55 = getelementptr i8, ptr %0, i32 188
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @clk_prepare(ptr noundef %56) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = call i32 @clk_enable(ptr noundef %56) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  call void @clk_unprepare(ptr noundef %56) #6
  br label %63

63:                                               ; preds = %62, %45
  %64 = phi i32 [ %57, %45 ], [ %60, %62 ]
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %67, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef %64) #6
  br label %80

68:                                               ; preds = %63, %59
  %69 = getelementptr i8, ptr %0, i32 192
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %0, i32 200
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @regmap_write(ptr noundef %70, i32 noundef %73, i32 noundef %53) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %77, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef %74) #6
  br label %78

78:                                               ; preds = %76, %68
  %79 = load ptr, ptr %55, align 4
  call void @clk_disable(ptr noundef %79) #6
  call void @clk_unprepare(ptr noundef %79) #6
  br label %80

80:                                               ; preds = %78, %66, %34, %30, %18, %12, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_dp_drm_encoder_atomic_check(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #4 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 2
  store i32 15, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 1
  store i32 14, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 20, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_drm_wait_vact_end(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_dp_device, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @analogix_dp_suspend(ptr noundef %5) #6
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dp_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_dp_device, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @analogix_dp_resume(ptr noundef %5) #6
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_resume(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
