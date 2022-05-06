; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/dsi_manager.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi_manager.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_manager = type { [2 x ptr], i8, i8, i32 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_dsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32 }
%struct.dsi_connector = type { %struct.drm_connector, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.87, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.87 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsi_bridge = type { %struct.drm_bridge, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.msm_dsi_phy_clk_request = type { i32, i32 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }

@msm_dsim_glb = internal unnamed_addr global %struct.msm_dsi_manager zeroinitializer, align 4
@dsi_mgr_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @dsi_mgr_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @dsi_mgr_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@dsi_mgr_conn_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @dsi_mgr_connector_get_modes, ptr null, ptr @dsi_mgr_connector_mode_valid, ptr null, ptr @dsi_mgr_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"*ERROR* init panel failed %d\0A\00", align 1
@dsi_mgr_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @dsi_mgr_bridge_disable, ptr @dsi_mgr_bridge_post_disable, ptr @dsi_mgr_bridge_mode_set, ptr @dsi_mgr_bridge_pre_enable, ptr @dsi_mgr_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to create bridge connector\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\013%s: failed to prepare non-trigger host, %d\0A\00", align 1
@__func__.msm_dsi_manager_cmd_xfer = private unnamed_addr constant [25 x i8] c"msm_dsi_manager_cmd_xfer\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\013%s: failed to prepare host, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\013%s: invalid id %d\0A\00", align 1
@__func__.msm_dsi_manager_register = private unnamed_addr constant [25 x i8] c"msm_dsi_manager_register\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\013%s: dsi%d already registered\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"\013%s: failed to register mipi dsi host for DSI %d: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"requested=%ld, actual=%ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Could not find panel for %u (%ld)\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"id=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\013%s: Panel %d OFF failed, %d\0A\00", align 1
@__func__.dsi_mgr_bridge_disable = private unnamed_addr constant [23 x i8] c"dsi_mgr_bridge_disable\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\013%s: host %d disable failed, %d\0A\00", align 1
@__func__.dsi_mgr_bridge_post_disable = private unnamed_addr constant [28 x i8] c"dsi_mgr_bridge_post_disable\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\013%s: host1 disable failed, %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"\013%s: Panel %d unprepare failed,%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\013%s: host %d power off failed,%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"\013%s: host1 power off failed, %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"\013%s: power on host %d failed, %d\0A\00", align 1
@__func__.dsi_mgr_bridge_pre_enable = private unnamed_addr constant [26 x i8] c"dsi_mgr_bridge_pre_enable\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"\013%s: power on host1 failed, %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"\013%s: prepare panel %d failed, %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"\013%s: enable host %d failed, %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"\013%s: enable host1 failed, %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"\013%s: enable panel %d failed, %d\0A\00", align 1
@__func__.dsi_mgr_bridge_enable = private unnamed_addr constant [22 x i8] c"dsi_mgr_bridge_enable\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"qcom,dual-dsi-mode\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"qcom,master-dsi\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"qcom,sync-dual-dsi\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_manager_tpg_enable() local_unnamed_addr #0 {
  %1 = load ptr, ptr @msm_dsim_glb, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @msm_dsi_host_test_pattern_en(ptr noundef %6) #8
  %7 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %8 = icmp ne i8 %7, 0
  %9 = icmp ne ptr %2, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %2, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @msm_dsi_host_test_pattern_en(ptr noundef %13) #8
  br label %14

14:                                               ; preds = %11, %4, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_test_pattern_en(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_manager_connector_init(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 976) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %87, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dsi_connector, ptr %6, i32 0, i32 1
  store i32 %2, ptr %9, align 8
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 @drm_connector_init(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull @dsi_mgr_connector_funcs, i32 noundef 16) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = inttoptr i32 %11 to ptr
  br label %87

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 35
  store ptr @dsi_mgr_conn_helper_funcs, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 33
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 12
  store i8 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 13
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %6, ptr noundef %21) #8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.msm_drm_private, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = and i8 %0, 1
  %30 = xor i8 %29, 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %37 = icmp eq i32 %36, %2
  %38 = select i1 %35, i1 true, i1 %37
  %39 = select i1 %38, ptr %28, ptr %33
  %40 = select i1 %38, ptr %33, ptr %28
  %41 = getelementptr inbounds %struct.msm_dsi, ptr %39, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = tail call ptr @msm_dsi_host_get_panel(ptr noundef %42) #8
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %74, label %45

45:                                               ; preds = %15
  %46 = icmp eq ptr %43, null
  %47 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %72, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 6
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 30, i32 38
  %54 = load ptr, ptr %53, align 4
  tail call void @drm_object_attach_property(ptr noundef %51, ptr noundef %54, i64 noundef 0) #8
  %55 = icmp eq ptr %33, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.msm_dsi, ptr %33, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %27, align 8
  %62 = getelementptr inbounds %struct.msm_kms_funcs, ptr %61, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.msm_dsi, ptr %39, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.msm_dsi, ptr %40, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = tail call zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef %28) #8
  %71 = tail call i32 %63(ptr noundef %27, ptr noundef %67, ptr noundef %69, i1 noundef zeroext %70) #8
  br label %72

72:                                               ; preds = %65, %60, %56, %50, %45
  %73 = getelementptr inbounds %struct.msm_dsi, ptr %28, i32 0, i32 6
  store ptr %43, ptr %73, align 4
  br label %87

74:                                               ; preds = %15
  %75 = getelementptr inbounds %struct.msm_dsi, ptr %28, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = ptrtoint ptr %43 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %76, i32 noundef %77) #8
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds %struct.drm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %80, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %77) #8
  %81 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 21
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.drm_connector_funcs, ptr %82, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  tail call void %84(ptr noundef %86) #8
  br label %87

87:                                               ; preds = %74, %72, %13, %1
  %88 = phi ptr [ %14, %13 ], [ %43, %74 ], [ inttoptr (i32 -12 to ptr), %1 ], [ %6, %72 ]
  ret ptr %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_manager_bridge_init(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 136, i32 noundef 3520) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dsi_bridge, ptr %8, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_bridge, ptr %8, i32 0, i32 7
  store ptr @dsi_mgr_bridge_funcs, ptr %14, align 4
  %15 = tail call i32 @drm_bridge_attach(ptr noundef %13, ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10, %1
  %18 = phi i32 [ %15, %10 ], [ -12, %1 ]
  %19 = inttoptr i32 %18 to ptr
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi ptr [ %19, %17 ], [ %8, %10 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @msm_dsi_manager_bridge_destroy(ptr nocapture %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_manager_ext_bridge_init(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @msm_dsi_host_get_bridge(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 7
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @drm_bridge_attach(ptr noundef %13, ptr noundef %10, ptr noundef %7, i32 noundef 1) #8
  %15 = icmp eq i32 %14, -22
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = tail call i32 @drm_bridge_attach(ptr noundef %13, ptr noundef %10, ptr noundef %7, i32 noundef 0) #8
  %18 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 12
  br label %19

19:                                               ; preds = %23, %16
  %20 = phi ptr [ %18, %16 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -16
  %25 = tail call zeroext i1 @drm_connector_has_possible_encoder(ptr noundef %24, ptr noundef %13) #8
  br i1 %25, label %32, label %19

26:                                               ; preds = %1
  %27 = tail call ptr @drm_bridge_connector_init(ptr noundef %5, ptr noundef %13) #8
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %32

30:                                               ; preds = %26
  %31 = tail call i32 @drm_connector_attach_encoder(ptr noundef %27, ptr noundef %13) #8
  br label %32

32:                                               ; preds = %30, %29, %23, %19
  %33 = phi ptr [ %27, %29 ], [ %27, %30 ], [ inttoptr (i32 -19 to ptr), %19 ], [ %24, %23 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_host_get_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_has_possible_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_manager_cmd_xfer(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %0
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @msm_dsim_glb, align 4
  %6 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1, !range !8
  %18 = icmp ne i8 %17, 0
  %19 = xor i1 %16, true
  %20 = select i1 %18, i1 %19, i1 false
  %21 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %0, 0
  %30 = and i1 %29, %20
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  br i1 %16, label %32, label %62

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  br label %62

35:                                               ; preds = %28
  %36 = icmp ne ptr %5, null
  %37 = select i1 %20, i1 %36, i1 false
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @msm_dsi_host_xfer_prepare(ptr noundef %40, ptr noundef %1) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.msm_dsi_manager_cmd_xfer, i32 noundef %41) #10
  br label %62

45:                                               ; preds = %38, %35
  %46 = tail call i32 @msm_dsi_host_xfer_prepare(ptr noundef %7, ptr noundef %1) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.msm_dsi_manager_cmd_xfer, i32 noundef %46) #10
  br label %57

50:                                               ; preds = %45
  br i1 %16, label %51, label %53

51:                                               ; preds = %50
  %52 = tail call i32 @msm_dsi_host_cmd_rx(ptr noundef %7, ptr noundef %1) #8
  br label %55

53:                                               ; preds = %50
  %54 = tail call i32 @msm_dsi_host_cmd_tx(ptr noundef %7, ptr noundef %1) #8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  tail call void @msm_dsi_host_xfer_restore(ptr noundef %7, ptr noundef %1) #8
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi i32 [ %46, %48 ], [ %56, %55 ]
  br i1 %37, label %59, label %62

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  tail call void @msm_dsi_host_xfer_restore(ptr noundef %61, ptr noundef %1) #8
  br label %62

62:                                               ; preds = %59, %57, %43, %32, %31, %24, %15
  %63 = phi i32 [ %41, %43 ], [ 0, %24 ], [ 0, %15 ], [ %34, %32 ], [ %26, %31 ], [ %58, %59 ], [ %58, %57 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_xfer_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_cmd_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_cmd_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_xfer_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_dsi_manager_cmd_xfer_trigger(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @msm_dsim_glb, align 4
  %7 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1, !range !8
  %10 = icmp ne i8 %9, 0
  %11 = icmp eq i32 %0, 0
  %12 = and i1 %11, %10
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = icmp ne ptr %6, null
  %15 = select i1 %10, i1 %14, i1 false
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @msm_dsi_host_cmd_xfer_commit(ptr noundef %18, i32 noundef %1, i32 noundef %2) #8
  br label %19

19:                                               ; preds = %16, %13
  tail call void @msm_dsi_host_cmd_xfer_commit(ptr noundef %8, i32 noundef %1, i32 noundef %2) #8
  br label %20

20:                                               ; preds = %19, %3
  %21 = xor i1 %12, true
  ret i1 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_cmd_xfer_commit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_manager_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.msm_dsi_manager_register, i32 noundef %3) #10
  br label %88

7:                                                ; preds = %1
  %8 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.msm_dsi_manager_register, i32 noundef %3) #10
  br label %88

13:                                               ; preds = %7
  store ptr %0, ptr %8, align 4
  %14 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i8
  store i8 %23, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4
  br i1 %22, label %24, label %35

24:                                               ; preds = %20, %13
  %25 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.27, ptr noundef null) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 %3, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef null) #8
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i8
  store i8 %34, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 2), align 1
  br label %35

35:                                               ; preds = %31, %28, %20
  %36 = load ptr, ptr %8, align 4
  %37 = add nsw i32 %3, 1
  %38 = srem i32 %37, 2
  %39 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr @msm_dsim_glb, align 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %43 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.msm_dsi, ptr %36, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @msm_dsi_host_register(ptr noundef %47) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.msm_dsi, ptr %36, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  tail call void @msm_dsi_phy_set_usecase(ptr noundef %52, i32 noundef 0) #8
  br label %80

53:                                               ; preds = %35
  %54 = icmp eq ptr %40, null
  br i1 %54, label %88, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %57 = icmp eq i32 %56, %3
  %58 = select i1 %57, ptr %40, ptr %36
  %59 = getelementptr inbounds %struct.msm_dsi, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @msm_dsi_host_register(ptr noundef %60) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %55
  %64 = select i1 %57, ptr %36, ptr %40
  %65 = getelementptr inbounds %struct.msm_dsi, ptr %64, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @msm_dsi_host_register(ptr noundef %66) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.msm_dsi, ptr %41, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  tail call void @msm_dsi_phy_set_usecase(ptr noundef %71, i32 noundef 1) #8
  %72 = getelementptr inbounds %struct.msm_dsi, ptr %42, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  tail call void @msm_dsi_phy_set_usecase(ptr noundef %73, i32 noundef 2) #8
  %74 = getelementptr inbounds %struct.msm_dsi, ptr %36, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.msm_dsi, ptr %36, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  tail call void @msm_dsi_host_set_phy_mode(ptr noundef %75, ptr noundef %77) #8
  %78 = getelementptr inbounds %struct.msm_dsi, ptr %40, i32 0, i32 4
  %79 = getelementptr inbounds %struct.msm_dsi, ptr %40, i32 0, i32 5
  br label %80

80:                                               ; preds = %69, %50
  %81 = phi ptr [ %51, %50 ], [ %79, %69 ]
  %82 = phi ptr [ %46, %50 ], [ %78, %69 ]
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %81, align 4
  tail call void @msm_dsi_host_set_phy_mode(ptr noundef %83, ptr noundef %84) #8
  br label %88

85:                                               ; preds = %63, %55, %45
  %86 = phi i32 [ %61, %55 ], [ %67, %63 ], [ %48, %45 ]
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.msm_dsi_manager_register, i32 noundef %3, i32 noundef %86) #10
  store ptr null, ptr %8, align 4
  br label %88

88:                                               ; preds = %85, %80, %53, %11, %5
  %89 = phi i32 [ -22, %5 ], [ -16, %11 ], [ %86, %85 ], [ 0, %53 ], [ 0, %80 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_manager_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @msm_dsi_host_unregister(ptr noundef nonnull %3) #8
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %8
  store ptr null, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @msm_dsi_is_bonded_dsi(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @msm_dsi_is_master_dsi(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %3 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %2, %4
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dsi_mgr_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.dsi_connector, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 2, i32 1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_mgr_connector_destroy(ptr noundef %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #8
  tail call void @drm_connector_cleanup(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_mgr_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_connector, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %7, ptr noundef %0) #8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_mgr_connector_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dsi_connector, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @msm_dsi_get_encoder(ptr noundef %6) #8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #8
  %13 = load i32, ptr %1, align 4
  %14 = mul i32 %13, 1000
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds %struct.msm_kms_funcs, ptr %15, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %12, i32 noundef %14, ptr noundef %7) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %14, i32 noundef %18) #8
  %19 = icmp eq i32 %18, %14
  %20 = select i1 %19, i32 0, i32 17
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dsi_mgr_connector_best_encoder(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_connector, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #8
  %6 = tail call ptr @msm_dsi_get_encoder(ptr noundef %5) #8
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_get_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_host_get_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_bridge, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %3) #8
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11, %1
  %16 = icmp ne i8 %8, 0
  %17 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %18 = icmp ne i32 %17, %3
  %19 = select i1 %16, i1 %18, i1 false
  %20 = icmp eq ptr %7, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @drm_panel_disable(ptr noundef nonnull %7) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dsi_mgr_bridge_disable, i32 noundef %3, i32 noundef %23) #10
  br label %27

27:                                               ; preds = %25, %22, %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_post_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_bridge, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %7 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %12 = icmp ne i8 %11, 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %3) #8
  %13 = load ptr, ptr %9, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %91, label %19

19:                                               ; preds = %15, %1
  %20 = xor i1 %12, true
  %21 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %22 = icmp eq i32 %21, %3
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = tail call i32 @msm_dsi_host_disable(ptr noundef %8) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dsi_mgr_bridge_post_disable, i32 noundef %3, i32 noundef %25) #10
  br label %29

29:                                               ; preds = %27, %24
  %30 = icmp ne ptr %6, null
  %31 = select i1 %12, i1 %30, i1 false
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @msm_dsi_host_disable(ptr noundef %34) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dsi_mgr_bridge_post_disable, i32 noundef %35) #10
  br label %39

39:                                               ; preds = %37, %32, %29
  %40 = icmp eq ptr %10, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %10) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dsi_mgr_bridge_post_disable, i32 noundef %3, i32 noundef %42) #10
  br label %46

46:                                               ; preds = %44, %41, %39
  tail call void @msm_dsi_host_disable_irq(ptr noundef %8) #8
  br i1 %31, label %47, label %50

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void @msm_dsi_host_disable_irq(ptr noundef %49) #8
  br label %50

50:                                               ; preds = %47, %46
  %51 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  tail call void @msm_dsi_phy_pll_save_state(ptr noundef %52) #8
  %53 = tail call i32 @msm_dsi_host_power_off(ptr noundef %8) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dsi_mgr_bridge_post_disable, i32 noundef %3, i32 noundef %53) #10
  br label %57

57:                                               ; preds = %55, %50
  br i1 %31, label %58, label %65

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @msm_dsi_host_power_off(ptr noundef %60) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dsi_mgr_bridge_post_disable, i32 noundef %61) #10
  br label %65

65:                                               ; preds = %63, %58, %57, %19
  %66 = load ptr, ptr %4, align 4
  %67 = load ptr, ptr @msm_dsim_glb, align 4
  %68 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %69 = getelementptr inbounds %struct.msm_dsi, ptr %66, i32 0, i32 9
  store i8 0, ptr %69, align 4
  %70 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %71 = icmp ne i8 %70, 0
  %72 = icmp ne ptr %67, null
  %73 = select i1 %71, i1 %72, i1 false
  %74 = icmp ne ptr %68, null
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %87

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.msm_dsi, ptr %67, i32 0, i32 9
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.msm_dsi, ptr %68, i32 0, i32 9
  %82 = load i8, ptr %81, align 4, !range !8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.msm_dsi, ptr %68, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  tail call void @msm_dsi_phy_disable(ptr noundef %86) #8
  br label %87

87:                                               ; preds = %84, %65
  %88 = phi ptr [ %67, %84 ], [ %66, %65 ]
  %89 = getelementptr inbounds %struct.msm_dsi, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  tail call void @msm_dsi_phy_disable(ptr noundef %90) #8
  br label %91

91:                                               ; preds = %87, %80, %76, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_mode_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsi_bridge, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %5, 1
  %9 = srem i32 %8, 2
  %10 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %15 = icmp ne i8 %14, 0
  %16 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 31
  %17 = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #8
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 28
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %47) #8
  %48 = xor i1 %15, true
  %49 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %50 = icmp eq i32 %49, %5
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %3
  %53 = tail call i32 @msm_dsi_host_set_display_mode(ptr noundef %13, ptr noundef %2) #8
  %54 = icmp ne ptr %11, null
  %55 = select i1 %15, i1 %54, i1 false
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.msm_dsi, ptr %11, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @msm_dsi_host_set_display_mode(ptr noundef %58, ptr noundef %2) #8
  br label %60

60:                                               ; preds = %56, %52, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_pre_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.msm_dsi_phy_clk_request, align 8
  %3 = alloca %struct.msm_dsi_phy_clk_request, align 8
  %4 = alloca %struct.msm_dsi_phy_clk_request, align 8
  %5 = alloca [2 x %struct.msm_dsi_phy_shared_timings], align 4
  %6 = getelementptr inbounds %struct.dsi_bridge, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %11 = getelementptr inbounds %struct.msm_dsi, ptr %9, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_dsi, ptr %9, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %15 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %16 = icmp ne i8 %15, 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %7) #8
  %17 = load ptr, ptr %13, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.msm_dsi, ptr %9, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %138, label %23

23:                                               ; preds = %19, %1
  %24 = xor i1 %16, true
  %25 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %26 = icmp eq i32 %25, %7
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 4
  %30 = load ptr, ptr @msm_dsim_glb, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %32 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %33 = icmp ne i8 %32, 0
  %34 = icmp ne ptr %30, null
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ne ptr %31, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %69

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.msm_dsi, ptr %30, i32 0, i32 9
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.msm_dsi, ptr %31, i32 0, i32 9
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.msm_dsi, ptr %30, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call void @msm_dsi_host_reset_phy(ptr noundef %48) #8
  %49 = getelementptr inbounds %struct.msm_dsi, ptr %31, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  tail call void @msm_dsi_host_reset_phy(ptr noundef %50) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !9
  %51 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %52 = icmp ne i8 %51, 0
  %53 = load ptr, ptr %47, align 4
  call void @msm_dsi_host_get_phy_clk_req(ptr noundef %53, ptr noundef nonnull %4, i1 noundef zeroext %52) #8
  %54 = getelementptr inbounds %struct.msm_dsi, ptr %30, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @msm_dsi_phy_enable(ptr noundef %55, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %138

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, ptr %5, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !9
  %60 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %61 = icmp ne i8 %60, 0
  %62 = load ptr, ptr %49, align 4
  call void @msm_dsi_host_get_phy_clk_req(ptr noundef %62, ptr noundef nonnull %3, i1 noundef zeroext %61) #8
  %63 = getelementptr inbounds %struct.msm_dsi, ptr %31, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @msm_dsi_phy_enable(ptr noundef %64, ptr noundef nonnull %3, ptr noundef %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %58
  %68 = load ptr, ptr %54, align 4
  call void @msm_dsi_phy_disable(ptr noundef %68) #8
  br label %138

69:                                               ; preds = %28
  %70 = getelementptr inbounds %struct.msm_dsi, ptr %29, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  tail call void @msm_dsi_host_reset_phy(ptr noundef %71) #8
  %72 = getelementptr %struct.msm_dsi_phy_shared_timings, ptr %5, i32 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !9
  %73 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %74 = icmp ne i8 %73, 0
  %75 = load ptr, ptr %70, align 4
  call void @msm_dsi_host_get_phy_clk_req(ptr noundef %75, ptr noundef nonnull %2, i1 noundef zeroext %74) #8
  %76 = getelementptr inbounds %struct.msm_dsi, ptr %29, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @msm_dsi_phy_enable(ptr noundef %77, ptr noundef nonnull %2, ptr noundef %72) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %138

80:                                               ; preds = %69, %58, %42, %38
  %81 = getelementptr inbounds %struct.msm_dsi, ptr %29, i32 0, i32 9
  store i8 1, ptr %81, align 4
  %82 = getelementptr [2 x %struct.msm_dsi_phy_shared_timings], ptr %5, i32 0, i32 %7
  %83 = getelementptr inbounds %struct.msm_dsi, ptr %9, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 @msm_dsi_host_power_on(ptr noundef %12, ptr noundef %82, i1 noundef zeroext %16, ptr noundef %84) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dsi_mgr_bridge_pre_enable, i32 noundef %7, i32 noundef %85) #10
  br label %137

89:                                               ; preds = %80
  %90 = icmp ne ptr %10, null
  %91 = select i1 %16, i1 %90, i1 false
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.msm_dsi, ptr %10, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds [2 x %struct.msm_dsi_phy_shared_timings], ptr %5, i32 0, i32 1
  %96 = getelementptr inbounds %struct.msm_dsi, ptr %10, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 @msm_dsi_host_power_on(ptr noundef %94, ptr noundef %95, i1 noundef zeroext true, ptr noundef %97) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dsi_mgr_bridge_pre_enable, i32 noundef %98) #10
  br label %135

102:                                              ; preds = %92
  call void @msm_dsi_host_enable_irq(ptr noundef %12) #8
  %103 = load ptr, ptr %93, align 4
  br label %104

104:                                              ; preds = %102, %89
  %105 = phi ptr [ %103, %102 ], [ %12, %89 ]
  call void @msm_dsi_host_enable_irq(ptr noundef %105) #8
  %106 = icmp eq ptr %14, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = call i32 @drm_panel_prepare(ptr noundef nonnull %14) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dsi_mgr_bridge_pre_enable, i32 noundef %7, i32 noundef %108) #10
  br label %129

112:                                              ; preds = %107, %104
  %113 = call i32 @msm_dsi_host_enable(ptr noundef %12) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dsi_mgr_bridge_pre_enable, i32 noundef %7, i32 noundef %113) #10
  br label %126

117:                                              ; preds = %112
  br i1 %91, label %118, label %138

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.msm_dsi, ptr %10, i32 0, i32 4
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @msm_dsi_host_enable(ptr noundef %120) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %138, label %123

123:                                              ; preds = %118
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dsi_mgr_bridge_pre_enable, i32 noundef %121) #10
  %125 = call i32 @msm_dsi_host_disable(ptr noundef %12) #8
  br label %126

126:                                              ; preds = %123, %115
  br i1 %106, label %129, label %127

127:                                              ; preds = %126
  %128 = call i32 @drm_panel_unprepare(ptr noundef nonnull %14) #8
  br label %129

129:                                              ; preds = %127, %126, %110
  call void @msm_dsi_host_disable_irq(ptr noundef %12) #8
  br i1 %91, label %130, label %135

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.msm_dsi, ptr %10, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  call void @msm_dsi_host_disable_irq(ptr noundef %132) #8
  %133 = load ptr, ptr %131, align 4
  %134 = call i32 @msm_dsi_host_power_off(ptr noundef %133) #8
  br label %135

135:                                              ; preds = %130, %129, %100
  %136 = call i32 @msm_dsi_host_power_off(ptr noundef %12) #8
  br label %137

137:                                              ; preds = %135, %87
  call fastcc void @dsi_mgr_phy_disable(i32 noundef %7)
  br label %138

138:                                              ; preds = %137, %118, %117, %69, %67, %46, %23, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_mgr_bridge_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_bridge, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %3) #8
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11, %1
  %16 = icmp ne i8 %8, 0
  %17 = load i32, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 3), align 4
  %18 = icmp ne i32 %17, %3
  %19 = select i1 %16, i1 %18, i1 false
  %20 = icmp eq ptr %7, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @drm_panel_enable(ptr noundef nonnull %7) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dsi_mgr_bridge_enable, i32 noundef %3, i32 noundef %23) #10
  br label %27

27:                                               ; preds = %25, %22, %15, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_disable_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_pll_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsi_mgr_phy_disable(i32 noundef %0) unnamed_addr #0 {
  %2 = getelementptr [2 x ptr], ptr @msm_dsim_glb, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @msm_dsim_glb, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 0, i32 1), align 4
  %6 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 9
  store i8 0, ptr %6, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.msm_dsi_manager, ptr @msm_dsim_glb, i32 0, i32 1), align 4, !range !8
  %8 = icmp ne i8 %7, 0
  %9 = icmp ne ptr %4, null
  %10 = select i1 %8, i1 %9, i1 false
  %11 = icmp ne ptr %5, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.msm_dsi, ptr %4, i32 0, i32 9
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 9
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.msm_dsi, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  tail call void @msm_dsi_phy_disable(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi ptr [ %4, %21 ], [ %3, %1 ]
  %26 = getelementptr inbounds %struct.msm_dsi, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void @msm_dsi_phy_disable(ptr noundef %27) #8
  br label %28

28:                                               ; preds = %24, %17, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_set_display_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_power_on(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_enable_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_reset_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_get_phy_clk_req(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_phy_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_set_usecase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_set_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
