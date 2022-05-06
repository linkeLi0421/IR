; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/output.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.cec_connector_info = type { i32, %union.anon.83 }
%union.anon.83 = type { [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.74 = type { i32, ptr }

@.str = private unnamed_addr constant [13 x i8] c"nvidia,panel\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/tegra/output.c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nvidia,edid\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"nvidia,ddc-i2c-bus\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"nvidia,hpd-gpio\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"HDMI hotplug detect\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gpiod_to_irq(): %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"missing output definition for heads in DT\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_output_connector_get_modes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -100
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %3, ptr noundef %0) #5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %10 = getelementptr i8, ptr %0, i32 -92
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @kmemdup(ptr noundef nonnull %11, i32 noundef 128, i32 noundef 3264) #5
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %0, i32 -96
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %19, %15, %13
  %22 = phi ptr [ %14, %13 ], [ %20, %19 ], [ null, %15 ]
  %23 = getelementptr i8, ptr %0, i32 -88
  %24 = load ptr, ptr %23, align 8
  tail call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %24, ptr noundef %22) #5
  %25 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %22) #5
  %26 = icmp eq ptr %22, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %22) #5
  tail call void @kfree(ptr noundef nonnull %22) #5
  br label %29

29:                                               ; preds = %27, %21, %5
  %30 = phi i32 [ %6, %5 ], [ %28, %27 ], [ %9, %21 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_output_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -80
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @gpiod_get_value(ptr noundef nonnull %4) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %16

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -100
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %6
  %14 = getelementptr i8, ptr %0, i32 -88
  %15 = load ptr, ptr %14, align 8
  tail call void @cec_notifier_set_phys_addr(ptr noundef %15, i16 noundef zeroext -1) #5
  br label %16

16:                                               ; preds = %13, %9, %6
  %17 = phi i32 [ 1, %6 ], [ 2, %13 ], [ 1, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_output_connector_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @cec_notifier_conn_unregister(ptr noundef nonnull %3) #5
  br label %6

6:                                                ; preds = %5, %1
  tail call void @drm_connector_unregister(ptr noundef %0) #5
  tail call void @drm_connector_cleanup(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_output_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi ptr [ %11, %7 ], [ %5, %1 ]
  %14 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 2
  %16 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %13, i32 noundef -1, i32 noundef -1, ptr noundef %14, ptr noundef %15) #5
  switch i32 %16, label %80 [
    i32 -19, label %17
    i32 0, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #5, !annotation !8
  %19 = call i32 @__of_parse_phandle_with_args(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #5
  %20 = icmp ne i32 %19, 0
  %21 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #5
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %14, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load ptr, ptr %15, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %27, %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 114, i32 noundef 9, ptr noundef null) #5
  br label %31

31:                                               ; preds = %30, %27
  %32 = call ptr @of_drm_find_panel(ptr noundef nonnull %21) #5
  store ptr %32, ptr %14, align 4
  call void @of_node_put(ptr noundef nonnull %21) #5
  %33 = load ptr, ptr %14, align 4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %33 to i32
  br label %80

37:                                               ; preds = %31, %17
  %38 = load ptr, ptr %0, align 8
  %39 = call ptr @of_get_property(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #5
  %40 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 5
  store ptr %39, ptr %40, align 4
  %41 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #5, !annotation !8
  %42 = call i32 @__of_parse_phandle_with_args(ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #5
  %43 = icmp ne i32 %42, 0
  %44 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #5
  %45 = icmp eq ptr %44, null
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %44) #5
  %49 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 4
  store ptr %48, ptr %49, align 8
  call void @of_node_put(ptr noundef nonnull %44) #5
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %80, label %52

52:                                               ; preds = %47, %37
  %53 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %0, align 8
  %56 = call ptr @devm_gpiod_get_from_of_node(ptr noundef %54, ptr noundef %55, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.5) #5
  %57 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 8
  store ptr %56, ptr %57, align 8
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = ptrtoint ptr %56 to i32
  %61 = icmp eq ptr %56, inttoptr (i32 -2 to ptr)
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  store ptr null, ptr %57, align 8
  br label %80

63:                                               ; preds = %52
  %64 = icmp eq ptr %56, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %63
  %66 = call i32 @gpiod_to_irq(ptr noundef nonnull %56) #5
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.6, i32 noundef %66) #6
  br label %80

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 7
  store i32 %66, ptr %71, align 4
  %72 = call i32 @request_threaded_irq(i32 noundef %66, ptr noundef null, ptr noundef nonnull @hpd_irq, i32 noundef 8195, ptr noundef nonnull @.str.7, ptr noundef %0) #5
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load ptr, ptr %53, align 4
  %76 = load i32, ptr %71, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.8, i32 noundef %76, i32 noundef %72) #6
  br label %80

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 10, i32 33
  store i8 1, ptr %78, align 4
  %79 = load i32, ptr %71, align 4
  call void @disable_irq(i32 noundef %79) #5
  br label %80

80:                                               ; preds = %77, %74, %68, %63, %62, %59, %47, %35, %12
  %81 = phi i32 [ %36, %35 ], [ %66, %68 ], [ %72, %74 ], [ %16, %12 ], [ -517, %47 ], [ 0, %77 ], [ 0, %63 ], [ %60, %59 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hpd_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %4) #5
  br label %8

8:                                                ; preds = %6, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_output_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %0) #5
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @i2c_put_adapter(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_output_init(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cec_connector_info, align 4
  %4 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  tail call void @enable_irq(i32 noundef %9) #5
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 10, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, -11
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false), !annotation !8
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %3, ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call ptr @cec_notifier_conn_register(ptr noundef %18, ptr noundef null, ptr noundef nonnull %3) #5
  %20 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 6
  store ptr %19, ptr %20, align 8
  %21 = icmp eq ptr %19, null
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #5
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %10
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi i32 [ 0, %22 ], [ -12, %15 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_output_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  tail call void @disable_irq(i32 noundef %7) #5
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_output_find_possible_crtcs(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %27, label %8

8:                                                ; preds = %21, %2
  %9 = phi ptr [ %23, %21 ], [ %6, %2 ]
  %10 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %11 = getelementptr i8, ptr %9, i32 -8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %9, i32 -112
  %14 = select i1 %12, ptr null, ptr %13
  %15 = tail call zeroext i1 @tegra_dc_has_output(ptr noundef %14, ptr noundef %4) #5
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %9, i32 72
  %18 = load i32, ptr %17, align 8
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %10
  br label %21

21:                                               ; preds = %16, %8
  %22 = phi i32 [ %20, %16 ], [ %10, %8 ]
  %23 = load ptr, ptr %9, align 4
  %24 = icmp eq ptr %23, %5
  br i1 %24, label %25, label %8

25:                                               ; preds = %21
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25, %2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9) #6
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ 3, %27 ], [ %22, %25 ]
  %30 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 9, i32 6
  store i32 %29, ptr %30, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_dc_has_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_output_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %3) #5
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_output_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_output, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @enable_irq(i32 noundef %3) #5
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
