; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-orisetech-otm8009a.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.otm8009a = type { ptr, %struct.drm_panel, ptr, ptr, ptr, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@orisetech_otm8009a_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"orisetech,otm8009a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author260 = internal constant [46 x i8] c"author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [46 x i8] c"author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [62 x i8] c"description=DRM driver for Orise Tech OTM8009A MIPI DSI panel\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@orisetech_otm8009a_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orisetech_otm8009a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @otm8009a_probe, ptr @otm8009a_remove, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [25 x i8] c"panel-orisetech-otm8009a\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot get reset-gpio\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to request regulator: %d\0A\00", align 1
@otm8009a_drm_funcs = internal constant %struct.drm_panel_funcs { ptr @otm8009a_prepare, ptr @otm8009a_enable, ptr @otm8009a_disable, ptr @otm8009a_unprepare, ptr @otm8009a_get_modes, ptr null }, align 4
@otm8009a_backlight_ops = internal constant %struct.backlight_ops { i32 0, ptr @otm8009a_backlight_update_status, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to register backlight: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"mipi_dsi_attach failed. Is host ready?\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@otm8009a_init_sequence.d = internal constant [2 x i8] zeroinitializer, align 1
@otm8009a_init_sequence.d.8 = internal constant [4 x i8] c"\FF\80\09\01", align 1
@otm8009a_init_sequence.d.9 = internal constant [2 x i8] c"\00\80", align 1
@otm8009a_init_sequence.d.10 = internal constant [3 x i8] c"\FF\80\09", align 1
@otm8009a_init_sequence.d.11 = internal constant [2 x i8] c"\00\80", align 1
@otm8009a_init_sequence.d.12 = internal constant [2 x i8] c"\C40", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@otm8009a_init_sequence.d.13 = internal constant [2 x i8] c"\00\8A", align 1
@otm8009a_init_sequence.d.14 = internal constant [2 x i8] c"\C4@", align 1
@otm8009a_init_sequence.d.15 = internal constant [2 x i8] c"\00\B1", align 1
@otm8009a_init_sequence.d.16 = internal constant [2 x i8] c"\C5\A9", align 1
@otm8009a_init_sequence.d.17 = internal constant [2 x i8] c"\00\91", align 1
@otm8009a_init_sequence.d.18 = internal constant [2 x i8] c"\C54", align 1
@otm8009a_init_sequence.d.19 = internal constant [2 x i8] c"\00\B4", align 1
@otm8009a_init_sequence.d.20 = internal constant [2 x i8] c"\C0P", align 1
@otm8009a_init_sequence.d.21 = internal constant [2 x i8] zeroinitializer, align 1
@otm8009a_init_sequence.d.22 = internal constant [2 x i8] c"\D9N", align 1
@otm8009a_init_sequence.d.23 = internal constant [2 x i8] c"\00\81", align 1
@otm8009a_init_sequence.d.24 = internal constant [2 x i8] c"\C1f", align 1
@otm8009a_init_sequence.d.25 = internal constant [2 x i8] c"\00\92", align 1
@otm8009a_init_sequence.d.26 = internal constant [2 x i8] c"\C5\01", align 1
@otm8009a_init_sequence.d.27 = internal constant [2 x i8] c"\00\95", align 1
@otm8009a_init_sequence.d.28 = internal constant [2 x i8] c"\C54", align 1
@otm8009a_init_sequence.d.29 = internal constant [2 x i8] c"\00\94", align 1
@otm8009a_init_sequence.d.30 = internal constant [2 x i8] c"\C53", align 1
@otm8009a_init_sequence.d.31 = internal constant [2 x i8] zeroinitializer, align 1
@otm8009a_init_sequence.d.32 = internal constant [3 x i8] c"\D8yy", align 1
@otm8009a_init_sequence.d.33 = internal constant [2 x i8] c"\00\A3", align 1
@otm8009a_init_sequence.d.34 = internal constant [2 x i8] c"\C0\1B", align 1
@otm8009a_init_sequence.d.35 = internal constant [2 x i8] c"\00\82", align 1
@otm8009a_init_sequence.d.36 = internal constant [2 x i8] c"\C5\83", align 1
@otm8009a_init_sequence.d.37 = internal constant [2 x i8] c"\00\81", align 1
@otm8009a_init_sequence.d.38 = internal constant [2 x i8] c"\C4\83", align 1
@otm8009a_init_sequence.d.39 = internal constant [2 x i8] c"\00\A1", align 1
@otm8009a_init_sequence.d.40 = internal constant [2 x i8] c"\C1\0E", align 1
@otm8009a_init_sequence.d.41 = internal constant [2 x i8] c"\00\A6", align 1
@otm8009a_init_sequence.d.42 = internal constant [3 x i8] c"\B3\00\01", align 1
@otm8009a_init_sequence.d.43 = internal constant [2 x i8] c"\00\80", align 1
@otm8009a_init_sequence.d.44 = internal constant [7 x i8] c"\CE\85\01\00\84\01\00", align 1
@otm8009a_init_sequence.d.45 = internal constant [2 x i8] c"\00\A0", align 1
@otm8009a_init_sequence.d.46 = internal constant [15 x i8] c"\CE\18\04\039\00\00\00\18\03\03:\00\00\00", align 1
@otm8009a_init_sequence.d.47 = internal constant [2 x i8] c"\00\B0", align 1
@otm8009a_init_sequence.d.48 = internal constant [15 x i8] c"\CE\18\02\03;\00\00\00\18\01\03<\00\00\00", align 1
@otm8009a_init_sequence.d.49 = internal constant [2 x i8] c"\00\C0", align 1
@otm8009a_init_sequence.d.50 = internal constant [11 x i8] c"\CF\01\01  \00\00\01\02\00\00", align 1
@otm8009a_init_sequence.d.51 = internal constant [2 x i8] c"\00\D0", align 1
@otm8009a_init_sequence.d.52 = internal constant [2 x i8] c"\CF\00", align 1
@otm8009a_init_sequence.d.53 = internal constant [2 x i8] c"\00\80", align 1
@otm8009a_init_sequence.d.54 = internal constant <{ i8, [10 x i8] }> <{ i8 -53, [10 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.55 = internal constant [2 x i8] c"\00\90", align 1
@otm8009a_init_sequence.d.56 = internal constant <{ i8, [15 x i8] }> <{ i8 -53, [15 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.57 = internal constant [2 x i8] c"\00\A0", align 1
@otm8009a_init_sequence.d.58 = internal constant <{ i8, [15 x i8] }> <{ i8 -53, [15 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.59 = internal constant [2 x i8] c"\00\B0", align 1
@otm8009a_init_sequence.d.60 = internal constant <{ i8, [10 x i8] }> <{ i8 -53, [10 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.61 = internal constant [2 x i8] c"\00\C0", align 1
@otm8009a_init_sequence.d.62 = internal constant <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 -53, i8 0, i8 4, i8 4, i8 4, i8 4, i8 4, [9 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.63 = internal constant [2 x i8] c"\00\D0", align 1
@otm8009a_init_sequence.d.64 = internal constant [16 x i8] c"\CB\00\00\00\00\00\00\04\04\04\04\04\00\00\00\00", align 1
@otm8009a_init_sequence.d.65 = internal constant [2 x i8] c"\00\E0", align 1
@otm8009a_init_sequence.d.66 = internal constant <{ i8, [10 x i8] }> <{ i8 -53, [10 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.67 = internal constant [2 x i8] c"\00\F0", align 1
@otm8009a_init_sequence.d.68 = internal constant [11 x i8] c"\CB\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@otm8009a_init_sequence.d.69 = internal constant [2 x i8] c"\00\80", align 1
@otm8009a_init_sequence.d.70 = internal constant [11 x i8] c"\CC\00&\09\0B\01%\00\00\00\00", align 1
@otm8009a_init_sequence.d.71 = internal constant [2 x i8] c"\00\90", align 1
@otm8009a_init_sequence.d.72 = internal constant [16 x i8] c"\CC\00\00\00\00\00\00\00\00\00\00\00&\0A\0C\02", align 1
@otm8009a_init_sequence.d.73 = internal constant [2 x i8] c"\00\A0", align 1
@otm8009a_init_sequence.d.74 = internal constant <{ i8, i8, [14 x i8] }> <{ i8 -52, i8 37, [14 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.75 = internal constant [2 x i8] c"\00\B0", align 1
@otm8009a_init_sequence.d.76 = internal constant [11 x i8] c"\CC\00%\0C\0A\02&\00\00\00\00", align 1
@otm8009a_init_sequence.d.77 = internal constant [2 x i8] c"\00\C0", align 1
@otm8009a_init_sequence.d.78 = internal constant [16 x i8] c"\CC\00\00\00\00\00\00\00\00\00\00\00%\0B\09\01", align 1
@otm8009a_init_sequence.d.79 = internal constant [2 x i8] c"\00\D0", align 1
@otm8009a_init_sequence.d.80 = internal constant <{ i8, i8, [14 x i8] }> <{ i8 -52, i8 38, [14 x i8] zeroinitializer }>, align 1
@otm8009a_init_sequence.d.81 = internal constant [2 x i8] c"\00\81", align 1
@otm8009a_init_sequence.d.82 = internal constant [2 x i8] c"\C5f", align 1
@otm8009a_init_sequence.d.83 = internal constant [2 x i8] c"\00\B6", align 1
@otm8009a_init_sequence.d.84 = internal constant [2 x i8] c"\F5\06", align 1
@otm8009a_init_sequence.d.85 = internal constant [2 x i8] zeroinitializer, align 1
@otm8009a_init_sequence.d.86 = internal constant [17 x i8] c"\E1\00\09\0F\0E\07\10\0B\0A\04\07\0B\08\0F\10\0A\01", align 1
@otm8009a_init_sequence.d.87 = internal constant [2 x i8] zeroinitializer, align 1
@otm8009a_init_sequence.d.88 = internal constant [17 x i8] c"\E2\00\09\0F\0E\07\10\0B\0A\04\07\0B\08\0F\10\0A\01", align 1
@otm8009a_init_sequence.d.89 = internal constant [2 x i8] zeroinitializer, align 1
@otm8009a_init_sequence.d.90 = internal constant [4 x i8] c"\FF\FF\FF\FF", align 1
@otm8009a_init_sequence.d.91 = internal constant [2 x i8] c"6\00", align 1
@otm8009a_init_sequence.d.92 = internal constant [2 x i8] c"U\00", align 1
@otm8009a_init_sequence.d.93 = internal constant [1 x i8] c",", align 1
@.str.94 = private unnamed_addr constant [34 x i8] c"mipi dsi dcs write buffer failed\0A\00", align 1
@modes = internal constant [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 29700, i16 480, i16 578, i16 610, i16 708, i16 0, i16 800, i16 815, i16 825, i16 839, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 52, i16 86, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 33000, i16 480, i16 550, i16 582, i16 654, i16 0, i16 800, i16 815, i16 825, i16 841, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 52, i16 86, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@.str.95 = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_license263], section "llvm.metadata"

@__mod_of__orisetech_otm8009a_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @orisetech_otm8009a_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @orisetech_otm8009a_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @orisetech_otm8009a_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %7 = getelementptr inbounds %struct.otm8009a, ptr %3, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %10 = ptrtoint ptr %6 to i32
  br label %49

11:                                               ; preds = %5
  %12 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %13 = getelementptr inbounds %struct.otm8009a, ptr %3, i32 0, i32 4
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = icmp eq ptr %12, inttoptr (i32 -517 to ptr)
  br i1 %16, label %49, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %18) #6
  br label %49

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
  %24 = getelementptr inbounds %struct.otm8009a, ptr %3, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %24, ptr noundef %2, ptr noundef nonnull @otm8009a_drm_funcs, i32 noundef 16) #5
  %25 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load ptr, ptr %2, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi ptr [ %29, %28 ], [ %26, %19 ]
  %32 = load ptr, ptr %0, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @devm_backlight_device_register(ptr noundef %2, ptr noundef %31, ptr noundef %33, ptr noundef nonnull %3, ptr noundef nonnull @otm8009a_backlight_ops, ptr noundef null) #5
  %35 = getelementptr inbounds %struct.otm8009a, ptr %3, i32 0, i32 2
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = ptrtoint ptr %34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %38) #6
  br label %49

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.backlight_properties, ptr %34, i32 0, i32 1
  store i32 255, ptr %40, align 4
  %41 = load ptr, ptr %35, align 4
  store i32 240, ptr %41, align 8
  %42 = load ptr, ptr %35, align 4
  %43 = getelementptr inbounds %struct.backlight_properties, ptr %42, i32 0, i32 2
  store i32 4, ptr %43, align 8
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr inbounds %struct.backlight_properties, ptr %44, i32 0, i32 4
  store i32 1, ptr %45, align 8
  tail call void @drm_panel_add(ptr noundef %24) #5
  %46 = tail call i32 @mipi_dsi_attach(ptr noundef %0) #5
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  tail call void @drm_panel_remove(ptr noundef %24) #5
  br label %49

49:                                               ; preds = %48, %39, %37, %17, %15, %9, %1
  %50 = phi i32 [ %10, %9 ], [ %38, %37 ], [ %46, %48 ], [ -12, %1 ], [ %18, %17 ], [ -517, %15 ], [ 0, %39 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.otm8009a, ptr %3, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_prepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %672

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regulator_enable(ptr noundef %8) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef %9) #6
  br label %672

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %15, i32 noundef 0) #5
  %18 = load ptr, ptr %14, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %18, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %19 = load ptr, ptr %14, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 -8
  %23 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %22, ptr noundef nonnull @otm8009a_init_sequence.d, i32 noundef 2) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.94) #6
  br label %27

27:                                               ; preds = %25, %20
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 -8
  %30 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %29, ptr noundef nonnull @otm8009a_init_sequence.d.8, i32 noundef 4) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.94) #6
  br label %34

34:                                               ; preds = %32, %27
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 -8
  %37 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %36, ptr noundef nonnull @otm8009a_init_sequence.d.9, i32 noundef 2) #5
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.94) #6
  br label %41

41:                                               ; preds = %39, %34
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i8, ptr %42, i32 -8
  %44 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %43, ptr noundef nonnull @otm8009a_init_sequence.d.10, i32 noundef 3) #5
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.94) #6
  br label %48

48:                                               ; preds = %46, %41
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr i8, ptr %49, i32 -8
  %51 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %50, ptr noundef nonnull @otm8009a_init_sequence.d.11, i32 noundef 2) #5
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.94) #6
  br label %55

55:                                               ; preds = %53, %48
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr i8, ptr %56, i32 -8
  %58 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %57, ptr noundef nonnull @otm8009a_init_sequence.d.12, i32 noundef 2) #5
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.94) #6
  br label %62

62:                                               ; preds = %60, %55
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #5
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #5
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #5
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #5
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #5
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #5
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #5
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #5
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #5
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #5
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr i8, ptr %73, i32 -8
  %75 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %74, ptr noundef nonnull @otm8009a_init_sequence.d.13, i32 noundef 2) #5
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.94) #6
  br label %79

79:                                               ; preds = %77, %62
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr i8, ptr %80, i32 -8
  %82 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %81, ptr noundef nonnull @otm8009a_init_sequence.d.14, i32 noundef 2) #5
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.94) #6
  br label %86

86:                                               ; preds = %84, %79
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #5
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #5
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #5
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #5
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #5
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #5
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #5
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #5
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #5
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #5
  %97 = load ptr, ptr %2, align 4
  %98 = getelementptr i8, ptr %97, i32 -8
  %99 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %98, ptr noundef nonnull @otm8009a_init_sequence.d.15, i32 noundef 2) #5
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.94) #6
  br label %103

103:                                              ; preds = %101, %86
  %104 = load ptr, ptr %2, align 4
  %105 = getelementptr i8, ptr %104, i32 -8
  %106 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %105, ptr noundef nonnull @otm8009a_init_sequence.d.16, i32 noundef 2) #5
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.94) #6
  br label %110

110:                                              ; preds = %108, %103
  %111 = load ptr, ptr %2, align 4
  %112 = getelementptr i8, ptr %111, i32 -8
  %113 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %112, ptr noundef nonnull @otm8009a_init_sequence.d.17, i32 noundef 2) #5
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.94) #6
  br label %117

117:                                              ; preds = %115, %110
  %118 = load ptr, ptr %2, align 4
  %119 = getelementptr i8, ptr %118, i32 -8
  %120 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %119, ptr noundef nonnull @otm8009a_init_sequence.d.18, i32 noundef 2) #5
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.94) #6
  br label %124

124:                                              ; preds = %122, %117
  %125 = load ptr, ptr %2, align 4
  %126 = getelementptr i8, ptr %125, i32 -8
  %127 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %126, ptr noundef nonnull @otm8009a_init_sequence.d.19, i32 noundef 2) #5
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %130, ptr noundef nonnull @.str.94) #6
  br label %131

131:                                              ; preds = %129, %124
  %132 = load ptr, ptr %2, align 4
  %133 = getelementptr i8, ptr %132, i32 -8
  %134 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %133, ptr noundef nonnull @otm8009a_init_sequence.d.20, i32 noundef 2) #5
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %137, ptr noundef nonnull @.str.94) #6
  br label %138

138:                                              ; preds = %136, %131
  %139 = load ptr, ptr %2, align 4
  %140 = getelementptr i8, ptr %139, i32 -8
  %141 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %140, ptr noundef nonnull @otm8009a_init_sequence.d.21, i32 noundef 2) #5
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.94) #6
  br label %145

145:                                              ; preds = %143, %138
  %146 = load ptr, ptr %2, align 4
  %147 = getelementptr i8, ptr %146, i32 -8
  %148 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %147, ptr noundef nonnull @otm8009a_init_sequence.d.22, i32 noundef 2) #5
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.94) #6
  br label %152

152:                                              ; preds = %150, %145
  %153 = load ptr, ptr %2, align 4
  %154 = getelementptr i8, ptr %153, i32 -8
  %155 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %154, ptr noundef nonnull @otm8009a_init_sequence.d.23, i32 noundef 2) #5
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.94) #6
  br label %159

159:                                              ; preds = %157, %152
  %160 = load ptr, ptr %2, align 4
  %161 = getelementptr i8, ptr %160, i32 -8
  %162 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %161, ptr noundef nonnull @otm8009a_init_sequence.d.24, i32 noundef 2) #5
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %165, ptr noundef nonnull @.str.94) #6
  br label %166

166:                                              ; preds = %164, %159
  %167 = load ptr, ptr %2, align 4
  %168 = getelementptr i8, ptr %167, i32 -8
  %169 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %168, ptr noundef nonnull @otm8009a_init_sequence.d.25, i32 noundef 2) #5
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %172, ptr noundef nonnull @.str.94) #6
  br label %173

173:                                              ; preds = %171, %166
  %174 = load ptr, ptr %2, align 4
  %175 = getelementptr i8, ptr %174, i32 -8
  %176 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %175, ptr noundef nonnull @otm8009a_init_sequence.d.26, i32 noundef 2) #5
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %179, ptr noundef nonnull @.str.94) #6
  br label %180

180:                                              ; preds = %178, %173
  %181 = load ptr, ptr %2, align 4
  %182 = getelementptr i8, ptr %181, i32 -8
  %183 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %182, ptr noundef nonnull @otm8009a_init_sequence.d.27, i32 noundef 2) #5
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.94) #6
  br label %187

187:                                              ; preds = %185, %180
  %188 = load ptr, ptr %2, align 4
  %189 = getelementptr i8, ptr %188, i32 -8
  %190 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %189, ptr noundef nonnull @otm8009a_init_sequence.d.28, i32 noundef 2) #5
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %193, ptr noundef nonnull @.str.94) #6
  br label %194

194:                                              ; preds = %192, %187
  %195 = load ptr, ptr %2, align 4
  %196 = getelementptr i8, ptr %195, i32 -8
  %197 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %196, ptr noundef nonnull @otm8009a_init_sequence.d.29, i32 noundef 2) #5
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %200, ptr noundef nonnull @.str.94) #6
  br label %201

201:                                              ; preds = %199, %194
  %202 = load ptr, ptr %2, align 4
  %203 = getelementptr i8, ptr %202, i32 -8
  %204 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %203, ptr noundef nonnull @otm8009a_init_sequence.d.30, i32 noundef 2) #5
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %207, ptr noundef nonnull @.str.94) #6
  br label %208

208:                                              ; preds = %206, %201
  %209 = load ptr, ptr %2, align 4
  %210 = getelementptr i8, ptr %209, i32 -8
  %211 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %210, ptr noundef nonnull @otm8009a_init_sequence.d.31, i32 noundef 2) #5
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %214, ptr noundef nonnull @.str.94) #6
  br label %215

215:                                              ; preds = %213, %208
  %216 = load ptr, ptr %2, align 4
  %217 = getelementptr i8, ptr %216, i32 -8
  %218 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %217, ptr noundef nonnull @otm8009a_init_sequence.d.32, i32 noundef 3) #5
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %221, ptr noundef nonnull @.str.94) #6
  br label %222

222:                                              ; preds = %220, %215
  %223 = load ptr, ptr %2, align 4
  %224 = getelementptr i8, ptr %223, i32 -8
  %225 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %224, ptr noundef nonnull @otm8009a_init_sequence.d.33, i32 noundef 2) #5
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %228, ptr noundef nonnull @.str.94) #6
  br label %229

229:                                              ; preds = %227, %222
  %230 = load ptr, ptr %2, align 4
  %231 = getelementptr i8, ptr %230, i32 -8
  %232 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %231, ptr noundef nonnull @otm8009a_init_sequence.d.34, i32 noundef 2) #5
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %235, ptr noundef nonnull @.str.94) #6
  br label %236

236:                                              ; preds = %234, %229
  %237 = load ptr, ptr %2, align 4
  %238 = getelementptr i8, ptr %237, i32 -8
  %239 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %238, ptr noundef nonnull @otm8009a_init_sequence.d.35, i32 noundef 2) #5
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %242, ptr noundef nonnull @.str.94) #6
  br label %243

243:                                              ; preds = %241, %236
  %244 = load ptr, ptr %2, align 4
  %245 = getelementptr i8, ptr %244, i32 -8
  %246 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %245, ptr noundef nonnull @otm8009a_init_sequence.d.36, i32 noundef 2) #5
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %249, ptr noundef nonnull @.str.94) #6
  br label %250

250:                                              ; preds = %248, %243
  %251 = load ptr, ptr %2, align 4
  %252 = getelementptr i8, ptr %251, i32 -8
  %253 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %252, ptr noundef nonnull @otm8009a_init_sequence.d.37, i32 noundef 2) #5
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %256, ptr noundef nonnull @.str.94) #6
  br label %257

257:                                              ; preds = %255, %250
  %258 = load ptr, ptr %2, align 4
  %259 = getelementptr i8, ptr %258, i32 -8
  %260 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %259, ptr noundef nonnull @otm8009a_init_sequence.d.38, i32 noundef 2) #5
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %263, ptr noundef nonnull @.str.94) #6
  br label %264

264:                                              ; preds = %262, %257
  %265 = load ptr, ptr %2, align 4
  %266 = getelementptr i8, ptr %265, i32 -8
  %267 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %266, ptr noundef nonnull @otm8009a_init_sequence.d.39, i32 noundef 2) #5
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %270, ptr noundef nonnull @.str.94) #6
  br label %271

271:                                              ; preds = %269, %264
  %272 = load ptr, ptr %2, align 4
  %273 = getelementptr i8, ptr %272, i32 -8
  %274 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %273, ptr noundef nonnull @otm8009a_init_sequence.d.40, i32 noundef 2) #5
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %277, ptr noundef nonnull @.str.94) #6
  br label %278

278:                                              ; preds = %276, %271
  %279 = load ptr, ptr %2, align 4
  %280 = getelementptr i8, ptr %279, i32 -8
  %281 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %280, ptr noundef nonnull @otm8009a_init_sequence.d.41, i32 noundef 2) #5
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %284, ptr noundef nonnull @.str.94) #6
  br label %285

285:                                              ; preds = %283, %278
  %286 = load ptr, ptr %2, align 4
  %287 = getelementptr i8, ptr %286, i32 -8
  %288 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %287, ptr noundef nonnull @otm8009a_init_sequence.d.42, i32 noundef 3) #5
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %285
  %291 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %291, ptr noundef nonnull @.str.94) #6
  br label %292

292:                                              ; preds = %290, %285
  %293 = load ptr, ptr %2, align 4
  %294 = getelementptr i8, ptr %293, i32 -8
  %295 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %294, ptr noundef nonnull @otm8009a_init_sequence.d.43, i32 noundef 2) #5
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %298, ptr noundef nonnull @.str.94) #6
  br label %299

299:                                              ; preds = %297, %292
  %300 = load ptr, ptr %2, align 4
  %301 = getelementptr i8, ptr %300, i32 -8
  %302 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %301, ptr noundef nonnull @otm8009a_init_sequence.d.44, i32 noundef 7) #5
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %305, ptr noundef nonnull @.str.94) #6
  br label %306

306:                                              ; preds = %304, %299
  %307 = load ptr, ptr %2, align 4
  %308 = getelementptr i8, ptr %307, i32 -8
  %309 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %308, ptr noundef nonnull @otm8009a_init_sequence.d.45, i32 noundef 2) #5
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %312, ptr noundef nonnull @.str.94) #6
  br label %313

313:                                              ; preds = %311, %306
  %314 = load ptr, ptr %2, align 4
  %315 = getelementptr i8, ptr %314, i32 -8
  %316 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %315, ptr noundef nonnull @otm8009a_init_sequence.d.46, i32 noundef 15) #5
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %319, ptr noundef nonnull @.str.94) #6
  br label %320

320:                                              ; preds = %318, %313
  %321 = load ptr, ptr %2, align 4
  %322 = getelementptr i8, ptr %321, i32 -8
  %323 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %322, ptr noundef nonnull @otm8009a_init_sequence.d.47, i32 noundef 2) #5
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %326, ptr noundef nonnull @.str.94) #6
  br label %327

327:                                              ; preds = %325, %320
  %328 = load ptr, ptr %2, align 4
  %329 = getelementptr i8, ptr %328, i32 -8
  %330 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %329, ptr noundef nonnull @otm8009a_init_sequence.d.48, i32 noundef 15) #5
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %333, ptr noundef nonnull @.str.94) #6
  br label %334

334:                                              ; preds = %332, %327
  %335 = load ptr, ptr %2, align 4
  %336 = getelementptr i8, ptr %335, i32 -8
  %337 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %336, ptr noundef nonnull @otm8009a_init_sequence.d.49, i32 noundef 2) #5
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %340, ptr noundef nonnull @.str.94) #6
  br label %341

341:                                              ; preds = %339, %334
  %342 = load ptr, ptr %2, align 4
  %343 = getelementptr i8, ptr %342, i32 -8
  %344 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %343, ptr noundef nonnull @otm8009a_init_sequence.d.50, i32 noundef 11) #5
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %347, ptr noundef nonnull @.str.94) #6
  br label %348

348:                                              ; preds = %346, %341
  %349 = load ptr, ptr %2, align 4
  %350 = getelementptr i8, ptr %349, i32 -8
  %351 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %350, ptr noundef nonnull @otm8009a_init_sequence.d.51, i32 noundef 2) #5
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %354, ptr noundef nonnull @.str.94) #6
  br label %355

355:                                              ; preds = %353, %348
  %356 = load ptr, ptr %2, align 4
  %357 = getelementptr i8, ptr %356, i32 -8
  %358 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %357, ptr noundef nonnull @otm8009a_init_sequence.d.52, i32 noundef 2) #5
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %361, ptr noundef nonnull @.str.94) #6
  br label %362

362:                                              ; preds = %360, %355
  %363 = load ptr, ptr %2, align 4
  %364 = getelementptr i8, ptr %363, i32 -8
  %365 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %364, ptr noundef nonnull @otm8009a_init_sequence.d.53, i32 noundef 2) #5
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %368, ptr noundef nonnull @.str.94) #6
  br label %369

369:                                              ; preds = %367, %362
  %370 = load ptr, ptr %2, align 4
  %371 = getelementptr i8, ptr %370, i32 -8
  %372 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %371, ptr noundef nonnull @otm8009a_init_sequence.d.54, i32 noundef 11) #5
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %375, ptr noundef nonnull @.str.94) #6
  br label %376

376:                                              ; preds = %374, %369
  %377 = load ptr, ptr %2, align 4
  %378 = getelementptr i8, ptr %377, i32 -8
  %379 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %378, ptr noundef nonnull @otm8009a_init_sequence.d.55, i32 noundef 2) #5
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %376
  %382 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %382, ptr noundef nonnull @.str.94) #6
  br label %383

383:                                              ; preds = %381, %376
  %384 = load ptr, ptr %2, align 4
  %385 = getelementptr i8, ptr %384, i32 -8
  %386 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %385, ptr noundef nonnull @otm8009a_init_sequence.d.56, i32 noundef 16) #5
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %389, ptr noundef nonnull @.str.94) #6
  br label %390

390:                                              ; preds = %388, %383
  %391 = load ptr, ptr %2, align 4
  %392 = getelementptr i8, ptr %391, i32 -8
  %393 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %392, ptr noundef nonnull @otm8009a_init_sequence.d.57, i32 noundef 2) #5
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %396, ptr noundef nonnull @.str.94) #6
  br label %397

397:                                              ; preds = %395, %390
  %398 = load ptr, ptr %2, align 4
  %399 = getelementptr i8, ptr %398, i32 -8
  %400 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %399, ptr noundef nonnull @otm8009a_init_sequence.d.58, i32 noundef 16) #5
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %397
  %403 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %403, ptr noundef nonnull @.str.94) #6
  br label %404

404:                                              ; preds = %402, %397
  %405 = load ptr, ptr %2, align 4
  %406 = getelementptr i8, ptr %405, i32 -8
  %407 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %406, ptr noundef nonnull @otm8009a_init_sequence.d.59, i32 noundef 2) #5
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %404
  %410 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %410, ptr noundef nonnull @.str.94) #6
  br label %411

411:                                              ; preds = %409, %404
  %412 = load ptr, ptr %2, align 4
  %413 = getelementptr i8, ptr %412, i32 -8
  %414 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %413, ptr noundef nonnull @otm8009a_init_sequence.d.60, i32 noundef 11) #5
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %411
  %417 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %417, ptr noundef nonnull @.str.94) #6
  br label %418

418:                                              ; preds = %416, %411
  %419 = load ptr, ptr %2, align 4
  %420 = getelementptr i8, ptr %419, i32 -8
  %421 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %420, ptr noundef nonnull @otm8009a_init_sequence.d.61, i32 noundef 2) #5
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %418
  %424 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %424, ptr noundef nonnull @.str.94) #6
  br label %425

425:                                              ; preds = %423, %418
  %426 = load ptr, ptr %2, align 4
  %427 = getelementptr i8, ptr %426, i32 -8
  %428 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %427, ptr noundef nonnull @otm8009a_init_sequence.d.62, i32 noundef 16) #5
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %425
  %431 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %431, ptr noundef nonnull @.str.94) #6
  br label %432

432:                                              ; preds = %430, %425
  %433 = load ptr, ptr %2, align 4
  %434 = getelementptr i8, ptr %433, i32 -8
  %435 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %434, ptr noundef nonnull @otm8009a_init_sequence.d.63, i32 noundef 2) #5
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %432
  %438 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %438, ptr noundef nonnull @.str.94) #6
  br label %439

439:                                              ; preds = %437, %432
  %440 = load ptr, ptr %2, align 4
  %441 = getelementptr i8, ptr %440, i32 -8
  %442 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %441, ptr noundef nonnull @otm8009a_init_sequence.d.64, i32 noundef 16) #5
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %445, ptr noundef nonnull @.str.94) #6
  br label %446

446:                                              ; preds = %444, %439
  %447 = load ptr, ptr %2, align 4
  %448 = getelementptr i8, ptr %447, i32 -8
  %449 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %448, ptr noundef nonnull @otm8009a_init_sequence.d.65, i32 noundef 2) #5
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %446
  %452 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %452, ptr noundef nonnull @.str.94) #6
  br label %453

453:                                              ; preds = %451, %446
  %454 = load ptr, ptr %2, align 4
  %455 = getelementptr i8, ptr %454, i32 -8
  %456 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %455, ptr noundef nonnull @otm8009a_init_sequence.d.66, i32 noundef 11) #5
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %453
  %459 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %459, ptr noundef nonnull @.str.94) #6
  br label %460

460:                                              ; preds = %458, %453
  %461 = load ptr, ptr %2, align 4
  %462 = getelementptr i8, ptr %461, i32 -8
  %463 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %462, ptr noundef nonnull @otm8009a_init_sequence.d.67, i32 noundef 2) #5
  %464 = icmp slt i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %460
  %466 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %466, ptr noundef nonnull @.str.94) #6
  br label %467

467:                                              ; preds = %465, %460
  %468 = load ptr, ptr %2, align 4
  %469 = getelementptr i8, ptr %468, i32 -8
  %470 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %469, ptr noundef nonnull @otm8009a_init_sequence.d.68, i32 noundef 11) #5
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %467
  %473 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %473, ptr noundef nonnull @.str.94) #6
  br label %474

474:                                              ; preds = %472, %467
  %475 = load ptr, ptr %2, align 4
  %476 = getelementptr i8, ptr %475, i32 -8
  %477 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %476, ptr noundef nonnull @otm8009a_init_sequence.d.69, i32 noundef 2) #5
  %478 = icmp slt i32 %477, 0
  br i1 %478, label %479, label %481

479:                                              ; preds = %474
  %480 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %480, ptr noundef nonnull @.str.94) #6
  br label %481

481:                                              ; preds = %479, %474
  %482 = load ptr, ptr %2, align 4
  %483 = getelementptr i8, ptr %482, i32 -8
  %484 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %483, ptr noundef nonnull @otm8009a_init_sequence.d.70, i32 noundef 11) #5
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %481
  %487 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %487, ptr noundef nonnull @.str.94) #6
  br label %488

488:                                              ; preds = %486, %481
  %489 = load ptr, ptr %2, align 4
  %490 = getelementptr i8, ptr %489, i32 -8
  %491 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %490, ptr noundef nonnull @otm8009a_init_sequence.d.71, i32 noundef 2) #5
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %488
  %494 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %494, ptr noundef nonnull @.str.94) #6
  br label %495

495:                                              ; preds = %493, %488
  %496 = load ptr, ptr %2, align 4
  %497 = getelementptr i8, ptr %496, i32 -8
  %498 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %497, ptr noundef nonnull @otm8009a_init_sequence.d.72, i32 noundef 16) #5
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %495
  %501 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %501, ptr noundef nonnull @.str.94) #6
  br label %502

502:                                              ; preds = %500, %495
  %503 = load ptr, ptr %2, align 4
  %504 = getelementptr i8, ptr %503, i32 -8
  %505 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %504, ptr noundef nonnull @otm8009a_init_sequence.d.73, i32 noundef 2) #5
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %502
  %508 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %508, ptr noundef nonnull @.str.94) #6
  br label %509

509:                                              ; preds = %507, %502
  %510 = load ptr, ptr %2, align 4
  %511 = getelementptr i8, ptr %510, i32 -8
  %512 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %511, ptr noundef nonnull @otm8009a_init_sequence.d.74, i32 noundef 16) #5
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %509
  %515 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %515, ptr noundef nonnull @.str.94) #6
  br label %516

516:                                              ; preds = %514, %509
  %517 = load ptr, ptr %2, align 4
  %518 = getelementptr i8, ptr %517, i32 -8
  %519 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %518, ptr noundef nonnull @otm8009a_init_sequence.d.75, i32 noundef 2) #5
  %520 = icmp slt i32 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %516
  %522 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %522, ptr noundef nonnull @.str.94) #6
  br label %523

523:                                              ; preds = %521, %516
  %524 = load ptr, ptr %2, align 4
  %525 = getelementptr i8, ptr %524, i32 -8
  %526 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %525, ptr noundef nonnull @otm8009a_init_sequence.d.76, i32 noundef 11) #5
  %527 = icmp slt i32 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %523
  %529 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %529, ptr noundef nonnull @.str.94) #6
  br label %530

530:                                              ; preds = %528, %523
  %531 = load ptr, ptr %2, align 4
  %532 = getelementptr i8, ptr %531, i32 -8
  %533 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %532, ptr noundef nonnull @otm8009a_init_sequence.d.77, i32 noundef 2) #5
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %530
  %536 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %536, ptr noundef nonnull @.str.94) #6
  br label %537

537:                                              ; preds = %535, %530
  %538 = load ptr, ptr %2, align 4
  %539 = getelementptr i8, ptr %538, i32 -8
  %540 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %539, ptr noundef nonnull @otm8009a_init_sequence.d.78, i32 noundef 16) #5
  %541 = icmp slt i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %537
  %543 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %543, ptr noundef nonnull @.str.94) #6
  br label %544

544:                                              ; preds = %542, %537
  %545 = load ptr, ptr %2, align 4
  %546 = getelementptr i8, ptr %545, i32 -8
  %547 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %546, ptr noundef nonnull @otm8009a_init_sequence.d.79, i32 noundef 2) #5
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %544
  %550 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %550, ptr noundef nonnull @.str.94) #6
  br label %551

551:                                              ; preds = %549, %544
  %552 = load ptr, ptr %2, align 4
  %553 = getelementptr i8, ptr %552, i32 -8
  %554 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %553, ptr noundef nonnull @otm8009a_init_sequence.d.80, i32 noundef 16) #5
  %555 = icmp slt i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %551
  %557 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %557, ptr noundef nonnull @.str.94) #6
  br label %558

558:                                              ; preds = %556, %551
  %559 = load ptr, ptr %2, align 4
  %560 = getelementptr i8, ptr %559, i32 -8
  %561 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %560, ptr noundef nonnull @otm8009a_init_sequence.d.81, i32 noundef 2) #5
  %562 = icmp slt i32 %561, 0
  br i1 %562, label %563, label %565

563:                                              ; preds = %558
  %564 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %564, ptr noundef nonnull @.str.94) #6
  br label %565

565:                                              ; preds = %563, %558
  %566 = load ptr, ptr %2, align 4
  %567 = getelementptr i8, ptr %566, i32 -8
  %568 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %567, ptr noundef nonnull @otm8009a_init_sequence.d.82, i32 noundef 2) #5
  %569 = icmp slt i32 %568, 0
  br i1 %569, label %570, label %572

570:                                              ; preds = %565
  %571 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %571, ptr noundef nonnull @.str.94) #6
  br label %572

572:                                              ; preds = %570, %565
  %573 = load ptr, ptr %2, align 4
  %574 = getelementptr i8, ptr %573, i32 -8
  %575 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %574, ptr noundef nonnull @otm8009a_init_sequence.d.83, i32 noundef 2) #5
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %572
  %578 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %578, ptr noundef nonnull @.str.94) #6
  br label %579

579:                                              ; preds = %577, %572
  %580 = load ptr, ptr %2, align 4
  %581 = getelementptr i8, ptr %580, i32 -8
  %582 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %581, ptr noundef nonnull @otm8009a_init_sequence.d.84, i32 noundef 2) #5
  %583 = icmp slt i32 %582, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %579
  %585 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %585, ptr noundef nonnull @.str.94) #6
  br label %586

586:                                              ; preds = %584, %579
  %587 = load ptr, ptr %2, align 4
  %588 = getelementptr i8, ptr %587, i32 -8
  %589 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %588, ptr noundef nonnull @otm8009a_init_sequence.d.85, i32 noundef 2) #5
  %590 = icmp slt i32 %589, 0
  br i1 %590, label %591, label %593

591:                                              ; preds = %586
  %592 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %592, ptr noundef nonnull @.str.94) #6
  br label %593

593:                                              ; preds = %591, %586
  %594 = load ptr, ptr %2, align 4
  %595 = getelementptr i8, ptr %594, i32 -8
  %596 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %595, ptr noundef nonnull @otm8009a_init_sequence.d.86, i32 noundef 17) #5
  %597 = icmp slt i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %593
  %599 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %599, ptr noundef nonnull @.str.94) #6
  br label %600

600:                                              ; preds = %598, %593
  %601 = load ptr, ptr %2, align 4
  %602 = getelementptr i8, ptr %601, i32 -8
  %603 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %602, ptr noundef nonnull @otm8009a_init_sequence.d.87, i32 noundef 2) #5
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %605, label %607

605:                                              ; preds = %600
  %606 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %606, ptr noundef nonnull @.str.94) #6
  br label %607

607:                                              ; preds = %605, %600
  %608 = load ptr, ptr %2, align 4
  %609 = getelementptr i8, ptr %608, i32 -8
  %610 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %609, ptr noundef nonnull @otm8009a_init_sequence.d.88, i32 noundef 17) #5
  %611 = icmp slt i32 %610, 0
  br i1 %611, label %612, label %614

612:                                              ; preds = %607
  %613 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %613, ptr noundef nonnull @.str.94) #6
  br label %614

614:                                              ; preds = %612, %607
  %615 = load ptr, ptr %2, align 4
  %616 = getelementptr i8, ptr %615, i32 -8
  %617 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %616, ptr noundef nonnull @otm8009a_init_sequence.d.89, i32 noundef 2) #5
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %619, label %621

619:                                              ; preds = %614
  %620 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %620, ptr noundef nonnull @.str.94) #6
  br label %621

621:                                              ; preds = %619, %614
  %622 = load ptr, ptr %2, align 4
  %623 = getelementptr i8, ptr %622, i32 -8
  %624 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %623, ptr noundef nonnull @otm8009a_init_sequence.d.90, i32 noundef 4) #5
  %625 = icmp slt i32 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %621
  %627 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %627, ptr noundef nonnull @.str.94) #6
  br label %628

628:                                              ; preds = %626, %621
  %629 = tail call i32 @mipi_dsi_dcs_nop(ptr noundef %22) #5
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %672

631:                                              ; preds = %628
  %632 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %22) #5
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %672

634:                                              ; preds = %634, %631
  %635 = phi i32 [ %636, %634 ], [ 120, %631 ]
  %636 = add nsw i32 %635, -1
  %637 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %637(i32 noundef 214748000) #5
  %638 = icmp eq i32 %636, 0
  br i1 %638, label %639, label %634

639:                                              ; preds = %634
  %640 = load ptr, ptr %2, align 4
  %641 = getelementptr i8, ptr %640, i32 -8
  %642 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %641, ptr noundef nonnull @otm8009a_init_sequence.d.91, i32 noundef 2) #5
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %644, label %646

644:                                              ; preds = %639
  %645 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %645, ptr noundef nonnull @.str.94) #6
  br label %646

646:                                              ; preds = %644, %639
  %647 = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %22, i16 noundef zeroext 0, i16 noundef zeroext 479) #5
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %672

649:                                              ; preds = %646
  %650 = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %22, i16 noundef zeroext 0, i16 noundef zeroext 799) #5
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %672

652:                                              ; preds = %649
  %653 = tail call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %22, i8 noundef zeroext 119) #5
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %655, label %672

655:                                              ; preds = %652
  tail call fastcc void @otm8009a_dcs_write_buf(ptr noundef %2, ptr noundef nonnull @otm8009a_init_sequence.d.92, i32 noundef 2) #5
  %656 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %22) #5
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %672

658:                                              ; preds = %655
  %659 = tail call i32 @mipi_dsi_dcs_nop(ptr noundef %22) #5
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %672

661:                                              ; preds = %658
  tail call fastcc void @otm8009a_dcs_write_buf(ptr noundef %2, ptr noundef nonnull @otm8009a_init_sequence.d.93, i32 noundef 1) #5
  %662 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %662(i32 noundef 214748000) #5
  %663 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %663(i32 noundef 214748000) #5
  %664 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %664(i32 noundef 214748000) #5
  %665 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %665(i32 noundef 214748000) #5
  %666 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %666(i32 noundef 214748000) #5
  %667 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %667(i32 noundef 214748000) #5
  %668 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %668(i32 noundef 214748000) #5
  %669 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %669(i32 noundef 214748000) #5
  %670 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %670(i32 noundef 214748000) #5
  %671 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %671(i32 noundef 214748000) #5
  store i8 1, ptr %3, align 4
  br label %672

672:                                              ; preds = %661, %658, %655, %652, %649, %646, %631, %628, %11, %1
  %673 = phi i32 [ %9, %11 ], [ 0, %661 ], [ 0, %1 ], [ %659, %658 ], [ %656, %655 ], [ %653, %652 ], [ %650, %649 ], [ %647, %646 ], [ %632, %631 ], [ %629, %628 ]
  ret i32 %673
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_enable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 37
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 2
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -3
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #5
  %16 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.backlight_ops, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef nonnull %7) #5
  br label %25

25:                                               ; preds = %23, %19, %9
  tail call void @mutex_unlock(ptr noundef %15) #5
  br label %26

26:                                               ; preds = %25, %5
  store i8 1, ptr %2, align 1
  br label %27

27:                                               ; preds = %26, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_disable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = getelementptr i8, ptr %0, i32 37
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.backlight_properties, ptr %10, i32 0, i32 2
  store i32 4, ptr %13, align 8
  %14 = getelementptr inbounds %struct.backlight_properties, ptr %10, i32 0, i32 3
  store i32 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.backlight_properties, ptr %10, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.backlight_device, ptr %10, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %18) #5
  %19 = getelementptr inbounds %struct.backlight_device, ptr %10, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.backlight_ops, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef nonnull %10) #5
  br label %28

28:                                               ; preds = %26, %22, %12
  tail call void @mutex_unlock(ptr noundef %18) #5
  br label %29

29:                                               ; preds = %28, %8
  %30 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %4) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %4) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @msleep(i32 noundef 120) #5
  store i8 0, ptr %5, align 1
  br label %36

36:                                               ; preds = %35, %32, %29, %1
  %37 = phi i32 [ 0, %35 ], [ 0, %1 ], [ %30, %29 ], [ %33, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_unprepare(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 36
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr i8, ptr %0, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regulator_disable(ptr noundef %12) #5
  store i8 0, ptr %2, align 4
  br label %14

14:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_get_modes(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull @modes) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ 1, %17 ]
  %8 = phi ptr [ @modes, %2 ], [ getelementptr inbounds ([2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 1), %17 ]
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr [2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 %7, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr [2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 %7, i32 6
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull %8) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.95, i32 noundef %12, i32 noundef %15, i32 noundef %16) #6
  br label %32

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 28
  store i8 72, ptr %18, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %4) #5
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %4) #5
  %19 = load ptr, ptr %1, align 8
  %20 = tail call ptr @drm_mode_duplicate(ptr noundef %19, ptr noundef getelementptr inbounds ([2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 1)) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %6, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.drm_display_mode, ptr %20, i32 0, i32 28
  store i8 64, ptr %23, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %20) #5
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %20) #5
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %20, i32 0, i32 26
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %20, i32 0, i32 27
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %22, %6
  %33 = phi i32 [ -12, %6 ], [ 2, %22 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @otm8009a_dcs_write_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %5, ptr noundef %1, i32 noundef %2) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.94) #6
  br label %10

10:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_nop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @otm8009a_backlight_update_status(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !9
  %5 = getelementptr inbounds %struct.otm8009a, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  store i8 81, ptr %2, align 2
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 -8
  %18 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 2) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.94) #6
  br label %22

22:                                               ; preds = %20, %12
  store i8 36, ptr %15, align 1
  br label %25

23:                                               ; preds = %8
  %24 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %24, align 1
  br label %25

25:                                               ; preds = %23, %22
  store i8 83, ptr %2, align 2
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 -8
  %28 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %27, ptr noundef nonnull %2, i32 noundef 2) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.94) #6
  br label %32

32:                                               ; preds = %30, %25, %1
  %33 = phi i32 [ -6, %1 ], [ 0, %25 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
