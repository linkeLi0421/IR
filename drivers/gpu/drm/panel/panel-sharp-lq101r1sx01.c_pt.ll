; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.sharp_panel = type { %struct.drm_panel, ptr, ptr, ptr, i8, i8, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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

@sharp_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq101r1sx01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author264 = internal constant [43 x i8] c"author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [43 x i8] c"description=Sharp LQ101R1SX01 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@sharp_panel_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sharp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sharp_panel_probe, ptr @sharp_panel_remove, ptr @sharp_panel_shutdown }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [24 x i8] c"panel-sharp-lq101r1sx01\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"link2\00", align 1
@default_mode = internal constant %struct.drm_display_mode { i32 278000, i16 2560, i16 2688, i16 2752, i16 2816, i16 0, i16 1600, i16 1604, i16 1612, i16 1644, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@sharp_panel_funcs = internal constant %struct.drm_panel_funcs { ptr @sharp_panel_prepare, ptr @sharp_panel_enable, ptr @sharp_panel_disable, ptr @sharp_panel_unprepare, ptr @sharp_panel_get_modes, ptr null }, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to exit sleep mode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to set left-right mode: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to enable command mode: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to set pixel format: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to set up symmetrical split: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to set display on: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to write %02x to %04x: %zd\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"failed to send DCS nop: %zd\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to set column address: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to set page address: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"failed to set display off: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"failed to enter sleep mode: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"failed to disable panel: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"failed to detach from DSI host: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_license266], section "llvm.metadata"

@__mod_of__sharp_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sharp_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @sharp_panel_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @sharp_panel_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sharp_panel_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 4
  store i32 4, ptr %3, align 8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  store i32 2048, ptr %5, align 8
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %39, label %14

14:                                               ; preds = %1
  %15 = call ptr @of_find_mipi_dsi_device_by_node(ptr noundef nonnull %11) #7
  call void @of_node_put(ptr noundef nonnull %11) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %14
  %18 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 44, i32 noundef 3520) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  store ptr %18, ptr %21, align 8
  %22 = getelementptr inbounds %struct.sharp_panel, ptr %18, i32 0, i32 2
  store ptr %15, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sharp_panel, ptr %18, i32 0, i32 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sharp_panel, ptr %18, i32 0, i32 6
  store ptr @default_mode, ptr %24, align 4
  %25 = call ptr @devm_regulator_get(ptr noundef %6, ptr noundef nonnull @.str.2) #7
  %26 = getelementptr inbounds %struct.sharp_panel, ptr %18, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = ptrtoint ptr %25 to i32
  br label %36

30:                                               ; preds = %20
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr inbounds %struct.mipi_dsi_device, ptr %31, i32 0, i32 1
  call void @drm_panel_init(ptr noundef nonnull %18, ptr noundef %32, ptr noundef nonnull @sharp_panel_funcs, i32 noundef 16) #7
  %33 = call i32 @drm_panel_of_backlight(ptr noundef nonnull %18) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call void @drm_panel_add(ptr noundef nonnull %18) #7
  br label %39

36:                                               ; preds = %30, %28
  %37 = phi i32 [ %29, %28 ], [ %33, %30 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36, %35, %1
  %40 = phi ptr [ %18, %36 ], [ %18, %35 ], [ null, %1 ]
  %41 = call i32 @mipi_dsi_attach(ptr noundef %0) #7
  %42 = icmp sgt i32 %41, -1
  %43 = select i1 %42, i1 true, i1 %13
  %44 = select i1 %42, i32 0, i32 %41
  br i1 %43, label %57, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %40, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @drm_panel_remove(ptr noundef %40) #7
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds %struct.sharp_panel, ptr %40, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49, %36, %17
  %54 = phi ptr [ %15, %17 ], [ %15, %36 ], [ %51, %49 ]
  %55 = phi i32 [ -12, %17 ], [ %37, %36 ], [ %41, %49 ]
  %56 = getelementptr inbounds %struct.mipi_dsi_device, ptr %54, i32 0, i32 1
  call void @put_device(ptr noundef %56) #7
  br label %57

57:                                               ; preds = %53, %49, %39, %14
  %58 = phi i32 [ -517, %14 ], [ %44, %39 ], [ %41, %49 ], [ %55, %53 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sharp_panel_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #7
  br label %27

7:                                                ; preds = %1
  %8 = tail call i32 @drm_panel_disable(ptr noundef nonnull %3) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.17, i32 noundef %8) #8
  br label %12

12:                                               ; preds = %10, %7
  %13 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %13) #8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load ptr, ptr %3, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @drm_panel_remove(ptr noundef nonnull %3) #7
  br label %21

21:                                               ; preds = %20, %17
  %22 = getelementptr inbounds %struct.sharp_panel, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mipi_dsi_device, ptr %23, i32 0, i32 1
  tail call void @put_device(ptr noundef %26) #7
  br label %27

27:                                               ; preds = %25, %21, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sharp_panel_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_panel_disable(ptr noundef nonnull %3) #7
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sharp_panel_prepare(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %91

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_enable(ptr noundef %7) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %5
  tail call void @msleep(i32 noundef 150) #7
  %11 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %12) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %13) #8
  br label %87

17:                                               ; preds = %10
  %18 = tail call fastcc i32 @sharp_panel_write(ptr noundef %0, i16 noundef zeroext 4096, i8 noundef zeroext 42)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef %18) #8
  br label %87

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @sharp_panel_write(ptr noundef %0, i16 noundef zeroext 4097, i8 noundef zeroext 1)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.5, i32 noundef %23) #8
  br label %87

27:                                               ; preds = %22
  %28 = load ptr, ptr %11, align 4
  %29 = tail call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %28, i8 noundef zeroext 7) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.6, i32 noundef %29) #8
  br label %87

33:                                               ; preds = %27
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_display_mode, ptr %38, i32 0, i32 1
  %40 = load i16, ptr %39, align 4
  %41 = lshr i16 %40, 1
  %42 = add nsw i16 %41, -1
  %43 = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %34, i16 noundef zeroext 0, i16 noundef zeroext %42) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.mipi_dsi_device, ptr %34, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.11, i32 noundef %43) #8
  br label %70

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.drm_display_mode, ptr %38, i32 0, i32 6
  %49 = load i16, ptr %48, align 2
  %50 = add i16 %49, -1
  %51 = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %34, i16 noundef zeroext 0, i16 noundef zeroext %50) #7
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.mipi_dsi_device, ptr %34, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.12, i32 noundef %51) #8
  br label %70

55:                                               ; preds = %47
  %56 = load i16, ptr %39, align 4
  %57 = lshr i16 %56, 1
  %58 = add i16 %56, -1
  %59 = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %36, i16 noundef zeroext %57, i16 noundef zeroext %58) #7
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.mipi_dsi_device, ptr %36, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.11, i32 noundef %59) #8
  br label %70

63:                                               ; preds = %55
  %64 = load i16, ptr %48, align 2
  %65 = add i16 %64, -1
  %66 = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %36, i16 noundef zeroext 0, i16 noundef zeroext %65) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.mipi_dsi_device, ptr %36, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.12, i32 noundef %66) #8
  br label %70

70:                                               ; preds = %68, %61, %53, %45
  %71 = phi i32 [ %66, %68 ], [ %59, %61 ], [ %51, %53 ], [ %43, %45 ]
  %72 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.7, i32 noundef %71) #8
  br label %87

73:                                               ; preds = %63
  %74 = load ptr, ptr %11, align 4
  %75 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %74) #7
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.8, i32 noundef %75) #8
  br label %87

79:                                               ; preds = %73
  store i8 1, ptr %2, align 4
  %80 = load ptr, ptr %37, align 4
  %81 = tail call i32 @drm_mode_vrefresh(ptr noundef %80) #7
  %82 = icmp ult i32 %81, 6
  br i1 %82, label %83, label %84, !prof !10

83:                                               ; preds = %79
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 42, i32 noundef 9, ptr noundef null) #7
  br label %91

84:                                               ; preds = %79
  %85 = udiv i32 %81, 6
  %86 = udiv i32 1000, %85
  tail call void @msleep(i32 noundef %86) #7
  br label %91

87:                                               ; preds = %77, %70, %31, %25, %20, %15
  %88 = phi i32 [ %13, %15 ], [ %18, %20 ], [ %23, %25 ], [ %29, %31 ], [ %71, %70 ], [ %75, %77 ]
  %89 = load ptr, ptr %6, align 4
  %90 = tail call i32 @regulator_disable(ptr noundef %89) #7
  br label %91

91:                                               ; preds = %87, %84, %83, %5, %1
  %92 = phi i32 [ %88, %87 ], [ 0, %1 ], [ %8, %5 ], [ 0, %83 ], [ 0, %84 ]
  ret i32 %92
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sharp_panel_enable(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i8 1, ptr %2, align 1
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sharp_panel_disable(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 1
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sharp_panel_unprepare(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @drm_mode_vrefresh(ptr noundef %7) #7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 42, i32 noundef 9, ptr noundef null) #7
  br label %14

11:                                               ; preds = %5
  %12 = lshr i32 %8, 2
  %13 = udiv i32 1000, %12
  tail call void @msleep(i32 noundef %13) #7
  br label %14

14:                                               ; preds = %11, %10
  %15 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %16) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.14, i32 noundef %17) #8
  br label %21

21:                                               ; preds = %19, %14
  %22 = load ptr, ptr %15, align 4
  %23 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %22) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.15, i32 noundef %23) #8
  br label %27

27:                                               ; preds = %25, %21
  tail call void @msleep(i32 noundef 120) #7
  %28 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regulator_disable(ptr noundef %29) #7
  store i8 0, ptr %2, align 4
  br label %31

31:                                               ; preds = %27, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sharp_panel_get_modes(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull @default_mode) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef 2560, i32 noundef 1600, i32 noundef %8) #8
  br label %12

9:                                                ; preds = %2
  tail call void @drm_mode_set_name(ptr noundef nonnull %4) #7
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %4) #7
  %10 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  store i32 217, ptr %10, align 8
  %11 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 136, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ 1, %9 ], [ -12, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sharp_panel_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  store i8 16, ptr %4, align 1
  %5 = getelementptr inbounds i8, ptr %4, i32 1
  %6 = trunc i16 %1 to i8
  store i8 %6, ptr %5, align 1
  %7 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds %struct.sharp_panel, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @mipi_dsi_generic_write(ptr noundef %9, ptr noundef nonnull %4, i32 noundef 3) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = zext i16 %1 to i32
  %14 = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 1
  %15 = zext i8 %2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef %15, i32 noundef %13, i32 noundef %10) #8
  br label %22

16:                                               ; preds = %3
  %17 = call i32 @mipi_dsi_dcs_nop(ptr noundef %9) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.10, i32 noundef %17) #8
  br label %22

21:                                               ; preds = %16
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  br label %22

22:                                               ; preds = %21, %19, %12
  %23 = phi i32 [ %10, %12 ], [ %17, %19 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_nop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
