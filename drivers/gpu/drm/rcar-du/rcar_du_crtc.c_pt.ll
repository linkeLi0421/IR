; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_du_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.80, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.80 = type { ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.rcar_du_vsp_plane = type { %struct.drm_plane, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rcar_du_crtc_state = type { %struct.drm_crtc_state, %struct.vsp1_du_crc_config, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vsp1_du_crc_config = type { i32, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.rcar_cmm_config = type { %struct.anon.83 }
%struct.anon.83 = type { ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.rcar_du_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32 }
%struct.rcar_du_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rcar_du_crtc_create.mmio_offsets = internal unnamed_addr constant [4 x i32] [i32 0, i32 196608, i32 262144, i32 458752], align 4
@.str = private unnamed_addr constant [6 x i8] c"du.%u\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no clock for DU channel %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dclkin.%u\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"can't get dclkin.%u: %d\0A\00", align 1
@rcar_du_crtc_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"&rcrtc->flip_wait\00", align 1
@rcar_du_crtc_create.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"&rcrtc->vblank_wait\00", align 1
@crtc_funcs_gen2 = internal constant %struct.drm_crtc_funcs { ptr @rcar_du_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @rcar_du_crtc_atomic_duplicate_state, ptr @rcar_du_crtc_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_enable_vblank, ptr @rcar_du_crtc_disable_vblank, ptr null }, align 4
@crtc_funcs_gen3 = internal constant %struct.drm_crtc_funcs { ptr @rcar_du_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @rcar_du_crtc_atomic_duplicate_state, ptr @rcar_du_crtc_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_set_crc_source, ptr @rcar_du_crtc_verify_crc_source, ptr @rcar_du_crtc_get_crc_sources, ptr null, ptr null, ptr @rcar_du_crtc_enable_vblank, ptr @rcar_du_crtc_disable_vblank, ptr null }, align 4
@crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @rcar_du_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_atomic_check, ptr @rcar_du_crtc_atomic_begin, ptr @rcar_du_crtc_atomic_flush, ptr @rcar_du_crtc_atomic_enable, ptr @rcar_du_crtc_atomic_disable, ptr null }, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"no IRQ for CRTC %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to register IRQ for CRTC %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_crtc.c\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"plane\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"unknown source %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"invalid gamma lut size: %zu bytes\0A\00", align 1
@rcar_du_r8a7795_es1 = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.14, ptr null, ptr @.str.15, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"ES1.*\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"r8a7795\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"vertical blanking timeout\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"page flip timeout\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"plane%u\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_du_crtc_dsysr_clr_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  %10 = or i32 %9, %2
  store i32 %10, ptr %6, align 8
  %11 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rcar_du_device, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %10) #12, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_du_crtc_finish_page_flip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 28
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  store ptr null, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %6) #12
  %10 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %10, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %9) #12
  tail call void @drm_crtc_vblank_put(ptr noundef %0) #12
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_crtc_create(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca [9 x i8], align 1
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %5, i8 0, i32 9, i1 false), !annotation !10
  %10 = getelementptr inbounds %struct.rcar_du_device, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rcar_du_device_info, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef %2)
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %5, %16 ], [ null, %3 ]
  %20 = load ptr, ptr %6, align 8
  %21 = call ptr @devm_clk_get(ptr noundef %20, ptr noundef %19) #12
  %22 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef %2) #13
  %26 = load ptr, ptr %22, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %178

28:                                               ; preds = %18
  %29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, i32 noundef %2)
  %30 = load ptr, ptr %6, align 8
  %31 = call ptr @devm_clk_get(ptr noundef %30, ptr noundef nonnull %5) #12
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 3
  store ptr %31, ptr %34, align 8
  br label %47

35:                                               ; preds = %28
  %36 = ptrtoint ptr %31 to i32
  %37 = icmp eq ptr %31, inttoptr (i32 -517 to ptr)
  br i1 %37, label %178, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr inbounds %struct.rcar_du_device_info, ptr %39, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = shl nuw i32 1, %2
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.3, i32 noundef %2, i32 noundef %36) #13
  br label %178

47:                                               ; preds = %38, %33
  %48 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 10
  call void @__init_waitqueue_head(ptr noundef %48, ptr noundef nonnull @.str.4, ptr noundef nonnull @rcar_du_crtc_create.__key) #12
  %49 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 12
  call void @__init_waitqueue_head(ptr noundef %49, ptr noundef nonnull @.str.6, ptr noundef nonnull @rcar_du_crtc_create.__key.5) #12
  %50 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 11
  store i32 0, ptr %50, align 8
  %51 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 1
  store ptr %6, ptr %51, align 8
  %52 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 14
  store ptr %0, ptr %52, align 4
  %53 = getelementptr [4 x i32], ptr @rcar_du_crtc_create.mmio_offsets, i32 0, i32 %2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 4
  store i32 %54, ptr %55, align 4
  %56 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 5
  store i32 %2, ptr %56, align 8
  %57 = and i32 %2, 1
  %58 = shl nuw nsw i32 %57, 9
  %59 = xor i32 %58, 512
  %60 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 7
  store i32 %59, ptr %60, align 8
  %61 = load ptr, ptr %10, align 4
  %62 = getelementptr inbounds %struct.rcar_du_device_info, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %47
  %67 = or i32 %59, 128
  store i32 %67, ptr %60, align 8
  %68 = load i32, ptr %62, align 4
  br label %69

69:                                               ; preds = %66, %47
  %70 = phi i32 [ %68, %66 ], [ %63, %47 ]
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.rcar_du_vsp, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 17
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr %struct.rcar_du_vsp_plane, ptr %77, i32 %79
  br label %84

81:                                               ; preds = %69
  %82 = and i32 %1, 1
  %83 = getelementptr %struct.rcar_du_group, ptr %0, i32 0, i32 11, i32 %82
  br label %84

84:                                               ; preds = %81, %73
  %85 = phi ptr [ %80, %73 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.rcar_du_device, ptr %6, i32 0, i32 3
  %87 = load i32, ptr %61, align 4
  %88 = icmp ult i32 %87, 3
  %89 = select i1 %88, ptr @crtc_funcs_gen2, ptr @crtc_funcs_gen3
  %90 = call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %86, ptr noundef %9, ptr noundef %85, ptr noundef null, ptr noundef nonnull %89, ptr noundef null) #12
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %178, label %92

92:                                               ; preds = %84
  %93 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 7, i32 %1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 15
  store ptr %94, ptr %97, align 8
  %98 = shl nuw nsw i32 1, %57
  %99 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 4
  %100 = load i32, ptr %99, align 8
  %101 = or i32 %100, %98
  store i32 %101, ptr %99, align 8
  %102 = call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %9, i32 noundef 256) #12
  call void @drm_crtc_enable_color_mgmt(ptr noundef %9, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #12
  br label %103

103:                                              ; preds = %96, %92
  %104 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 19
  store ptr @crtc_helper_funcs, ptr %104, align 4
  %105 = load ptr, ptr %10, align 4
  %106 = getelementptr inbounds %struct.rcar_du_device_info, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 0, i32 %1
  %111 = shl nuw nsw i32 %108, 7
  %112 = xor i32 %111, 128
  %113 = call i32 @platform_get_irq(ptr noundef %8, i32 noundef %110) #12
  %114 = icmp slt i32 %113, 0
  %115 = load ptr, ptr %6, align 8
  br i1 %114, label %116, label %117

116:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.7, i32 noundef %1) #13
  br label %178

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.device, ptr %115, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load ptr, ptr %115, align 4
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi ptr [ %122, %121 ], [ %119, %117 ]
  %125 = call i32 @devm_request_threaded_irq(ptr noundef %115, i32 noundef %113, ptr noundef nonnull @rcar_du_crtc_irq, ptr noundef null, i32 noundef %112, ptr noundef %124, ptr noundef %9) #12
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.8, i32 noundef %1) #13
  br label %178

129:                                              ; preds = %123
  %130 = load ptr, ptr %51, align 8
  %131 = getelementptr inbounds %struct.rcar_du_device, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = load i32, ptr %132, align 4
  %134 = icmp ult i32 %133, 3
  br i1 %134, label %178, label %135

135:                                              ; preds = %129
  %136 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 16
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.rcar_du_vsp, ptr %137, i32 0, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  %141 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %140, i32 4) #12
  %142 = extractvalue { i32, i1 } %141, 1
  br i1 %142, label %178, label %143, !prof !11

143:                                              ; preds = %135
  %144 = extractvalue { i32, i1 } %141, 0
  %145 = call noalias align 64 ptr @__kmalloc(i32 noundef %144, i32 noundef 3264) #14
  %146 = icmp eq ptr %145, null
  br i1 %146, label %178, label %147

147:                                              ; preds = %143
  %148 = call noalias ptr @kstrdup(ptr noundef nonnull @.str.10, i32 noundef 3264) #12
  store ptr %148, ptr %145, align 64
  %149 = icmp eq ptr %148, null
  br i1 %149, label %177, label %150

150:                                              ; preds = %156, %147
  %151 = phi i32 [ %163, %156 ], [ 0, %147 ]
  %152 = load ptr, ptr %136, align 4
  %153 = getelementptr inbounds %struct.rcar_du_vsp, ptr %152, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp ult i32 %151, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.rcar_du_vsp, ptr %152, i32 0, i32 3
  %158 = load ptr, ptr %157, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #12, !annotation !10
  %159 = getelementptr %struct.rcar_du_vsp_plane, ptr %158, i32 %151, i32 0, i32 4
  %160 = load i32, ptr %159, align 8
  %161 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.18, i32 noundef %160) #12
  %162 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #12
  %163 = add nuw i32 %151, 1
  %164 = getelementptr ptr, ptr %145, i32 %163
  store ptr %162, ptr %164, align 4
  %165 = icmp eq ptr %162, null
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br i1 %165, label %169, label %150

166:                                              ; preds = %150
  %167 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 18
  store ptr %145, ptr %167, align 4
  %168 = getelementptr %struct.rcar_du_device, ptr %6, i32 0, i32 4, i32 %1, i32 19
  store i32 %140, ptr %168, align 8
  br label %178

169:                                              ; preds = %156
  %170 = icmp sgt i32 %151, -1
  br i1 %170, label %171, label %177

171:                                              ; preds = %171, %169
  %172 = phi i32 [ %175, %171 ], [ %151, %169 ]
  %173 = getelementptr ptr, ptr %145, i32 %172
  %174 = load ptr, ptr %173, align 4
  call void @kfree(ptr noundef %174) #12
  %175 = add nsw i32 %172, -1
  %176 = icmp eq i32 %172, 0
  br i1 %176, label %177, label %171

177:                                              ; preds = %171, %169, %147
  call void @kfree(ptr noundef nonnull %145) #12
  br label %178

178:                                              ; preds = %177, %166, %143, %135, %129, %127, %116, %84, %45, %35, %24
  %179 = phi i32 [ %27, %24 ], [ %36, %45 ], [ %113, %116 ], [ %125, %127 ], [ -517, %35 ], [ %90, %84 ], [ 0, %129 ], [ 0, %135 ], [ 0, %143 ], [ 0, %166 ], [ 0, %177 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #12
  ret i32 %179
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rcar_du_crtc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rcar_du_crtc, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.rcar_du_crtc, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 8
  %10 = getelementptr inbounds %struct.rcar_du_device, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %14 = and i32 %13, 52223
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %7, align 4
  %17 = add i32 %16, 12
  %18 = getelementptr inbounds %struct.rcar_du_device, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %14) #12, !srcloc !9
  %21 = and i32 %13, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rcar_du_crtc, ptr %1, i32 0, i32 13
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = add i32 %25, -1
  store i32 %28, ptr %24, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.rcar_du_crtc, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %31, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %32 = load i16, ptr %5, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %40

34:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %35 = load i16, ptr %5, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %40

37:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %38 = load i16, ptr %5, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %40

40:                                               ; preds = %37, %34, %30
  %41 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %1) #12
  tail call void @rcar_du_crtc_finish_page_flip(ptr noundef %1)
  br label %50

47:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %48 = load i16, ptr %5, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %50

50:                                               ; preds = %47, %45, %40
  %51 = phi i32 [ 0, %47 ], [ 1, %45 ], [ 1, %40 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %3) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 296) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %8, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %8, i32 0, i32 1, i32 1
  store i32 0, ptr %12, align 8
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef nonnull %8) #12
  br label %13

13:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_du_crtc_atomic_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 945, i32 noundef 9, ptr noundef null) #12
  br label %10

6:                                                ; preds = %1
  %7 = tail call ptr @kmemdup(ptr noundef nonnull %3, i32 noundef 296, i32 noundef 3264) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %7) #12
  br label %10

10:                                               ; preds = %9, %6, %5
  %11 = phi ptr [ null, %5 ], [ %7, %9 ], [ null, %6 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_enable_vblank(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 12
  %7 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 2048) #12, !srcloc !9
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 4
  %12 = add i32 %11, 16
  %13 = getelementptr inbounds %struct.rcar_du_device, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %17 = or i32 %16, 2048
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr i8, ptr %18, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #12, !srcloc !9
  %20 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 8
  store i8 1, ptr %20, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_disable_vblank(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 16
  %7 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %11 = and i32 %10, -2049
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr i8, ptr %12, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #12, !srcloc !9
  %14 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 8
  store i8 0, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %17, %9 ], [ %3, %5 ]
  %11 = phi i32 [ %14, %9 ], [ 0, %5 ]
  %12 = getelementptr ptr, ptr %10, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #12
  %14 = add nuw i32 %11, 1
  %15 = load i32, ptr %6, align 8
  %16 = icmp ult i32 %14, %15
  %17 = load ptr, ptr %2, align 4
  br i1 %16, label %9, label %18

18:                                               ; preds = %9, %5
  %19 = phi ptr [ %3, %5 ], [ %17, %9 ]
  tail call void @kfree(ptr noundef %19) #12
  store ptr null, ptr %2, align 4
  store i32 0, ptr %6, align 8
  br label %20

20:                                               ; preds = %18, %1
  tail call void @drm_crtc_cleanup(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_set_crc_source(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !10
  %5 = icmp eq ptr %1, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(5) @.str.10) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(6) @.str.11, i32 noundef 5) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %1, i32 5
  %14 = call i32 @kstrtouint(ptr noundef %13, i32 noundef 10, ptr noundef nonnull %3) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rcar_du_vsp, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr inbounds %struct.rcar_du_vsp, ptr %18, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %31, %22
  %27 = phi i32 [ 0, %22 ], [ %32, %31 ]
  %28 = getelementptr %struct.rcar_du_vsp_plane, ptr %25, i32 %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = add nuw i32 %27, 1
  %33 = icmp eq i32 %32, %20
  br i1 %33, label %34, label %26

34:                                               ; preds = %31, %16, %12, %9
  %35 = phi i32 [ -22, %16 ], [ %14, %12 ], [ -22, %9 ], [ -22, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %72

36:                                               ; preds = %6, %2
  %37 = phi i32 [ 2, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %40

38:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %39 = icmp slt i32 %27, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ 0, %36 ], [ %27, %38 ]
  %42 = phi i32 [ %37, %36 ], [ 1, %38 ]
  call void @drm_modeset_acquire_init(ptr noundef nonnull %4, i32 noundef 0) #12
  %43 = load ptr, ptr %0, align 8
  %44 = call ptr @drm_atomic_state_alloc(ptr noundef %43) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %70, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.drm_atomic_state, ptr %44, i32 0, i32 9
  store ptr %4, ptr %47, align 4
  br label %48

48:                                               ; preds = %60, %46
  %49 = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %44, ptr noundef %0) #12
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %49, i32 0, i32 1
  store i32 %42, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %49, i32 0, i32 1, i32 1
  store i32 %41, ptr %53, align 4
  %54 = call i32 @drm_atomic_commit(ptr noundef nonnull %44) #12
  br label %57

55:                                               ; preds = %48
  %56 = ptrtoint ptr %49 to i32
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i32 [ %56, %55 ], [ %54, %51 ]
  %59 = icmp eq i32 %58, -35
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @drm_atomic_state_clear(ptr noundef nonnull %44) #12
  %61 = call i32 @drm_modeset_backoff(ptr noundef nonnull %4) #12
  br label %48

62:                                               ; preds = %57
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %44) #12, !srcloc !19
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %44, ptr nonnull %44, i32 1, ptr nonnull elementtype(i32) %44) #12, !srcloc !20
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !21

68:                                               ; preds = %66
  call void @refcount_warn_saturate(ptr noundef nonnull %44, i32 noundef 3) #12
  br label %70

69:                                               ; preds = %62
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  call void @__drm_atomic_state_free(ptr noundef nonnull %44) #12
  br label %70

70:                                               ; preds = %69, %68, %66, %40
  %71 = phi i32 [ -12, %40 ], [ %58, %66 ], [ %58, %68 ], [ %58, %69 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #12
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #12
  br label %72

72:                                               ; preds = %70, %38, %34
  %73 = phi i32 [ %71, %70 ], [ %27, %38 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_verify_crc_source(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = icmp eq ptr %1, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(5) @.str.10) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(6) @.str.11, i32 noundef 5) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %1, i32 5
  %14 = call i32 @kstrtouint(ptr noundef %13, i32 noundef 10, ptr noundef nonnull %4) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rcar_du_vsp, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %4, align 4
  %24 = getelementptr inbounds %struct.rcar_du_vsp, ptr %18, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %31, %22
  %27 = phi i32 [ 0, %22 ], [ %32, %31 ]
  %28 = getelementptr %struct.rcar_du_vsp_plane, ptr %25, i32 %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = add nuw i32 %27, 1
  %33 = icmp eq i32 %32, %20
  br i1 %33, label %34, label %26

34:                                               ; preds = %31, %16, %12, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %38

35:                                               ; preds = %6, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %39

36:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %37 = icmp slt i32 %27, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %36, %34
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef nonnull %1) #12
  br label %40

39:                                               ; preds = %36, %35
  store i32 1, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i32 [ -22, %38 ], [ 0, %39 ]
  ret i32 %41
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @rcar_du_crtc_get_crc_sources(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 8
  store i32 %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rcar_du_crtc_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rcar_du_device_info, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %7, %2
  %17 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rcar_du_group, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 1
  %24 = shl nuw nsw i32 1, %23
  %25 = and i32 %24, %20
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 20, i32 45
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = icmp ult i32 %34, %27
  br i1 %35, label %48, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = sub nsw i32 %39, %42
  %44 = select i1 %6, i32 1, i32 2
  %45 = sdiv i32 %43, %44
  %46 = icmp ult i32 %45, 3
  %47 = select i1 %46, i32 27, i32 0
  br label %48

48:                                               ; preds = %36, %16, %7
  %49 = phi i32 [ 7, %7 ], [ 23, %16 ], [ %47, %36 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %10, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_property_blob, ptr %10, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -8
  %19 = icmp eq i32 %18, 2048
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %17) #13
  br label %55

21:                                               ; preds = %15, %2
  %22 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %8, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %55, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %49, %27
  %31 = phi ptr [ %23, %27 ], [ %50, %49 ]
  %32 = phi i32 [ 0, %27 ], [ %51, %49 ]
  %33 = phi ptr [ %25, %27 ], [ %52, %49 ]
  %34 = getelementptr i8, ptr %33, i32 36
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %29
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %30
  %40 = getelementptr i8, ptr %33, i32 32
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %33, i32 68
  %45 = load i32, ptr %44, align 4
  %46 = shl nuw i32 1, %45
  %47 = or i32 %32, %46
  store i32 %47, ptr %22, align 4
  %48 = load ptr, ptr %0, align 8
  br label %49

49:                                               ; preds = %43, %39, %30
  %50 = phi ptr [ %48, %43 ], [ %31, %39 ], [ %31, %30 ]
  %51 = phi i32 [ %47, %43 ], [ %32, %39 ], [ %32, %30 ]
  %52 = load ptr, ptr %33, align 4
  %53 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 30, i32 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %30

55:                                               ; preds = %49, %21, %20
  %56 = phi i32 [ -22, %20 ], [ 0, %21 ], [ 0, %49 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.rcar_cmm_config, align 4
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 4, !range !23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 793, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %2
  tail call fastcc void @rcar_du_crtc_get(ptr noundef %0)
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 36
  %15 = icmp eq i8 %14, 32
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %19 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = icmp eq ptr %18, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.drm_property_blob, ptr %18, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %3, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = call i32 @rcar_cmm_setup(ptr noundef nonnull %20, ptr noundef nonnull %3) #12
  br label %29

29:                                               ; preds = %27, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %30

30:                                               ; preds = %29, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [8 x ptr], align 4
  %4 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #12, !annotation !10
  %5 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_du_group, ptr %8, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %97, label %14

12:                                               ; preds = %56
  %13 = icmp eq i32 %58, 0
  br i1 %13, label %97, label %61

14:                                               ; preds = %56, %2
  %15 = phi i32 [ %58, %56 ], [ 0, %2 ]
  %16 = phi i32 [ %59, %56 ], [ 0, %2 ]
  %17 = phi i32 [ %57, %56 ], [ 0, %2 ]
  %18 = getelementptr %struct.rcar_du_group, ptr %8, i32 0, i32 11, i32 %16
  %19 = getelementptr inbounds %struct.drm_plane, ptr %18, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %56

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %20, i32 0, i32 22
  %26 = load i8, ptr %25, align 4, !range !23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %24
  %29 = add i32 %15, 1
  %30 = icmp eq i32 %15, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.drm_plane_state, ptr %20, i32 0, i32 16
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %44, %31
  %35 = phi i32 [ %15, %31 ], [ %36, %44 ]
  %36 = add i32 %35, -1
  %37 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_plane, ptr %38, i32 0, i32 19
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %40, i32 0, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, %33
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %35
  store ptr %38, ptr %45, align 4
  %46 = icmp eq i32 %36, 0
  br i1 %46, label %47, label %34

47:                                               ; preds = %44, %34, %28
  %48 = phi i32 [ 0, %28 ], [ 0, %44 ], [ %35, %34 ]
  %49 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %48
  store ptr %18, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %20, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rcar_du_format_info, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 2
  %55 = add i32 %54, %17
  br label %56

56:                                               ; preds = %47, %24, %14
  %57 = phi i32 [ %55, %47 ], [ %17, %24 ], [ %17, %14 ]
  %58 = phi i32 [ %29, %47 ], [ %15, %24 ], [ %15, %14 ]
  %59 = add nuw i32 %16, 1
  %60 = icmp eq i32 %59, %10
  br i1 %60, label %12, label %14

61:                                               ; preds = %91, %12
  %62 = phi i32 [ %94, %91 ], [ 0, %12 ]
  %63 = phi i32 [ %95, %91 ], [ 0, %12 ]
  %64 = phi i32 [ %93, %91 ], [ %57, %12 ]
  %65 = phi i32 [ %92, %91 ], [ 0, %12 ]
  %66 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %63
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.drm_plane, ptr %67, i32 0, i32 19
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %64, -4
  %73 = add i32 %71, 1
  %74 = shl i32 %73, %72
  %75 = or i32 %74, %62
  %76 = shl nuw i32 1, %71
  %77 = or i32 %76, %65
  %78 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %69, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.rcar_du_format_info, ptr %79, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %91

83:                                               ; preds = %61
  %84 = and i32 %73, 7
  %85 = add i32 %64, -8
  %86 = add nuw nsw i32 %84, 1
  %87 = shl i32 %86, %85
  %88 = or i32 %87, %75
  %89 = shl nuw nsw i32 1, %84
  %90 = or i32 %89, %77
  br label %91

91:                                               ; preds = %83, %61
  %92 = phi i32 [ %90, %83 ], [ %77, %61 ]
  %93 = phi i32 [ %85, %83 ], [ %72, %61 ]
  %94 = phi i32 [ %88, %83 ], [ %75, %61 ]
  %95 = add nuw i32 %63, 1
  %96 = icmp eq i32 %95, %58
  br i1 %96, label %97, label %61

97:                                               ; preds = %91, %12, %2
  %98 = phi i32 [ 0, %12 ], [ 0, %2 ], [ %92, %91 ]
  %99 = phi i32 [ 0, %12 ], [ 0, %2 ], [ %94, %91 ]
  %100 = getelementptr inbounds %struct.rcar_du_device, ptr %6, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.rcar_du_device_info, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %97
  %107 = load i32, ptr %101, align 4
  %108 = icmp ult i32 %107, 3
  %109 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 1
  br i1 %108, label %112, label %115

112:                                              ; preds = %106
  %113 = add nuw nsw i32 %111, 1
  %114 = shl nuw nsw i32 1, %111
  br label %120

115:                                              ; preds = %106
  %116 = icmp eq i32 %111, 0
  %117 = select i1 %116, i32 1, i32 3
  %118 = shl nuw nsw i32 %111, 1
  %119 = shl nuw nsw i32 1, %118
  br label %120

120:                                              ; preds = %115, %112, %97
  %121 = phi i32 [ %114, %112 ], [ %119, %115 ], [ %98, %97 ]
  %122 = phi i32 [ %113, %112 ], [ %117, %115 ], [ %99, %97 ]
  %123 = getelementptr inbounds %struct.rcar_du_group, ptr %8, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %123) #12
  %124 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 5
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  %128 = load ptr, ptr %7, align 4
  %129 = getelementptr inbounds %struct.rcar_du_group, ptr %128, i32 0, i32 9
  %130 = load i32, ptr %129, align 4
  %131 = or i32 %130, %121
  %132 = xor i32 %121, -1
  %133 = and i32 %130, %132
  %134 = select i1 %127, i32 %133, i32 %131
  %135 = icmp eq i32 %134, %130
  br i1 %135, label %147, label %136

136:                                              ; preds = %120
  %137 = shl i32 %134, 16
  %138 = or i32 %137, %134
  tail call void @rcar_du_group_write(ptr noundef %128, i32 noundef 69636, i32 noundef %138) #12
  %139 = load ptr, ptr %7, align 4
  %140 = getelementptr inbounds %struct.rcar_du_group, ptr %139, i32 0, i32 9
  store i32 %134, ptr %140, align 4
  %141 = load ptr, ptr %7, align 4
  %142 = getelementptr inbounds %struct.rcar_du_group, ptr %141, i32 0, i32 7
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %136
  tail call void @rcar_du_group_restart(ptr noundef %141) #12
  %146 = load ptr, ptr %7, align 4
  br label %147

147:                                              ; preds = %145, %136, %120
  %148 = phi ptr [ %141, %136 ], [ %146, %145 ], [ %128, %120 ]
  %149 = getelementptr inbounds %struct.rcar_du_group, ptr %148, i32 0, i32 12
  %150 = load i8, ptr %149, align 8, !range !23
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %147
  tail call void @rcar_du_group_restart(ptr noundef %148) #12
  %153 = load ptr, ptr %7, align 4
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi ptr [ %153, %152 ], [ %148, %147 ]
  %156 = getelementptr inbounds %struct.rcar_du_group, ptr %155, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %156) #12
  %157 = load ptr, ptr %7, align 4
  %158 = load i32, ptr %124, align 8
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 69664, i32 69668
  tail call void @rcar_du_group_write(ptr noundef %157, i32 noundef %161, i32 noundef %122) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  %162 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.drm_crtc_state, ptr %163, i32 0, i32 18
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %178, label %167

167:                                              ; preds = %154
  %168 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #12
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170, !prof !21

170:                                              ; preds = %167
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 827, i32 noundef 9, ptr noundef null) #12
  br label %171

171:                                              ; preds = %170, %167
  %172 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 28
  %173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %172) #12
  %174 = load ptr, ptr %162, align 4
  %175 = getelementptr inbounds %struct.drm_crtc_state, ptr %174, i32 0, i32 18
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 9
  store ptr %176, ptr %177, align 8
  store ptr null, ptr %175, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %172, i32 noundef %173) #12
  br label %178

178:                                              ; preds = %171, %154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.rcar_cmm_config, align 4
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @rcar_cmm_enable(ptr noundef nonnull %9) #12
  br label %13

13:                                               ; preds = %11, %2
  tail call fastcc void @rcar_du_crtc_get(ptr noundef %0)
  %14 = getelementptr inbounds %struct.rcar_du_device, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rcar_du_device_info, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %5, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr %struct.rcar_du_device, ptr %7, i32 0, i32 9, i32 %19
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, 1000
  %34 = tail call i32 @rcar_lvds_clk_enable(ptr noundef %29, i32 noundef %33) #12
  br label %35

35:                                               ; preds = %27, %23, %13
  %36 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 12, i32 11
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 48
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 7
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, -241
  %45 = or i32 %44, %40
  store i32 %45, ptr %42, align 8
  %46 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.rcar_du_device, ptr %41, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr i8, ptr %49, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #12, !srcloc !9
  %51 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 14
  %52 = load ptr, ptr %51, align 4
  tail call void @rcar_du_group_start_stop(ptr noundef %52, i1 noundef zeroext true) #12
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr inbounds %struct.drm_crtc_state, ptr %53, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %56 = load ptr, ptr %8, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %35
  %59 = icmp eq ptr %55, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.drm_property_blob, ptr %55, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  store ptr %62, ptr %3, align 4
  br label %63

63:                                               ; preds = %60, %58
  %64 = call i32 @rcar_cmm_setup(ptr noundef nonnull %56, ptr noundef nonnull %3) #12
  br label %65

65:                                               ; preds = %63, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr %struct.__drm_crtcs_state, ptr %6, i32 %8, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #12
  %14 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #12
  %15 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 69664, i32 69668
  tail call void @rcar_du_group_write(ptr noundef %16, i32 noundef %21, i32 noundef 0) #12
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 8
  %26 = getelementptr inbounds %struct.rcar_du_device, ptr %22, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #12, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1, i32 2
  %33 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 13
  store i32 %32, ptr %33, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %34 = load i16, ptr %14, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %36 = load i32, ptr %33, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #12, !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #12
  %39 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 12
  %40 = call i32 @prepare_to_wait_event(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 2) #12
  %41 = load i32, ptr %33, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @finish_wait(ptr noundef %39, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br label %59

44:                                               ; preds = %44, %38
  %45 = phi i32 [ %53, %44 ], [ 10, %38 ]
  %46 = call i32 @schedule_timeout(i32 noundef %45) #12
  %47 = call i32 @prepare_to_wait_event(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 2) #12
  %48 = load i32, ptr %33, align 8
  %49 = icmp eq i32 %48, 0
  %50 = xor i1 %49, true
  %51 = icmp ne i32 %46, 0
  %52 = select i1 %50, i1 true, i1 %51
  %53 = select i1 %52, i32 %46, i32 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %49, i1 true, i1 %54
  br i1 %55, label %56, label %44

56:                                               ; preds = %44
  call void @finish_wait(ptr noundef %39, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br i1 %54, label %57, label %59

57:                                               ; preds = %56
  %58 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.16) #13
  br label %59

59:                                               ; preds = %57, %56, %43, %2
  call void @drm_crtc_vblank_put(ptr noundef %0) #12
  %60 = load ptr, ptr %11, align 8
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 28
  %63 = call i32 @_raw_spin_lock_irqsave(ptr noundef %62) #12
  %64 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 9
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %63) #12
  br i1 %66, label %88, label %67

67:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #12, !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #12
  %68 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 10
  br label %69

69:                                               ; preds = %83, %67
  %70 = phi i32 [ 5, %67 ], [ %84, %83 ]
  %71 = call i32 @prepare_to_wait_event(ptr noundef %68, ptr noundef nonnull %3, i32 noundef 2) #12
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 28
  %74 = call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #12
  %75 = load ptr, ptr %64, align 8
  %76 = icmp ne ptr %75, null
  call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %74) #12
  %77 = xor i1 %76, true
  %78 = icmp ne i32 %70, 0
  %79 = select i1 %76, i1 true, i1 %78
  %80 = select i1 %79, i32 %70, i32 1
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %77, i1 true, i1 %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %69
  %84 = call i32 @schedule_timeout(i32 noundef %80) #12
  br label %69

85:                                               ; preds = %69
  call void @finish_wait(ptr noundef %68, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br i1 %81, label %86, label %88

86:                                               ; preds = %85
  %87 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.17) #13
  call void @rcar_du_crtc_finish_page_flip(ptr noundef %0) #12
  br label %88

88:                                               ; preds = %86, %85, %59
  call void @drm_crtc_vblank_off(ptr noundef %0) #12
  %89 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 15
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @rcar_cmm_disable(ptr noundef nonnull %90) #12
  br label %93

93:                                               ; preds = %92, %88
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds %struct.rcar_du_device, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.rcar_du_device_info, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 7
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, -193
  %105 = or i32 %104, 64
  store i32 %105, ptr %102, align 8
  %106 = load i32, ptr %23, align 4
  %107 = getelementptr inbounds %struct.rcar_du_device, ptr %94, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr i8, ptr %108, i32 %106
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %105) #12, !srcloc !9
  br label %110

110:                                              ; preds = %101, %93
  %111 = load ptr, ptr %15, align 4
  call void @rcar_du_group_start_stop(ptr noundef %111, i1 noundef zeroext false) #12
  %112 = load ptr, ptr %15, align 4
  call void @rcar_du_group_put(ptr noundef %112) #12
  %113 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 3
  %114 = load ptr, ptr %113, align 8
  call void @clk_disable(ptr noundef %114) #12
  call void @clk_unprepare(ptr noundef %114) #12
  %115 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  call void @clk_disable(ptr noundef %116) #12
  call void @clk_unprepare(ptr noundef %116) #12
  %117 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 6
  store i8 0, ptr %117, align 4
  %118 = getelementptr inbounds %struct.rcar_du_device, ptr %12, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.rcar_du_device_info, ptr %119, i32 0, i32 8
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %17, align 8
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %110
  %127 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %10, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = getelementptr %struct.rcar_du_device, ptr %12, i32 0, i32 9, i32 %122
  %132 = load ptr, ptr %131, align 4
  call void @rcar_lvds_clk_disable(ptr noundef %132) #12
  br label %133

133:                                              ; preds = %130, %126, %110
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr inbounds %struct.drm_device, ptr %134, i32 0, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %135) #12
  %136 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.drm_crtc_state, ptr %137, i32 0, i32 18
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %133
  call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %139) #12
  %142 = load ptr, ptr %136, align 4
  %143 = getelementptr inbounds %struct.drm_crtc_state, ptr %142, i32 0, i32 18
  store ptr null, ptr %143, align 4
  br label %144

144:                                              ; preds = %141, %133
  %145 = load ptr, ptr %0, align 8
  %146 = getelementptr inbounds %struct.drm_device, ptr %145, i32 0, i32 28
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %147 = load i16, ptr %146, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %146, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_du_crtc_get(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 4, !range !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %483

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @clk_enable(ptr noundef %7) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ %8, %5 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %483, label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #12
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi i32 [ %20, %17 ], [ %23, %25 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %481, label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @rcar_du_group_get(ptr noundef %31) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %479, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 144
  %40 = getelementptr inbounds %struct.rcar_du_device, ptr %36, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #12, !srcloc !9
  %43 = load ptr, ptr %35, align 8
  %44 = load i32, ptr %37, align 4
  %45 = add i32 %44, 152
  %46 = getelementptr inbounds %struct.rcar_du_device, ptr %43, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %47, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #12, !srcloc !9
  %49 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7
  %52 = load ptr, ptr %35, align 8
  %53 = load i32, ptr %51, align 4
  %54 = mul i32 %53, 1000
  %55 = getelementptr inbounds %struct.rcar_du_device, ptr %52, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.rcar_du_device_info, ptr %56, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.rcar_du_crtc, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %58
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %253, label %64

64:                                               ; preds = %34
  %65 = tail call ptr @soc_device_match(ptr noundef nonnull @rcar_du_r8a7795_es1) #12
  %66 = icmp eq ptr %65, null
  %67 = mul i32 %53, 2000
  %68 = select i1 %66, i32 %54, i32 %67
  %69 = xor i1 %66, true
  %70 = zext i1 %69 to i32
  %71 = load ptr, ptr %18, align 8
  %72 = tail call i32 @clk_get_rate(ptr noundef %71) #12
  br label %73

73:                                               ; preds = %103, %64
  %74 = phi i32 [ 0, %64 ], [ %104, %103 ]
  %75 = phi i32 [ 0, %64 ], [ %105, %103 ]
  %76 = phi i32 [ -1, %64 ], [ %106, %103 ]
  %77 = phi i32 [ 119, %64 ], [ %107, %103 ]
  %78 = add nuw nsw i32 %77, 1
  %79 = mul i32 %78, %72
  %80 = add i32 %79, -2048000001
  %81 = icmp ult i32 %80, -2047999001
  br i1 %81, label %103, label %82

82:                                               ; preds = %98, %73
  %83 = phi i32 [ %99, %98 ], [ %74, %73 ]
  %84 = phi i32 [ %100, %98 ], [ %75, %73 ]
  %85 = phi i32 [ %101, %98 ], [ %76, %73 ]
  %86 = phi i32 [ %87, %98 ], [ 1, %73 ]
  %87 = add nuw nsw i32 %86, 1
  %88 = udiv i32 %79, %87
  %89 = icmp ugt i32 %88, 399999999
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = sub i32 %88, %68
  %92 = tail call i32 @llvm.abs.i32(i32 %91, i1 false) #12
  %93 = icmp ugt i32 %85, %92
  %94 = select i1 %93, i32 %86, i32 %83
  %95 = select i1 %93, i32 %77, i32 %84
  %96 = tail call i32 @llvm.umin.i32(i32 %85, i32 %92) #12
  %97 = icmp eq i32 %88, %68
  br i1 %97, label %239, label %98

98:                                               ; preds = %90, %82
  %99 = phi i32 [ %83, %82 ], [ %94, %90 ]
  %100 = phi i32 [ %84, %82 ], [ %95, %90 ]
  %101 = phi i32 [ %85, %82 ], [ %96, %90 ]
  %102 = icmp eq i32 %87, 32
  br i1 %102, label %103, label %82

103:                                              ; preds = %98, %73
  %104 = phi i32 [ %74, %73 ], [ %99, %98 ]
  %105 = phi i32 [ %75, %73 ], [ %100, %98 ]
  %106 = phi i32 [ %76, %73 ], [ %101, %98 ]
  %107 = add nsw i32 %77, -1
  %108 = icmp ugt i32 %107, 38
  br i1 %108, label %73, label %109

109:                                              ; preds = %146, %103
  %110 = phi i32 [ %147, %146 ], [ %104, %103 ]
  %111 = phi i32 [ %148, %146 ], [ %105, %103 ]
  %112 = phi i32 [ %149, %146 ], [ 0, %103 ]
  %113 = phi i32 [ %150, %146 ], [ %106, %103 ]
  %114 = phi i32 [ %151, %146 ], [ 119, %103 ]
  %115 = add nuw nsw i32 %114, 1
  %116 = mul i32 %115, %72
  %117 = lshr i32 %116, 1
  %118 = add nsw i32 %117, -2048000001
  %119 = icmp ult i32 %118, -2047999001
  br i1 %119, label %146, label %120

120:                                              ; preds = %140, %109
  %121 = phi i32 [ %141, %140 ], [ %110, %109 ]
  %122 = phi i32 [ %142, %140 ], [ %111, %109 ]
  %123 = phi i32 [ %143, %140 ], [ %112, %109 ]
  %124 = phi i32 [ %144, %140 ], [ %113, %109 ]
  %125 = phi i32 [ %126, %140 ], [ 1, %109 ]
  %126 = add nuw nsw i32 %125, 1
  %127 = udiv i32 %117, %126
  %128 = icmp ugt i32 %127, 399999999
  br i1 %128, label %140, label %129

129:                                              ; preds = %120
  %130 = sub i32 %127, %68
  %131 = tail call i32 @llvm.abs.i32(i32 %130, i1 false) #12
  %132 = icmp ugt i32 %124, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133, %129
  %135 = phi i32 [ %125, %133 ], [ %121, %129 ]
  %136 = phi i32 [ %114, %133 ], [ %122, %129 ]
  %137 = phi i32 [ 1, %133 ], [ %123, %129 ]
  %138 = phi i32 [ %131, %133 ], [ %124, %129 ]
  %139 = icmp eq i32 %127, %68
  br i1 %139, label %239, label %140

140:                                              ; preds = %134, %120
  %141 = phi i32 [ %121, %120 ], [ %135, %134 ]
  %142 = phi i32 [ %122, %120 ], [ %136, %134 ]
  %143 = phi i32 [ %123, %120 ], [ %137, %134 ]
  %144 = phi i32 [ %124, %120 ], [ %138, %134 ]
  %145 = icmp eq i32 %126, 32
  br i1 %145, label %146, label %120

146:                                              ; preds = %140, %109
  %147 = phi i32 [ %110, %109 ], [ %141, %140 ]
  %148 = phi i32 [ %111, %109 ], [ %142, %140 ]
  %149 = phi i32 [ %112, %109 ], [ %143, %140 ]
  %150 = phi i32 [ %113, %109 ], [ %144, %140 ]
  %151 = add nsw i32 %114, -1
  %152 = icmp ugt i32 %151, 38
  br i1 %152, label %109, label %153

153:                                              ; preds = %189, %146
  %154 = phi i32 [ %190, %189 ], [ %147, %146 ]
  %155 = phi i32 [ %191, %189 ], [ %148, %146 ]
  %156 = phi i32 [ %192, %189 ], [ %149, %146 ]
  %157 = phi i32 [ %193, %189 ], [ %150, %146 ]
  %158 = phi i32 [ %194, %189 ], [ 119, %146 ]
  %159 = add nuw nsw i32 %158, 1
  %160 = mul i32 %159, %72
  %161 = udiv i32 %160, 3
  %162 = icmp ult i32 %160, 3000
  br i1 %162, label %189, label %163

163:                                              ; preds = %183, %153
  %164 = phi i32 [ %184, %183 ], [ %154, %153 ]
  %165 = phi i32 [ %185, %183 ], [ %155, %153 ]
  %166 = phi i32 [ %186, %183 ], [ %156, %153 ]
  %167 = phi i32 [ %187, %183 ], [ %157, %153 ]
  %168 = phi i32 [ %169, %183 ], [ 1, %153 ]
  %169 = add nuw nsw i32 %168, 1
  %170 = udiv i32 %161, %169
  %171 = icmp ugt i32 %170, 399999999
  br i1 %171, label %183, label %172

172:                                              ; preds = %163
  %173 = sub i32 %170, %68
  %174 = tail call i32 @llvm.abs.i32(i32 %173, i1 false) #12
  %175 = icmp ugt i32 %167, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176, %172
  %178 = phi i32 [ %168, %176 ], [ %164, %172 ]
  %179 = phi i32 [ %158, %176 ], [ %165, %172 ]
  %180 = phi i32 [ 2, %176 ], [ %166, %172 ]
  %181 = phi i32 [ %174, %176 ], [ %167, %172 ]
  %182 = icmp eq i32 %170, %68
  br i1 %182, label %239, label %183

183:                                              ; preds = %177, %163
  %184 = phi i32 [ %164, %163 ], [ %178, %177 ]
  %185 = phi i32 [ %165, %163 ], [ %179, %177 ]
  %186 = phi i32 [ %166, %163 ], [ %180, %177 ]
  %187 = phi i32 [ %167, %163 ], [ %181, %177 ]
  %188 = icmp eq i32 %169, 32
  br i1 %188, label %189, label %163

189:                                              ; preds = %183, %153
  %190 = phi i32 [ %154, %153 ], [ %184, %183 ]
  %191 = phi i32 [ %155, %153 ], [ %185, %183 ]
  %192 = phi i32 [ %156, %153 ], [ %186, %183 ]
  %193 = phi i32 [ %157, %153 ], [ %187, %183 ]
  %194 = add nsw i32 %158, -1
  %195 = icmp ugt i32 %194, 38
  br i1 %195, label %153, label %196

196:                                              ; preds = %232, %189
  %197 = phi i32 [ %233, %232 ], [ %190, %189 ]
  %198 = phi i32 [ %234, %232 ], [ %191, %189 ]
  %199 = phi i32 [ %235, %232 ], [ %192, %189 ]
  %200 = phi i32 [ %236, %232 ], [ %193, %189 ]
  %201 = phi i32 [ %237, %232 ], [ 119, %189 ]
  %202 = add nuw nsw i32 %201, 1
  %203 = mul i32 %202, %72
  %204 = lshr i32 %203, 2
  %205 = icmp ult i32 %203, 4000
  br i1 %205, label %232, label %206

206:                                              ; preds = %226, %196
  %207 = phi i32 [ %227, %226 ], [ %197, %196 ]
  %208 = phi i32 [ %228, %226 ], [ %198, %196 ]
  %209 = phi i32 [ %229, %226 ], [ %199, %196 ]
  %210 = phi i32 [ %230, %226 ], [ %200, %196 ]
  %211 = phi i32 [ %212, %226 ], [ 1, %196 ]
  %212 = add nuw nsw i32 %211, 1
  %213 = udiv i32 %204, %212
  %214 = icmp ugt i32 %213, 399999999
  br i1 %214, label %226, label %215

215:                                              ; preds = %206
  %216 = sub i32 %213, %68
  %217 = tail call i32 @llvm.abs.i32(i32 %216, i1 false) #12
  %218 = icmp ugt i32 %210, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %220

220:                                              ; preds = %219, %215
  %221 = phi i32 [ %211, %219 ], [ %207, %215 ]
  %222 = phi i32 [ %201, %219 ], [ %208, %215 ]
  %223 = phi i32 [ 3, %219 ], [ %209, %215 ]
  %224 = phi i32 [ %217, %219 ], [ %210, %215 ]
  %225 = icmp eq i32 %213, %68
  br i1 %225, label %239, label %226

226:                                              ; preds = %220, %206
  %227 = phi i32 [ %207, %206 ], [ %221, %220 ]
  %228 = phi i32 [ %208, %206 ], [ %222, %220 ]
  %229 = phi i32 [ %209, %206 ], [ %223, %220 ]
  %230 = phi i32 [ %210, %206 ], [ %224, %220 ]
  %231 = icmp eq i32 %212, 32
  br i1 %231, label %232, label %206

232:                                              ; preds = %226, %196
  %233 = phi i32 [ %197, %196 ], [ %227, %226 ]
  %234 = phi i32 [ %198, %196 ], [ %228, %226 ]
  %235 = phi i32 [ %199, %196 ], [ %229, %226 ]
  %236 = phi i32 [ %200, %196 ], [ %230, %226 ]
  %237 = add nsw i32 %201, -1
  %238 = icmp ugt i32 %237, 38
  br i1 %238, label %196, label %239

239:                                              ; preds = %232, %220, %177, %134, %90
  %240 = phi i32 [ %221, %220 ], [ %233, %232 ], [ %178, %177 ], [ %135, %134 ], [ %94, %90 ]
  %241 = phi i32 [ %222, %220 ], [ %234, %232 ], [ %179, %177 ], [ %136, %134 ], [ %95, %90 ]
  %242 = phi i32 [ %223, %220 ], [ %235, %232 ], [ %180, %177 ], [ %137, %134 ], [ 0, %90 ]
  %243 = shl i32 %240, 12
  %244 = shl i32 %241, 5
  %245 = or i32 %244, %243
  %246 = shl i32 %242, 3
  %247 = or i32 %245, %246
  %248 = load i32, ptr %59, align 8
  %249 = icmp eq i32 %248, 1
  %250 = select i1 %249, i32 -1786511354, i32 -1791754236
  %251 = or i32 %247, %250
  %252 = load ptr, ptr %30, align 4
  tail call void @rcar_du_group_write(ptr noundef %252, i32 noundef 131140, i32 noundef %251) #12
  br label %297

253:                                              ; preds = %34
  %254 = getelementptr inbounds %struct.rcar_du_device_info, ptr %56, i32 0, i32 8
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %255, %61
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %297

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.rcar_du_device_info, ptr %56, i32 0, i32 7
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, %61
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %297

263:                                              ; preds = %258
  %264 = load ptr, ptr %6, align 4
  %265 = tail call i32 @clk_round_rate(ptr noundef %264, i32 noundef %54) #12
  %266 = lshr exact i32 %54, 1
  %267 = add i32 %265, %266
  %268 = udiv i32 %267, %54
  %269 = tail call i32 @llvm.umax.i32(i32 %268, i32 1) #12
  %270 = tail call i32 @llvm.umin.i32(i32 %269, i32 64) #12
  %271 = udiv i32 %265, %270
  %272 = add nsw i32 %270, -1
  %273 = or i32 %272, 1048576
  %274 = load ptr, ptr %18, align 8
  %275 = icmp eq ptr %274, null
  %276 = icmp eq i32 %271, %54
  %277 = select i1 %275, i1 true, i1 %276
  br i1 %277, label %292, label %278

278:                                              ; preds = %263
  %279 = sub i32 %271, %54
  %280 = tail call i32 @llvm.abs.i32(i32 %279, i1 false) #12
  %281 = tail call i32 @clk_round_rate(ptr noundef nonnull %274, i32 noundef %54) #12
  %282 = add i32 %281, %266
  %283 = udiv i32 %282, %54
  %284 = tail call i32 @llvm.umax.i32(i32 %283, i32 1) #12
  %285 = tail call i32 @llvm.umin.i32(i32 %284, i32 64) #12
  %286 = udiv i32 %281, %285
  %287 = sub i32 %286, %54
  %288 = tail call i32 @llvm.abs.i32(i32 %287, i1 false) #12
  %289 = icmp ult i32 %288, %280
  br i1 %289, label %290, label %292

290:                                              ; preds = %278
  %291 = add nsw i32 %285, -1
  br label %292

292:                                              ; preds = %290, %278, %263
  %293 = phi i32 [ %273, %263 ], [ %291, %290 ], [ %273, %278 ]
  %294 = phi i32 [ %265, %263 ], [ %281, %290 ], [ %265, %278 ]
  %295 = phi ptr [ %264, %263 ], [ %274, %290 ], [ %264, %278 ]
  %296 = tail call i32 @clk_set_rate(ptr noundef %295, i32 noundef %294) #12
  br label %297

297:                                              ; preds = %292, %258, %253, %239
  %298 = phi i32 [ %70, %239 ], [ %293, %292 ], [ 0, %258 ], [ 0, %253 ]
  %299 = load i32, ptr %59, align 8
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %301, i32 65536, i32 4096
  %303 = load ptr, ptr %35, align 8
  %304 = load i32, ptr %37, align 4
  %305 = add i32 %302, %304
  %306 = getelementptr inbounds %struct.rcar_du_device, ptr %303, i32 0, i32 2
  %307 = load ptr, ptr %306, align 8
  %308 = getelementptr i8, ptr %307, i32 %305
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %298) #12, !srcloc !9
  %309 = load i32, ptr %59, align 8
  %310 = and i32 %309, 1
  %311 = icmp eq i32 %310, 0
  %312 = select i1 %311, i32 65540, i32 4100
  %313 = load ptr, ptr %35, align 8
  %314 = load i32, ptr %37, align 4
  %315 = add i32 %312, %314
  %316 = getelementptr inbounds %struct.rcar_du_device, ptr %313, i32 0, i32 2
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr i8, ptr %317, i32 %315
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 0) #12, !srcloc !9
  %319 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 11
  %320 = load i32, ptr %319, align 4
  %321 = shl i32 %320, 16
  %322 = and i32 %321, 262144
  %323 = shl i32 %320, 17
  %324 = and i32 %323, 131072
  %325 = shl i32 %320, 4
  %326 = and i32 %325, 256
  %327 = or i32 %324, %322
  %328 = or i32 %327, %326
  %329 = or i32 %328, 16777216
  %330 = load ptr, ptr %35, align 8
  %331 = load i32, ptr %37, align 4
  %332 = add i32 %331, 4
  %333 = getelementptr inbounds %struct.rcar_du_device, ptr %330, i32 0, i32 2
  %334 = load ptr, ptr %333, align 8
  %335 = getelementptr i8, ptr %334, i32 %332
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %329) #12, !srcloc !9
  %336 = load ptr, ptr %30, align 4
  %337 = getelementptr inbounds %struct.rcar_du_group, ptr %336, i32 0, i32 4
  %338 = load i32, ptr %337, align 8
  %339 = load i32, ptr %59, align 8
  %340 = and i32 %339, 1
  %341 = shl nuw nsw i32 1, %340
  %342 = and i32 %341, %338
  %343 = icmp eq i32 %342, 0
  %344 = select i1 %343, i32 -19, i32 -44
  %345 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 4
  %346 = load i16, ptr %345, align 2
  %347 = zext i16 %346 to i32
  %348 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 2
  %349 = load i16, ptr %348, align 2
  %350 = zext i16 %349 to i32
  %351 = sub nsw i32 %347, %350
  %352 = add nsw i32 %351, %344
  %353 = load ptr, ptr %35, align 8
  %354 = load i32, ptr %37, align 4
  %355 = add i32 %354, 64
  %356 = getelementptr inbounds %struct.rcar_du_device, ptr %353, i32 0, i32 2
  %357 = load ptr, ptr %356, align 8
  %358 = getelementptr i8, ptr %357, i32 %355
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %352) #12, !srcloc !9
  %359 = load i16, ptr %345, align 2
  %360 = zext i16 %359 to i32
  %361 = load i16, ptr %348, align 2
  %362 = zext i16 %361 to i32
  %363 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 1
  %364 = load i16, ptr %363, align 4
  %365 = zext i16 %364 to i32
  %366 = add nsw i32 %344, %360
  %367 = sub nsw i32 %366, %362
  %368 = add nsw i32 %367, %365
  %369 = load ptr, ptr %35, align 8
  %370 = load i32, ptr %37, align 4
  %371 = add i32 %370, 68
  %372 = getelementptr inbounds %struct.rcar_du_device, ptr %369, i32 0, i32 2
  %373 = load ptr, ptr %372, align 8
  %374 = getelementptr i8, ptr %373, i32 %371
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %368) #12, !srcloc !9
  %375 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 3
  %376 = load i16, ptr %375, align 4
  %377 = zext i16 %376 to i32
  %378 = load i16, ptr %348, align 2
  %379 = zext i16 %378 to i32
  %380 = xor i32 %379, -1
  %381 = add nsw i32 %380, %377
  %382 = load ptr, ptr %35, align 8
  %383 = load i32, ptr %37, align 4
  %384 = add i32 %383, 84
  %385 = getelementptr inbounds %struct.rcar_du_device, ptr %382, i32 0, i32 2
  %386 = load ptr, ptr %385, align 8
  %387 = getelementptr i8, ptr %386, i32 %384
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 %381) #12, !srcloc !9
  %388 = load i16, ptr %345, align 2
  %389 = zext i16 %388 to i32
  %390 = add nsw i32 %389, -1
  %391 = load ptr, ptr %35, align 8
  %392 = load i32, ptr %37, align 4
  %393 = add i32 %392, 80
  %394 = getelementptr inbounds %struct.rcar_du_device, ptr %391, i32 0, i32 2
  %395 = load ptr, ptr %394, align 8
  %396 = getelementptr i8, ptr %395, i32 %393
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 %390) #12, !srcloc !9
  %397 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 25
  %398 = load i16, ptr %397, align 4
  %399 = zext i16 %398 to i32
  %400 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 24
  %401 = load i16, ptr %400, align 2
  %402 = zext i16 %401 to i32
  %403 = add nsw i32 %399, -2
  %404 = sub nsw i32 %403, %402
  %405 = load ptr, ptr %35, align 8
  %406 = load i32, ptr %37, align 4
  %407 = add i32 %406, 72
  %408 = getelementptr inbounds %struct.rcar_du_device, ptr %405, i32 0, i32 2
  %409 = load ptr, ptr %408, align 8
  %410 = getelementptr i8, ptr %409, i32 %407
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %410, i32 %404) #12, !srcloc !9
  %411 = load i16, ptr %397, align 4
  %412 = zext i16 %411 to i32
  %413 = load i16, ptr %400, align 2
  %414 = zext i16 %413 to i32
  %415 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 20
  %416 = load i16, ptr %415, align 2
  %417 = zext i16 %416 to i32
  %418 = add nsw i32 %412, -2
  %419 = sub nsw i32 %418, %414
  %420 = add nsw i32 %419, %417
  %421 = load ptr, ptr %35, align 8
  %422 = load i32, ptr %37, align 4
  %423 = add i32 %422, 76
  %424 = getelementptr inbounds %struct.rcar_du_device, ptr %421, i32 0, i32 2
  %425 = load ptr, ptr %424, align 8
  %426 = getelementptr i8, ptr %425, i32 %423
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %426, i32 %420) #12, !srcloc !9
  %427 = load i16, ptr %397, align 4
  %428 = zext i16 %427 to i32
  %429 = load i16, ptr %400, align 2
  %430 = zext i16 %429 to i32
  %431 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 23
  %432 = load i16, ptr %431, align 4
  %433 = zext i16 %432 to i32
  %434 = xor i32 %430, -1
  %435 = add nsw i32 %434, %428
  %436 = add nsw i32 %435, %433
  %437 = load ptr, ptr %35, align 8
  %438 = load i32, ptr %37, align 4
  %439 = add i32 %438, 92
  %440 = getelementptr inbounds %struct.rcar_du_device, ptr %437, i32 0, i32 2
  %441 = load ptr, ptr %440, align 8
  %442 = getelementptr i8, ptr %441, i32 %439
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 %436) #12, !srcloc !9
  %443 = load i16, ptr %397, align 4
  %444 = zext i16 %443 to i32
  %445 = add nsw i32 %444, -1
  %446 = load ptr, ptr %35, align 8
  %447 = load i32, ptr %37, align 4
  %448 = add i32 %447, 88
  %449 = getelementptr inbounds %struct.rcar_du_device, ptr %446, i32 0, i32 2
  %450 = load ptr, ptr %449, align 8
  %451 = getelementptr i8, ptr %450, i32 %448
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %451, i32 %445) #12, !srcloc !9
  %452 = load i16, ptr %345, align 2
  %453 = zext i16 %452 to i32
  %454 = load i16, ptr %348, align 2
  %455 = zext i16 %454 to i32
  %456 = xor i32 %455, -1
  %457 = add nsw i32 %456, %453
  %458 = load ptr, ptr %35, align 8
  %459 = load i32, ptr %37, align 4
  %460 = add i32 %459, 120
  %461 = getelementptr inbounds %struct.rcar_du_device, ptr %458, i32 0, i32 2
  %462 = load ptr, ptr %461, align 8
  %463 = getelementptr i8, ptr %462, i32 %460
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %463, i32 %457) #12, !srcloc !9
  %464 = load i16, ptr %363, align 4
  %465 = zext i16 %464 to i32
  %466 = load ptr, ptr %35, align 8
  %467 = load i32, ptr %37, align 4
  %468 = add i32 %467, 124
  %469 = getelementptr inbounds %struct.rcar_du_device, ptr %466, i32 0, i32 2
  %470 = load ptr, ptr %469, align 8
  %471 = getelementptr i8, ptr %470, i32 %468
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %471, i32 %465) #12, !srcloc !9
  %472 = load ptr, ptr %30, align 4
  %473 = tail call i32 @rcar_du_group_set_routing(ptr noundef %472) #12
  %474 = load ptr, ptr %30, align 4
  %475 = load i32, ptr %59, align 8
  %476 = and i32 %475, 1
  %477 = icmp eq i32 %476, 0
  %478 = select i1 %477, i32 69664, i32 69668
  tail call void @rcar_du_group_write(ptr noundef %474, i32 noundef %478, i32 noundef 0) #12
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #12
  store i8 1, ptr %2, align 4
  br label %483

479:                                              ; preds = %29
  %480 = load ptr, ptr %18, align 8
  tail call void @clk_disable(ptr noundef %480) #12
  tail call void @clk_unprepare(ptr noundef %480) #12
  br label %481

481:                                              ; preds = %479, %26
  %482 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %482) #12
  tail call void @clk_unprepare(ptr noundef %482) #12
  br label %483

483:                                              ; preds = %481, %297, %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_group_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_group_set_routing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_cmm_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_cmm_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_lvds_clk_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_start_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_lvds_clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_cmm_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 2153046534}
!9 = !{i64 5512931}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 5513349}
!13 = !{i64 2153045312}
!14 = !{i64 2148911970}
!15 = !{i64 2148907794}
!16 = !{i64 2148907869, i64 2148907896, i64 2148907943, i64 2148907965, i64 2148907993, i64 2148908013}
!17 = !{i64 2148934973}
!18 = !{i64 2148077641}
!19 = !{i64 473802, i64 2147963773, i64 2147963799, i64 2147963846, i64 2147963868, i64 2147963896, i64 2147963916}
!20 = !{i64 2147979800, i64 2147979832, i64 2147979861, i64 2147979895, i64 2147979926, i64 2147979949}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149548400}
!23 = !{i8 0, i8 2}
!24 = !{i64 369286}
!25 = !{i64 2148936114}
