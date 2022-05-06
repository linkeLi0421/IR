; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-raydium-rm68200.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-raydium-rm68200.c"
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.rm68200 = type { ptr, %struct.drm_panel, ptr, ptr, i8, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@raydium_rm68200_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raydium,rm68200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author260 = internal constant [46 x i8] c"author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [46 x i8] c"author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [58 x i8] c"description=DRM Driver for Raydium RM68200 MIPI DSI panel\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@raydium_rm68200_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @raydium_rm68200_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rm68200_probe, ptr @rm68200_remove, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [22 x i8] c"panel-raydium-rm68200\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot get reset GPIO: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot get regulator: %d\0A\00", align 1
@rm68200_drm_funcs = internal constant %struct.drm_panel_funcs { ptr @rm68200_prepare, ptr @rm68200_enable, ptr @rm68200_disable, ptr @rm68200_unprepare, ptr @rm68200_get_modes, ptr null }, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"mipi_dsi_attach() failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@rm68200_init_sequence.d = internal constant [2 x i8] c"\FE\01", align 1
@rm68200_init_sequence.d.8 = internal constant [2 x i8] c"+\E5", align 1
@rm68200_init_sequence.d.9 = internal constant [2 x i8] c"'\0A", align 1
@rm68200_init_sequence.d.10 = internal constant [2 x i8] c")\0A", align 1
@rm68200_init_sequence.d.11 = internal constant [2 x i8] c"\16R", align 1
@rm68200_init_sequence.d.12 = internal constant [2 x i8] c"/S", align 1
@rm68200_init_sequence.d.13 = internal constant [2 x i8] c"4Z", align 1
@rm68200_init_sequence.d.14 = internal constant [2 x i8] c"\1B\00", align 1
@rm68200_init_sequence.d.15 = internal constant [2 x i8] c"\12\0A", align 1
@rm68200_init_sequence.d.16 = internal constant [2 x i8] c"\1A\06", align 1
@rm68200_init_sequence.d.17 = internal constant [2 x i8] c"FV", align 1
@rm68200_init_sequence.d.18 = internal constant [3 x i8] c"R\A0\00", align 1
@rm68200_init_sequence.d.19 = internal constant [3 x i8] c"T\A0\00", align 1
@rm68200_init_sequence.d.20 = internal constant [2 x i8] c"_\11", align 1
@rm68200_init_sequence.d.21 = internal constant [2 x i8] c"\FE\03", align 1
@rm68200_init_sequence.d.22 = internal constant [2 x i8] c"\00\05", align 1
@rm68200_init_sequence.d.23 = internal constant [2 x i8] c"\02\0B", align 1
@rm68200_init_sequence.d.24 = internal constant [2 x i8] c"\03\0F", align 1
@rm68200_init_sequence.d.25 = internal constant [4 x i8] c"\04}\00P", align 1
@rm68200_init_sequence.d.26 = internal unnamed_addr constant [7 x i8] c"\05\16\0D\11}\00P", align 1
@rm68200_init_sequence.d.27 = internal unnamed_addr constant [9 x i8] c"\07\08\01\02\00}\00\85\08", align 1
@rm68200_init_sequence.d.28 = internal unnamed_addr constant [9 x i8] c"\03\04\05\06\00}\00\85\08", align 1
@rm68200_init_sequence.d.29 = internal constant <{ i8, [10 x i8] }> <{ i8 32, [10 x i8] zeroinitializer }>, align 1
@rm68200_init_sequence.d.31 = internal constant [2 x i8] c"-\01", align 1
@rm68200_init_sequence.d.32 = internal constant [9 x i8] c"/\02\00@\05\08T}\00", align 1
@rm68200_init_sequence.d.34 = internal constant [2 x i8] c"=@", align 1
@rm68200_init_sequence.d.35 = internal constant [6 x i8] c"?\05\08T}\00", align 1
@rm68200_init_sequence.d.36 = internal constant <{ i8, [11 x i8] }> <{ i8 68, [11 x i8] zeroinitializer }>, align 1
@rm68200_init_sequence.d.37 = internal constant <{ i8, [8 x i8] }> <{ i8 79, [8 x i8] zeroinitializer }>, align 1
@rm68200_init_sequence.d.38 = internal constant [4 x i8] c"X\00\00\00", align 1
@rm68200_init_sequence.d.39 = internal constant [6 x i8] c"[\00\00\00\00\00", align 1
@rm68200_init_sequence.d.40 = internal constant <{ i8, [13 x i8] }> <{ i8 96, [13 x i8] zeroinitializer }>, align 1
@rm68200_init_sequence.d.41 = internal constant [5 x i8] c"m\00\00\00\00", align 1
@rm68200_init_sequence.d.42 = internal constant [4 x i8] c"q\00 \00", align 1
@rm68200_init_sequence.d.43 = internal constant [9 x i8] c"t\08\08\08\08\08\08\00\00", align 1
@rm68200_init_sequence.d.44 = internal constant [3 x i8] c"|\00\00", align 1
@rm68200_init_sequence.d.45 = internal unnamed_addr constant [9 x i8] c"\BF\02\06\14\10\16\12\08?", align 1
@rm68200_init_sequence.d.46 = internal unnamed_addr constant [10 x i8] c"????\0C\0A\0E??\00", align 1
@rm68200_init_sequence.d.47 = internal unnamed_addr constant [10 x i8] c"\04????\05\01??\0F", align 1
@rm68200_init_sequence.d.51 = internal unnamed_addr constant [9 x i8] c"?\05\01\17\13\15\11\0F?", align 1
@rm68200_init_sequence.d.52 = internal unnamed_addr constant [10 x i8] c"????\0B\0D\09??\07", align 1
@rm68200_init_sequence.d.53 = internal unnamed_addr constant [10 x i8] c"\03????\02\06??\08", align 1
@rm68200_init_sequence.d.54 = internal unnamed_addr constant [10 x i8] c"\0C\0A?????\0E\10\14", align 1
@rm68200_init_sequence.d.56 = internal constant [2 x i8] c"\DC\02", align 1
@rm68200_init_sequence.d.57 = internal constant [2 x i8] c"\DE\12", align 1
@rm68200_init_sequence.d.58 = internal constant [2 x i8] c"\FE\0E", align 1
@rm68200_init_sequence.d.59 = internal constant [2 x i8] c"\01u", align 1
@rm68200_init_sequence.d.60 = internal constant [2 x i8] c"\FE\04", align 1
@rm68200_init_sequence.d.62 = internal unnamed_addr constant [16 x i8] c"\00\0C\12\0E\06\12\0E\0B\15\0B\10\07\0F\12\0C\00", align 1
@rm68200_init_sequence.d.63 = internal constant [2 x i8] c"\FE\00", align 1
@rm68200_dcs_write_buf._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rm68200_dcs_write_buf = private unnamed_addr constant [22 x i8] c"rm68200_dcs_write_buf\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"MIPI DSI DCS write buffer failed: %d\0A\00", align 1
@rm68200_dcs_write_cmd._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rm68200_dcs_write_cmd = private unnamed_addr constant [22 x i8] c"rm68200_dcs_write_cmd\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"MIPI DSI DCS write failed: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"failed to set display off: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"failed to enter sleep mode: %d\0A\00", align 1
@default_mode = internal constant %struct.drm_display_mode { i32 54000, i16 720, i16 768, i16 777, i16 825, i16 0, i16 1280, i16 1292, i16 1297, i16 1309, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 122, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@.str.68 = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_license263], section "llvm.metadata"

@__mod_of__raydium_rm68200_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @raydium_rm68200_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @raydium_rm68200_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @raydium_rm68200_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rm68200_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 3) #6
  %7 = getelementptr inbounds %struct.rm68200, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %10) #7
  br label %31

11:                                               ; preds = %5
  %12 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %13 = getelementptr inbounds %struct.rm68200, ptr %3, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = icmp eq ptr %12, inttoptr (i32 -517 to ptr)
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %18) #7
  br label %31

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  store ptr %3, ptr %20, align 8
  store ptr %2, ptr %3, align 4
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 4
  store i32 2, ptr %21, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  store i32 3075, ptr %23, align 8
  %24 = getelementptr inbounds %struct.rm68200, ptr %3, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %24, ptr noundef %2, ptr noundef nonnull @rm68200_drm_funcs, i32 noundef 16) #6
  %25 = tail call i32 @drm_panel_of_backlight(ptr noundef %24) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  tail call void @drm_panel_add(ptr noundef %24) #6
  %28 = tail call i32 @mipi_dsi_attach(ptr noundef %0) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %28) #7
  tail call void @drm_panel_remove(ptr noundef %24) #6
  br label %31

31:                                               ; preds = %30, %27, %19, %17, %15, %9, %1
  %32 = phi i32 [ %10, %9 ], [ %28, %30 ], [ -12, %1 ], [ %18, %17 ], [ -517, %15 ], [ %25, %19 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rm68200_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.rm68200, ptr %3, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rm68200_prepare(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = getelementptr i8, ptr %0, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = getelementptr i8, ptr %0, i32 32
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %957

27:                                               ; preds = %1
  %28 = getelementptr i8, ptr %0, i32 28
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regulator_enable(ptr noundef %29) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.6, i32 noundef %30) #7
  br label %957

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %0, i32 24
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %36, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  %39 = load ptr, ptr %35, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %39, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 100) #6
  br label %40

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr %21, align 4
  %42 = getelementptr i8, ptr %41, i32 -8
  %43 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %42, ptr noundef nonnull @rm68200_init_sequence.d, i32 noundef 2) #6
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = tail call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.64, i32 noundef %43) #7
  br label %50

50:                                               ; preds = %48, %45, %40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #6
  store i8 -64, ptr %20, align 1
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr i8, ptr %51, i32 -8
  %53 = call i32 @mipi_dsi_dcs_write(ptr noundef %52, i8 noundef zeroext 36, ptr noundef nonnull %20, i32 noundef 1) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.65, i32 noundef %53) #7
  br label %60

60:                                               ; preds = %58, %55, %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #6
  store i8 83, ptr %20, align 1
  %61 = load ptr, ptr %21, align 4
  %62 = getelementptr i8, ptr %61, i32 -8
  %63 = call i32 @mipi_dsi_dcs_write(ptr noundef %62, i8 noundef zeroext 37, ptr noundef nonnull %20, i32 noundef 1) #6
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.65, i32 noundef %63) #7
  br label %70

70:                                               ; preds = %68, %65, %60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #6
  store i8 0, ptr %20, align 1
  %71 = load ptr, ptr %21, align 4
  %72 = getelementptr i8, ptr %71, i32 -8
  %73 = call i32 @mipi_dsi_dcs_write(ptr noundef %72, i8 noundef zeroext 38, ptr noundef nonnull %20, i32 noundef 1) #6
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.65, i32 noundef %73) #7
  br label %80

80:                                               ; preds = %78, %75, %70
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #6
  %81 = load ptr, ptr %21, align 4
  %82 = getelementptr i8, ptr %81, i32 -8
  %83 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %82, ptr noundef nonnull @rm68200_init_sequence.d.8, i32 noundef 2) #6
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.64, i32 noundef %83) #7
  br label %90

90:                                               ; preds = %88, %85, %80
  %91 = load ptr, ptr %21, align 4
  %92 = getelementptr i8, ptr %91, i32 -8
  %93 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %92, ptr noundef nonnull @rm68200_init_sequence.d.9, i32 noundef 2) #6
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.64, i32 noundef %93) #7
  br label %100

100:                                              ; preds = %98, %95, %90
  %101 = load ptr, ptr %21, align 4
  %102 = getelementptr i8, ptr %101, i32 -8
  %103 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %102, ptr noundef nonnull @rm68200_init_sequence.d.10, i32 noundef 2) #6
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.64, i32 noundef %103) #7
  br label %110

110:                                              ; preds = %108, %105, %100
  %111 = load ptr, ptr %21, align 4
  %112 = getelementptr i8, ptr %111, i32 -8
  %113 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %112, ptr noundef nonnull @rm68200_init_sequence.d.11, i32 noundef 2) #6
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.64, i32 noundef %113) #7
  br label %120

120:                                              ; preds = %118, %115, %110
  %121 = load ptr, ptr %21, align 4
  %122 = getelementptr i8, ptr %121, i32 -8
  %123 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %122, ptr noundef nonnull @rm68200_init_sequence.d.12, i32 noundef 2) #6
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.64, i32 noundef %123) #7
  br label %130

130:                                              ; preds = %128, %125, %120
  %131 = load ptr, ptr %21, align 4
  %132 = getelementptr i8, ptr %131, i32 -8
  %133 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %132, ptr noundef nonnull @rm68200_init_sequence.d.13, i32 noundef 2) #6
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.64, i32 noundef %133) #7
  br label %140

140:                                              ; preds = %138, %135, %130
  %141 = load ptr, ptr %21, align 4
  %142 = getelementptr i8, ptr %141, i32 -8
  %143 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %142, ptr noundef nonnull @rm68200_init_sequence.d.14, i32 noundef 2) #6
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.64, i32 noundef %143) #7
  br label %150

150:                                              ; preds = %148, %145, %140
  %151 = load ptr, ptr %21, align 4
  %152 = getelementptr i8, ptr %151, i32 -8
  %153 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %152, ptr noundef nonnull @rm68200_init_sequence.d.15, i32 noundef 2) #6
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.64, i32 noundef %153) #7
  br label %160

160:                                              ; preds = %158, %155, %150
  %161 = load ptr, ptr %21, align 4
  %162 = getelementptr i8, ptr %161, i32 -8
  %163 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %162, ptr noundef nonnull @rm68200_init_sequence.d.16, i32 noundef 2) #6
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.64, i32 noundef %163) #7
  br label %170

170:                                              ; preds = %168, %165, %160
  %171 = load ptr, ptr %21, align 4
  %172 = getelementptr i8, ptr %171, i32 -8
  %173 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %172, ptr noundef nonnull @rm68200_init_sequence.d.17, i32 noundef 2) #6
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.64, i32 noundef %173) #7
  br label %180

180:                                              ; preds = %178, %175, %170
  %181 = load ptr, ptr %21, align 4
  %182 = getelementptr i8, ptr %181, i32 -8
  %183 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %182, ptr noundef nonnull @rm68200_init_sequence.d.18, i32 noundef 3) #6
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.64, i32 noundef %183) #7
  br label %190

190:                                              ; preds = %188, %185, %180
  %191 = load ptr, ptr %21, align 4
  %192 = getelementptr i8, ptr %191, i32 -8
  %193 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %192, ptr noundef nonnull @rm68200_init_sequence.d.19, i32 noundef 3) #6
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.64, i32 noundef %193) #7
  br label %200

200:                                              ; preds = %198, %195, %190
  %201 = load ptr, ptr %21, align 4
  %202 = getelementptr i8, ptr %201, i32 -8
  %203 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %202, ptr noundef nonnull @rm68200_init_sequence.d.20, i32 noundef 2) #6
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.64, i32 noundef %203) #7
  br label %210

210:                                              ; preds = %208, %205, %200
  %211 = load ptr, ptr %21, align 4
  %212 = getelementptr i8, ptr %211, i32 -8
  %213 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %212, ptr noundef nonnull @rm68200_init_sequence.d.21, i32 noundef 2) #6
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.64, i32 noundef %213) #7
  br label %220

220:                                              ; preds = %218, %215, %210
  %221 = load ptr, ptr %21, align 4
  %222 = getelementptr i8, ptr %221, i32 -8
  %223 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %222, ptr noundef nonnull @rm68200_init_sequence.d.22, i32 noundef 2) #6
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.64, i32 noundef %223) #7
  br label %230

230:                                              ; preds = %228, %225, %220
  %231 = load ptr, ptr %21, align 4
  %232 = getelementptr i8, ptr %231, i32 -8
  %233 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %232, ptr noundef nonnull @rm68200_init_sequence.d.23, i32 noundef 2) #6
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.64, i32 noundef %233) #7
  br label %240

240:                                              ; preds = %238, %235, %230
  %241 = load ptr, ptr %21, align 4
  %242 = getelementptr i8, ptr %241, i32 -8
  %243 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %242, ptr noundef nonnull @rm68200_init_sequence.d.24, i32 noundef 2) #6
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %249, ptr noundef nonnull @.str.64, i32 noundef %243) #7
  br label %250

250:                                              ; preds = %248, %245, %240
  %251 = load ptr, ptr %21, align 4
  %252 = getelementptr i8, ptr %251, i32 -8
  %253 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %252, ptr noundef nonnull @rm68200_init_sequence.d.25, i32 noundef 4) #6
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %255
  %259 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %259, ptr noundef nonnull @.str.64, i32 noundef %253) #7
  br label %260

260:                                              ; preds = %258, %255, %250
  br label %261

261:                                              ; preds = %276, %260
  %262 = phi i32 [ %277, %276 ], [ 0, %260 ]
  %263 = trunc i32 %262 to i8
  %264 = add nuw nsw i8 %263, 7
  %265 = getelementptr [7 x i8], ptr @rm68200_init_sequence.d.26, i32 0, i32 %262
  %266 = load i8, ptr %265, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #6
  store i8 %266, ptr %19, align 1
  %267 = load ptr, ptr %21, align 4
  %268 = getelementptr i8, ptr %267, i32 -8
  %269 = call i32 @mipi_dsi_dcs_write(ptr noundef %268, i8 noundef zeroext %264, ptr noundef nonnull %19, i32 noundef 1) #6
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %261
  %272 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %275, ptr noundef nonnull @.str.65, i32 noundef %269) #7
  br label %276

276:                                              ; preds = %274, %271, %261
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #6
  %277 = add nuw nsw i32 %262, 1
  %278 = icmp eq i32 %277, 7
  br i1 %278, label %279, label %261

279:                                              ; preds = %294, %276
  %280 = phi i32 [ %295, %294 ], [ 0, %276 ]
  %281 = trunc i32 %280 to i8
  %282 = add nuw nsw i8 %281, 14
  %283 = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.27, i32 0, i32 %280
  %284 = load i8, ptr %283, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #6
  store i8 %284, ptr %18, align 1
  %285 = load ptr, ptr %21, align 4
  %286 = getelementptr i8, ptr %285, i32 -8
  %287 = call i32 @mipi_dsi_dcs_write(ptr noundef %286, i8 noundef zeroext %282, ptr noundef nonnull %18, i32 noundef 1) #6
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %279
  %290 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.65, i32 noundef %287) #7
  br label %294

294:                                              ; preds = %292, %289, %279
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #6
  %295 = add nuw nsw i32 %280, 1
  %296 = icmp eq i32 %295, 9
  br i1 %296, label %297, label %279

297:                                              ; preds = %312, %294
  %298 = phi i32 [ %313, %312 ], [ 0, %294 ]
  %299 = trunc i32 %298 to i8
  %300 = add nuw nsw i8 %299, 23
  %301 = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.28, i32 0, i32 %298
  %302 = load i8, ptr %301, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #6
  store i8 %302, ptr %17, align 1
  %303 = load ptr, ptr %21, align 4
  %304 = getelementptr i8, ptr %303, i32 -8
  %305 = call i32 @mipi_dsi_dcs_write(ptr noundef %304, i8 noundef zeroext %300, ptr noundef nonnull %17, i32 noundef 1) #6
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %297
  %308 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %311, ptr noundef nonnull @.str.65, i32 noundef %305) #7
  br label %312

312:                                              ; preds = %310, %307, %297
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #6
  %313 = add nuw nsw i32 %298, 1
  %314 = icmp eq i32 %313, 9
  br i1 %314, label %315, label %297

315:                                              ; preds = %312
  %316 = load ptr, ptr %21, align 4
  %317 = getelementptr i8, ptr %316, i32 -8
  %318 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %317, ptr noundef nonnull @rm68200_init_sequence.d.29, i32 noundef 11) #6
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %320
  %324 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %324, ptr noundef nonnull @.str.64, i32 noundef %318) #7
  br label %325

325:                                              ; preds = %323, %320, %315
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #6
  store i8 7, ptr %16, align 1
  %326 = load ptr, ptr %21, align 4
  %327 = getelementptr i8, ptr %326, i32 -8
  %328 = call i32 @mipi_dsi_dcs_write(ptr noundef %327, i8 noundef zeroext 42, ptr noundef nonnull %16, i32 noundef 1) #6
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %325
  %331 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.65, i32 noundef %328) #7
  br label %335

335:                                              ; preds = %333, %330, %325
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #6
  store i8 8, ptr %16, align 1
  %336 = load ptr, ptr %21, align 4
  %337 = getelementptr i8, ptr %336, i32 -8
  %338 = call i32 @mipi_dsi_dcs_write(ptr noundef %337, i8 noundef zeroext 43, ptr noundef nonnull %16, i32 noundef 1) #6
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %335
  %341 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %344, ptr noundef nonnull @.str.65, i32 noundef %338) #7
  br label %345

345:                                              ; preds = %343, %340, %335
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #6
  %346 = load ptr, ptr %21, align 4
  %347 = getelementptr i8, ptr %346, i32 -8
  %348 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %347, ptr noundef nonnull @rm68200_init_sequence.d.31, i32 noundef 2) #6
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %345
  %351 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %354, ptr noundef nonnull @.str.64, i32 noundef %348) #7
  br label %355

355:                                              ; preds = %353, %350, %345
  %356 = load ptr, ptr %21, align 4
  %357 = getelementptr i8, ptr %356, i32 -8
  %358 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %357, ptr noundef nonnull @rm68200_init_sequence.d.32, i32 noundef 9) #6
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %355
  %361 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %360
  %364 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %364, ptr noundef nonnull @.str.64, i32 noundef %358) #7
  br label %365

365:                                              ; preds = %363, %360, %355
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #6
  store i8 3, ptr %15, align 1
  %366 = load ptr, ptr %21, align 4
  %367 = getelementptr i8, ptr %366, i32 -8
  %368 = call i32 @mipi_dsi_dcs_write(ptr noundef %367, i8 noundef zeroext 55, ptr noundef nonnull %15, i32 noundef 1) #6
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %365
  %371 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.65, i32 noundef %368) #7
  br label %375

375:                                              ; preds = %373, %370, %365
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #6
  store i8 4, ptr %15, align 1
  %376 = load ptr, ptr %21, align 4
  %377 = getelementptr i8, ptr %376, i32 -8
  %378 = call i32 @mipi_dsi_dcs_write(ptr noundef %377, i8 noundef zeroext 56, ptr noundef nonnull %15, i32 noundef 1) #6
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %375
  %381 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %385, label %383

383:                                              ; preds = %380
  %384 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %384, ptr noundef nonnull @.str.65, i32 noundef %378) #7
  br label %385

385:                                              ; preds = %383, %380, %375
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #6
  store i8 5, ptr %15, align 1
  %386 = load ptr, ptr %21, align 4
  %387 = getelementptr i8, ptr %386, i32 -8
  %388 = call i32 @mipi_dsi_dcs_write(ptr noundef %387, i8 noundef zeroext 57, ptr noundef nonnull %15, i32 noundef 1) #6
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %385
  %391 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %390
  %394 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %394, ptr noundef nonnull @.str.65, i32 noundef %388) #7
  br label %395

395:                                              ; preds = %393, %390, %385
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #6
  store i8 6, ptr %15, align 1
  %396 = load ptr, ptr %21, align 4
  %397 = getelementptr i8, ptr %396, i32 -8
  %398 = call i32 @mipi_dsi_dcs_write(ptr noundef %397, i8 noundef zeroext 58, ptr noundef nonnull %15, i32 noundef 1) #6
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %400
  %404 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %404, ptr noundef nonnull @.str.65, i32 noundef %398) #7
  br label %405

405:                                              ; preds = %403, %400, %395
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #6
  store i8 0, ptr %15, align 1
  %406 = load ptr, ptr %21, align 4
  %407 = getelementptr i8, ptr %406, i32 -8
  %408 = call i32 @mipi_dsi_dcs_write(ptr noundef %407, i8 noundef zeroext 59, ptr noundef nonnull %15, i32 noundef 1) #6
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %405
  %411 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %410
  %414 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %414, ptr noundef nonnull @.str.65, i32 noundef %408) #7
  br label %415

415:                                              ; preds = %413, %410, %405
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #6
  %416 = load ptr, ptr %21, align 4
  %417 = getelementptr i8, ptr %416, i32 -8
  %418 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %417, ptr noundef nonnull @rm68200_init_sequence.d.34, i32 noundef 2) #6
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %415
  %421 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %425, label %423

423:                                              ; preds = %420
  %424 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %424, ptr noundef nonnull @.str.64, i32 noundef %418) #7
  br label %425

425:                                              ; preds = %423, %420, %415
  %426 = load ptr, ptr %21, align 4
  %427 = getelementptr i8, ptr %426, i32 -8
  %428 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %427, ptr noundef nonnull @rm68200_init_sequence.d.35, i32 noundef 6) #6
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %425
  %431 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %435, label %433

433:                                              ; preds = %430
  %434 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %434, ptr noundef nonnull @.str.64, i32 noundef %428) #7
  br label %435

435:                                              ; preds = %433, %430, %425
  %436 = load ptr, ptr %21, align 4
  %437 = getelementptr i8, ptr %436, i32 -8
  %438 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %437, ptr noundef nonnull @rm68200_init_sequence.d.36, i32 noundef 12) #6
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %435
  %441 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %440
  %444 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %444, ptr noundef nonnull @.str.64, i32 noundef %438) #7
  br label %445

445:                                              ; preds = %443, %440, %435
  %446 = load ptr, ptr %21, align 4
  %447 = getelementptr i8, ptr %446, i32 -8
  %448 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %447, ptr noundef nonnull @rm68200_init_sequence.d.37, i32 noundef 9) #6
  %449 = icmp slt i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %445
  %451 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %455, label %453

453:                                              ; preds = %450
  %454 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %454, ptr noundef nonnull @.str.64, i32 noundef %448) #7
  br label %455

455:                                              ; preds = %453, %450, %445
  %456 = load ptr, ptr %21, align 4
  %457 = getelementptr i8, ptr %456, i32 -8
  %458 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %457, ptr noundef nonnull @rm68200_init_sequence.d.38, i32 noundef 4) #6
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %460, label %465

460:                                              ; preds = %455
  %461 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %465, label %463

463:                                              ; preds = %460
  %464 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %464, ptr noundef nonnull @.str.64, i32 noundef %458) #7
  br label %465

465:                                              ; preds = %463, %460, %455
  %466 = load ptr, ptr %21, align 4
  %467 = getelementptr i8, ptr %466, i32 -8
  %468 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %467, ptr noundef nonnull @rm68200_init_sequence.d.39, i32 noundef 6) #6
  %469 = icmp slt i32 %468, 0
  br i1 %469, label %470, label %475

470:                                              ; preds = %465
  %471 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %474, ptr noundef nonnull @.str.64, i32 noundef %468) #7
  br label %475

475:                                              ; preds = %473, %470, %465
  %476 = load ptr, ptr %21, align 4
  %477 = getelementptr i8, ptr %476, i32 -8
  %478 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %477, ptr noundef nonnull @rm68200_init_sequence.d.40, i32 noundef 14) #6
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %475
  %481 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %485, label %483

483:                                              ; preds = %480
  %484 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %484, ptr noundef nonnull @.str.64, i32 noundef %478) #7
  br label %485

485:                                              ; preds = %483, %480, %475
  %486 = load ptr, ptr %21, align 4
  %487 = getelementptr i8, ptr %486, i32 -8
  %488 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %487, ptr noundef nonnull @rm68200_init_sequence.d.41, i32 noundef 5) #6
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %495

490:                                              ; preds = %485
  %491 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %495, label %493

493:                                              ; preds = %490
  %494 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %494, ptr noundef nonnull @.str.64, i32 noundef %488) #7
  br label %495

495:                                              ; preds = %493, %490, %485
  %496 = load ptr, ptr %21, align 4
  %497 = getelementptr i8, ptr %496, i32 -8
  %498 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %497, ptr noundef nonnull @rm68200_init_sequence.d.42, i32 noundef 4) #6
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %495
  %501 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %505, label %503

503:                                              ; preds = %500
  %504 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %504, ptr noundef nonnull @.str.64, i32 noundef %498) #7
  br label %505

505:                                              ; preds = %503, %500, %495
  %506 = load ptr, ptr %21, align 4
  %507 = getelementptr i8, ptr %506, i32 -8
  %508 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %507, ptr noundef nonnull @rm68200_init_sequence.d.43, i32 noundef 9) #6
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %505
  %511 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %515, label %513

513:                                              ; preds = %510
  %514 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %514, ptr noundef nonnull @.str.64, i32 noundef %508) #7
  br label %515

515:                                              ; preds = %513, %510, %505
  %516 = load ptr, ptr %21, align 4
  %517 = getelementptr i8, ptr %516, i32 -8
  %518 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %517, ptr noundef nonnull @rm68200_init_sequence.d.44, i32 noundef 3) #6
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %515
  %521 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %525, label %523

523:                                              ; preds = %520
  %524 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %524, ptr noundef nonnull @.str.64, i32 noundef %518) #7
  br label %525

525:                                              ; preds = %523, %520, %515
  br label %526

526:                                              ; preds = %541, %525
  %527 = phi i32 [ %542, %541 ], [ 0, %525 ]
  %528 = trunc i32 %527 to i8
  %529 = add nuw i8 %528, 126
  %530 = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.45, i32 0, i32 %527
  %531 = load i8, ptr %530, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #6
  store i8 %531, ptr %14, align 1
  %532 = load ptr, ptr %21, align 4
  %533 = getelementptr i8, ptr %532, i32 -8
  %534 = call i32 @mipi_dsi_dcs_write(ptr noundef %533, i8 noundef zeroext %529, ptr noundef nonnull %14, i32 noundef 1) #6
  %535 = icmp slt i32 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %526
  %537 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %541, label %539

539:                                              ; preds = %536
  %540 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %540, ptr noundef nonnull @.str.65, i32 noundef %534) #7
  br label %541

541:                                              ; preds = %539, %536, %526
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #6
  %542 = add nuw nsw i32 %527, 1
  %543 = icmp eq i32 %542, 9
  br i1 %543, label %544, label %526

544:                                              ; preds = %559, %541
  %545 = phi i32 [ %560, %559 ], [ 0, %541 ]
  %546 = trunc i32 %545 to i8
  %547 = add nuw nsw i8 %546, -121
  %548 = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.46, i32 0, i32 %545
  %549 = load i8, ptr %548, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #6
  store i8 %549, ptr %13, align 1
  %550 = load ptr, ptr %21, align 4
  %551 = getelementptr i8, ptr %550, i32 -8
  %552 = call i32 @mipi_dsi_dcs_write(ptr noundef %551, i8 noundef zeroext %547, ptr noundef nonnull %13, i32 noundef 1) #6
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %554, label %559

554:                                              ; preds = %544
  %555 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %559, label %557

557:                                              ; preds = %554
  %558 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %558, ptr noundef nonnull @.str.65, i32 noundef %552) #7
  br label %559

559:                                              ; preds = %557, %554, %544
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #6
  %560 = add nuw nsw i32 %545, 1
  %561 = icmp eq i32 %560, 10
  br i1 %561, label %562, label %544

562:                                              ; preds = %577, %559
  %563 = phi i32 [ %578, %577 ], [ 0, %559 ]
  %564 = trunc i32 %563 to i8
  %565 = add nuw nsw i8 %564, -111
  %566 = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.47, i32 0, i32 %563
  %567 = load i8, ptr %566, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #6
  store i8 %567, ptr %12, align 1
  %568 = load ptr, ptr %21, align 4
  %569 = getelementptr i8, ptr %568, i32 -8
  %570 = call i32 @mipi_dsi_dcs_write(ptr noundef %569, i8 noundef zeroext %565, ptr noundef nonnull %12, i32 noundef 1) #6
  %571 = icmp slt i32 %570, 0
  br i1 %571, label %572, label %577

572:                                              ; preds = %562
  %573 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %577, label %575

575:                                              ; preds = %572
  %576 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %576, ptr noundef nonnull @.str.65, i32 noundef %570) #7
  br label %577

577:                                              ; preds = %575, %572, %562
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #6
  %578 = add nuw nsw i32 %563, 1
  %579 = icmp eq i32 %578, 10
  br i1 %579, label %580, label %562

580:                                              ; preds = %577
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  store i8 11, ptr %11, align 1
  %581 = load ptr, ptr %21, align 4
  %582 = getelementptr i8, ptr %581, i32 -8
  %583 = call i32 @mipi_dsi_dcs_write(ptr noundef %582, i8 noundef zeroext -101, ptr noundef nonnull %11, i32 noundef 1) #6
  %584 = icmp slt i32 %583, 0
  br i1 %584, label %585, label %590

585:                                              ; preds = %580
  %586 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %590, label %588

588:                                              ; preds = %585
  %589 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %589, ptr noundef nonnull @.str.65, i32 noundef %583) #7
  br label %590

590:                                              ; preds = %588, %585, %580
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  store i8 13, ptr %11, align 1
  %591 = load ptr, ptr %21, align 4
  %592 = getelementptr i8, ptr %591, i32 -8
  %593 = call i32 @mipi_dsi_dcs_write(ptr noundef %592, i8 noundef zeroext -100, ptr noundef nonnull %11, i32 noundef 1) #6
  %594 = icmp slt i32 %593, 0
  br i1 %594, label %595, label %600

595:                                              ; preds = %590
  %596 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %600, label %598

598:                                              ; preds = %595
  %599 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %599, ptr noundef nonnull @.str.65, i32 noundef %593) #7
  br label %600

600:                                              ; preds = %598, %595, %590
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  store i8 63, ptr %11, align 1
  %601 = load ptr, ptr %21, align 4
  %602 = getelementptr i8, ptr %601, i32 -8
  %603 = call i32 @mipi_dsi_dcs_write(ptr noundef %602, i8 noundef zeroext -99, ptr noundef nonnull %11, i32 noundef 1) #6
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %605, label %610

605:                                              ; preds = %600
  %606 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %605
  %609 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %609, ptr noundef nonnull @.str.65, i32 noundef %603) #7
  br label %610

610:                                              ; preds = %608, %605, %600
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  store i8 63, ptr %11, align 1
  %611 = load ptr, ptr %21, align 4
  %612 = getelementptr i8, ptr %611, i32 -8
  %613 = call i32 @mipi_dsi_dcs_write(ptr noundef %612, i8 noundef zeroext -98, ptr noundef nonnull %11, i32 noundef 1) #6
  %614 = icmp slt i32 %613, 0
  br i1 %614, label %615, label %620

615:                                              ; preds = %610
  %616 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %620, label %618

618:                                              ; preds = %615
  %619 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %619, ptr noundef nonnull @.str.65, i32 noundef %613) #7
  br label %620

620:                                              ; preds = %618, %615, %610
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  store i8 63, ptr %11, align 1
  %621 = load ptr, ptr %21, align 4
  %622 = getelementptr i8, ptr %621, i32 -8
  %623 = call i32 @mipi_dsi_dcs_write(ptr noundef %622, i8 noundef zeroext -97, ptr noundef nonnull %11, i32 noundef 1) #6
  %624 = icmp slt i32 %623, 0
  br i1 %624, label %625, label %630

625:                                              ; preds = %620
  %626 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %630, label %628

628:                                              ; preds = %625
  %629 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %629, ptr noundef nonnull @.str.65, i32 noundef %623) #7
  br label %630

630:                                              ; preds = %628, %625, %620
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  store i8 63, ptr %11, align 1
  %631 = load ptr, ptr %21, align 4
  %632 = getelementptr i8, ptr %631, i32 -8
  %633 = call i32 @mipi_dsi_dcs_write(ptr noundef %632, i8 noundef zeroext -96, ptr noundef nonnull %11, i32 noundef 1) #6
  %634 = icmp slt i32 %633, 0
  br i1 %634, label %635, label %640

635:                                              ; preds = %630
  %636 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %640, label %638

638:                                              ; preds = %635
  %639 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %639, ptr noundef nonnull @.str.65, i32 noundef %633) #7
  br label %640

640:                                              ; preds = %638, %635, %630
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  store i8 63, ptr %10, align 1
  %641 = load ptr, ptr %21, align 4
  %642 = getelementptr i8, ptr %641, i32 -8
  %643 = call i32 @mipi_dsi_dcs_write(ptr noundef %642, i8 noundef zeroext -94, ptr noundef nonnull %10, i32 noundef 1) #6
  %644 = icmp slt i32 %643, 0
  br i1 %644, label %645, label %650

645:                                              ; preds = %640
  %646 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %650, label %648

648:                                              ; preds = %645
  %649 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %649, ptr noundef nonnull @.str.65, i32 noundef %643) #7
  br label %650

650:                                              ; preds = %648, %645, %640
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  store i8 9, ptr %10, align 1
  %651 = load ptr, ptr %21, align 4
  %652 = getelementptr i8, ptr %651, i32 -8
  %653 = call i32 @mipi_dsi_dcs_write(ptr noundef %652, i8 noundef zeroext -93, ptr noundef nonnull %10, i32 noundef 1) #6
  %654 = icmp slt i32 %653, 0
  br i1 %654, label %655, label %660

655:                                              ; preds = %650
  %656 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %660, label %658

658:                                              ; preds = %655
  %659 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %659, ptr noundef nonnull @.str.65, i32 noundef %653) #7
  br label %660

660:                                              ; preds = %658, %655, %650
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  store i8 19, ptr %10, align 1
  %661 = load ptr, ptr %21, align 4
  %662 = getelementptr i8, ptr %661, i32 -8
  %663 = call i32 @mipi_dsi_dcs_write(ptr noundef %662, i8 noundef zeroext -92, ptr noundef nonnull %10, i32 noundef 1) #6
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %665, label %670

665:                                              ; preds = %660
  %666 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %670, label %668

668:                                              ; preds = %665
  %669 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %669, ptr noundef nonnull @.str.65, i32 noundef %663) #7
  br label %670

670:                                              ; preds = %668, %665, %660
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  store i8 23, ptr %10, align 1
  %671 = load ptr, ptr %21, align 4
  %672 = getelementptr i8, ptr %671, i32 -8
  %673 = call i32 @mipi_dsi_dcs_write(ptr noundef %672, i8 noundef zeroext -91, ptr noundef nonnull %10, i32 noundef 1) #6
  %674 = icmp slt i32 %673, 0
  br i1 %674, label %675, label %680

675:                                              ; preds = %670
  %676 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %680, label %678

678:                                              ; preds = %675
  %679 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %679, ptr noundef nonnull @.str.65, i32 noundef %673) #7
  br label %680

680:                                              ; preds = %678, %675, %670
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  store i8 17, ptr %10, align 1
  %681 = load ptr, ptr %21, align 4
  %682 = getelementptr i8, ptr %681, i32 -8
  %683 = call i32 @mipi_dsi_dcs_write(ptr noundef %682, i8 noundef zeroext -90, ptr noundef nonnull %10, i32 noundef 1) #6
  %684 = icmp slt i32 %683, 0
  br i1 %684, label %685, label %690

685:                                              ; preds = %680
  %686 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %690, label %688

688:                                              ; preds = %685
  %689 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %689, ptr noundef nonnull @.str.65, i32 noundef %683) #7
  br label %690

690:                                              ; preds = %688, %685, %680
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  store i8 21, ptr %10, align 1
  %691 = load ptr, ptr %21, align 4
  %692 = getelementptr i8, ptr %691, i32 -8
  %693 = call i32 @mipi_dsi_dcs_write(ptr noundef %692, i8 noundef zeroext -89, ptr noundef nonnull %10, i32 noundef 1) #6
  %694 = icmp slt i32 %693, 0
  br i1 %694, label %695, label %700

695:                                              ; preds = %690
  %696 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %700, label %698

698:                                              ; preds = %695
  %699 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %699, ptr noundef nonnull @.str.65, i32 noundef %693) #7
  br label %700

700:                                              ; preds = %698, %695, %690
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #6
  store i8 7, ptr %9, align 1
  %701 = load ptr, ptr %21, align 4
  %702 = getelementptr i8, ptr %701, i32 -8
  %703 = call i32 @mipi_dsi_dcs_write(ptr noundef %702, i8 noundef zeroext -87, ptr noundef nonnull %9, i32 noundef 1) #6
  %704 = icmp slt i32 %703, 0
  br i1 %704, label %705, label %710

705:                                              ; preds = %700
  %706 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %710, label %708

708:                                              ; preds = %705
  %709 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %709, ptr noundef nonnull @.str.65, i32 noundef %703) #7
  br label %710

710:                                              ; preds = %708, %705, %700
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #6
  store i8 3, ptr %9, align 1
  %711 = load ptr, ptr %21, align 4
  %712 = getelementptr i8, ptr %711, i32 -8
  %713 = call i32 @mipi_dsi_dcs_write(ptr noundef %712, i8 noundef zeroext -86, ptr noundef nonnull %9, i32 noundef 1) #6
  %714 = icmp slt i32 %713, 0
  br i1 %714, label %715, label %720

715:                                              ; preds = %710
  %716 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %720, label %718

718:                                              ; preds = %715
  %719 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %719, ptr noundef nonnull @.str.65, i32 noundef %713) #7
  br label %720

720:                                              ; preds = %718, %715, %710
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #6
  store i8 63, ptr %9, align 1
  %721 = load ptr, ptr %21, align 4
  %722 = getelementptr i8, ptr %721, i32 -8
  %723 = call i32 @mipi_dsi_dcs_write(ptr noundef %722, i8 noundef zeroext -85, ptr noundef nonnull %9, i32 noundef 1) #6
  %724 = icmp slt i32 %723, 0
  br i1 %724, label %725, label %730

725:                                              ; preds = %720
  %726 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %730, label %728

728:                                              ; preds = %725
  %729 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %729, ptr noundef nonnull @.str.65, i32 noundef %723) #7
  br label %730

730:                                              ; preds = %728, %725, %720
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  br label %731

731:                                              ; preds = %746, %730
  %732 = phi i32 [ %747, %746 ], [ 0, %730 ]
  %733 = trunc i32 %732 to i8
  %734 = add nuw nsw i8 %733, -84
  %735 = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.51, i32 0, i32 %732
  %736 = load i8, ptr %735, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 %736, ptr %8, align 1
  %737 = load ptr, ptr %21, align 4
  %738 = getelementptr i8, ptr %737, i32 -8
  %739 = call i32 @mipi_dsi_dcs_write(ptr noundef %738, i8 noundef zeroext %734, ptr noundef nonnull %8, i32 noundef 1) #6
  %740 = icmp slt i32 %739, 0
  br i1 %740, label %741, label %746

741:                                              ; preds = %731
  %742 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %746, label %744

744:                                              ; preds = %741
  %745 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %745, ptr noundef nonnull @.str.65, i32 noundef %739) #7
  br label %746

746:                                              ; preds = %744, %741, %731
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  %747 = add nuw nsw i32 %732, 1
  %748 = icmp eq i32 %747, 9
  br i1 %748, label %749, label %731

749:                                              ; preds = %764, %746
  %750 = phi i32 [ %765, %764 ], [ 0, %746 ]
  %751 = trunc i32 %750 to i8
  %752 = add nuw nsw i8 %751, -75
  %753 = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.52, i32 0, i32 %750
  %754 = load i8, ptr %753, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 %754, ptr %7, align 1
  %755 = load ptr, ptr %21, align 4
  %756 = getelementptr i8, ptr %755, i32 -8
  %757 = call i32 @mipi_dsi_dcs_write(ptr noundef %756, i8 noundef zeroext %752, ptr noundef nonnull %7, i32 noundef 1) #6
  %758 = icmp slt i32 %757, 0
  br i1 %758, label %759, label %764

759:                                              ; preds = %749
  %760 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %764, label %762

762:                                              ; preds = %759
  %763 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %763, ptr noundef nonnull @.str.65, i32 noundef %757) #7
  br label %764

764:                                              ; preds = %762, %759, %749
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  %765 = add nuw nsw i32 %750, 1
  %766 = icmp eq i32 %765, 10
  br i1 %766, label %767, label %749

767:                                              ; preds = %782, %764
  %768 = phi i32 [ %783, %782 ], [ 0, %764 ]
  %769 = trunc i32 %768 to i8
  %770 = add nuw nsw i8 %769, -65
  %771 = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.53, i32 0, i32 %768
  %772 = load i8, ptr %771, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 %772, ptr %6, align 1
  %773 = load ptr, ptr %21, align 4
  %774 = getelementptr i8, ptr %773, i32 -8
  %775 = call i32 @mipi_dsi_dcs_write(ptr noundef %774, i8 noundef zeroext %770, ptr noundef nonnull %6, i32 noundef 1) #6
  %776 = icmp slt i32 %775, 0
  br i1 %776, label %777, label %782

777:                                              ; preds = %767
  %778 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %782, label %780

780:                                              ; preds = %777
  %781 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %781, ptr noundef nonnull @.str.65, i32 noundef %775) #7
  br label %782

782:                                              ; preds = %780, %777, %767
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %783 = add nuw nsw i32 %768, 1
  %784 = icmp eq i32 %783, 10
  br i1 %784, label %785, label %767

785:                                              ; preds = %800, %782
  %786 = phi i32 [ %801, %800 ], [ 0, %782 ]
  %787 = trunc i32 %786 to i8
  %788 = add nuw nsw i8 %787, -55
  %789 = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.54, i32 0, i32 %786
  %790 = load i8, ptr %789, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %790, ptr %5, align 1
  %791 = load ptr, ptr %21, align 4
  %792 = getelementptr i8, ptr %791, i32 -8
  %793 = call i32 @mipi_dsi_dcs_write(ptr noundef %792, i8 noundef zeroext %788, ptr noundef nonnull %5, i32 noundef 1) #6
  %794 = icmp slt i32 %793, 0
  br i1 %794, label %795, label %800

795:                                              ; preds = %785
  %796 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %800, label %798

798:                                              ; preds = %795
  %799 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %799, ptr noundef nonnull @.str.65, i32 noundef %793) #7
  br label %800

800:                                              ; preds = %798, %795, %785
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %801 = add nuw nsw i32 %786, 1
  %802 = icmp eq i32 %801, 10
  br i1 %802, label %803, label %785

803:                                              ; preds = %800
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 18, ptr %4, align 1
  %804 = load ptr, ptr %21, align 4
  %805 = getelementptr i8, ptr %804, i32 -8
  %806 = call i32 @mipi_dsi_dcs_write(ptr noundef %805, i8 noundef zeroext -45, ptr noundef nonnull %4, i32 noundef 1) #6
  %807 = icmp slt i32 %806, 0
  br i1 %807, label %808, label %813

808:                                              ; preds = %803
  %809 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %813, label %811

811:                                              ; preds = %808
  %812 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %812, ptr noundef nonnull @.str.65, i32 noundef %806) #7
  br label %813

813:                                              ; preds = %811, %808, %803
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 22, ptr %4, align 1
  %814 = load ptr, ptr %21, align 4
  %815 = getelementptr i8, ptr %814, i32 -8
  %816 = call i32 @mipi_dsi_dcs_write(ptr noundef %815, i8 noundef zeroext -44, ptr noundef nonnull %4, i32 noundef 1) #6
  %817 = icmp slt i32 %816, 0
  br i1 %817, label %818, label %823

818:                                              ; preds = %813
  %819 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %823, label %821

821:                                              ; preds = %818
  %822 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %822, ptr noundef nonnull @.str.65, i32 noundef %816) #7
  br label %823

823:                                              ; preds = %821, %818, %813
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1
  %824 = load ptr, ptr %21, align 4
  %825 = getelementptr i8, ptr %824, i32 -8
  %826 = call i32 @mipi_dsi_dcs_write(ptr noundef %825, i8 noundef zeroext -43, ptr noundef nonnull %4, i32 noundef 1) #6
  %827 = icmp slt i32 %826, 0
  br i1 %827, label %828, label %833

828:                                              ; preds = %823
  %829 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %833, label %831

831:                                              ; preds = %828
  %832 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %832, ptr noundef nonnull @.str.65, i32 noundef %826) #7
  br label %833

833:                                              ; preds = %831, %828, %823
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 4, ptr %4, align 1
  %834 = load ptr, ptr %21, align 4
  %835 = getelementptr i8, ptr %834, i32 -8
  %836 = call i32 @mipi_dsi_dcs_write(ptr noundef %835, i8 noundef zeroext -42, ptr noundef nonnull %4, i32 noundef 1) #6
  %837 = icmp slt i32 %836, 0
  br i1 %837, label %838, label %843

838:                                              ; preds = %833
  %839 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %843, label %841

841:                                              ; preds = %838
  %842 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %842, ptr noundef nonnull @.str.65, i32 noundef %836) #7
  br label %843

843:                                              ; preds = %841, %838, %833
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 63, ptr %4, align 1
  %844 = load ptr, ptr %21, align 4
  %845 = getelementptr i8, ptr %844, i32 -8
  %846 = call i32 @mipi_dsi_dcs_write(ptr noundef %845, i8 noundef zeroext -41, ptr noundef nonnull %4, i32 noundef 1) #6
  %847 = icmp slt i32 %846, 0
  br i1 %847, label %848, label %853

848:                                              ; preds = %843
  %849 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %853, label %851

851:                                              ; preds = %848
  %852 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %852, ptr noundef nonnull @.str.65, i32 noundef %846) #7
  br label %853

853:                                              ; preds = %851, %848, %843
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %854 = load ptr, ptr %21, align 4
  %855 = getelementptr i8, ptr %854, i32 -8
  %856 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %855, ptr noundef nonnull @rm68200_init_sequence.d.56, i32 noundef 2) #6
  %857 = icmp slt i32 %856, 0
  br i1 %857, label %858, label %863

858:                                              ; preds = %853
  %859 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %863, label %861

861:                                              ; preds = %858
  %862 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %862, ptr noundef nonnull @.str.64, i32 noundef %856) #7
  br label %863

863:                                              ; preds = %861, %858, %853
  %864 = load ptr, ptr %21, align 4
  %865 = getelementptr i8, ptr %864, i32 -8
  %866 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %865, ptr noundef nonnull @rm68200_init_sequence.d.57, i32 noundef 2) #6
  %867 = icmp slt i32 %866, 0
  br i1 %867, label %868, label %873

868:                                              ; preds = %863
  %869 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %873, label %871

871:                                              ; preds = %868
  %872 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %872, ptr noundef nonnull @.str.64, i32 noundef %866) #7
  br label %873

873:                                              ; preds = %871, %868, %863
  %874 = load ptr, ptr %21, align 4
  %875 = getelementptr i8, ptr %874, i32 -8
  %876 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %875, ptr noundef nonnull @rm68200_init_sequence.d.58, i32 noundef 2) #6
  %877 = icmp slt i32 %876, 0
  br i1 %877, label %878, label %883

878:                                              ; preds = %873
  %879 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %883, label %881

881:                                              ; preds = %878
  %882 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %882, ptr noundef nonnull @.str.64, i32 noundef %876) #7
  br label %883

883:                                              ; preds = %881, %878, %873
  %884 = load ptr, ptr %21, align 4
  %885 = getelementptr i8, ptr %884, i32 -8
  %886 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %885, ptr noundef nonnull @rm68200_init_sequence.d.59, i32 noundef 2) #6
  %887 = icmp slt i32 %886, 0
  br i1 %887, label %888, label %893

888:                                              ; preds = %883
  %889 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %893, label %891

891:                                              ; preds = %888
  %892 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %892, ptr noundef nonnull @.str.64, i32 noundef %886) #7
  br label %893

893:                                              ; preds = %891, %888, %883
  %894 = load ptr, ptr %21, align 4
  %895 = getelementptr i8, ptr %894, i32 -8
  %896 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %895, ptr noundef nonnull @rm68200_init_sequence.d.60, i32 noundef 2) #6
  %897 = icmp slt i32 %896, 0
  br i1 %897, label %898, label %903

898:                                              ; preds = %893
  %899 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %903, label %901

901:                                              ; preds = %898
  %902 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %902, ptr noundef nonnull @.str.64, i32 noundef %896) #7
  br label %903

903:                                              ; preds = %901, %898, %893
  br label %904

904:                                              ; preds = %919, %903
  %905 = phi i32 [ %920, %919 ], [ 0, %903 ]
  %906 = trunc i32 %905 to i8
  %907 = add nuw nsw i8 %906, 96
  %908 = getelementptr [16 x i8], ptr @rm68200_init_sequence.d.62, i32 0, i32 %905
  %909 = load i8, ptr %908, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 %909, ptr %3, align 1
  %910 = load ptr, ptr %21, align 4
  %911 = getelementptr i8, ptr %910, i32 -8
  %912 = call i32 @mipi_dsi_dcs_write(ptr noundef %911, i8 noundef zeroext %907, ptr noundef nonnull %3, i32 noundef 1) #6
  %913 = icmp slt i32 %912, 0
  br i1 %913, label %914, label %919

914:                                              ; preds = %904
  %915 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %919, label %917

917:                                              ; preds = %914
  %918 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %918, ptr noundef nonnull @.str.65, i32 noundef %912) #7
  br label %919

919:                                              ; preds = %917, %914, %904
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %920 = add nuw nsw i32 %905, 1
  %921 = icmp eq i32 %920, 16
  br i1 %921, label %922, label %904

922:                                              ; preds = %937, %919
  %923 = phi i32 [ %938, %937 ], [ 0, %919 ]
  %924 = trunc i32 %923 to i8
  %925 = add nuw nsw i8 %924, 112
  %926 = getelementptr [16 x i8], ptr @rm68200_init_sequence.d.62, i32 0, i32 %923
  %927 = load i8, ptr %926, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 %927, ptr %2, align 1
  %928 = load ptr, ptr %21, align 4
  %929 = getelementptr i8, ptr %928, i32 -8
  %930 = call i32 @mipi_dsi_dcs_write(ptr noundef %929, i8 noundef zeroext %925, ptr noundef nonnull %2, i32 noundef 1) #6
  %931 = icmp slt i32 %930, 0
  br i1 %931, label %932, label %937

932:                                              ; preds = %922
  %933 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %937, label %935

935:                                              ; preds = %932
  %936 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %936, ptr noundef nonnull @.str.65, i32 noundef %930) #7
  br label %937

937:                                              ; preds = %935, %932, %922
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %938 = add nuw nsw i32 %923, 1
  %939 = icmp eq i32 %938, 16
  br i1 %939, label %940, label %922

940:                                              ; preds = %937
  %941 = load ptr, ptr %21, align 4
  %942 = getelementptr i8, ptr %941, i32 -8
  %943 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %942, ptr noundef nonnull @rm68200_init_sequence.d.63, i32 noundef 2) #6
  %944 = icmp slt i32 %943, 0
  br i1 %944, label %945, label %950

945:                                              ; preds = %940
  %946 = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %950, label %948

948:                                              ; preds = %945
  %949 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %949, ptr noundef nonnull @.str.64, i32 noundef %943) #7
  br label %950

950:                                              ; preds = %948, %945, %940
  %951 = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %23) #6
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %953, label %957

953:                                              ; preds = %950
  call void @msleep(i32 noundef 125) #6
  %954 = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %23) #6
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %957

956:                                              ; preds = %953
  call void @msleep(i32 noundef 20) #6
  store i8 1, ptr %24, align 4
  br label %957

957:                                              ; preds = %956, %953, %950, %32, %1
  %958 = phi i32 [ %30, %32 ], [ 0, %956 ], [ 0, %1 ], [ %951, %950 ], [ %954, %953 ]
  ret i32 %958
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rm68200_enable(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 33
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i8 1, ptr %2, align 1
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rm68200_disable(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 33
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 1
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rm68200_unprepare(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = getelementptr i8, ptr %0, i32 32
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %4) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.66, i32 noundef %9) #7
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %4) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.67, i32 noundef %14) #7
  br label %18

18:                                               ; preds = %16, %13
  tail call void @msleep(i32 noundef 120) #6
  %19 = getelementptr i8, ptr %0, i32 24
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %20, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr i8, ptr %0, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regulator_disable(ptr noundef %25) #6
  store i8 0, ptr %5, align 4
  br label %27

27:                                               ; preds = %23, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rm68200_get_modes(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull @default_mode) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.68, i32 noundef 720, i32 noundef 1280, i32 noundef %8) #7
  br label %19

9:                                                ; preds = %2
  tail call void @drm_mode_set_name(ptr noundef nonnull %4) #6
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 28
  store i8 72, ptr %10, align 2
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %4) #6
  %11 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 26
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 27
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %9, %6
  %20 = phi i32 [ 1, %9 ], [ -12, %6 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i8 0, i8 2}
