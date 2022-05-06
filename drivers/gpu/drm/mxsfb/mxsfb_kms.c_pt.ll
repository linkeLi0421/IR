; ModuleID = '/llk/IR/drivers/gpu/drm/mxsfb/mxsfb_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/mxsfb/mxsfb_kms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.mxsfb_drm_private = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.76, %struct.drm_crtc, %struct.drm_encoder, ptr, ptr }
%struct.anon.76 = type { %struct.drm_plane, %struct.drm_plane }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.mxsfb_devdata = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }
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
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@mxsfb_plane_primary_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @mxsfb_plane_atomic_check, ptr @mxsfb_plane_primary_atomic_update, ptr null, ptr null, ptr null }, align 4
@mxsfb_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_format_mod_supported }, align 4
@mxsfb_primary_plane_formats = internal constant [2 x i32] [i32 909199186, i32 875713112], align 4
@mxsfb_modifiers = internal constant [2 x i64] [i64 0, i64 72057594037927935], align 8
@mxsfb_plane_overlay_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @mxsfb_plane_atomic_check, ptr @mxsfb_plane_overlay_atomic_update, ptr null, ptr null, ptr null }, align 4
@mxsfb_overlay_plane_formats = internal constant [7 x i32] [i32 842093144, i32 842093121, i32 892424792, i32 892424769, i32 909199186, i32 875713112, i32 875713089], align 4
@mxsfb_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_crtc_atomic_check, ptr null, ptr @mxsfb_crtc_atomic_flush, ptr @mxsfb_crtc_atomic_enable, ptr @mxsfb_crtc_atomic_disable, ptr null }, align 4
@mxsfb_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_crtc_enable_vblank, ptr @mxsfb_crtc_disable_vblank, ptr null }, align 4
@mxsfb_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, align 4
@mxsfb_crtc_atomic_enable.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str = private unnamed_addr constant [137 x i8] c"Bridge does not provide bus format, assuming MEDIA_BUS_FMT_RGB888_1X24.\0APlease fix bridge driver by handling atomic_get_input_bus_fmts.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Pixel clock: %dkHz (actual: %dkHz)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Connector bus_flags: 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Mode flags: 0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Using bus_format: 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Unknown media bus format 0x%x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mxsfb_kms_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 7, i32 0, i32 18
  store ptr @mxsfb_plane_primary_helper_funcs, ptr %5, align 8
  %6 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %7, ptr noundef %4, i32 noundef 1, ptr noundef nonnull @mxsfb_plane_funcs, ptr noundef nonnull @mxsfb_primary_plane_formats, i32 noundef 2, ptr noundef nonnull @mxsfb_modifiers, i32 noundef 1, ptr noundef null) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mxsfb_devdata, ptr %11, i32 0, i32 5
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 7, i32 1
  %17 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 7, i32 1, i32 18
  store ptr @mxsfb_plane_overlay_helper_funcs, ptr %17, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %18, ptr noundef %16, i32 noundef 1, ptr noundef nonnull @mxsfb_plane_funcs, ptr noundef nonnull @mxsfb_overlay_plane_formats, i32 noundef 7, ptr noundef nonnull @mxsfb_modifiers, i32 noundef 0, ptr noundef null) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %15, %10
  %22 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 8, i32 19
  store ptr @mxsfb_crtc_helper_funcs, ptr %22, align 4
  %23 = load ptr, ptr %6, align 8
  %24 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %23, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef nonnull @mxsfb_crtc_funcs, ptr noundef null) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 8, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = shl nuw i32 1, %28
  %30 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 9, i32 6
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %6, align 8
  %32 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %31, ptr noundef %2, ptr noundef nonnull @mxsfb_encoder_funcs, i32 noundef 0, ptr noundef null) #4
  br label %33

33:                                               ; preds = %26, %21, %15, %1
  %34 = phi i32 [ %32, %26 ], [ %8, %1 ], [ %19, %15 ], [ %24, %21 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %11, i32 0, i32 8, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef %17, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxsfb_plane_primary_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %9, i32 noundef 0) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %19 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.mxsfb_devdata, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %20, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %16) #4, !srcloc !10
  br label %25

25:                                               ; preds = %18, %14, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mxsfb_format_mod_supported(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) #2 {
  %4 = icmp eq i64 %2, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxsfb_plane_overlay_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %17, i32 noundef 0) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %19, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %27 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %11, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #4, !srcloc !10
  br label %57

30:                                               ; preds = %22
  %31 = add i32 %24, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %32 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %11, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #4, !srcloc !10
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %31) #4, !srcloc !10
  br label %41

41:                                               ; preds = %38, %30
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_framebuffer, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %53 [
    i32 842093144, label %47
    i32 842093121, label %48
    i32 892424792, label %49
    i32 892424769, label %50
    i32 909199186, label %51
    i32 875713112, label %52
  ]

47:                                               ; preds = %41
  br label %53

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %41
  br label %53

50:                                               ; preds = %41
  br label %53

51:                                               ; preds = %41
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %51, %50, %49, %48, %47, %41
  %54 = phi i32 [ 65347, %52 ], [ 65507, %51 ], [ 65409, %50 ], [ 65475, %49 ], [ 65425, %48 ], [ 65491, %47 ], [ 65281, %41 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %32, align 4
  %56 = getelementptr i8, ptr %55, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #4, !srcloc !10
  br label %57

57:                                               ; preds = %53, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_crtc_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_plane, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 2
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp ne i8 %17, 0
  %19 = and i32 %15, %10
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %1, ptr noundef %0) #4
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxsfb_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #4
  %11 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef nonnull %6) #4
  br label %15

14:                                               ; preds = %8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %6) #4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  br label %20

20:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxsfb_crtc_atomic_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #4
  tail call void @mxsfb_enable_axi_clk(ptr noundef %5) #4
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #4
  %11 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %1, ptr noundef nonnull %12) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.drm_bridge_state, ptr %15, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %36 [
    i32 1, label %20
    i32 0, label %24
  ]

20:                                               ; preds = %17, %14
  %21 = load i1, ptr @mxsfb_crtc_atomic_enable.__print_once, align 1
  br i1 %21, label %36, label %22

22:                                               ; preds = %20
  store i1 true, ptr @mxsfb_crtc_atomic_enable.__print_once, align 1
  %23 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str) #5
  br label %36

24:                                               ; preds = %17, %2
  %25 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 10
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_connector, ptr %26, i32 0, i32 20, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.drm_connector, ptr %26, i32 0, i32 20, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35, %30, %22, %20, %17
  %37 = phi i32 [ 4106, %35 ], [ %33, %30 ], [ 4106, %22 ], [ 4106, %20 ], [ %19, %17 ]
  %38 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 8, i32 22
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 10
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.drm_connector, ptr %43, i32 0, i32 20, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 -2147483648) #4, !srcloc !10
  %49 = tail call i64 @ktime_get() #4
  %50 = add i64 %49, 1000000000
  br label %51

51:                                               ; preds = %54, %36
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = tail call i64 @ktime_get() #4
  %56 = icmp sgt i64 %55, %50
  br i1 %56, label %57, label %51

57:                                               ; preds = %54
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %254

60:                                               ; preds = %57, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %61 = load ptr, ptr %46, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 1073741824) #4, !srcloc !10
  %63 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %64 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 -2147483648) #4, !srcloc !10
  %65 = tail call i64 @ktime_get() #4
  %66 = add i64 %65, 1000000000
  br label %67

67:                                               ; preds = %70, %60
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = tail call i64 @ktime_get() #4
  %72 = icmp sgt i64 %71, %66
  br i1 %72, label %73, label %67

73:                                               ; preds = %70
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %254

76:                                               ; preds = %73, %67
  %77 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %78 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 1073741824) #4, !srcloc !10
  %79 = tail call i64 @ktime_get() #4
  %80 = add i64 %79, 1000000000
  br label %81

81:                                               ; preds = %85, %76
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %83 = and i32 %82, 1073741824
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = tail call i64 @ktime_get() #4
  %87 = icmp sgt i64 %86, %80
  br i1 %87, label %88, label %81

88:                                               ; preds = %85
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %90 = and i32 %89, 1073741824
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %254

92:                                               ; preds = %88, %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %93 = load ptr, ptr %46, align 4
  %94 = getelementptr i8, ptr %93, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 2097152) #4, !srcloc !10
  %95 = load ptr, ptr %46, align 4
  %96 = getelementptr i8, ptr %95, i32 16
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %98 = load ptr, ptr %46, align 4
  %99 = getelementptr i8, ptr %98, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 2097152) #4, !srcloc !10
  %100 = load ptr, ptr %46, align 4
  %101 = getelementptr i8, ptr %100, i32 16
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %103 = load ptr, ptr %5, align 8
  %104 = getelementptr inbounds %struct.mxsfb_devdata, ptr %103, i32 0, i32 5
  %105 = load i8, ptr %104, align 4, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %108 = load ptr, ptr %46, align 4
  %109 = getelementptr i8, ptr %108, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #4, !srcloc !10
  br label %110

110:                                              ; preds = %107, %92
  %111 = load ptr, ptr %6, align 8
  %112 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 8, i32 6
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.drm_plane, ptr %113, i32 0, i32 19
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.drm_plane_state, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.drm_framebuffer, ptr %117, i32 0, i32 4
  %119 = load ptr, ptr %118, align 8
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.drm_device, ptr %111, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %122, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %37) #4
  %123 = load ptr, ptr %46, align 4
  %124 = getelementptr i8, ptr %123, i32 16
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %126 = and i32 %125, 8704
  switch i32 %120, label %131 [
    i32 909199186, label %127
    i32 875713112, label %129
  ]

127:                                              ; preds = %110
  %128 = or i32 %126, 983040
  br label %131

129:                                              ; preds = %110
  %130 = or i32 %126, 458752
  br label %131

131:                                              ; preds = %129, %127, %110
  %132 = phi i32 [ %126, %110 ], [ %130, %129 ], [ %128, %127 ]
  %133 = phi i32 [ 524320, %110 ], [ 525088, %129 ], [ 524320, %127 ]
  switch i32 %37, label %138 [
    i32 4119, label %140
    i32 4105, label %134
    i32 4106, label %136
  ]

134:                                              ; preds = %131
  %135 = or i32 %133, 2048
  br label %140

136:                                              ; preds = %131
  %137 = or i32 %133, 3072
  br label %140

138:                                              ; preds = %131
  %139 = load ptr, ptr %121, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.5, i32 noundef %37) #5
  br label %140

140:                                              ; preds = %138, %136, %134, %131
  %141 = phi i32 [ %133, %138 ], [ %137, %136 ], [ %135, %134 ], [ %133, %131 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %142 = load ptr, ptr %46, align 4
  %143 = getelementptr i8, ptr %142, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %132) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %144 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %141) #4, !srcloc !10
  %145 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 2
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 12
  %148 = load i32, ptr %147, align 4
  %149 = mul i32 %148, 1000
  %150 = tail call i32 @clk_set_rate(ptr noundef %146, i32 noundef %149) #4
  %151 = load ptr, ptr %11, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %140
  %154 = getelementptr inbounds %struct.drm_bridge, ptr %151, i32 0, i32 6
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %155, align 4
  br label %159

159:                                              ; preds = %157, %153, %140
  %160 = phi i32 [ %158, %157 ], [ %45, %153 ], [ %45, %140 ]
  %161 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = load i32, ptr %147, align 4
  %164 = load ptr, ptr %145, align 8
  %165 = tail call i32 @clk_get_rate(ptr noundef %164) #4
  %166 = udiv i32 %165, 1000
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %162, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %163, i32 noundef %166) #4
  %167 = load ptr, ptr %161, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %167, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %160) #4
  %168 = load ptr, ptr %161, align 4
  %169 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 11
  %170 = load i32, ptr %169, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %168, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %170) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %171 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 20
  %172 = load i16, ptr %171, align 2
  %173 = zext i16 %172 to i32
  %174 = shl nuw i32 %173, 16
  %175 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 13
  %176 = load i16, ptr %175, align 4
  %177 = zext i16 %176 to i32
  %178 = or i32 %174, %177
  %179 = load ptr, ptr %46, align 4
  %180 = load ptr, ptr %5, align 8
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr i8, ptr %179, i32 %181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %178) #4, !srcloc !10
  %183 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 24
  %184 = load i16, ptr %183, align 2
  %185 = zext i16 %184 to i32
  %186 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 23
  %187 = load i16, ptr %186, align 4
  %188 = zext i16 %187 to i32
  %189 = sub nsw i32 %185, %188
  %190 = and i32 %189, 262143
  %191 = load i32, ptr %169, align 4
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i32 271581184, i32 338690048
  %195 = shl i32 %191, 25
  %196 = and i32 %195, 134217728
  %197 = shl i32 %160, 24
  %198 = and i32 %197, 16777216
  %199 = shl i32 %160, 23
  %200 = and i32 %199, 33554432
  %201 = or i32 %200, %198
  %202 = or i32 %201, %190
  %203 = or i32 %202, %196
  %204 = or i32 %203, %194
  %205 = xor i32 %204, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %206 = load ptr, ptr %46, align 4
  %207 = getelementptr i8, ptr %206, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %208 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 25
  %209 = load i16, ptr %208, align 4
  %210 = zext i16 %209 to i32
  %211 = load ptr, ptr %46, align 4
  %212 = getelementptr i8, ptr %211, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #4, !srcloc !10
  %213 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 17
  %214 = load i16, ptr %213, align 4
  %215 = zext i16 %214 to i32
  %216 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 16
  %217 = load i16, ptr %216, align 2
  %218 = zext i16 %217 to i32
  %219 = sub nsw i32 %215, %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %220 = load ptr, ptr %5, align 8
  %221 = getelementptr inbounds %struct.mxsfb_devdata, ptr %220, i32 0, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, %219
  %224 = getelementptr inbounds %struct.mxsfb_devdata, ptr %220, i32 0, i32 4
  %225 = load i32, ptr %224, align 4
  %226 = shl i32 %223, %225
  %227 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 18
  %228 = load i16, ptr %227, align 2
  %229 = zext i16 %228 to i32
  %230 = or i32 %226, %229
  %231 = load ptr, ptr %46, align 4
  %232 = getelementptr i8, ptr %231, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %230) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %233 = load i16, ptr %227, align 2
  %234 = zext i16 %233 to i32
  %235 = load i16, ptr %216, align 2
  %236 = zext i16 %235 to i32
  %237 = sub nsw i32 %234, %236
  %238 = shl i32 %237, 16
  %239 = and i32 %238, 268369920
  %240 = load i16, ptr %208, align 4
  %241 = zext i16 %240 to i32
  %242 = load i16, ptr %186, align 4
  %243 = zext i16 %242 to i32
  %244 = sub nsw i32 %241, %243
  %245 = and i32 %244, 65535
  %246 = or i32 %245, %239
  %247 = load ptr, ptr %46, align 4
  %248 = getelementptr i8, ptr %247, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %249 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 7, i32 1
  %250 = load i16, ptr %249, align 4
  %251 = zext i16 %250 to i32
  %252 = load ptr, ptr %46, align 4
  %253 = getelementptr i8, ptr %252, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %251) #4, !srcloc !10
  br label %254

254:                                              ; preds = %159, %88, %73, %57
  %255 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr inbounds %struct.drm_plane, ptr %256, i32 0, i32 19
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.drm_plane_state, ptr %258, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %280, label %262

262:                                              ; preds = %254
  %263 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %260, i32 noundef 0) #4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %280, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %263, i32 0, i32 1
  %267 = load i32, ptr %266, align 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %280, label %269

269:                                              ; preds = %265
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %270 = load ptr, ptr %46, align 4
  %271 = load ptr, ptr %5, align 8
  %272 = getelementptr inbounds %struct.mxsfb_devdata, ptr %271, i32 0, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr i8, ptr %270, i32 %273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %267) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %275 = load ptr, ptr %46, align 4
  %276 = load ptr, ptr %5, align 8
  %277 = getelementptr inbounds %struct.mxsfb_devdata, ptr %276, i32 0, i32 2
  %278 = load i32, ptr %277, align 4
  %279 = getelementptr i8, ptr %275, i32 %278
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %267) #4, !srcloc !10
  br label %280

280:                                              ; preds = %269, %265, %262, %254
  %281 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 4
  %282 = load ptr, ptr %281, align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %291, label %284

284:                                              ; preds = %280
  %285 = tail call i32 @clk_prepare(ptr noundef nonnull %282) #4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = tail call i32 @clk_enable(ptr noundef nonnull %282) #4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  tail call void @clk_unprepare(ptr noundef nonnull %282) #4
  br label %291

291:                                              ; preds = %290, %287, %284, %280
  %292 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 2
  %293 = load ptr, ptr %292, align 8
  %294 = tail call i32 @clk_prepare(ptr noundef %293) #4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %291
  %297 = tail call i32 @clk_enable(ptr noundef %293) #4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  tail call void @clk_unprepare(ptr noundef %293) #4
  br label %300

300:                                              ; preds = %299, %296, %291
  %301 = load ptr, ptr %5, align 8
  %302 = getelementptr inbounds %struct.mxsfb_devdata, ptr %301, i32 0, i32 6
  %303 = load i8, ptr %302, align 1, !range !8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %300
  %306 = load ptr, ptr %46, align 4
  %307 = getelementptr i8, ptr %306, i32 32
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %307) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !41
  %309 = and i32 %308, -14680065
  %310 = or i32 %309, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %311 = load ptr, ptr %46, align 4
  %312 = getelementptr i8, ptr %311, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 %310) #4, !srcloc !10
  br label %313

313:                                              ; preds = %305, %300
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %314 = load ptr, ptr %46, align 4
  %315 = getelementptr i8, ptr %314, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 131072) #4, !srcloc !10
  %316 = load ptr, ptr %46, align 4
  %317 = getelementptr i8, ptr %316, i32 176
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !44
  %319 = or i32 %318, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %320 = load ptr, ptr %46, align 4
  %321 = getelementptr i8, ptr %320, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 %319) #4, !srcloc !10
  %322 = load ptr, ptr %46, align 4
  %323 = getelementptr i8, ptr %322, i32 16
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !46
  %325 = or i32 %324, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %326 = load ptr, ptr %46, align 4
  %327 = getelementptr i8, ptr %326, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 %325) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %328 = load ptr, ptr %46, align 4
  %329 = getelementptr i8, ptr %328, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 1) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxsfb_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %8 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 131072) #4, !srcloc !10
  %11 = tail call i64 @ktime_get() #4
  %12 = add i64 %11, 1000000
  br label %13

13:                                               ; preds = %18, %2
  %14 = load ptr, ptr %8, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !50
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = tail call i64 @ktime_get() #4
  %20 = icmp sgt i64 %19, %12
  br i1 %20, label %21, label %13

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !51
  br label %24

24:                                               ; preds = %21, %13
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 176
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !52
  %28 = and i32 %27, -262145
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr i8, ptr %29, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #4, !srcloc !10
  %31 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  tail call void @clk_disable(ptr noundef %32) #4
  tail call void @clk_unprepare(ptr noundef %32) #4
  %33 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  tail call void @clk_disable(ptr noundef nonnull %34) #4
  tail call void @clk_unprepare(ptr noundef nonnull %34) #4
  br label %37

37:                                               ; preds = %36, %24
  %38 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %38) #4
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store ptr null, ptr %41, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %42) #4
  br label %45

45:                                               ; preds = %44, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %46 = load i16, ptr %38, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #4
  tail call void @mxsfb_disable_axi_clk(ptr noundef %5) #4
  %48 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxsfb_enable_axi_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_bridge_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxsfb_disable_axi_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_crtc_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 512) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 8192) #4, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxsfb_crtc_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8192) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 512) #4, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 2155376770}
!10 = !{i64 1736331}
!11 = !{i64 2155377115}
!12 = !{i64 2155377437}
!13 = !{i64 2155377767}
!14 = !{i64 2155379252}
!15 = !{i64 2148896506}
!16 = !{i64 2148892330}
!17 = !{i64 2148892405, i64 2148892432, i64 2148892479, i64 2148892501, i64 2148892529, i64 2148892549}
!18 = !{i64 353822}
!19 = !{i64 2148920650}
!20 = !{i64 2155363404}
!21 = !{i64 1736749}
!22 = !{i64 2155364789}
!23 = !{i64 2155365084}
!24 = !{i64 2155365483}
!25 = !{i64 2155366151}
!26 = !{i64 2155366677}
!27 = !{i64 2155366983}
!28 = !{i64 2155367509}
!29 = !{i64 2155367700}
!30 = !{i64 2155353996}
!31 = !{i64 2155356506}
!32 = !{i64 2155356832}
!33 = !{i64 2155368539}
!34 = !{i64 2155369664}
!35 = !{i64 2155370004}
!36 = !{i64 2155370453}
!37 = !{i64 2155371144}
!38 = !{i64 2155371735}
!39 = !{i64 2155374069}
!40 = !{i64 2155374430}
!41 = !{i64 2155357306}
!42 = !{i64 2155357521}
!43 = !{i64 2155357957}
!44 = !{i64 2155358483}
!45 = !{i64 2155358758}
!46 = !{i64 2155359230}
!47 = !{i64 2155359505}
!48 = !{i64 2155359938}
!49 = !{i64 2155360426}
!50 = !{i64 2155362137}
!51 = !{i64 2155362474}
!52 = !{i64 2155362820}
!53 = !{i64 2155363095}
!54 = !{i64 2155374899}
!55 = !{i64 2155375387}
!56 = !{i64 2155375877}
!57 = !{i64 2155376364}
