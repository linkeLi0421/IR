; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-samsung-ld9040.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-ld9040.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
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
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ld9040 = type { ptr, %struct.drm_panel, [2 x %struct.regulator_bulk_data], ptr, i32, i32, %struct.videomode, i32, i32, i32, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@ld9040_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,ld9040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ld9040_ids = internal constant [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ld9040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@__UNIQUE_ID_author262 = internal constant [43 x i8] c"author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [30 x i8] c"description=ld9040 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@ld9040_driver = internal global %struct.spi_driver { ptr @ld9040_ids, ptr @ld9040_probe, ptr @ld9040_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ld9040_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [21 x i8] c"panel-samsung-ld9040\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpios %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"spi setup failed.\0A\00", align 1
@ld9040_drm_funcs = internal constant %struct.drm_panel_funcs { ptr @ld9040_prepare, ptr @ld9040_enable, ptr @ld9040_disable, ptr @ld9040_unprepare, ptr @ld9040_get_modes, ptr null }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"power-on-delay\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"reset-delay\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"panel-width-mm\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"panel-height-mm\00", align 1
@ld9040_init.d = internal constant [3 x i8] c"\F0ZZ", align 1
@ld9040_init.d.10 = internal constant [24 x i8] c"\F8\05e\96q}\19;\0D\19~\0D\E2\00\00~}\07\07   \02\02", align 1
@ld9040_init.d.11 = internal constant [6 x i8] c"\F2\02\08\08\10\10", align 1
@ld9040_init.d.12 = internal constant [2 x i8] c"\B0\04", align 1
@ld9040_init.d.13 = internal constant [8 x i8] c"\F4\0A\87%jD\02\88", align 1
@ld9040_init.d.14 = internal constant [4 x i8] c"\B1\0D\00\16", align 1
@ld9040_init.d.15 = internal constant [4 x i8] c"\F7\09\00\00", align 1
@ld9040_init.d.16 = internal constant [1 x i8] c"\11", align 1
@ld9040_init.d.17 = internal constant [1 x i8] c")", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"error %d writing dcs seq: %*ph\0A\00", align 1
@ld9040_gammas = internal constant [25 x [22 x i8]] [[22 x i8] c"\F9\00\13\B2\BA\D2\000\00\AF\C0\B8\CD\00=\00\A8\B8\B7\CD\00D", [22 x i8] c"\F9\00\13\B9\B9\D0\00<\00\AF\BF\B6\CB\00K\00\A8\B9\B5\CC\00R", [22 x i8] c"\F9\00\13\BA\B9\CD\00A\00\B0\BE\B5\C9\00Q\00\A9\B9\B5\CA\00W", [22 x i8] c"\F9\00\13\B9\B8\CD\00F\00\B1\BC\B5\C8\00V\00\AA\B8\B4\C9\00]", [22 x i8] c"\F9\00\13\BA\B8\CB\00K\00\B3\BC\B4\C7\00\\\00\AC\B8\B4\C8\00b", [22 x i8] c"\F9\00\13\BB\B7\CA\00O\00\B4\BB\B3\C7\00`\00\AD\B8\B4\C7\00g", [22 x i8] c"\F9\00G\BA\B6\CA\00S\00\B5\BB\B3\C6\00e\00\AE\B8\B3\C7\00l", [22 x i8] c"\F9\00q\BB\B5\C8\00W\00\B5\BB\B0\C5\00j\00\AE\B9\B1\C6\00p", [22 x i8] c"\F9\00{\BB\B4\C8\00[\00\B5\BA\B1\C4\00n\00\AE\B9\B0\C5\00u", [22 x i8] c"\F9\00\82\BA\B4\C7\00_\00\B5\BA\B0\C3\00r\00\AE\B8\B0\C3\00z", [22 x i8] c"\F9\00\89\BA\B3\C8\00b\00\B6\BA\AF\C3\00v\00\AF\B7\AE\C4\00~", [22 x i8] c"\F9\00\8B\B9\B3\C7\00e\00\B7\B8\AF\C3\00z\00\80\B6\AE\C4\00\81", [22 x i8] c"\F9\00\93\BA\B3\C5\00i\00\B8\B9\AE\C1\00\7F\00\B0\B6\AE\C3\00\85", [22 x i8] c"\F9\00\97\BA\B2\C5\00l\00\B8\B8\AE\C1\00\82\00\B0\B6\AE\C2\00\89", [22 x i8] c"\F9\00\9A\BA\B1\C4\00o\00\B8\B8\AD\C0\00\86\00\B0\B7\AD\C0\00\8D", [22 x i8] c"\F9\00\9C\B9\B0\C4\00r\00\B8\B8\AC\BF\00\8A\00\B0\B6\AC\C0\00\91", [22 x i8] c"\F9\00\9E\BA\B0\C2\00u\00\B9\B8\AB\BE\00\8E\00\B0\B6\AC\BF\00\94", [22 x i8] c"\F9\00\A0\B9\AF\C3\00w\00\B9\B7\AB\BE\00\90\00\B0\B6\AB\BF\00\97", [22 x i8] c"\F9\00\A2\B9\AF\C2\00z\00\B9\B7\AA\BD\00\94\00\B0\B5\AB\BF\00\9A", [22 x i8] c"\F9\00\A4\B9\AF\C1\00}\00\B9\B6\AA\BB\00\97\00\B1\B5\AA\BF\00\9D", [22 x i8] c"\F9\00\A4\B8\B0\BF\00\80\00\B8\B6\AA\BC\00\9A\00\B0\B5\AB\BD\00\A0", [22 x i8] c"\F9\00\A8\B8\AE\BE\00\84\00\B9\B7\A8\BC\00\9D\00\B2\B5\AA\BC\00\A4", [22 x i8] c"\F9\00\A9\B6\AD\BF\00\86\00\B8\B5\A8\BC\00\A0\00\B3\B3\A9\BC\00\A7", [22 x i8] c"\F9\00\A9\B7\AE\BD\00\89\00\B7\B6\A8\BA\00\A4\00\B1\B4\AA\BB\00\AA", [22 x i8] c"\F9\00\A7\B4\AE\BF\00\91\00\B2\B4\AA\BB\00\AC\00\B3\B1\AA\BC\00\B3"], align 1
@ld9040_brightness_set.d = internal constant [3 x i8] c"\FB\02Z", align 1
@ld9040_unprepare.d = internal constant [1 x i8] c"(", align 1
@ld9040_unprepare.d.19 = internal constant [1 x i8] c"\10", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"failed to create a new display mode\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_license264], section "llvm.metadata"

@__mod_of__ld9040_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ld9040_of_match
@__mod_spi__ld9040_ids_device_table = dso_local alias [2 x %struct.spi_device_id], ptr @ld9040_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ld9040_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ld9040_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ld9040_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 120, i32 noundef 3520) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 9
  store i32 24, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 6
  %10 = tail call i32 @of_get_videomode(ptr noundef %8, ptr noundef %9, i32 noundef 0) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 4
  %14 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef %13, i32 noundef 1, i32 noundef 0) #7
  %15 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 5
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef %15, i32 noundef 1, i32 noundef 0) #7
  %17 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 7
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef %17, i32 noundef 1, i32 noundef 0) #7
  %19 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 8
  %20 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %19, i32 noundef 1, i32 noundef 0) #7
  %21 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 2
  store ptr @.str.1, ptr %21, align 4
  %22 = getelementptr %struct.ld9040, ptr %2, i32 0, i32 2, i32 1
  store ptr @.str.2, ptr %22, align 4
  %23 = tail call i32 @devm_regulator_bulk_get(ptr noundef %0, i32 noundef 2, ptr noundef %21) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %12
  %26 = tail call ptr @devm_gpiod_get(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 7) #7
  %27 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = ptrtoint ptr %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %30) #8
  %31 = load ptr, ptr %27, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %40

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  store i8 9, ptr %34, align 1
  %35 = tail call i32 @spi_setup(ptr noundef %0) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #8
  br label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ld9040, ptr %2, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %39, ptr noundef %0, ptr noundef nonnull @ld9040_drm_funcs, i32 noundef 17) #7
  tail call void @drm_panel_add(ptr noundef %39) #7
  br label %40

40:                                               ; preds = %38, %37, %29, %12, %4, %1
  %41 = phi i32 [ %32, %29 ], [ %35, %37 ], [ 0, %38 ], [ -12, %1 ], [ %23, %12 ], [ %10, %4 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ld9040_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ld9040, ptr %3, i32 0, i32 2
  %5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.ld9040, ptr %3, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ld9040_prepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 52
  %8 = load i32, ptr %7, align 4
  tail call void @msleep(i32 noundef %8) #7
  %9 = getelementptr i8, ptr %0, i32 48
  %10 = load ptr, ptr %9, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #7
  %11 = getelementptr i8, ptr %0, i32 56
  %12 = load i32, ptr %11, align 4
  tail call void @msleep(i32 noundef %12) #7
  %13 = load ptr, ptr %9, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 1) #7
  %14 = load i32, ptr %11, align 4
  tail call void @msleep(i32 noundef %14) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d, i32 noundef 3) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.10, i32 noundef 24) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.11, i32 noundef 6) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.12, i32 noundef 2) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.13, i32 noundef 8) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.14, i32 noundef 4) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.15, i32 noundef 4) #7
  %15 = getelementptr i8, ptr %0, i32 108
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [25 x [22 x i8]], ptr @ld9040_gammas, i32 0, i32 %16
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef %17, i32 noundef 22) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_brightness_set.d, i32 noundef 3) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.16, i32 noundef 1) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_init.d.17, i32 noundef 1) #7
  %18 = getelementptr i8, ptr %0, i32 112
  %19 = load i32, ptr %18, align 4
  store i32 0, ptr %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  tail call void @msleep(i32 noundef 120) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_unprepare.d, i32 noundef 1) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_unprepare.d.19, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 40) #7
  store i32 0, ptr %18, align 4
  %22 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %3) #7
  br label %23

23:                                               ; preds = %21, %6, %1
  %24 = phi i32 [ %19, %21 ], [ %19, %6 ], [ %4, %1 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ld9040_enable(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ld9040_disable(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ld9040_unprepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void @msleep(i32 noundef 120) #7
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_unprepare.d, i32 noundef 1)
  tail call fastcc void @ld9040_dcs_write(ptr noundef %2, ptr noundef nonnull @ld9040_unprepare.d.19, i32 noundef 1)
  tail call void @msleep(i32 noundef 40) #7
  %3 = getelementptr i8, ptr %0, i32 112
  store i32 0, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 24
  %5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ld9040_get_modes(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call ptr @drm_mode_create(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20) #8
  br label %24

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 60
  tail call void @drm_display_mode_from_videomode(ptr noundef %9, ptr noundef nonnull %4) #7
  %10 = getelementptr i8, ptr %0, i32 100
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 26
  store i16 %12, ptr %13, align 2
  %14 = getelementptr i8, ptr %0, i32 104
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 27
  store i16 %16, ptr %17, align 4
  %18 = and i32 %11, 65535
  %19 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  store i32 %18, ptr %19, align 8
  %20 = load i16, ptr %17, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 28
  store i8 72, ptr %23, align 2
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %4) #7
  br label %24

24:                                               ; preds = %8, %6
  %25 = phi i32 [ 1, %8 ], [ 0, %6 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ld9040_dcs_write(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca i16, align 2
  %8 = alloca %struct.spi_transfer, align 4
  %9 = alloca %struct.spi_message, align 4
  %10 = getelementptr inbounds %struct.ld9040, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %3
  %14 = load i8, ptr %1, align 1
  %15 = zext i8 %14 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7)
  store i16 %15, ptr %7, align 2
  %16 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #7
  %17 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %17, i8 0, i64 92, i1 false) #7
  store ptr %7, ptr %8, align 4
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 2, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #7
  %19 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %19, i8 0, i64 40, i1 false) #7
  store volatile ptr %9, ptr %9, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %21 = getelementptr inbounds %struct.spi_message, ptr %9, i32 0, i32 10
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spi_message, ptr %9, i32 0, i32 10, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %23, ptr %20, align 4
  store ptr %9, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %9, ptr %24, align 4
  store volatile ptr %23, ptr %9, align 4
  %25 = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %13
  %28 = getelementptr inbounds i8, ptr %5, i32 4
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  %30 = getelementptr inbounds i8, ptr %6, i32 8
  %31 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %32 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  %33 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  br label %36

36:                                               ; preds = %41, %27
  %37 = phi i32 [ %2, %27 ], [ %39, %41 ]
  %38 = phi ptr [ %1, %27 ], [ %42, %41 ]
  %39 = add i32 %37, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %38, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  %45 = or i16 %44, 256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  store i16 %45, ptr %4, align 2
  %46 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %28, i8 0, i64 92, i1 false) #7
  store ptr %4, ptr %5, align 4
  store i32 2, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %30, i8 0, i64 40, i1 false) #7
  store volatile ptr %6, ptr %6, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %33, align 4
  store ptr %34, ptr %31, align 4
  store ptr %6, ptr %34, align 4
  store ptr %6, ptr %35, align 4
  store volatile ptr %34, ptr %6, align 4
  %47 = call i32 @spi_sync(ptr noundef %46, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %36, label %49

49:                                               ; preds = %41, %13
  %50 = phi ptr [ %1, %13 ], [ %42, %41 ]
  %51 = phi i32 [ %2, %13 ], [ %39, %41 ]
  %52 = phi i32 [ %25, %13 ], [ %47, %41 ]
  %53 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.18, i32 noundef %52, i32 noundef %51, ptr noundef %50) #8
  store i32 %52, ptr %10, align 4
  br label %54

54:                                               ; preds = %49, %36
  call void @usleep_range_state(i32 noundef 300, i32 noundef 310, i32 noundef 2) #7
  br label %55

55:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
