; ModuleID = '/llk/IR/drivers/gpu/drm/stm/ltdc.c_pt.bc'
source_filename = "../drivers/gpu/drm/stm/ltdc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.75 = type { i32, ptr }
%struct.ltdc_device = type { ptr, ptr, %struct.mutex, %struct.ltdc_caps, i32, i32, [4 x %struct.fps_info], ptr }
%struct.ltdc_caps = type { i32, i32, i32, i32, ptr, i8, i32, i32 }
%struct.fps_info = type { i32, i64 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to enable pixel clock (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to get lcd clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to prepare pixel clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"panel-bridge endpoint %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"init encoder endpoint %d\0A\00", align 1
@ltdc_load.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"&ldev->err_lock\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unable to get ltdc registers\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"hardware identifier (0x%08x) not supported!\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ltdc hw version 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Failed to register LTDC interrupt\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Failed to allocate crtc\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Failed to init crtc\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Failed calling drm_vblank_init()\0A\00", align 1
@__UNIQUE_ID_author280 = internal constant [46 x i8] c"author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [46 x i8] c"author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [48 x i8] c"author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [48 x i8] c"author=Mickael Reulier <mickael.reulier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description284 = internal constant [50 x i8] c"description=STMicroelectronics ST DRM LTDC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@ltdc_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_encoder_disable, ptr @ltdc_encoder_enable, ptr null }, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"Bridge encoder:%d created\0A\00", align 1
@ltdc_pix_fmt_a0 = internal constant [8 x i32] [i32 1, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@ltdc_pix_fmt_a1 = internal constant [8 x i32] [i32 1, i32 3, i32 4, i32 2, i32 8, i32 7, i32 5, i32 6], align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"Can not create primary plane\0A\00", align 1
@ltdc_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_crtc_enable_vblank, ptr @ltdc_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"Can not initialize CRTC\0A\00", align 1
@ltdc_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @ltdc_crtc_mode_valid, ptr @ltdc_crtc_mode_fixup, ptr null, ptr @ltdc_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_crtc_atomic_flush, ptr @ltdc_crtc_atomic_enable, ptr @ltdc_crtc_atomic_disable, ptr @ltdc_crtc_get_scanout_position }, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"CRTC:%d created\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Can not create overlay plane %d\0A\00", align 1
@ltdc_format_modifiers = internal constant [2 x i64] [i64 0, i64 72057594037927935], align 8
@ltdc_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_plane_atomic_print_state, ptr @ltdc_plane_format_mod_supported }, align 4
@ltdc_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @ltdc_plane_atomic_check, ptr @ltdc_plane_atomic_update, ptr @ltdc_plane_atomic_disable, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"plane:%d created\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"\09user_updates=%dfps\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Scaling is not supported\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"fb or crtc NULL\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"plane:%d fb:%d (%dx%d)@(%d,%d) -> (%dx%d)@(%d,%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Pixel format %.4s not supported\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"fb: phys 0x%08x\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"\014[drm] ltdc fifo underrun: please verify display mode\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"\014[drm] ltdc transfer error\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"CRTC:%d plane:%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"clk rate target %d, available %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Cannot set rate (%dHz) for pixel clk\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"requested clock %dkHz, adjusted clock %dkHz\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Failed to set mode, cannot get sync\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"CRTC:%d mode:%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Video mode: %dx%d\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c" hfp %d hbp %d hsl %d vfp %d vbp %d vsl %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_license285], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ltdc_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ltdc_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %13) #7
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ltdc_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %11 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %181, label %13

13:                                               ; preds = %1
  %14 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.2) #7
  %15 = getelementptr inbounds %struct.ltdc_device, ptr %8, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = icmp eq ptr %14, inttoptr (i32 -517 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  %20 = load ptr, ptr %15, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %20, %19 ], [ inttoptr (i32 -517 to ptr), %17 ]
  %23 = ptrtoint ptr %22 to i32
  br label %181

24:                                               ; preds = %13
  %25 = tail call i32 @clk_prepare(ptr noundef %14) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = tail call i32 @clk_enable(ptr noundef %14) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = icmp sgt i32 %11, 0
  br i1 %31, label %34, label %70

32:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %33

33:                                               ; preds = %32, %24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  br label %181

34:                                               ; preds = %67, %30
  %35 = phi i32 [ %68, %67 ], [ 0, %30 ]
  %36 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %10, i32 noundef 0, i32 noundef %35, ptr noundef nonnull %3, ptr noundef nonnull %2) #7
  switch i32 %36, label %165 [
    i32 -19, label %67
    i32 0, label %37
  ]

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %38, i32 noundef 17) #7
  store ptr %41, ptr %2, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %35) #7
  %44 = load ptr, ptr %2, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %165

46:                                               ; preds = %37
  %47 = load ptr, ptr %2, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %47, %46 ], [ %41, %40 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %4, align 4
  %53 = call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef 72, i32 noundef 3520) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.drm_encoder, ptr %53, i32 0, i32 6
  store i32 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.drm_encoder, ptr %53, i32 0, i32 7
  store i32 0, ptr %57, align 4
  %58 = call i32 @drm_simple_encoder_init(ptr noundef %0, ptr noundef nonnull %53, i32 noundef 8) #7
  %59 = getelementptr inbounds %struct.drm_encoder, ptr %53, i32 0, i32 11
  store ptr @ltdc_encoder_helper_funcs, ptr %59, align 4
  %60 = call i32 @drm_bridge_attach(ptr noundef nonnull %53, ptr noundef nonnull %49, ptr noundef null, i32 noundef 0) #7
  switch i32 %60, label %64 [
    i32 0, label %61
    i32 -517, label %165
  ]

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.drm_encoder, ptr %53, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %63) #7
  br label %67

64:                                               ; preds = %55
  call void @drm_encoder_cleanup(ptr noundef nonnull %53) #7
  br label %65

65:                                               ; preds = %64, %51
  %66 = phi i32 [ %60, %64 ], [ -12, %51 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %35) #7
  br label %165

67:                                               ; preds = %61, %48, %34
  %68 = add nuw nsw i32 %35, 1
  %69 = icmp eq i32 %68, %11
  br i1 %69, label %70, label %34

70:                                               ; preds = %67, %30
  %71 = call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %72 = getelementptr inbounds %struct.ltdc_device, ptr %8, i32 0, i32 2
  call void @__mutex_init(ptr noundef %72, ptr noundef nonnull @.str.7, ptr noundef nonnull @ltdc_load.__key) #7
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = call i32 @reset_control_assert(ptr noundef %71) #7
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %76 = call i32 @reset_control_deassert(ptr noundef %71) #7
  br label %77

77:                                               ; preds = %74, %70
  %78 = call ptr @platform_get_resource(ptr noundef %6, i32 noundef 512, i32 noundef 0) #7
  %79 = call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %78) #7
  store ptr %79, ptr %8, align 8
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  %82 = load ptr, ptr %8, align 8
  %83 = ptrtoint ptr %82 to i32
  br label %165

84:                                               ; preds = %77
  %85 = getelementptr i8, ptr %79, i32 52
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #7, !srcloc !9
  %87 = and i32 %86, -16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %87) #7, !srcloc !10
  %88 = load ptr, ptr %7, align 4
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr i8, ptr %89, i32 4
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !9
  %92 = call i32 @llvm.smax.i32(i32 %91, i32 1) #7
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 4) #7
  %94 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3
  %95 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 1
  store i32 %93, ptr %95, align 4
  %96 = load ptr, ptr %88, align 8
  %97 = getelementptr i8, ptr %96, i32 32
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #7, !srcloc !9
  %99 = lshr i32 %98, 4
  %100 = and i32 %99, 7
  %101 = shl nuw nsw i32 8, %100
  %102 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 3
  store i32 %101, ptr %102, align 4
  %103 = load ptr, ptr %88, align 8
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #7, !srcloc !9
  store i32 %104, ptr %94, align 4
  switch i32 %104, label %117 [
    i32 66048, label %105
    i32 66304, label %105
    i32 131329, label %112
  ]

105:                                              ; preds = %84, %84
  %106 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 2
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 4
  store ptr @ltdc_pix_fmt_a0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 5
  store i8 1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 6
  %110 = icmp eq i32 %104, 66048
  %111 = select i1 %110, i32 65000000, i32 90000000
  store i32 %111, ptr %109, align 4
  br label %120

112:                                              ; preds = %84
  %113 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 2
  store i32 4, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 4
  store ptr @ltdc_pix_fmt_a1, ptr %114, align 4
  %115 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 5
  store i8 0, ptr %115, align 4
  %116 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 6
  store i32 150000000, ptr %116, align 4
  br label %120

117:                                              ; preds = %84
  %118 = getelementptr inbounds %struct.ltdc_device, ptr %8, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %119) #7
  br label %165

120:                                              ; preds = %112, %105
  %121 = phi i32 [ 2, %105 ], [ 4, %112 ]
  %122 = getelementptr inbounds %struct.ltdc_device, ptr %88, i32 0, i32 3, i32 7
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.ltdc_device, ptr %8, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %124) #7
  %125 = getelementptr inbounds %struct.ltdc_device, ptr %8, i32 0, i32 3, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  br label %134

130:                                              ; preds = %143
  %131 = add nuw nsw i32 %135, 1
  %132 = load i32, ptr %125, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %130, %128
  %135 = phi i32 [ 0, %128 ], [ %131, %130 ]
  %136 = call i32 @platform_get_irq(ptr noundef %6, i32 noundef %135) #7
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %165, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %129, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load ptr, ptr %5, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi ptr [ %142, %141 ], [ %139, %138 ]
  %145 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %136, ptr noundef nonnull @ltdc_irq, ptr noundef nonnull @ltdc_irq_thread, i32 noundef 8192, ptr noundef %144, ptr noundef %0) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %130, label %147

147:                                              ; preds = %143
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %165

148:                                              ; preds = %130, %120
  %149 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 752, i32 noundef 3520) #7
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %165

152:                                              ; preds = %148
  %153 = call fastcc i32 @ltdc_crtc_init(ptr noundef %0, ptr noundef nonnull %149)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %165

156:                                              ; preds = %152
  %157 = call i32 @drm_vblank_init(ptr noundef %0, i32 noundef 1) #7
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #7
  br label %165

160:                                              ; preds = %156
  %161 = load ptr, ptr %15, align 4
  call void @clk_disable(ptr noundef %161) #7
  call void @clk_unprepare(ptr noundef %161) #7
  %162 = load ptr, ptr %4, align 4
  %163 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %162) #7
  %164 = load ptr, ptr %4, align 4
  call void @pm_runtime_enable(ptr noundef %164) #7
  br label %181

165:                                              ; preds = %159, %155, %151, %147, %134, %117, %81, %65, %55, %43, %34
  %166 = phi i32 [ %45, %43 ], [ %66, %65 ], [ %83, %81 ], [ -19, %117 ], [ %145, %147 ], [ %153, %155 ], [ %157, %159 ], [ -12, %151 ], [ %136, %134 ], [ %60, %55 ], [ %36, %34 ]
  br i1 %31, label %167, label %179

167:                                              ; preds = %176, %165
  %168 = phi i32 [ %177, %176 ], [ 0, %165 ]
  %169 = load ptr, ptr %4, align 4
  %170 = getelementptr inbounds %struct.device, ptr %169, i32 0, i32 25
  %171 = load ptr, ptr %170, align 8
  %172 = call ptr @of_graph_get_remote_node(ptr noundef %171, i32 noundef 0, i32 noundef %168) #7
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %167
  %175 = call ptr @of_drm_find_bridge(ptr noundef nonnull %172) #7
  call void @drm_panel_bridge_remove(ptr noundef %175) #7
  br label %176

176:                                              ; preds = %174, %167
  %177 = add nuw nsw i32 %168, 1
  %178 = icmp eq i32 %177, %11
  br i1 %178, label %179, label %167

179:                                              ; preds = %176, %165
  %180 = load ptr, ptr %15, align 4
  call void @clk_disable(ptr noundef %180) #7
  call void @clk_unprepare(ptr noundef %180) #7
  br label %181

181:                                              ; preds = %179, %160, %33, %21, %1
  %182 = phi i32 [ %23, %21 ], [ -19, %33 ], [ %166, %179 ], [ 0, %160 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ltdc_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = getelementptr inbounds %struct.ltdc_device, ptr %4, i32 0, i32 5
  store i32 %7, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #7, !srcloc !10
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ltdc_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @drm_crtc_from_index(ptr noundef %1, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ltdc_device, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %5) #7
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.ltdc_device, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %13) #7
  %14 = load i32, ptr %6, align 8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ltdc_device, ptr %4, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 2
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = and i32 %14, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ltdc_device, ptr %4, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %21
  tail call void @mutex_unlock(ptr noundef %13) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ltdc_crtc_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc ptr @ltdc_plane_create(ptr noundef %0, i32 noundef 1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #7
  br label %41

8:                                                ; preds = %2
  %9 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %5, i32 noundef 0) #7
  %10 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @ltdc_crtc_funcs, ptr noundef null) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #7
  br label %31

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 19
  store ptr @ltdc_crtc_helper_funcs, ptr %14, align 4
  %15 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %1, i32 noundef 256) #7
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #7
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %17) #7
  %18 = getelementptr inbounds %struct.ltdc_device, ptr %4, i32 0, i32 3, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %41

21:                                               ; preds = %26, %13
  %22 = phi i32 [ %28, %26 ], [ 1, %13 ]
  %23 = tail call fastcc ptr @ltdc_plane_create(ptr noundef %0, i32 noundef 0)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %22) #7
  br label %31

26:                                               ; preds = %21
  %27 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %23, i32 noundef %22) #7
  %28 = add nuw i32 %22, 1
  %29 = load i32, ptr %18, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %21, label %41

31:                                               ; preds = %25, %12
  %32 = phi i32 [ %10, %12 ], [ -12, %25 ]
  %33 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %41, label %36

36:                                               ; preds = %36, %31
  %37 = phi ptr [ %39, %36 ], [ %34, %31 ]
  %38 = getelementptr i8, ptr %37, i32 -4
  %39 = load ptr, ptr %37, align 4
  tail call void @drm_plane_cleanup(ptr noundef %38) #7
  %40 = icmp eq ptr %39, %33
  br i1 %40, label %41, label %36

41:                                               ; preds = %36, %31, %26, %13, %7
  %42 = phi i32 [ -22, %7 ], [ %32, %31 ], [ 0, %13 ], [ %32, %36 ], [ 0, %26 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ltdc_unload(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %5) #7
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %17, %1
  %9 = phi i32 [ %18, %17 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_graph_get_remote_node(ptr noundef %12, i32 noundef 0, i32 noundef %9) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %13) #7
  tail call void @drm_panel_bridge_remove(ptr noundef %16) #7
  br label %17

17:                                               ; preds = %15, %8
  %18 = add nuw nsw i32 %9, 1
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %1
  %21 = load ptr, ptr %2, align 4
  tail call void @__pm_runtime_disable(ptr noundef %21, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_encoder_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %0, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %10) #7
  br label %12

12:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = and i32 %7, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #7, !srcloc !10
  %9 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %10) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = or i32 %7, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #7, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_crtc_from_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ltdc_plane_create(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [16 x i32], align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 3, i32 4
  %9 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 3, i32 5
  %10 = icmp ne i32 %1, 1
  %11 = load ptr, ptr %8, align 4
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %29 [
    i32 1, label %16
    i32 2, label %17
    i32 3, label %24
    i32 4, label %13
    i32 5, label %15
    i32 6, label %18
    i32 7, label %14
  ]

13:                                               ; preds = %2
  br label %24

14:                                               ; preds = %2
  br label %24

15:                                               ; preds = %2
  br label %18

16:                                               ; preds = %2
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %16, %15, %2
  %19 = phi i32 [ 875708754, %17 ], [ 875713089, %16 ], [ 892424769, %15 ], [ 842093121, %2 ]
  %20 = phi i32 [ 875714642, %17 ], [ 875713112, %16 ], [ 892424792, %15 ], [ 842093144, %2 ]
  store i32 %19, ptr %3, align 4
  %21 = load i8, ptr %9, align 4, !range !11
  %22 = icmp ne i8 %21, 0
  %23 = and i1 %10, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %18, %14, %13, %2
  %25 = phi i32 [ 1, %2 ], [ 1, %14 ], [ 1, %13 ], [ 2, %18 ]
  %26 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 0, %13 ], [ 1, %18 ]
  %27 = phi i32 [ 875710290, %2 ], [ 538982467, %14 ], [ 909199186, %13 ], [ %20, %18 ]
  %28 = getelementptr [16 x i32], ptr %3, i32 0, i32 %26
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %24, %18, %2
  %30 = phi i32 [ 1, %18 ], [ 0, %2 ], [ %25, %24 ]
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %53 [
    i32 1, label %38
    i32 2, label %37
    i32 3, label %47
    i32 4, label %36
    i32 5, label %35
    i32 6, label %39
    i32 7, label %34
  ]

34:                                               ; preds = %29
  br label %47

35:                                               ; preds = %29
  br label %39

36:                                               ; preds = %29
  br label %47

37:                                               ; preds = %29
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %37, %35, %29
  %40 = phi i32 [ 875708754, %37 ], [ 875713089, %38 ], [ 892424769, %35 ], [ 842093121, %29 ]
  %41 = phi i32 [ 875714642, %37 ], [ 875713112, %38 ], [ 892424792, %35 ], [ 842093144, %29 ]
  %42 = getelementptr [16 x i32], ptr %3, i32 0, i32 %30
  store i32 %40, ptr %42, align 4
  %43 = add nsw i32 %30, 1
  %44 = load i8, ptr %9, align 4, !range !11
  %45 = icmp ne i8 %44, 0
  %46 = and i1 %10, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %39, %36, %34, %29
  %48 = phi i32 [ 1, %29 ], [ 1, %34 ], [ 1, %36 ], [ 2, %39 ]
  %49 = phi i32 [ %30, %29 ], [ %30, %34 ], [ %30, %36 ], [ %43, %39 ]
  %50 = phi i32 [ 875710290, %29 ], [ 538982467, %34 ], [ 909199186, %36 ], [ %41, %39 ]
  %51 = add nsw i32 %30, %48
  %52 = getelementptr [16 x i32], ptr %3, i32 0, i32 %49
  store i32 %50, ptr %52, align 4
  br label %53

53:                                               ; preds = %47, %39, %29
  %54 = phi i32 [ %43, %39 ], [ %30, %29 ], [ %51, %47 ]
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i32, ptr %55, i32 2
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %77 [
    i32 1, label %62
    i32 2, label %61
    i32 3, label %71
    i32 4, label %60
    i32 5, label %59
    i32 6, label %63
    i32 7, label %58
  ]

58:                                               ; preds = %53
  br label %71

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53
  br label %71

61:                                               ; preds = %53
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %61, %59, %53
  %64 = phi i32 [ 875708754, %61 ], [ 875713089, %62 ], [ 892424769, %59 ], [ 842093121, %53 ]
  %65 = phi i32 [ 875714642, %61 ], [ 875713112, %62 ], [ 892424792, %59 ], [ 842093144, %53 ]
  %66 = getelementptr [16 x i32], ptr %3, i32 0, i32 %54
  store i32 %64, ptr %66, align 4
  %67 = add nsw i32 %54, 1
  %68 = load i8, ptr %9, align 4, !range !11
  %69 = icmp ne i8 %68, 0
  %70 = and i1 %10, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %63, %60, %58, %53
  %72 = phi i32 [ 1, %53 ], [ 1, %58 ], [ 1, %60 ], [ 2, %63 ]
  %73 = phi i32 [ %54, %53 ], [ %54, %58 ], [ %54, %60 ], [ %67, %63 ]
  %74 = phi i32 [ 875710290, %53 ], [ 538982467, %58 ], [ 909199186, %60 ], [ %65, %63 ]
  %75 = add nsw i32 %54, %72
  %76 = getelementptr [16 x i32], ptr %3, i32 0, i32 %73
  store i32 %74, ptr %76, align 4
  br label %77

77:                                               ; preds = %71, %63, %53
  %78 = phi i32 [ %67, %63 ], [ %54, %53 ], [ %75, %71 ]
  %79 = load ptr, ptr %8, align 4
  %80 = getelementptr i32, ptr %79, i32 3
  %81 = load i32, ptr %80, align 4
  switch i32 %81, label %101 [
    i32 1, label %86
    i32 2, label %85
    i32 3, label %95
    i32 4, label %84
    i32 5, label %83
    i32 6, label %87
    i32 7, label %82
  ]

82:                                               ; preds = %77
  br label %95

83:                                               ; preds = %77
  br label %87

84:                                               ; preds = %77
  br label %95

85:                                               ; preds = %77
  br label %87

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %85, %83, %77
  %88 = phi i32 [ 875708754, %85 ], [ 875713089, %86 ], [ 892424769, %83 ], [ 842093121, %77 ]
  %89 = phi i32 [ 875714642, %85 ], [ 875713112, %86 ], [ 892424792, %83 ], [ 842093144, %77 ]
  %90 = getelementptr [16 x i32], ptr %3, i32 0, i32 %78
  store i32 %88, ptr %90, align 4
  %91 = add i32 %78, 1
  %92 = load i8, ptr %9, align 4, !range !11
  %93 = icmp ne i8 %92, 0
  %94 = and i1 %10, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %87, %84, %82, %77
  %96 = phi i32 [ 1, %77 ], [ 1, %82 ], [ 1, %84 ], [ 2, %87 ]
  %97 = phi i32 [ %78, %77 ], [ %78, %82 ], [ %78, %84 ], [ %91, %87 ]
  %98 = phi i32 [ 875710290, %77 ], [ 538982467, %82 ], [ 909199186, %84 ], [ %89, %87 ]
  %99 = add i32 %78, %96
  %100 = getelementptr [16 x i32], ptr %3, i32 0, i32 %97
  store i32 %98, ptr %100, align 4
  br label %101

101:                                              ; preds = %95, %87, %77
  %102 = phi i32 [ %91, %87 ], [ %78, %77 ], [ %99, %95 ]
  %103 = load ptr, ptr %8, align 4
  %104 = getelementptr i32, ptr %103, i32 4
  %105 = load i32, ptr %104, align 4
  switch i32 %105, label %125 [
    i32 1, label %110
    i32 2, label %109
    i32 3, label %119
    i32 4, label %108
    i32 5, label %107
    i32 6, label %111
    i32 7, label %106
  ]

106:                                              ; preds = %101
  br label %119

107:                                              ; preds = %101
  br label %111

108:                                              ; preds = %101
  br label %119

109:                                              ; preds = %101
  br label %111

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %109, %107, %101
  %112 = phi i32 [ 875708754, %109 ], [ 875713089, %110 ], [ 892424769, %107 ], [ 842093121, %101 ]
  %113 = phi i32 [ 875714642, %109 ], [ 875713112, %110 ], [ 892424792, %107 ], [ 842093144, %101 ]
  %114 = getelementptr [16 x i32], ptr %3, i32 0, i32 %102
  store i32 %112, ptr %114, align 4
  %115 = add i32 %102, 1
  %116 = load i8, ptr %9, align 4, !range !11
  %117 = icmp ne i8 %116, 0
  %118 = and i1 %10, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %111, %108, %106, %101
  %120 = phi i32 [ 1, %101 ], [ 1, %106 ], [ 1, %108 ], [ 2, %111 ]
  %121 = phi i32 [ %102, %101 ], [ %102, %106 ], [ %102, %108 ], [ %115, %111 ]
  %122 = phi i32 [ 875710290, %101 ], [ 538982467, %106 ], [ 909199186, %108 ], [ %113, %111 ]
  %123 = add i32 %102, %120
  %124 = getelementptr [16 x i32], ptr %3, i32 0, i32 %121
  store i32 %122, ptr %124, align 4
  br label %125

125:                                              ; preds = %119, %111, %101
  %126 = phi i32 [ %115, %111 ], [ %102, %101 ], [ %123, %119 ]
  %127 = load ptr, ptr %8, align 4
  %128 = getelementptr i32, ptr %127, i32 5
  %129 = load i32, ptr %128, align 4
  switch i32 %129, label %149 [
    i32 1, label %134
    i32 2, label %133
    i32 3, label %143
    i32 4, label %132
    i32 5, label %131
    i32 6, label %135
    i32 7, label %130
  ]

130:                                              ; preds = %125
  br label %143

131:                                              ; preds = %125
  br label %135

132:                                              ; preds = %125
  br label %143

133:                                              ; preds = %125
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %133, %131, %125
  %136 = phi i32 [ 875708754, %133 ], [ 875713089, %134 ], [ 892424769, %131 ], [ 842093121, %125 ]
  %137 = phi i32 [ 875714642, %133 ], [ 875713112, %134 ], [ 892424792, %131 ], [ 842093144, %125 ]
  %138 = getelementptr [16 x i32], ptr %3, i32 0, i32 %126
  store i32 %136, ptr %138, align 4
  %139 = add i32 %126, 1
  %140 = load i8, ptr %9, align 4, !range !11
  %141 = icmp ne i8 %140, 0
  %142 = and i1 %10, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %135, %132, %130, %125
  %144 = phi i32 [ 1, %125 ], [ 1, %130 ], [ 1, %132 ], [ 2, %135 ]
  %145 = phi i32 [ %126, %125 ], [ %126, %130 ], [ %126, %132 ], [ %139, %135 ]
  %146 = phi i32 [ 875710290, %125 ], [ 538982467, %130 ], [ 909199186, %132 ], [ %137, %135 ]
  %147 = add i32 %126, %144
  %148 = getelementptr [16 x i32], ptr %3, i32 0, i32 %145
  store i32 %146, ptr %148, align 4
  br label %149

149:                                              ; preds = %143, %135, %125
  %150 = phi i32 [ %139, %135 ], [ %126, %125 ], [ %147, %143 ]
  %151 = load ptr, ptr %8, align 4
  %152 = getelementptr i32, ptr %151, i32 6
  %153 = load i32, ptr %152, align 4
  switch i32 %153, label %173 [
    i32 1, label %158
    i32 2, label %157
    i32 3, label %167
    i32 4, label %156
    i32 5, label %155
    i32 6, label %159
    i32 7, label %154
  ]

154:                                              ; preds = %149
  br label %167

155:                                              ; preds = %149
  br label %159

156:                                              ; preds = %149
  br label %167

157:                                              ; preds = %149
  br label %159

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %157, %155, %149
  %160 = phi i32 [ 875708754, %157 ], [ 875713089, %158 ], [ 892424769, %155 ], [ 842093121, %149 ]
  %161 = phi i32 [ 875714642, %157 ], [ 875713112, %158 ], [ 892424792, %155 ], [ 842093144, %149 ]
  %162 = getelementptr [16 x i32], ptr %3, i32 0, i32 %150
  store i32 %160, ptr %162, align 4
  %163 = add i32 %150, 1
  %164 = load i8, ptr %9, align 4, !range !11
  %165 = icmp ne i8 %164, 0
  %166 = and i1 %10, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %159, %156, %154, %149
  %168 = phi i32 [ 1, %149 ], [ 1, %154 ], [ 1, %156 ], [ 2, %159 ]
  %169 = phi i32 [ %150, %149 ], [ %150, %154 ], [ %150, %156 ], [ %163, %159 ]
  %170 = phi i32 [ 875710290, %149 ], [ 538982467, %154 ], [ 909199186, %156 ], [ %161, %159 ]
  %171 = add i32 %150, %168
  %172 = getelementptr [16 x i32], ptr %3, i32 0, i32 %169
  store i32 %170, ptr %172, align 4
  br label %173

173:                                              ; preds = %167, %159, %149
  %174 = phi i32 [ %163, %159 ], [ %150, %149 ], [ %171, %167 ]
  %175 = load ptr, ptr %8, align 4
  %176 = getelementptr i32, ptr %175, i32 7
  %177 = load i32, ptr %176, align 4
  switch i32 %177, label %197 [
    i32 1, label %182
    i32 2, label %181
    i32 3, label %191
    i32 4, label %180
    i32 5, label %179
    i32 6, label %183
    i32 7, label %178
  ]

178:                                              ; preds = %173
  br label %191

179:                                              ; preds = %173
  br label %183

180:                                              ; preds = %173
  br label %191

181:                                              ; preds = %173
  br label %183

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %181, %179, %173
  %184 = phi i32 [ 875708754, %181 ], [ 875713089, %182 ], [ 892424769, %179 ], [ 842093121, %173 ]
  %185 = phi i32 [ 875714642, %181 ], [ 875713112, %182 ], [ 892424792, %179 ], [ 842093144, %173 ]
  %186 = getelementptr [16 x i32], ptr %3, i32 0, i32 %174
  store i32 %184, ptr %186, align 4
  %187 = add i32 %174, 1
  %188 = load i8, ptr %9, align 4, !range !11
  %189 = icmp ne i8 %188, 0
  %190 = and i1 %10, %189
  br i1 %190, label %197, label %191

191:                                              ; preds = %183, %180, %178, %173
  %192 = phi i32 [ 1, %173 ], [ 1, %178 ], [ 1, %180 ], [ 2, %183 ]
  %193 = phi i32 [ %174, %173 ], [ %174, %178 ], [ %174, %180 ], [ %187, %183 ]
  %194 = phi i32 [ 875710290, %173 ], [ 538982467, %178 ], [ 909199186, %180 ], [ %185, %183 ]
  %195 = add i32 %174, %192
  %196 = getelementptr [16 x i32], ptr %3, i32 0, i32 %193
  store i32 %194, ptr %196, align 4
  br label %197

197:                                              ; preds = %191, %183, %173
  %198 = phi i32 [ %187, %183 ], [ %174, %173 ], [ %195, %191 ]
  %199 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 456, i32 noundef 3520) #7
  %200 = icmp eq ptr %199, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %197
  %202 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %199, i32 noundef 1, ptr noundef nonnull @ltdc_plane_funcs, ptr noundef nonnull %3, i32 noundef %198, ptr noundef nonnull @ltdc_format_modifiers, i32 noundef %1, ptr noundef null) #7
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.drm_plane, ptr %199, i32 0, i32 18
  store ptr @ltdc_plane_helper_funcs, ptr %205, align 8
  %206 = call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %199) #7
  %207 = getelementptr inbounds %struct.drm_plane, ptr %199, i32 0, i32 4
  %208 = load i32, ptr %207, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %208) #7
  br label %209

209:                                              ; preds = %204, %201, %197
  %210 = phi ptr [ %199, %204 ], [ null, %197 ], [ null, %201 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret ptr %210
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_plane_atomic_print_state(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.ltdc_device, ptr %6, i32 0, i32 6, i32 %8
  %10 = tail call i64 @ktime_get() #7
  %11 = getelementptr %struct.ltdc_device, ptr %6, i32 0, i32 6, i32 %8, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = sub i64 %10, %12
  %14 = tail call i64 @llvm.abs.i64(i64 %13, i1 false) #7
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #8, !srcloc !12
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %15, i32 0) #8, !srcloc !13
  %17 = extractvalue { i64, i32 } %16, 0
  %18 = icmp slt i64 %13, 0
  %19 = lshr i64 %17, 18
  %20 = sub nsw i64 0, %19
  %21 = select i1 %18, i64 %20, i64 %19
  %22 = trunc i64 %21 to i32
  %23 = load i32, ptr %9, align 8
  %24 = mul i32 %23, 1000
  %25 = sdiv i32 %22, 2
  %26 = add i32 %25, %24
  %27 = udiv i32 %26, %22
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %27) #7
  store i64 %10, ptr %11, align 8
  store i32 0, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltdc_plane_format_mod_supported(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) #4 {
  %4 = icmp eq i64 %2, 0
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ltdc_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 16
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #7
  br label %27

27:                                               ; preds = %26, %19, %2
  %28 = phi i32 [ -22, %26 ], [ 0, %2 ], [ 0, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_plane_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.__drm_planes_state, ptr %7, i32 %9, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = shl i32 %9, 7
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, null
  %22 = icmp ne ptr %13, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #7
  br label %239

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 16
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 16
  %42 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %43, i32 noundef %45, i32 noundef %38, i32 noundef %41, i32 noundef %32, i32 noundef %35, i32 noundef %16, i32 noundef %18, i32 noundef %29, i32 noundef %27) #7
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !9
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 4095
  %51 = and i32 %48, 2047
  %52 = add i32 %50, %29
  %53 = add i32 %52, %16
  %54 = shl i32 %53, 16
  %55 = add i32 %52, 1
  %56 = add i32 %55, %54
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 3, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %14, 136
  %61 = add i32 %60, %59
  %62 = getelementptr i8, ptr %57, i32 %61
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !9
  %64 = and i32 %63, -268374016
  %65 = or i32 %64, %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %65) #7, !srcloc !10
  %66 = add i32 %51, %27
  %67 = add i32 %66, %18
  %68 = shl i32 %67, 16
  %69 = add i32 %66, 1
  %70 = add i32 %69, %68
  %71 = load ptr, ptr %5, align 8
  %72 = load i32, ptr %58, align 4
  %73 = add i32 %14, 140
  %74 = add i32 %73, %72
  %75 = getelementptr i8, ptr %71, i32 %74
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #7, !srcloc !9
  %77 = and i32 %76, -134154240
  %78 = or i32 %77, %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %78) #7, !srcloc !10
  %79 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %80 = load ptr, ptr %79, align 8
  %81 = load i32, ptr %80, align 4
  switch i32 %81, label %88 [
    i32 875713089, label %89
    i32 875713112, label %89
    i32 875708754, label %82
    i32 875714642, label %82
    i32 875710290, label %83
    i32 909199186, label %84
    i32 892424769, label %85
    i32 892424792, label %85
    i32 842093121, label %86
    i32 842093144, label %86
    i32 538982467, label %87
  ]

82:                                               ; preds = %25, %25
  br label %89

83:                                               ; preds = %25
  br label %89

84:                                               ; preds = %25
  br label %89

85:                                               ; preds = %25, %25
  br label %89

86:                                               ; preds = %25, %25
  br label %89

87:                                               ; preds = %25
  br label %89

88:                                               ; preds = %25
  br label %89

89:                                               ; preds = %88, %87, %86, %85, %84, %83, %82, %25, %25
  %90 = phi i32 [ 0, %88 ], [ 7, %87 ], [ 6, %86 ], [ 5, %85 ], [ 4, %84 ], [ 3, %83 ], [ 2, %82 ], [ 1, %25 ], [ 1, %25 ]
  %91 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 3, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, %90
  br i1 %94, label %124, label %95

95:                                               ; preds = %89
  %96 = getelementptr i32, ptr %92, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, %90
  br i1 %98, label %124, label %99

99:                                               ; preds = %95
  %100 = getelementptr i32, ptr %92, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, %90
  br i1 %102, label %124, label %103

103:                                              ; preds = %99
  %104 = getelementptr i32, ptr %92, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %90
  br i1 %106, label %124, label %107

107:                                              ; preds = %103
  %108 = getelementptr i32, ptr %92, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, %90
  br i1 %110, label %124, label %111

111:                                              ; preds = %107
  %112 = getelementptr i32, ptr %92, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, %90
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = getelementptr i32, ptr %92, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, %90
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr i32, ptr %92, i32 7
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, %90
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, ptr noundef %80) #7
  br label %124

124:                                              ; preds = %123, %119, %115, %111, %107, %103, %99, %95, %89
  %125 = phi i32 [ 0, %123 ], [ 0, %89 ], [ 1, %95 ], [ 2, %99 ], [ 3, %103 ], [ 4, %107 ], [ 5, %111 ], [ 6, %115 ], [ 7, %119 ]
  %126 = load ptr, ptr %5, align 8
  %127 = load i32, ptr %58, align 4
  %128 = add i32 %14, 148
  %129 = add i32 %128, %127
  %130 = getelementptr i8, ptr %126, i32 %129
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #7, !srcloc !9
  %132 = and i32 %131, -8
  %133 = or i32 %132, %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %133) #7, !srcloc !10
  %134 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %135 = load i32, ptr %134, align 8
  %136 = load ptr, ptr %79, align 8
  %137 = getelementptr inbounds %struct.drm_format_info, ptr %136, i32 0, i32 3
  %138 = load i8, ptr %137, align 2
  %139 = zext i8 %138 to i32
  %140 = mul i32 %16, %139
  %141 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 3, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 3
  %144 = add nsw i32 %143, -1
  %145 = add i32 %144, %140
  %146 = shl i32 %135, 16
  %147 = or i32 %145, %146
  %148 = load ptr, ptr %5, align 8
  %149 = load i32, ptr %58, align 4
  %150 = add i32 %14, 176
  %151 = add i32 %150, %149
  %152 = getelementptr i8, ptr %148, i32 %151
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #7, !srcloc !9
  %154 = and i32 %153, -536813568
  %155 = or i32 %147, %154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %155) #7, !srcloc !10
  %156 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 12
  %157 = load i16, ptr %156, align 4
  %158 = lshr i16 %157, 8
  %159 = zext i16 %158 to i32
  %160 = load ptr, ptr %5, align 8
  %161 = load i32, ptr %58, align 4
  %162 = add i32 %14, 152
  %163 = add i32 %162, %161
  %164 = getelementptr i8, ptr %160, i32 %163
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #7, !srcloc !9
  %166 = and i32 %165, -256
  %167 = or i32 %166, %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %167) #7, !srcloc !10
  %168 = load ptr, ptr %79, align 8
  %169 = getelementptr inbounds %struct.drm_format_info, ptr %168, i32 0, i32 8
  %170 = load i8, ptr %169, align 4, !range !11
  %171 = icmp eq i8 %170, 0
  %172 = select i1 %171, i32 1029, i32 1543
  %173 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 3, i32 5
  %174 = load i8, ptr %173, align 4, !range !11
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %124
  %177 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %178 = load i32, ptr %177, align 8
  %179 = icmp eq i32 %178, 1
  %180 = select i1 %179, i32 %172, i32 1543
  br label %181

181:                                              ; preds = %176, %124
  %182 = phi i32 [ %172, %124 ], [ %180, %176 ]
  %183 = load ptr, ptr %5, align 8
  %184 = load i32, ptr %58, align 4
  %185 = add i32 %14, 160
  %186 = add i32 %185, %184
  %187 = getelementptr i8, ptr %183, i32 %186
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #7, !srcloc !9
  %189 = and i32 %188, -1800
  %190 = or i32 %189, %182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %190) #7, !srcloc !10
  %191 = load ptr, ptr %5, align 8
  %192 = load i32, ptr %58, align 4
  %193 = add i32 %14, 180
  %194 = add i32 %193, %192
  %195 = getelementptr i8, ptr %191, i32 %194
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #7, !srcloc !9
  %197 = and i32 %196, -2048
  %198 = or i32 %197, %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %198) #7, !srcloc !10
  %199 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %13, ptr noundef %11, i32 noundef 0) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %199) #7
  %200 = load ptr, ptr %5, align 8
  %201 = load i32, ptr %58, align 4
  %202 = add i32 %14, 172
  %203 = add i32 %202, %201
  %204 = getelementptr i8, ptr %200, i32 %203
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %199) #7, !srcloc !10
  %205 = load ptr, ptr %79, align 8
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 538982467
  %208 = select i1 %207, i32 17, i32 1
  %209 = load ptr, ptr %5, align 8
  %210 = load i32, ptr %58, align 4
  %211 = add i32 %14, 132
  %212 = add i32 %211, %210
  %213 = getelementptr i8, ptr %209, i32 %212
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #7, !srcloc !9
  %215 = and i32 %214, -18
  %216 = or i32 %215, %208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %216) #7, !srcloc !10
  %217 = load i32, ptr %8, align 4
  %218 = getelementptr %struct.ltdc_device, ptr %5, i32 0, i32 6, i32 %217
  %219 = load i32, ptr %218, align 8
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8
  %221 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %221) #7
  %222 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 4
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, 2
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %181
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  %228 = load i32, ptr %222, align 4
  %229 = and i32 %228, -3
  store i32 %229, ptr %222, align 4
  br label %230

230:                                              ; preds = %226, %181
  %231 = phi i32 [ %229, %226 ], [ %223, %181 ]
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %230
  %235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  %236 = load i32, ptr %222, align 4
  %237 = and i32 %236, -5
  store i32 %237, ptr %222, align 4
  br label %238

238:                                              ; preds = %234, %230
  tail call void @mutex_unlock(ptr noundef %221) #7
  br label %239

239:                                              ; preds = %238, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_plane_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %6, 7
  %13 = load ptr, ptr %11, align 8
  %14 = getelementptr inbounds %struct.ltdc_device, ptr %11, i32 0, i32 3, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %12, 132
  %17 = add i32 %16, %15
  %18 = getelementptr i8, ptr %13, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  %20 = and i32 %19, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #7, !srcloc !10
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_crtc, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %24, i32 noundef %26) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ltdc_crtc_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr i8, ptr %11, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !9
  %14 = or i32 %13, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #7, !srcloc !10
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ 0, %10 ], [ -1, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_crtc_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = and i32 %7, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #7, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ltdc_crtc_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = mul i32 %6, 1000
  %8 = add i32 %7, -50
  %9 = add i32 %7, 50
  %10 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_round_rate(ptr noundef %11, i32 noundef %7) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %7, i32 noundef %12) #7
  %13 = getelementptr inbounds %struct.ltdc_device, ptr %5, i32 0, i32 3, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 28
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = icmp slt i32 %12, %8
  %23 = icmp sgt i32 %12, %9
  %24 = or i1 %22, %23
  %25 = select i1 %24, i32 17, i32 0
  br label %26

26:                                               ; preds = %21, %16, %2
  %27 = phi i32 [ 15, %2 ], [ 0, %16 ], [ %25, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ltdc_crtc_mode_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = mul i32 %7, 1000
  %9 = getelementptr inbounds %struct.ltdc_device, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef %8) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %8) #7
  br label %19

14:                                               ; preds = %3
  %15 = load ptr, ptr %9, align 4
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #7
  %17 = udiv i32 %16, 1000
  store i32 %17, ptr %2, align 4
  %18 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %18, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %14, %13
  %20 = xor i1 %12, true
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_crtc_mode_set_nofb(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  br label %9

9:                                                ; preds = %13, %1
  %10 = phi ptr [ %8, %1 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %9

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %11, %13 ], [ %8, %9 ]
  %19 = getelementptr i8, ptr %18, i32 -4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %18, i32 52
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %19
  br i1 %30, label %31, label %23

31:                                               ; preds = %27, %23
  %32 = phi ptr [ %25, %27 ], [ %22, %23 ]
  %33 = getelementptr i8, ptr %32, i32 -56
  call void @drm_connector_list_iter_begin(ptr noundef %3, ptr noundef nonnull %2) #7
  br label %34

34:                                               ; preds = %37, %31
  %35 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.drm_connector, ptr %35, i32 0, i32 41
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %19
  br i1 %40, label %41, label %34

41:                                               ; preds = %37, %34
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #7
  %42 = icmp eq ptr %33, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %32, i32 20
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 4
  br label %54

49:                                               ; preds = %43, %41
  %50 = icmp eq ptr %35, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.drm_connector, ptr %35, i32 0, i32 20, i32 8
  %53 = load i32, ptr %52, align 8
  br label %54

54:                                               ; preds = %51, %49, %47, %17
  %55 = phi i32 [ %48, %47 ], [ %53, %51 ], [ 0, %49 ], [ 0, %17 ]
  %56 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 11, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 11, i32 15
  %63 = load i16, ptr %62, align 8
  %64 = and i16 %63, 7
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = call i32 @__pm_runtime_resume(ptr noundef %57, i32 noundef 4) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %182

70:                                               ; preds = %66, %61, %54
  %71 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 31
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %72, ptr noundef %73) #7
  %74 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 1
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 6
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %76, i32 noundef %79) #7
  %80 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 2
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, ptr %74, align 4
  %84 = zext i16 %83 to i32
  %85 = sub nsw i32 %82, %84
  %86 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 4
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 3
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  %92 = sub nsw i32 %88, %91
  %93 = sub nsw i32 %91, %82
  %94 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 7
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = load i16, ptr %77, align 2
  %98 = zext i16 %97 to i32
  %99 = sub nsw i32 %96, %98
  %100 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 9
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 8
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = sub nsw i32 %102, %105
  %107 = sub nsw i32 %105, %96
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %85, i32 noundef %92, i32 noundef %93, i32 noundef %99, i32 noundef %106, i32 noundef %107) #7
  %108 = load i16, ptr %89, align 4
  %109 = zext i16 %108 to i32
  %110 = load i16, ptr %80, align 2
  %111 = zext i16 %110 to i32
  %112 = xor i32 %111, -1
  %113 = add nsw i32 %112, %109
  %114 = load i16, ptr %103, align 2
  %115 = zext i16 %114 to i32
  %116 = load i16, ptr %94, align 4
  %117 = zext i16 %116 to i32
  %118 = xor i32 %117, -1
  %119 = add nsw i32 %118, %115
  %120 = load i16, ptr %86, align 2
  %121 = zext i16 %120 to i32
  %122 = add nsw i32 %121, %112
  %123 = load i16, ptr %100, align 4
  %124 = zext i16 %123 to i32
  %125 = add nsw i32 %124, %118
  %126 = load i16, ptr %74, align 4
  %127 = zext i16 %126 to i32
  %128 = add nsw i32 %122, %127
  %129 = load i16, ptr %77, align 2
  %130 = zext i16 %129 to i32
  %131 = add nsw i32 %125, %130
  %132 = add nsw i32 %124, -1
  %133 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 11
  %134 = load i32, ptr %133, align 4
  %135 = shl i32 %134, 31
  %136 = shl i32 %134, 28
  %137 = and i32 %136, 1073741824
  %138 = or i32 %137, %135
  %139 = shl i32 %55, 29
  %140 = and i32 %139, 536870912
  %141 = or i32 %138, %140
  %142 = shl i32 %55, 25
  %143 = and i32 %142, 268435456
  %144 = or i32 %141, %143
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr i8, ptr %145, i32 24
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #7, !srcloc !9
  %148 = and i32 %147, 268435455
  %149 = or i32 %144, %148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %149) #7, !srcloc !10
  %150 = shl i32 %113, 16
  %151 = or i32 %119, %150
  %152 = load ptr, ptr %5, align 8
  %153 = getelementptr i8, ptr %152, i32 8
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #7, !srcloc !9
  %155 = and i32 %154, -268371968
  %156 = or i32 %151, %155
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %156) #7, !srcloc !10
  %157 = shl i32 %122, 16
  %158 = or i32 %157, %125
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr i8, ptr %159, i32 12
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #7, !srcloc !9
  %162 = and i32 %161, -268371968
  %163 = or i32 %158, %162
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %163) #7, !srcloc !10
  %164 = shl i32 %128, 16
  %165 = or i32 %164, %131
  %166 = load ptr, ptr %5, align 8
  %167 = getelementptr i8, ptr %166, i32 16
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #7, !srcloc !9
  %169 = and i32 %168, -268371968
  %170 = or i32 %165, %169
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %170) #7, !srcloc !10
  %171 = shl nuw i32 %121, 16
  %172 = add i32 %171, -65536
  %173 = or i32 %172, %132
  %174 = load ptr, ptr %5, align 8
  %175 = getelementptr i8, ptr %174, i32 20
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #7, !srcloc !9
  %177 = and i32 %176, -268371968
  %178 = or i32 %173, %177
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %178) #7, !srcloc !10
  %179 = load ptr, ptr %5, align 8
  %180 = add nsw i32 %131, 1
  %181 = getelementptr i8, ptr %179, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %180) #7, !srcloc !10
  br label %182

182:                                              ; preds = %70, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str) #7
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 3
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_property_blob, ptr %20, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ltdc_device, ptr %12, i32 0, i32 3, i32 2
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i32 [ 0, %22 ], [ %49, %26 ]
  %28 = phi ptr [ %24, %22 ], [ %50, %26 ]
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = and i32 %31, 16711680
  %33 = getelementptr inbounds %struct.drm_color_lut, ptr %28, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, -256
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.drm_color_lut, ptr %28, i32 0, i32 2
  %38 = load i16, ptr %37, align 2
  %39 = lshr i16 %38, 8
  %40 = zext i16 %39 to i32
  %41 = shl i32 %27, 24
  %42 = or i32 %41, %36
  %43 = or i32 %42, %32
  %44 = or i32 %43, %40
  %45 = load ptr, ptr %12, align 8
  %46 = load i32, ptr %25, align 4
  %47 = add i32 %46, 196
  %48 = getelementptr i8, ptr %45, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %44) #7, !srcloc !10
  %49 = add nuw nsw i32 %27, 1
  %50 = getelementptr %struct.drm_color_lut, ptr %28, i32 1
  %51 = icmp eq i32 %49, 256
  br i1 %51, label %52, label %26

52:                                               ; preds = %26, %18, %2
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr i8, ptr %53, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !9
  %56 = or i32 %55, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %56) #7, !srcloc !10
  %57 = icmp eq ptr %9, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr inbounds %struct.drm_crtc_state, ptr %59, i32 0, i32 18
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %61) #7
  %62 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef nonnull %9) #7
  br label %66

65:                                               ; preds = %58
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %9) #7
  br label %66

66:                                               ; preds = %65, %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %67 = load i16, ptr %61, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %69

69:                                               ; preds = %66, %52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !10
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr i8, ptr %11, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !9
  %14 = or i32 %13, 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #7, !srcloc !10
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr i8, ptr %15, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  %18 = or i32 %17, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #7, !srcloc !10
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ltdc_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  %9 = and i32 %8, -15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #7, !srcloc !10
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  %13 = or i32 %12, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #7, !srcloc !10
  %14 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ltdc_crtc_get_scanout_position(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr nocapture noundef readnone %6) #0 {
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %4, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i64 @ktime_get() #7
  store i64 %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 18
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 15
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 7
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %20, %14
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr i8, ptr %26, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !9
  %29 = and i32 %28, 65535
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !9
  %33 = and i32 %32, 2047
  %34 = load ptr, ptr %10, align 8
  %35 = getelementptr i8, ptr %34, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !9
  %37 = and i32 %36, 2047
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr i8, ptr %38, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !9
  %41 = icmp ugt i32 %29, %37
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = and i32 %40, 2047
  %44 = add nuw nsw i32 %33, %43
  %45 = sub nsw i32 %29, %44
  br label %48

46:                                               ; preds = %25
  %47 = sub nsw i32 %29, %33
  br label %48

48:                                               ; preds = %46, %42, %20
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ], [ 0, %20 ]
  store i32 %49, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %50 = icmp eq ptr %5, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @ktime_get() #7
  store i64 %52, ptr %5, align 8
  br label %53

53:                                               ; preds = %51, %48
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

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
!9 = !{i64 3131814}
!10 = !{i64 3131396}
!11 = !{i8 0, i8 2}
!12 = !{i64 908126, i64 908153}
!13 = !{i64 908821, i64 908848, i64 908881, i64 908902, i64 908929, i64 908955}
!14 = !{i64 2148916762}
!15 = !{i64 2148912586}
!16 = !{i64 2148912661, i64 2148912688, i64 2148912735, i64 2148912757, i64 2148912785, i64 2148912805}
!17 = !{i64 374078}
!18 = !{i64 2148940906}
