; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-lvds.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-lvds.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
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
%struct.panel_lvds = type { %struct.drm_panel, ptr, ptr, i32, i32, %struct.videomode, i32, i8, ptr, ptr, ptr, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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

@panel_lvds_of_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panel-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author265 = internal constant [60 x i8] c"author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [30 x i8] c"description=LVDS Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@panel_lvds_driver = internal global %struct.platform_driver { ptr @panel_lvds_probe, ptr @panel_lvds_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @panel_lvds_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"panel-lvds\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to request regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to request %s GPIO: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@panel_lvds_funcs = internal constant %struct.drm_panel_funcs { ptr @panel_lvds_prepare, ptr null, ptr null, ptr @panel_lvds_unprepare, ptr @panel_lvds_get_modes, ptr null }, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"%pOF: failed to get orientation %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"panel-timing\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"%pOF: problems parsing panel-timing (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"width-mm\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"%pOF: invalid or missing %s DT property\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"height-mm\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"data-mapping\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"data-mirror\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_of__panel_lvds_of_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @panel_lvds_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @panel_lvds_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_lvds_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_lvds_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.display_timing, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 104, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %2, i8 0, i32 112, i1 false) #6, !annotation !8
  %10 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 11
  %11 = tail call i32 @of_drm_get_panel_orientation(ptr noundef %9, ptr noundef %10) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef %9, i32 noundef %11) #7
  br label %40

15:                                               ; preds = %6
  %16 = call i32 @of_get_display_timing(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull %2) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef %9, i32 noundef %16) #7
  br label %40

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 5
  call void @videomode_from_timing(ptr noundef nonnull %2, ptr noundef %21) #6
  %22 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 3
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %22, i32 noundef 1, i32 noundef 0) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.10, ptr noundef %9, ptr noundef nonnull @.str.9) #7
  br label %40

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 4
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef 1, i32 noundef 0) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.10, ptr noundef %9, ptr noundef nonnull @.str.11) #7
  br label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 2
  %35 = call i32 @of_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef %34) #6
  %36 = call i32 @drm_of_lvds_get_data_mapping(ptr noundef %9) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.10, ptr noundef %9, ptr noundef nonnull @.str.13) #7
  br label %40

40:                                               ; preds = %38, %31, %25, %18, %13
  %41 = phi i32 [ %36, %38 ], [ -19, %31 ], [ -19, %25 ], [ %16, %18 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #6
  br label %80

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 6
  store i32 %36, ptr %43, align 4
  %44 = call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %45 = icmp ne ptr %44, null
  %46 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 7
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 4
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #6
  %48 = load ptr, ptr %7, align 4
  %49 = call ptr @devm_regulator_get_optional(ptr noundef %48, ptr noundef nonnull @.str.1) #6
  %50 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 8
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = ptrtoint ptr %49 to i32
  switch i32 %53, label %54 [
    i32 -19, label %56
    i32 -517, label %80
  ]

54:                                               ; preds = %52
  %55 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.2, i32 noundef %53) #7
  br label %80

56:                                               ; preds = %52
  store ptr null, ptr %50, align 4
  br label %57

57:                                               ; preds = %56, %42
  %58 = load ptr, ptr %7, align 4
  %59 = call ptr @devm_gpiod_get_optional(ptr noundef %58, ptr noundef nonnull @.str.3, i32 noundef 3) #6
  %60 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 9
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = ptrtoint ptr %59 to i32
  %64 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %63) #7
  br label %80

65:                                               ; preds = %57
  %66 = load ptr, ptr %7, align 4
  %67 = call ptr @devm_gpiod_get_optional(ptr noundef %66, ptr noundef nonnull @.str.5, i32 noundef 7) #6
  %68 = getelementptr inbounds %struct.panel_lvds, ptr %4, i32 0, i32 10
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = ptrtoint ptr %67 to i32
  %72 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %71) #7
  br label %80

73:                                               ; preds = %65
  %74 = load ptr, ptr %7, align 4
  call void @drm_panel_init(ptr noundef nonnull %4, ptr noundef %74, ptr noundef nonnull @panel_lvds_funcs, i32 noundef 7) #6
  %75 = call i32 @drm_panel_of_backlight(ptr noundef nonnull %4) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  call void @drm_panel_add(ptr noundef nonnull %4) #6
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 8
  store ptr %4, ptr %79, align 8
  br label %80

80:                                               ; preds = %77, %73, %70, %62, %54, %52, %40, %1
  %81 = phi i32 [ %63, %62 ], [ %71, %70 ], [ 0, %77 ], [ -12, %1 ], [ %53, %52 ], [ %53, %54 ], [ %75, %73 ], [ %41, %40 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_lvds_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_panel_remove(ptr noundef %3) #6
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_drm_get_panel_orientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_display_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_lvds_get_data_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_lvds_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef %6) #7
  br label %16

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %13, i32 noundef 1) #6
  br label %16

16:                                               ; preds = %15, %11, %8
  %17 = phi i32 [ %6, %8 ], [ 0, %15 ], [ 0, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_lvds_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 0) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @regulator_disable(ptr noundef nonnull %8) #6
  br label %12

12:                                               ; preds = %10, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_lvds_get_modes(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call ptr @drm_mode_create(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 5
  tail call void @drm_display_mode_from_videomode(ptr noundef %7, ptr noundef nonnull %4) #6
  %8 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 28
  %9 = load i8, ptr %8, align 2
  %10 = or i8 %9, 72
  store i8 %10, ptr %8, align 2
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %4) #6
  %11 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 6
  %18 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %13, ptr noundef %17, i32 noundef 1) #6
  %19 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 7
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 16, i32 32
  %23 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 8
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.panel_lvds, ptr %0, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @drm_connector_set_panel_orientation(ptr noundef %1, i32 noundef %25) #6
  br label %27

27:                                               ; preds = %6, %2
  %28 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_panel_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
