; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c"
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
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.s6e63j0x03 = type { ptr, %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data], ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }

@s6e63j0x03_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e63j0x03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author260 = internal constant [39 x i8] c"author=Inki Dae <inki.dae@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [47 x i8] c"author=Hoegeun Kwon <hoegeun.kwon@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [62 x i8] c"description=MIPI-DSI based s6e63j0x03 AMOLED LCD Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@s6e63j0x03_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6e63j0x03_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s6e63j0x03_probe, ptr @s6e63j0x03_remove, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [25 x i8] c"panel_samsung_s6e63j0x03\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot get reset-gpio\0A\00", align 1
@s6e63j0x03_funcs = internal constant %struct.drm_panel_funcs { ptr @s6e63j0x03_prepare, ptr @s6e63j0x03_enable, ptr @s6e63j0x03_disable, ptr @s6e63j0x03_unprepare, ptr @s6e63j0x03_get_modes, ptr null }, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"s6e63j0x03\00", align 1
@s6e63j0x03_bl_ops = internal constant %struct.backlight_ops { i32 0, ptr @s6e63j0x03_set_brightness, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to register backlight device\0A\00", align 1
@s6e63j0x03_panel_init.d = internal constant [3 x i8] c"\F2\1C(", align 1
@s6e63j0x03_panel_init.d.8 = internal constant [4 x i8] c"\B5\00\02\00", align 1
@default_mode = internal constant %struct.drm_display_mode { i32 4649, i16 320, i16 321, i16 322, i16 323, i16 0, i16 320, i16 470, i16 471, i16 473, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@s6e63j0x03_panel_init.d.9 = internal constant [14 x i8] c"\F8\08\08\08\17\00*\02&\00\00\02\00\00", align 1
@s6e63j0x03_panel_init.d.10 = internal constant [2 x i8] c"\F7\02", align 1
@s6e63j0x03_panel_init.d.11 = internal constant [2 x i8] c"\B0\01", align 1
@s6e63j0x03_panel_init.d.12 = internal constant [2 x i8] c"\E2\0F", align 1
@s6e63j0x03_panel_init.d.13 = internal constant [2 x i8] c"\B0\00", align 1
@s6e63j0x03_enable_lv2_command.d = internal constant [3 x i8] c"\F0ZZ", align 1
@s6e63j0x03_apply_mtp_key.d = internal constant [3 x i8] c"\F1ZZ", align 1
@s6e63j0x03_apply_mtp_key.d.14 = internal constant [3 x i8] c"\F1\A5\A5", align 1
@s6e63j0x03_enable.d = internal constant [3 x i8] c"\B1\00\09", align 1
@s6e63j0x03_enable.d.15 = internal constant [2 x i8] c"6@", align 1
@s6e63j0x03_enable.d.16 = internal constant [2 x i8] c"S ", align 1
@s6e63j0x03_enable.d.17 = internal constant [2 x i8] c"U\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@gamma_tbl = internal constant [9 x [28 x i8]] [[28 x i8] c"\D4\00\00\00\7F\7F\7FRko&(-(&'342665\00\AB\00\AE\00\BF", [28 x i8] c"\D4\00\00\00p\7F\7FNdi&'*()'121545\00\C4\00\CA\00\DC", [28 x i8] c"\D4\00\00\00e{}_gh*()(*'1/0434\00\D9\00\E4\00\F5", [28 x i8] c"\D4\00\00\00Moqgjl)((()'0.0211\00\EA\00\F6\01\09", [28 x i8] c"\D4\00\00\00=fhiii(('(('0./110\00\F9\01\05\01\1B", [28 x i8] c"\D4\00\00\001QSffg()'(''.-.110\01\04\01\11\01)", [28 x i8] c"\D4\00\00\00/OQgee)*('%&-,,000\01\14\01#\01;", [28 x i8] c"\D4\00\00\00,MPecd*,)&$%,++000\01\1E\01/\01G", [28 x i8] c"\D4\00\00\008adecd(*'&#%++*0/0\01-\01?\01W"], align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_license263], section "llvm.metadata"

@__mod_of__s6e63j0x03_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @s6e63j0x03_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @s6e63j0x03_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @s6e63j0x03_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 60, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  store ptr %3, ptr %6, align 8
  store ptr %2, ptr %3, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 4
  store i32 1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  store i32 512, ptr %9, align 8
  %10 = getelementptr inbounds %struct.s6e63j0x03, ptr %3, i32 0, i32 3
  store ptr @.str.1, ptr %10, align 4
  %11 = getelementptr %struct.s6e63j0x03, ptr %3, i32 0, i32 3, i32 1
  store ptr @.str.2, ptr %11, align 4
  %12 = tail call i32 @devm_regulator_bulk_get(ptr noundef %2, i32 noundef 2, ptr noundef %10) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %12, ptr noundef nonnull @.str.3) #5
  br label %40

16:                                               ; preds = %5
  %17 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 3) #5
  %18 = getelementptr inbounds %struct.s6e63j0x03, ptr %3, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %21, ptr noundef nonnull @.str.5) #5
  br label %40

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.s6e63j0x03, ptr %3, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %24, ptr noundef %2, ptr noundef nonnull @s6e63j0x03_funcs, i32 noundef 16) #5
  %25 = tail call ptr @backlight_device_register(ptr noundef nonnull @.str.6, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @s6e63j0x03_bl_ops, ptr noundef null) #5
  %26 = getelementptr inbounds %struct.s6e63j0x03, ptr %3, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i32
  %30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %29, ptr noundef nonnull @.str.7) #5
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.backlight_properties, ptr %25, i32 0, i32 1
  store i32 100, ptr %32, align 4
  %33 = load ptr, ptr %26, align 4
  store i32 80, ptr %33, align 8
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr inbounds %struct.backlight_properties, ptr %34, i32 0, i32 2
  store i32 4, ptr %35, align 8
  tail call void @drm_panel_add(ptr noundef %24) #5
  %36 = tail call i32 @mipi_dsi_attach(ptr noundef %0) #5
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  tail call void @drm_panel_remove(ptr noundef %24) #5
  %39 = load ptr, ptr %26, align 4
  tail call void @backlight_device_unregister(ptr noundef %39) #5
  br label %40

40:                                               ; preds = %38, %31, %28, %20, %14, %1
  %41 = phi i32 [ %15, %14 ], [ %22, %20 ], [ %30, %28 ], [ %36, %38 ], [ -12, %1 ], [ %36, %31 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.s6e63j0x03, ptr %3, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.s6e63j0x03, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @backlight_device_unregister(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_prepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 28
  %4 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %3) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %76, label %6

6:                                                ; preds = %1
  tail call void @msleep(i32 noundef 30) #5
  %7 = getelementptr i8, ptr %0, i32 52
  %8 = load ptr, ptr %7, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %9 = load ptr, ptr %7, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e63j0x03_enable_lv2_command.d, i32 noundef 3) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %73, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %16, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d, i32 noundef 3) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %73, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 -8
  %22 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %21, ptr noundef nonnull @s6e63j0x03_panel_init.d, i32 noundef 3) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 -8
  %27 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %26, ptr noundef nonnull @s6e63j0x03_panel_init.d.8, i32 noundef 4) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %11, i16 noundef zeroext 20, i16 noundef zeroext 339) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %11, i16 noundef zeroext 0, i16 noundef zeroext 319) #5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %73, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 -8
  %38 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %37, ptr noundef nonnull @s6e63j0x03_panel_init.d.9, i32 noundef 14) #5
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr i8, ptr %41, i32 -8
  %43 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %42, ptr noundef nonnull @s6e63j0x03_panel_init.d.10, i32 noundef 2) #5
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr i8, ptr %46, i32 -8
  %48 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %47, ptr noundef nonnull @s6e63j0x03_panel_init.d.11, i32 noundef 2) #5
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 -8
  %53 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %52, ptr noundef nonnull @s6e63j0x03_panel_init.d.12, i32 noundef 2) #5
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr i8, ptr %56, i32 -8
  %58 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %57, ptr noundef nonnull @s6e63j0x03_panel_init.d.13, i32 noundef 2) #5
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %11) #5
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr i8, ptr %64, i32 -8
  %66 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %65, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d.14, i32 noundef 3) #5
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 0) #5
  %68 = icmp slt i32 %66, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr i8, ptr %0, i32 24
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.backlight_properties, ptr %71, i32 0, i32 2
  store i32 1, ptr %72, align 8
  br label %76

73:                                               ; preds = %63, %60, %55, %50, %45, %40, %35, %32, %29, %24, %19, %14, %6
  %74 = phi i32 [ %67, %63 ], [ %61, %60 ], [ %58, %55 ], [ %53, %50 ], [ %48, %45 ], [ %43, %40 ], [ %38, %35 ], [ %33, %32 ], [ %30, %29 ], [ %27, %24 ], [ %22, %19 ], [ %17, %14 ], [ %12, %6 ]
  %75 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %3) #5
  br label %76

76:                                               ; preds = %73, %69, %1
  %77 = phi i32 [ %74, %73 ], [ 0, %69 ], [ %4, %1 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -8
  tail call void @msleep(i32 noundef 120) #5
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 -8
  %7 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %6, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d, i32 noundef 3) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @s6e63j0x03_enable.d, i32 noundef 3) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %16, ptr noundef nonnull @s6e63j0x03_enable.d.15, i32 noundef 2) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %4, i16 noundef zeroext 255) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 -8
  %25 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %24, ptr noundef nonnull @s6e63j0x03_enable.d.16, i32 noundef 2) #5
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 -8
  %30 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %29, ptr noundef nonnull @s6e63j0x03_enable.d.17, i32 noundef 2) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %4, i32 noundef 0) #5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 -8
  %38 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %37, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d.14, i32 noundef 3) #5
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %4) #5
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %0, i32 24
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.backlight_properties, ptr %45, i32 0, i32 2
  store i32 0, ptr %46, align 8
  br label %47

47:                                               ; preds = %43, %40, %35, %32, %27, %22, %19, %14, %9, %1
  %48 = phi i32 [ 0, %43 ], [ %7, %1 ], [ %12, %9 ], [ %17, %14 ], [ %20, %19 ], [ %25, %22 ], [ %30, %27 ], [ %33, %32 ], [ %38, %35 ], [ %41, %40 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %4) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.backlight_properties, ptr %9, i32 0, i32 2
  store i32 1, ptr %10, align 8
  %11 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %4) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @msleep(i32 noundef 120) #5
  br label %14

14:                                               ; preds = %13, %7, %1
  %15 = phi i32 [ 0, %13 ], [ %5, %1 ], [ %11, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_unprepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 28
  %3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 2
  store i32 4, ptr %8, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_get_modes(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull @default_mode) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef 320, i32 noundef 320, i32 noundef %8) #6
  br label %13

9:                                                ; preds = %2
  tail call void @drm_mode_set_name(ptr noundef nonnull %4) #5
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 28
  store i8 72, ptr %10, align 2
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %4) #5
  %11 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  store i32 29, ptr %11, align 8
  %12 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 29, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 1, %9 ], [ -12, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_set_brightness(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %0, align 8
  %5 = getelementptr inbounds %struct.s6e63j0x03, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 -8
  %9 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %8, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d, i32 noundef 3) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = udiv i32 %4, 11
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8) #5
  %14 = getelementptr [9 x [28 x i8]], ptr @gamma_tbl, i32 0, i32 %13
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %16, ptr noundef %14, i32 noundef 28) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 -8
  %22 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %21, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d.14, i32 noundef 3) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 %4, ptr %6, align 8
  br label %25

25:                                               ; preds = %24, %19, %11, %1
  %26 = phi i32 [ 0, %24 ], [ %9, %1 ], [ %17, %11 ], [ %22, %19 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
