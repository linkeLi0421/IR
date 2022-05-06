; ModuleID = '/llk/IR/drivers/gpu/drm/imx/parallel-display.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/parallel-display.c"
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
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.imx_parallel_display = type { ptr, ptr, i32, i32, %struct.drm_display_mode, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.imx_parallel_display_encoder = type { %struct.drm_connector, %struct.drm_encoder, %struct.drm_bridge, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }

@imx_pd_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-parallel-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description265 = internal constant [41 x i8] c"description=i.MX parallel display driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [33 x i8] c"author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias268 = internal constant [36 x i8] c"alias=platform:imx-parallel-display\00", section ".modinfo", align 1
@imx_pd_driver = internal global %struct.platform_driver { ptr @imx_pd_probe, ptr @imx_pd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_pd_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [21 x i8] c"imx-parallel-display\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"interface-pix-fmt\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rgb24\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rgb565\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"bgr666\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"lvds666\00", align 1
@imx_pd_ops = internal constant %struct.component_ops { ptr @imx_pd_bind, ptr null }, align 4
@imx_pd_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @imx_pd_bridge_disable, ptr null, ptr null, ptr null, ptr @imx_pd_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr @imx_pd_bridge_atomic_get_output_bus_fmts, ptr @imx_pd_bridge_atomic_get_input_bus_fmts, ptr @imx_pd_bridge_atomic_check, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_pd_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @imx_pd_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_pd_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @imx_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_pd_bus_fmts = internal constant [6 x i32] [i32 4106, i32 4115, i32 4116, i32 4105, i32 4117, i32 4119], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias268, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_of__imx_pd_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @imx_pd_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pd_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_pd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pd_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 136, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.imx_parallel_display, ptr %7, i32 0, i32 5
  %11 = getelementptr inbounds %struct.imx_parallel_display, ptr %7, i32 0, i32 6
  %12 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %6, i32 noundef 1, i32 noundef 0, ptr noundef %10, ptr noundef %11) #6
  switch i32 %12, label %42 [
    i32 -19, label %13
    i32 0, label %13
  ]

13:                                               ; preds = %9, %9
  %14 = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %2, align 4
  %18 = call ptr @devm_kmemdup(ptr noundef %4, ptr noundef nonnull %14, i32 noundef %17, i32 noundef 3264) #6
  %19 = getelementptr inbounds %struct.imx_parallel_display, ptr %7, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 4
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(6) @.str.3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.4)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.5)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(8) @.str.6)
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 4117, i32 0
  br label %37

37:                                               ; preds = %33, %30, %27, %23, %20
  %38 = phi i32 [ 0, %20 ], [ 4106, %23 ], [ 4119, %27 ], [ 4105, %30 ], [ %36, %33 ]
  %39 = getelementptr inbounds %struct.imx_parallel_display, ptr %7, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  store ptr %4, ptr %7, align 4
  %40 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %40, align 8
  %41 = call i32 @component_add(ptr noundef %4, ptr noundef nonnull @imx_pd_ops) #6
  br label %42

42:                                               ; preds = %37, %9, %1
  %43 = phi i32 [ %41, %37 ], [ -12, %1 ], [ %12, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pd_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @imx_pd_ops) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pd_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @__drmm_simple_encoder_alloc(ptr noundef %2, i32 noundef 1176, i32 noundef 968, i32 noundef 0) #6
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = ptrtoint ptr %6 to i32
  br label %34

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %6, i32 0, i32 3
  store ptr %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @imx_drm_encoder_parse_of(ptr noundef %2, ptr noundef %12, ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 34
  store i32 3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %6, i32 0, i32 2, i32 7
  store ptr @imx_pd_bridge_funcs, ptr %21, align 4
  %22 = tail call i32 @drm_bridge_attach(ptr noundef %12, ptr noundef %13, ptr noundef null, i32 noundef 0) #6
  %23 = getelementptr inbounds %struct.imx_parallel_display, ptr %5, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = tail call i32 @drm_bridge_attach(ptr noundef %12, ptr noundef nonnull %24, ptr noundef %13, i32 noundef 0) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %33

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 35
  store ptr @imx_pd_connector_helper_funcs, ptr %30, align 4
  %31 = tail call i32 @drm_connector_init(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @imx_pd_connector_funcs, i32 noundef 17) #6
  %32 = tail call i32 @drm_connector_attach_encoder(ptr noundef %6, ptr noundef %12) #6
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %26, %10, %8
  %35 = phi i32 [ %9, %8 ], [ 0, %33 ], [ %17, %10 ], [ %27, %26 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_pd_bridge_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 132
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @drm_panel_disable(ptr noundef %5) #6
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @drm_panel_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_pd_bridge_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 132
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @drm_panel_prepare(ptr noundef %5) #6
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @drm_panel_enable(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @imx_pd_bridge_atomic_get_output_bus_fmts(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %0, i32 132
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.imx_parallel_display, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 20, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i32 6, ptr %4, align 4
  %17 = tail call ptr @kmemdup(ptr noundef nonnull @imx_pd_bus_fmts, i32 noundef 24, i32 noundef 3264) #6
  br label %35

18:                                               ; preds = %12, %5
  store i32 1, ptr %4, align 4
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 4) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 20, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 20, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %29, %25, %22
  %34 = phi i32 [ %32, %29 ], [ 0, %25 ], [ %23, %22 ]
  store i32 %34, ptr %20, align 8
  br label %35

35:                                               ; preds = %33, %18, %16
  %36 = phi ptr [ %20, %33 ], [ %17, %16 ], [ null, %18 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @imx_pd_bridge_atomic_get_input_bus_fmts(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #2 {
  %7 = getelementptr i8, ptr %0, i32 132
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %4, 1
  %10 = getelementptr inbounds %struct.imx_parallel_display, ptr %8, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 4106, i32 %11
  %14 = select i1 %9, i32 %13, i32 %4
  %15 = icmp eq i32 %11, 0
  %16 = icmp eq i32 %11, %14
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  switch i32 %14, label %19 [
    i32 4106, label %20
    i32 4115, label %20
    i32 4116, label %20
    i32 4105, label %20
    i32 4117, label %20
    i32 4119, label %20
  ]

19:                                               ; preds = %18, %6
  store i32 0, ptr %5, align 4
  br label %25

20:                                               ; preds = %18, %18, %18, %18, %18, %18
  store i32 1, ptr %5, align 4
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 4) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 %14, ptr %22, align 8
  br label %25

25:                                               ; preds = %24, %20, %19
  %26 = phi ptr [ null, %19 ], [ %22, %24 ], [ null, %20 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pd_bridge_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr i8, ptr %0, i32 132
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, %11
  %14 = getelementptr i8, ptr %12, i32 -56
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %2, i32 0, i32 20
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %19, ptr noundef nonnull %14) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.drm_bridge_state, ptr %20, i32 0, i32 2, i32 1
  br label %32

24:                                               ; preds = %17, %4
  %25 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 20, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 20, i32 8
  br label %32

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.imx_parallel_display, ptr %7, i32 0, i32 3
  br label %32

32:                                               ; preds = %30, %28, %22
  %33 = phi ptr [ %23, %22 ], [ %29, %28 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.drm_bridge_state, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %45 [
    i32 4106, label %36
    i32 4115, label %36
    i32 4116, label %36
    i32 4105, label %36
    i32 4117, label %36
    i32 4119, label %36
  ]

36:                                               ; preds = %32, %32, %32, %32, %32, %32
  %37 = load i32, ptr %33, align 4
  %38 = getelementptr inbounds %struct.drm_bridge_state, ptr %1, i32 0, i32 3, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.drm_bridge_state, ptr %1, i32 0, i32 2, i32 1
  store i32 %37, ptr %39, align 4
  %40 = getelementptr inbounds %struct.imx_crtc_state, ptr %2, i32 0, i32 2
  store i32 %37, ptr %40, align 4
  %41 = load i32, ptr %34, align 4
  %42 = getelementptr inbounds %struct.imx_crtc_state, ptr %2, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.imx_crtc_state, ptr %2, i32 0, i32 3
  store i32 2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.imx_crtc_state, ptr %2, i32 0, i32 4
  store i32 3, ptr %44, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = phi i32 [ 0, %36 ], [ -22, %32 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_bridge_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pd_connector_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_parallel_display_encoder, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @drm_panel_get_modes(ptr noundef %8, ptr noundef %0) #6
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %13) #6
  %17 = load ptr, ptr %12, align 4
  %18 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef %17) #6
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %18, %15 ], [ %9, %11 ]
  %21 = icmp eq ptr %6, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8
  %24 = tail call ptr @drm_mode_create(ptr noundef %23) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 4
  %28 = getelementptr inbounds %struct.imx_parallel_display, ptr %3, i32 0, i32 3
  %29 = tail call i32 @of_get_drm_display_mode(ptr noundef nonnull %6, ptr noundef %27, ptr noundef %28, i32 noundef -1) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  tail call void @drm_mode_copy(ptr noundef nonnull %24, ptr noundef %27) #6
  %32 = getelementptr inbounds %struct.drm_display_mode, ptr %24, i32 0, i32 28
  %33 = load i8, ptr %32, align 2
  %34 = or i8 %33, 72
  store i8 %34, ptr %32, align 2
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %24) #6
  %35 = add i32 %20, 1
  br label %36

36:                                               ; preds = %31, %26, %22, %19, %1
  %37 = phi i32 [ %9, %1 ], [ %35, %31 ], [ %20, %19 ], [ %29, %26 ], [ -22, %22 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_drm_display_mode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_drm_connector_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
