; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/rgb.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/rgb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_entry = type { i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.tegra_rgb = type { %struct.tegra_output, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get parent clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to set parent clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"pll_d_out0\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to get pll_d_out0: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pll_d2_out0\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get pll_d2_out0: %d\0A\00", align 1
@tegra_rgb_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_rgb_encoder_disable, ptr @tegra_rgb_encoder_enable, ptr @tegra_rgb_encoder_atomic_check }, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"failed to wrap panel into bridge: %pe\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"failed to initialize bridge connector: %pe\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1
@rgb_disable = internal unnamed_addr constant [19 x %struct.reg_entry] [%struct.reg_entry { i32 794, i32 0 }, %struct.reg_entry { i32 793, i32 0 }, %struct.reg_entry { i32 792, i32 0 }, %struct.reg_entry { i32 791, i32 0 }, %struct.reg_entry { i32 790, i32 0 }, %struct.reg_entry { i32 789, i32 0 }, %struct.reg_entry { i32 788, i32 0 }, %struct.reg_entry { i32 781, i32 -1431655766 }, %struct.reg_entry { i32 780, i32 -1431655766 }, %struct.reg_entry { i32 779, i32 -1431655766 }, %struct.reg_entry { i32 778, i32 -1431655766 }, %struct.reg_entry { i32 777, i32 0 }, %struct.reg_entry { i32 776, i32 0 }, %struct.reg_entry { i32 775, i32 0 }, %struct.reg_entry { i32 774, i32 0 }, %struct.reg_entry { i32 773, i32 1431655765 }, %struct.reg_entry { i32 772, i32 1431655765 }, %struct.reg_entry { i32 771, i32 1427439621 }, %struct.reg_entry { i32 770, i32 1431655765 }], align 4
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@rgb_enable = internal unnamed_addr constant [19 x %struct.reg_entry] [%struct.reg_entry { i32 770, i32 0 }, %struct.reg_entry { i32 771, i32 0 }, %struct.reg_entry { i32 772, i32 0 }, %struct.reg_entry { i32 773, i32 0 }, %struct.reg_entry { i32 774, i32 0 }, %struct.reg_entry { i32 775, i32 16777216 }, %struct.reg_entry { i32 776, i32 0 }, %struct.reg_entry { i32 777, i32 0 }, %struct.reg_entry { i32 778, i32 0 }, %struct.reg_entry { i32 779, i32 0 }, %struct.reg_entry { i32 780, i32 0 }, %struct.reg_entry { i32 781, i32 0 }, %struct.reg_entry { i32 788, i32 0 }, %struct.reg_entry { i32 789, i32 0 }, %struct.reg_entry { i32 790, i32 0 }, %struct.reg_entry { i32 791, i32 0 }, %struct.reg_entry { i32 792, i32 2163234 }, %struct.reg_entry { i32 793, i32 8704 }, %struct.reg_entry { i32 794, i32 131072 }], align 4
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %6) #4
  br i1 %9, label %10, label %65

10:                                               ; preds = %8
  %11 = load ptr, ptr %2, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 1104, i32 noundef 3520) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.tegra_output, ptr %12, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store ptr %6, ptr %12, align 8
  %17 = getelementptr inbounds %struct.tegra_rgb, ptr %12, i32 0, i32 1
  store ptr %0, ptr %17, align 8
  %18 = tail call i32 @tegra_output_probe(ptr noundef nonnull %12) #4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 4
  %22 = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef null) #4
  %23 = getelementptr inbounds %struct.tegra_rgb, ptr %12, i32 0, i32 5
  store ptr %22, ptr %23, align 8
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = load ptr, ptr %2, align 4
  br i1 %24, label %26, label %29

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1) #5
  %27 = load ptr, ptr %23, align 8
  %28 = ptrtoint ptr %27 to i32
  br label %65

29:                                               ; preds = %20
  %30 = tail call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.2) #4
  %31 = getelementptr inbounds %struct.tegra_rgb, ptr %12, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.3) #5
  %35 = load ptr, ptr %31, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %65

37:                                               ; preds = %29
  %38 = load ptr, ptr %23, align 8
  %39 = tail call i32 @clk_set_parent(ptr noundef %38, ptr noundef %30) #4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4, i32 noundef %39) #5
  br label %65

43:                                               ; preds = %37
  %44 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.5) #4
  %45 = getelementptr inbounds %struct.tegra_rgb, ptr %12, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  %49 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.6, i32 noundef %48) #5
  br label %65

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 14
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %52, i32 0, i32 21
  %54 = load i8, ptr %53, align 4, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.7) #4
  %58 = getelementptr inbounds %struct.tegra_rgb, ptr %12, i32 0, i32 3
  store ptr %57, ptr %58, align 8
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = ptrtoint ptr %57 to i32
  %62 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.8, i32 noundef %61) #5
  br label %65

63:                                               ; preds = %56, %50
  %64 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 10
  store ptr %12, ptr %64, align 8
  br label %65

65:                                               ; preds = %63, %60, %47, %41, %33, %26, %14, %10, %8, %1
  %66 = phi i32 [ %28, %26 ], [ %36, %33 ], [ %39, %41 ], [ %48, %47 ], [ %61, %60 ], [ 0, %63 ], [ -19, %8 ], [ -19, %1 ], [ -12, %10 ], [ %18, %14 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_rgb, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  tail call void @clk_put(ptr noundef %7) #4
  %8 = getelementptr inbounds %struct.tegra_rgb, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_put(ptr noundef %9) #4
  %10 = load ptr, ptr %2, align 8
  tail call void @tegra_output_remove(ptr noundef %10) #4
  store ptr null, ptr %2, align 8
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 9
  %8 = tail call i32 @drm_simple_encoder_init(ptr noundef %0, ptr noundef %7, i32 noundef 3) #4
  %9 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 9, i32 11
  store ptr @tegra_rgb_encoder_helper_funcs, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  br label %27

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @devm_drm_panel_bridge_add(ptr noundef %18, ptr noundef nonnull %11) #4
  %20 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 2
  store ptr %19, ptr %20, align 8
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9, ptr noundef nonnull %19) #5
  %24 = load ptr, ptr %20, align 8
  %25 = ptrtoint ptr %24 to i32
  br label %53

26:                                               ; preds = %16
  store ptr null, ptr %10, align 4
  br label %27

27:                                               ; preds = %26, %13
  %28 = phi ptr [ %15, %13 ], [ %19, %26 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @drm_bridge_attach(ptr noundef %7, ptr noundef nonnull %28, ptr noundef null, i32 noundef 1) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = tail call ptr @drm_bridge_connector_init(ptr noundef %0, ptr noundef %7) #4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.10, ptr noundef nonnull %34) #5
  %39 = ptrtoint ptr %34 to i32
  br label %53

40:                                               ; preds = %33
  %41 = tail call i32 @drm_connector_attach_encoder(ptr noundef %34, ptr noundef %7) #4
  br label %42

42:                                               ; preds = %40, %27
  %43 = tail call i32 @tegra_output_init(ptr noundef %0, ptr noundef nonnull %4) #4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.11, i32 noundef %43) #5
  br label %53

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 3, i32 8
  %50 = load i32, ptr %49, align 8
  %51 = shl nuw i32 1, %50
  %52 = getelementptr inbounds %struct.tegra_output, ptr %4, i32 0, i32 9, i32 6
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %48, %45, %36, %30, %22, %2
  %54 = phi i32 [ %25, %22 ], [ %39, %36 ], [ %43, %45 ], [ 0, %48 ], [ -19, %2 ], [ %31, %30 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @tegra_output_exit(ptr noundef nonnull %3) #4
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_rgb_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1044
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dc, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tegra_dc, ptr %3, i32 0, i32 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = phi i32 [ 0, %1 ], [ %32, %28 ]
  %8 = getelementptr %struct.reg_entry, ptr @rgb_disable, i32 %7
  %9 = getelementptr %struct.reg_entry, ptr @rgb_disable, i32 %7, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %6
  %16 = tail call ptr @llvm.thread.pointer() #4
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %27 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %12, i32 noundef %11, i32 noundef %10) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !10
  br label %28

28:                                               ; preds = %26, %15, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %5, align 8
  %30 = shl i32 %11, 2
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %10) #4, !srcloc !12
  %32 = add nuw nsw i32 %7, 1
  %33 = icmp eq i32 %32, 19
  br i1 %33, label %34, label %6

34:                                               ; preds = %28
  %35 = load ptr, ptr %2, align 8
  tail call void @tegra_dc_commit(ptr noundef %35) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_rgb_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1044
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dc, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tegra_dc, ptr %3, i32 0, i32 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = phi i32 [ 0, %1 ], [ %32, %28 ]
  %8 = getelementptr %struct.reg_entry, ptr @rgb_enable, i32 %7
  %9 = getelementptr %struct.reg_entry, ptr @rgb_enable, i32 %7, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %6
  %16 = tail call ptr @llvm.thread.pointer() #4
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %27 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %12, i32 noundef %11, i32 noundef %10) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !10
  br label %28

28:                                               ; preds = %26, %15, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %5, align 8
  %30 = shl i32 %11, 2
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %10) #4, !srcloc !12
  %32 = add nuw nsw i32 %7, 1
  %33 = icmp eq i32 %32, 19
  br i1 %33, label %34, label %6

34:                                               ; preds = %28
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.tegra_dc, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = tail call ptr @llvm.thread.pointer() #4
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %52 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %37, i32 noundef 1074, i32 noundef 5) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !10
  br label %53

53:                                               ; preds = %51, %40, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %54 = getelementptr inbounds %struct.tegra_dc, ptr %35, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr i8, ptr %55, i32 4296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 5) #4, !srcloc !12
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds %struct.tegra_dc, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i8, ptr %59, i32 3100
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #4, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %62 = getelementptr inbounds %struct.tegra_dc, ptr %57, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %53
  %67 = tail call ptr @llvm.thread.pointer() #4
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %78 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %63, i32 noundef 775, i32 noundef %61) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  br label %79

79:                                               ; preds = %77, %66, %53
  %80 = and i32 %61, -1342177281
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.tegra_dc, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  %87 = tail call ptr @llvm.thread.pointer() #4
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %98 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %83, i32 noundef 775, i32 noundef %80) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !10
  br label %99

99:                                               ; preds = %97, %86, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %100 = getelementptr inbounds %struct.tegra_dc, ptr %81, i32 0, i32 8
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr i8, ptr %101, i32 3100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %80) #4, !srcloc !12
  %103 = load ptr, ptr %2, align 8
  %104 = getelementptr inbounds %struct.tegra_dc, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %99
  %109 = tail call ptr @llvm.thread.pointer() #4
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr @__cpu_online_mask, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %120 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %105, i32 noundef 1071, i32 noundef 0) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !10
  br label %121

121:                                              ; preds = %119, %108, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %122 = getelementptr inbounds %struct.tegra_dc, ptr %103, i32 0, i32 8
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr i8, ptr %123, i32 4284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 0) #4, !srcloc !12
  %125 = load ptr, ptr %2, align 8
  tail call void @tegra_dc_commit(ptr noundef %125) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rgb_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 1052
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %0, i32 1056
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 1048
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @clk_is_match(ptr noundef %16, ptr noundef %18) #4
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %15, align 4
  %22 = load ptr, ptr %11, align 8
  %23 = tail call zeroext i1 @clk_is_match(ptr noundef %21, ptr noundef %22) #4
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %14
  %25 = mul i32 %10, 2000
  br label %34

26:                                               ; preds = %20, %3
  %27 = mul i32 %10, 1000
  %28 = getelementptr i8, ptr %0, i32 1060
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @clk_get_rate(ptr noundef %29) #4
  %31 = shl i32 %30, 1
  %32 = udiv i32 %31, %27
  %33 = add i32 %32, -2
  br label %34

34:                                               ; preds = %26, %24
  %35 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %36 = phi i32 [ 2, %24 ], [ %33, %26 ]
  %37 = getelementptr i8, ptr %0, i32 1056
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %8, ptr noundef %1, ptr noundef %38, i32 noundef %35, i32 noundef %36) #4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %0, i32 -32
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.13, i32 noundef %39) #5
  br label %44

44:                                               ; preds = %41, %34
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!9 = !{i64 2155456215}
!10 = !{i64 2155456381}
!11 = !{i64 2155658509}
!12 = !{i64 5441261}
!13 = !{i64 5441679}
!14 = !{i64 2155659173}
!15 = !{i64 2155472150}
!16 = !{i64 2155472314}
