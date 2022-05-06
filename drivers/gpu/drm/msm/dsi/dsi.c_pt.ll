; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.component_ops = type { ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_dsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32 }
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
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@dsi_ops = internal constant %struct.component_ops { ptr @dsi_bind, ptr @dsi_unbind }, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dsi_driver = internal global %struct.platform_driver { ptr @dsi_dev_probe, ptr @dsi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/msm/dsi/dsi.c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to modeset init host: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to create dsi bridge: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"*ERROR* failed to create dsi connector: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"msm_dsi\00", align 1
@dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdss-dsi-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dsi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_dsi_runtime_suspend, ptr @msm_dsi_runtime_resume, ptr null }, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"dsi probed=%p\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"*ERROR* cannot find phy device\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"*ERROR* %s: phy driver is not ready\0A\00", align 1
@__func__.dsi_get_phy = private unnamed_addr constant [12 x i8] c"dsi_get_phy\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @msm_dsi_get_encoder(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi ptr [ %13, %11 ], [ null, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_dsi_is_cmd_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @msm_dsi_host_get_mode_flags(ptr noundef %3) #7
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_get_mode_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsi_dev_attach(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @dsi_ops) #7
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsi_dev_detach(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @dsi_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_dsi_register() local_unnamed_addr #4 section ".init.text" {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  tail call void @msm_dsi_phy_driver_register() #7
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dsi_driver, ptr noundef nonnull @__this_module) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_driver_register() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_dsi_unregister() local_unnamed_addr #4 section ".exit.text" {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  tail call void @msm_dsi_phy_driver_unregister() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_driver_unregister() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_modeset_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 9, ptr noundef null) #7
  br label %87

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 9, ptr noundef null) #7
  br label %87

9:                                                ; preds = %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 9, ptr noundef null) #7
  br label %87

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  store ptr %1, ptr %0, align 4
  %15 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @msm_dsi_host_modeset_init(ptr noundef %16, ptr noundef nonnull %1) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %17) #7
  br label %67

22:                                               ; preds = %12
  %23 = tail call zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef nonnull %0) #7
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call zeroext i1 @msm_dsi_is_master_dsi(ptr noundef nonnull %0) #7
  br i1 %25, label %26, label %87

26:                                               ; preds = %24, %22
  %27 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 10
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i8
  %31 = tail call ptr @msm_dsi_manager_bridge_init(i8 noundef zeroext %30) #7
  %32 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = ptrtoint ptr %31 to i32
  %36 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %35) #7
  store ptr null, ptr %32, align 4
  br label %67

38:                                               ; preds = %26
  %39 = load ptr, ptr %15, align 4
  %40 = tail call ptr @msm_dsi_host_get_bridge(ptr noundef %39) #7
  %41 = icmp eq ptr %40, null
  %42 = load i32, ptr %28, align 4
  %43 = trunc i32 %42 to i8
  br i1 %41, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call ptr @msm_dsi_manager_ext_bridge_init(i8 noundef zeroext %43) #7
  br label %48

46:                                               ; preds = %38
  %47 = tail call ptr @msm_dsi_manager_connector_init(i8 noundef zeroext %43) #7
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %47, %46 ], [ %45, %44 ]
  %50 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = ptrtoint ptr %49 to i32
  %54 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %55, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef %53) #7
  store ptr null, ptr %50, align 4
  br label %67

56:                                               ; preds = %48
  %57 = load ptr, ptr %32, align 4
  %58 = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 30
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8
  %61 = getelementptr %struct.msm_drm_private, ptr %14, i32 0, i32 31, i32 %59
  store ptr %57, ptr %61, align 4
  %62 = load ptr, ptr %50, align 4
  %63 = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 32
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = getelementptr %struct.msm_drm_private, ptr %14, i32 0, i32 33, i32 %64
  store ptr %62, ptr %66, align 4
  br label %87

67:                                               ; preds = %52, %34, %19
  %68 = phi i32 [ %17, %19 ], [ %35, %34 ], [ %53, %52 ]
  %69 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @msm_dsi_manager_bridge_destroy(ptr noundef nonnull %70) #7
  store ptr null, ptr %69, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.msm_dsi, ptr %0, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.drm_connector, ptr %75, i32 0, i32 21
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.drm_connector_funcs, ptr %83, i32 0, i32 8
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef nonnull %75) #7
  br label %86

86:                                               ; preds = %81, %77, %73
  store ptr null, ptr %74, align 4
  br label %87

87:                                               ; preds = %86, %56, %24, %11, %8, %5
  %88 = phi i32 [ %68, %86 ], [ 0, %56 ], [ -22, %11 ], [ -22, %8 ], [ -22, %5 ], [ 0, %24 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_modeset_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_master_dsi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_manager_bridge_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_host_get_bridge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_manager_ext_bridge_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_manager_connector_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_manager_bridge_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dsi_snapshot(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @msm_dsi_host_snapshot(ptr noundef %0, ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @msm_dsi_phy_snapshot(ptr noundef %0, ptr noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dsi_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.msm_dsi, ptr %7, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 5, i32 %9
  store ptr %7, ptr %10, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dsi_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.msm_dsi, ptr %7, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 5, i32 %9
  store ptr null, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_dev_probe(ptr noundef %0) #1 {
  %2 = alloca %struct.of_phandle_args, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 48, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #7
  %9 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 11
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %11, align 8
  %12 = tail call i32 @msm_dsi_host_init(ptr noundef nonnull %6) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !9
  %19 = call i32 @__of_parse_phandle_with_args(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %20 = icmp ne i32 %19, 0
  %21 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #7
  br label %41

25:                                               ; preds = %14
  %26 = call ptr @of_find_device_by_node(ptr noundef nonnull %21) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %33 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 8
  store ptr %32, ptr %33, align 4
  call void @of_node_put(ptr noundef nonnull %21) #7
  %34 = load ptr, ptr %31, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %38

36:                                               ; preds = %25
  call void @of_node_put(ptr noundef nonnull %21) #7
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dsi_get_phy) #7
  br label %41

37:                                               ; preds = %28
  call void @put_device(ptr noundef %32) #7
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dsi_get_phy) #7
  br label %41

38:                                               ; preds = %28
  %39 = call i32 @msm_dsi_manager_register(ptr noundef nonnull %6) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %38, %37, %36, %24, %8
  %42 = phi i32 [ %12, %8 ], [ %39, %38 ], [ -6, %24 ], [ -517, %36 ], [ -517, %37 ]
  call void @msm_dsi_manager_unregister(ptr noundef nonnull %6) #7
  %43 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  call void @put_device(ptr noundef nonnull %44) #7
  %47 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 5
  store ptr null, ptr %47, align 4
  store ptr null, ptr %43, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = getelementptr inbounds %struct.msm_dsi, ptr %6, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call void @msm_dsi_host_destroy(ptr noundef nonnull %50) #7
  store ptr null, ptr %49, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3, i32 8
  store ptr null, ptr %55, align 8
  %56 = inttoptr i32 %42 to ptr
  br label %57

57:                                               ; preds = %53, %38
  %58 = phi ptr [ %56, %53 ], [ %6, %38 ]
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %65

60:                                               ; preds = %57, %4, %1
  %61 = phi ptr [ %58, %57 ], [ inttoptr (i32 -12 to ptr), %4 ], [ inttoptr (i32 -6 to ptr), %1 ]
  %62 = ptrtoint ptr %61 to i32
  %63 = icmp eq ptr %61, inttoptr (i32 -19 to ptr)
  %64 = select i1 %63, i32 0, i32 %62
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i32 [ 0, %57 ], [ %64, %60 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_dev_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  tail call void @msm_dsi_manager_unregister(ptr noundef nonnull %3) #7
  %6 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @put_device(ptr noundef nonnull %7) #7
  %10 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 5
  store ptr null, ptr %10, align 4
  store ptr null, ptr %6, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @msm_dsi_host_destroy(ptr noundef nonnull %13) #7
  store ptr null, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.msm_dsi, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 8
  store ptr null, ptr %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_host_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_manager_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_manager_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_host_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_runtime_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_runtime_resume(ptr noundef) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
