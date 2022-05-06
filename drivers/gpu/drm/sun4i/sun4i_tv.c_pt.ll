; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_tv.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_tv.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tv_mode = type { ptr, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.color_gains = type { i16, i16 }
%struct.burst_levels = type { i16, i16 }
%struct.video_levels = type { i16, i16 }
%struct.resync_parameters = type { i8, i16, i16 }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.sun4i_tv = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.sun4i_crtc = type { %struct.drm_crtc, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sun4i_tv_of_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tv-encoder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author265 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [44 x i8] c"description=Allwinner A10 TV Encoder Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun4i_tv_platform_driver = internal global %struct.platform_driver { ptr @sun4i_tv_probe, ptr @sun4i_tv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_tv_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"sun4i-tve\00", align 1
@sun4i_tv_ops = internal constant %struct.component_ops { ptr @sun4i_tv_bind, ptr @sun4i_tv_unbind }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't map the TV encoder registers\0A\00", align 1
@sun4i_tv_regmap_config = internal constant %struct.regmap_config { ptr @.str.8, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 580, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't create the TV encoder regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Couldn't deassert our reset line\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Couldn't get the TV encoder clock\0A\00", align 1
@sun4i_tv_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_tv_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_tv_disable, ptr @sun4i_tv_enable, ptr null }, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Couldn't initialise the TV encoder\0A\00", align 1
@sun4i_tv_comp_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sun4i_tv_comp_get_modes, ptr null, ptr @sun4i_tv_comp_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun4i_tv_comp_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @sun4i_tv_comp_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Couldn't initialise the Composite connector\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"tv-encoder\00", align 1
@tv_modes = internal unnamed_addr constant [2 x %struct.tv_mode] [%struct.tv_mode { ptr @.str.11, i32 0, i32 569408543, i16 118, i16 32, i16 525, i16 240, i32 720, i16 18, i16 2, i16 118, i32 480, i16 26, i16 2, i16 17, i8 1, i8 1, i8 1, ptr @ntsc_color_gains, ptr @ntsc_burst_levels, ptr @ntsc_video_levels, ptr @ntsc_resync_parameters }, %struct.tv_mode { ptr @.str.12, i32 1, i32 705268427, i16 138, i16 24, i16 625, i16 252, i32 720, i16 3, i16 2, i16 139, i32 576, i16 28, i16 2, i16 19, i8 0, i8 0, i8 0, ptr @pal_color_gains, ptr @pal_burst_levels, ptr @pal_video_levels, ptr @pal_resync_parameters }], align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Comparing mode %s vs %s\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Comparing mode %s vs %s (X: %d vs %d)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@ntsc_color_gains = internal constant %struct.color_gains { i16 160, i16 160 }, align 2
@ntsc_burst_levels = internal constant %struct.burst_levels { i16 79, i16 0 }, align 2
@ntsc_video_levels = internal constant %struct.video_levels { i16 282, i16 240 }, align 2
@ntsc_resync_parameters = internal constant %struct.resync_parameters { i8 0, i16 14, i16 12 }, align 2
@.str.12 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@pal_color_gains = internal constant %struct.color_gains { i16 224, i16 224 }, align 2
@pal_burst_levels = internal constant %struct.burst_levels { i16 40, i16 40 }, align 2
@pal_video_levels = internal constant %struct.video_levels { i16 252, i16 252 }, align 2
@pal_resync_parameters = internal constant %struct.resync_parameters { i8 1, i16 13, i16 12 }, align 2
@.str.13 = private unnamed_addr constant [25 x i8] c"Disabling the TV Output\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Enabling the TV Output\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Failed to create a new display mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Creating mode %s\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_of__sun4i_tv_of_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sun4i_tv_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_tv_platform_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_tv_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tv_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sun4i_tv_ops) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tv_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun4i_tv_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tv_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1056, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %75, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = getelementptr inbounds %struct.sun4i_tv, ptr %6, i32 0, i32 5
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %6, ptr %11, align 8
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %9, i32 noundef 0) #7
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %15 = ptrtoint ptr %12 to i32
  br label %75

16:                                               ; preds = %8
  %17 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %0, ptr noundef null, ptr noundef %12, ptr noundef nonnull @sun4i_tv_regmap_config, ptr noundef null, ptr noundef null) #7
  %18 = getelementptr inbounds %struct.sun4i_tv, ptr %6, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %21 = load ptr, ptr %18, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %75

23:                                               ; preds = %16
  %24 = tail call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %25 = getelementptr inbounds %struct.sun4i_tv, ptr %6, i32 0, i32 4
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %28 = load ptr, ptr %25, align 8
  %29 = ptrtoint ptr %28 to i32
  br label %75

30:                                               ; preds = %23
  %31 = tail call i32 @reset_control_deassert(ptr noundef %24) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  br label %75

34:                                               ; preds = %30
  %35 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #7
  %36 = getelementptr inbounds %struct.sun4i_tv, ptr %6, i32 0, i32 2
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #8
  %39 = load ptr, ptr %36, align 8
  %40 = ptrtoint ptr %39 to i32
  br label %71

41:                                               ; preds = %34
  %42 = tail call i32 @clk_prepare(ptr noundef %35) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = tail call i32 @clk_enable(ptr noundef %35) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @clk_unprepare(ptr noundef %35) #7
  br label %48

48:                                               ; preds = %47, %44, %41
  %49 = getelementptr inbounds %struct.sun4i_tv, ptr %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.sun4i_tv, ptr %6, i32 0, i32 1, i32 11
  store ptr @sun4i_tv_helper_funcs, ptr %50, align 4
  %51 = tail call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %49, i32 noundef 4) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  br label %68

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %2, ptr noundef %56) #7
  %58 = getelementptr inbounds %struct.sun4i_tv, ptr %6, i32 0, i32 1, i32 6
  store i32 %57, ptr %58, align 4
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 35
  store ptr @sun4i_tv_comp_connector_helper_funcs, ptr %61, align 4
  %62 = tail call i32 @drm_connector_init(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @sun4i_tv_comp_connector_funcs, i32 noundef 5) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #8
  tail call void @drm_encoder_cleanup(ptr noundef %49) #7
  br label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 12
  store i8 1, ptr %66, align 8
  %67 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %6, ptr noundef %49) #7
  br label %75

68:                                               ; preds = %64, %54, %53
  %69 = phi i32 [ %51, %53 ], [ %62, %64 ], [ -517, %54 ]
  %70 = load ptr, ptr %36, align 8
  tail call void @clk_disable(ptr noundef %70) #7
  tail call void @clk_unprepare(ptr noundef %70) #7
  br label %71

71:                                               ; preds = %68, %38
  %72 = phi i32 [ %40, %38 ], [ %69, %68 ]
  %73 = load ptr, ptr %25, align 8
  %74 = tail call i32 @reset_control_assert(ptr noundef %73) #7
  br label %75

75:                                               ; preds = %71, %65, %33, %27, %20, %14, %3
  %76 = phi i32 [ %15, %14 ], [ %22, %20 ], [ %29, %27 ], [ %31, %33 ], [ %72, %71 ], [ 0, %65 ], [ -12, %3 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_tv_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @drm_connector_cleanup(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.sun4i_tv, ptr %5, i32 0, i32 1
  tail call void @drm_encoder_cleanup(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.sun4i_tv, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_tv_mode_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %4, ptr noundef nonnull @.str.11) #7
  %5 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(5) @.str.11) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %4, ptr noundef nonnull @.str.12) #7
  %8 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.12) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %13, i32 noundef 480) #7
  %14 = load i16, ptr %11, align 2
  %15 = icmp eq i16 %14, 480
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = zext i16 %14 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %17, i32 noundef 576) #7
  %18 = load i16, ptr %11, align 2
  %19 = icmp eq i16 %18, 576
  %20 = select i1 %19, ptr getelementptr inbounds ([2 x %struct.tv_mode], ptr @tv_modes, i32 0, i32 1), ptr null
  br label %21

21:                                               ; preds = %16, %10, %7, %3
  %22 = phi ptr [ @tv_modes, %10 ], [ @tv_modes, %3 ], [ getelementptr inbounds ([2 x %struct.tv_mode], ptr @tv_modes, i32 0, i32 1), %7 ], [ %20, %16 ]
  %23 = getelementptr i8, ptr %0, i32 76
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 1048560, i32 noundef 274960, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 15
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i32 0, i32 131072
  %33 = or i32 %28, %32
  %34 = or i32 %33, 117506048
  %35 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 4, i32 noundef %34) #7
  %36 = load ptr, ptr %23, align 4
  %37 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 16
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 17
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i32 0, i32 33554432
  %44 = select i1 %39, i32 1094647809, i32 1094647817
  %45 = or i32 %44, %43
  %46 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 8, i32 noundef %45) #7
  %47 = load ptr, ptr %23, align 4
  %48 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 12, i32 noundef 288) #7
  %49 = load ptr, ptr %23, align 4
  %50 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 16, i32 noundef %51) #7
  %53 = load ptr, ptr %23, align 4
  %54 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 3
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = shl nuw i32 %56, 16
  %58 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = or i32 %57, %60
  %62 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 20, i32 noundef %61) #7
  %63 = load ptr, ptr %23, align 4
  %64 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 5
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, 1441792
  %68 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 28, i32 noundef %67) #7
  %69 = load ptr, ptr %23, align 4
  %70 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 20
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.video_levels, ptr %71, i32 0, i32 1
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = shl nuw i32 %74, 16
  %76 = load i16, ptr %71, align 2
  %77 = zext i16 %76 to i32
  %78 = or i32 %75, %77
  %79 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 32, i32 noundef %78) #7
  %80 = load ptr, ptr %23, align 4
  %81 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 36, i32 noundef 404232216) #7
  %82 = load ptr, ptr %23, align 4
  %83 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 19
  %84 = load ptr, ptr %83, align 4
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.burst_levels, ptr %84, i32 0, i32 1
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or i32 %90, %86
  %92 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 268, i32 noundef %91) #7
  %93 = load ptr, ptr %23, align 4
  %94 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef 276, i32 noundef 1459326) #7
  %95 = load ptr, ptr %23, align 4
  %96 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 18
  %97 = load ptr, ptr %96, align 4
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = getelementptr inbounds %struct.color_gains, ptr %97, i32 0, i32 1
  %101 = load i16, ptr %100, align 2
  %102 = zext i16 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or i32 %103, %99
  %105 = tail call i32 @regmap_write(ptr noundef %95, i32 noundef 280, i32 noundef %104) #7
  %106 = load ptr, ptr %23, align 4
  %107 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 6
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = or i32 %109, 1048576
  %111 = tail call i32 @regmap_write(ptr noundef %106, i32 noundef 284, i32 noundef %110) #7
  %112 = load ptr, ptr %23, align 4
  %113 = tail call i32 @regmap_write(ptr noundef %112, i32 noundef 292, i32 noundef 1440) #7
  %114 = load ptr, ptr %23, align 4
  %115 = tail call i32 @regmap_write(ptr noundef %114, i32 noundef 296, i32 noundef 2) #7
  %116 = load ptr, ptr %23, align 4
  %117 = tail call i32 @regmap_write(ptr noundef %116, i32 noundef 300, i32 noundef 257) #7
  %118 = load ptr, ptr %23, align 4
  %119 = getelementptr inbounds %struct.tv_mode, ptr %22, i32 0, i32 21
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.resync_parameters, ptr %120, i32 0, i32 2
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds %struct.resync_parameters, ptr %120, i32 0, i32 1
  %125 = load i16, ptr %124, align 2
  %126 = zext i16 %125 to i32
  %127 = shl nuw i32 %126, 16
  %128 = or i32 %127, %123
  %129 = load i8, ptr %120, align 2, !range !8
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 0, i32 -2147483648
  %132 = or i32 %128, %131
  %133 = tail call i32 @regmap_write(ptr noundef %118, i32 noundef 304, i32 noundef %132) #7
  %134 = load ptr, ptr %23, align 4
  %135 = tail call i32 @regmap_write(ptr noundef %134, i32 noundef 308, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_tv_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #7
  %4 = getelementptr i8, ptr %0, i32 76
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %7 = getelementptr inbounds %struct.sun4i_crtc, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sunxi_engine_ops, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %8) #7
  br label %16

16:                                               ; preds = %15, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_tv_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #7
  %4 = getelementptr inbounds %struct.sun4i_crtc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sunxi_engine_ops, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %5) #7
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = getelementptr i8, ptr %0, i32 76
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tv_comp_get_modes(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call ptr @drm_mode_create(ptr noundef %2) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %6, %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #7
  br label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i32 5, i1 false)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 28
  store i8 64, ptr %8, align 2
  store i32 13500, ptr %3, align 4
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 11
  store i32 16, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  store i16 720, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 2
  store i16 738, ptr %11, align 2
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 3
  store i16 740, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 4
  store i16 858, ptr %13, align 2
  %14 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  store i16 480, ptr %14, align 2
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 7
  store i16 506, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 8
  store i16 508, ptr %16, align 2
  %17 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 9
  store i16 525, ptr %17, align 4
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %3) #7
  %18 = load ptr, ptr %0, align 8
  %19 = tail call ptr @drm_mode_create(ptr noundef %18) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 31
  store i32 4997456, ptr %22, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 28
  store i8 64, ptr %23, align 2
  store i32 13500, ptr %19, align 4
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 11
  store i32 16, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 1
  store i16 720, ptr %25, align 4
  %26 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 2
  store i16 723, ptr %26, align 2
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 3
  store i16 725, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 4
  store i16 864, ptr %28, align 2
  %29 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 6
  store i16 576, ptr %29, align 2
  %30 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 7
  store i16 604, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 8
  store i16 606, ptr %31, align 2
  %32 = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 9
  store i16 625, ptr %32, align 4
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %19) #7
  br label %33

33:                                               ; preds = %21, %5
  %34 = phi i32 [ 0, %5 ], [ 2, %21 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_tv_comp_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_tv_comp_connector_destroy(ptr noundef %0) #2 {
  tail call void @drm_connector_cleanup(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
