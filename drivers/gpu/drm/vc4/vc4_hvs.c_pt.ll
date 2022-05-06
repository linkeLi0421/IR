; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_hvs.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_hvs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.77, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.78, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
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
%struct.anon.74 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.77 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.78 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.79, i32, i8 }
%struct.anon.79 = type { i32, i32, i32, i32 }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.72 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }
%struct.vc4_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i8, i8, [3 x i32], %struct.drm_mm_node, i8, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }

@.str = private unnamed_addr constant [18 x i8] c"\016[drm] HVS ctx:\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\016[drm] 0x%08x (%s): 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@vc4_hvs_stop_channel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/vc4/vc4_hvs.c\00", align 1
@vc4_hvs_stop_channel.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_hvs_stop_channel.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_hvs_atomic_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"vc4_hvs\00", align 1
@vc4_hvs_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hvs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-hvs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@vc4_hvs_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_hvs_dev_probe, ptr @vc4_hvs_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_hvs_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_hvs_ops = internal constant %struct.component_ops { ptr @vc4_hvs_bind, ptr @vc4_hvs_unbind }, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"brcm,bcm2711-hvs\00", align 1
@hvs_regs = internal constant [31 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.16, i32 0 }, %struct.debugfs_reg32 { ptr @.str.17, i32 4 }, %struct.debugfs_reg32 { ptr @.str.18, i32 8 }, %struct.debugfs_reg32 { ptr @.str.19, i32 12 }, %struct.debugfs_reg32 { ptr @.str.20, i32 16 }, %struct.debugfs_reg32 { ptr @.str.21, i32 20 }, %struct.debugfs_reg32 { ptr @.str.22, i32 24 }, %struct.debugfs_reg32 { ptr @.str.23, i32 32 }, %struct.debugfs_reg32 { ptr @.str.24, i32 36 }, %struct.debugfs_reg32 { ptr @.str.25, i32 40 }, %struct.debugfs_reg32 { ptr @.str.26, i32 44 }, %struct.debugfs_reg32 { ptr @.str.27, i32 48 }, %struct.debugfs_reg32 { ptr @.str.28, i32 52 }, %struct.debugfs_reg32 { ptr @.str.29, i32 56 }, %struct.debugfs_reg32 { ptr @.str.30, i32 64 }, %struct.debugfs_reg32 { ptr @.str.31, i32 68 }, %struct.debugfs_reg32 { ptr @.str.32, i32 72 }, %struct.debugfs_reg32 { ptr @.str.33, i32 76 }, %struct.debugfs_reg32 { ptr @.str.34, i32 80 }, %struct.debugfs_reg32 { ptr @.str.35, i32 84 }, %struct.debugfs_reg32 { ptr @.str.36, i32 88 }, %struct.debugfs_reg32 { ptr @.str.37, i32 92 }, %struct.debugfs_reg32 { ptr @.str.38, i32 96 }, %struct.debugfs_reg32 { ptr @.str.39, i32 100 }, %struct.debugfs_reg32 { ptr @.str.40, i32 104 }, %struct.debugfs_reg32 { ptr @.str.41, i32 108 }, %struct.debugfs_reg32 { ptr @.str.42, i32 112 }, %struct.debugfs_reg32 { ptr @.str.43, i32 128 }, %struct.debugfs_reg32 { ptr @.str.44, i32 132 }, %struct.debugfs_reg32 { ptr @.str.45, i32 136 }, %struct.debugfs_reg32 { ptr @.str.46, i32 140 }], align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Couldn't get core clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Couldn't enable the core clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"vc4 hvs\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"hvs_regs\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"hvs_underrun\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"SCALER_DISPCTRL\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SCALER_DISPSTAT\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SCALER_DISPID\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"SCALER_DISPECTRL\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"SCALER_DISPPROF\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"SCALER_DISPDITHER\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"SCALER_DISPEOLN\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"SCALER_DISPLIST0\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"SCALER_DISPLIST1\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"SCALER_DISPLIST2\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"SCALER_DISPLSTAT\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"SCALER_DISPLACT0\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"SCALER_DISPLACT1\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"SCALER_DISPLACT2\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"SCALER_DISPCTRL0\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"SCALER_DISPBKGND0\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"SCALER_DISPSTAT0\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"SCALER_DISPBASE0\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"SCALER_DISPCTRL1\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"SCALER_DISPBKGND1\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"SCALER_DISPSTAT1\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"SCALER_DISPBASE1\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"SCALER_DISPCTRL2\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"SCALER_DISPBKGND2\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"SCALER_DISPSTAT2\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"SCALER_DISPBASE2\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"SCALER_DISPALPHA2\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"SCALER_OLEDOFFS\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"SCALER_OLEDCOEF0\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"SCALER_OLEDCOEF1\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"SCALER_OLEDCOEF2\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"Failed to allocate space for filter kernel: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"*ERROR* HVS underrun\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_dump_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  store ptr @__drm_printfn_info, ptr %2, align 4, !alias.scope !8
  %7 = getelementptr inbounds %struct.drm_printer, ptr %2, i32 0, i32 1
  store ptr null, ptr %7, align 4, !alias.scope !8
  %8 = getelementptr inbounds %struct.drm_printer, ptr %2, i32 0, i32 2
  store ptr %6, ptr %8, align 4, !alias.scope !8
  %9 = getelementptr inbounds %struct.drm_printer, ptr %2, i32 0, i32 3
  store ptr null, ptr %9, align 4, !alias.scope !8
  %10 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 8
  call void @drm_print_regset32(ptr noundef nonnull %2, ptr noundef %10) #5
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i32 [ 0, %1 ], [ %41, %12 ]
  %14 = shl nuw nsw i32 %13, 2
  %15 = icmp ult i32 %13, 32
  %16 = select i1 %15, ptr @.str.2, ptr @.str.3
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.vc4_hvs, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i32, ptr %19, i32 %13
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.vc4_hvs, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i32, ptr %24, i32 1
  %26 = getelementptr i32, ptr %25, i32 %13
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.vc4_hvs, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i32, ptr %30, i32 2
  %32 = getelementptr i32, ptr %31, i32 %13
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.vc4_hvs, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i32, ptr %36, i32 3
  %38 = getelementptr i32, ptr %37, i32 %13
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %14, ptr noundef nonnull %16, i32 noundef %21, i32 noundef %27, i32 noundef %33, i32 noundef %39) #6
  %41 = add nuw nsw i32 %13, 4
  %42 = icmp ult i32 %13, 60
  br i1 %42, label %12, label %43

43:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_print_regset32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_hvs_get_fifo_from_output(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 9
  %6 = load i8, ptr %5, align 8, !range !16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  switch i32 %1, label %42 [
    i32 0, label %43
    i32 1, label %9
    i32 2, label %10
    i32 3, label %18
    i32 4, label %26
    i32 5, label %34
  ]

9:                                                ; preds = %8
  br label %43

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %15 = lshr i32 %14, 30
  %16 = and i32 %15, 2
  %17 = xor i32 %16, 2
  br label %43

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %22 = lshr i32 %21, 18
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 3
  %25 = select i1 %24, i32 -32, i32 %23
  br label %43

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %31 = lshr i32 %30, 30
  %32 = icmp eq i32 %31, 3
  %33 = select i1 %32, i32 -32, i32 %31
  br label %43

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %39 = lshr i32 %38, 30
  %40 = icmp eq i32 %39, 3
  %41 = select i1 %40, i32 -32, i32 %39
  br label %43

42:                                               ; preds = %8
  br label %43

43:                                               ; preds = %42, %34, %26, %18, %10, %9, %8, %2
  %44 = phi i32 [ -32, %42 ], [ 1, %9 ], [ %1, %2 ], [ %1, %8 ], [ %17, %10 ], [ %25, %18 ], [ %33, %26 ], [ %41, %34 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_stop_channel(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %1, 4
  %8 = add i32 %7, 64
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %68

12:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.vc4_hvs, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %18 = or i32 %17, 1073741824
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.vc4_hvs, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.vc4_hvs, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %28 = and i32 %27, 2147483647
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.vc4_hvs, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %28) #5, !srcloc !24
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.vc4_hvs, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %38 = and i32 %37, 1073741824
  %39 = icmp ne i32 %38, 0
  %40 = load i1, ptr @vc4_hvs_stop_channel.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !28

43:                                               ; preds = %12
  store i1 true, ptr @vc4_hvs_stop_channel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 318, i32 noundef 9, ptr noundef null) #5
  br label %44

44:                                               ; preds = %43, %12
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.vc4_hvs, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = add i32 %7, 72
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %51 = icmp ugt i32 %50, 1073741823
  %52 = load i1, ptr @vc4_hvs_stop_channel.__already_done.5, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !28

55:                                               ; preds = %44
  store i1 true, ptr @vc4_hvs_stop_channel.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 322, i32 noundef 9, ptr noundef null) #5
  br label %56

56:                                               ; preds = %55, %44
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.vc4_hvs, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %48
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !30
  %62 = and i32 %61, 805306368
  %63 = icmp ne i32 %62, 268435456
  %64 = load i1, ptr @vc4_hvs_stop_channel.__already_done.6, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !28

67:                                               ; preds = %56
  store i1 true, ptr @vc4_hvs_stop_channel.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 326, i32 noundef 9, ptr noundef null) #5
  br label %68

68:                                               ; preds = %67, %56, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_hvs_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @__sw_hweight32(i32 noundef %11) #5
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %70, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_atomic_state, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 30, i32 18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %56, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 4
  br label %24

24:                                               ; preds = %48, %22
  %25 = phi ptr [ %16, %22 ], [ %49, %48 ]
  %26 = phi ptr [ %20, %22 ], [ %51, %48 ]
  %27 = phi i32 [ 0, %22 ], [ %50, %48 ]
  %28 = load i32, ptr %23, align 4
  %29 = getelementptr i8, ptr %26, i32 408
  %30 = load i32, ptr %29, align 4
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %28
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.drm_atomic_state, ptr %25, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.__drm_planes_state, ptr %36, i32 %30, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %26, i32 416
  %41 = select i1 %39, ptr %40, ptr %37
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = tail call i32 @vc4_plane_dlist_size(ptr noundef nonnull %42) #5
  %46 = add i32 %45, %27
  %47 = load ptr, ptr %15, align 4
  br label %48

48:                                               ; preds = %44, %34, %24
  %49 = phi ptr [ %47, %44 ], [ %25, %34 ], [ %25, %24 ]
  %50 = phi i32 [ %46, %44 ], [ %27, %34 ], [ %27, %24 ]
  %51 = load ptr, ptr %26, align 4
  %52 = getelementptr inbounds %struct.drm_atomic_state, ptr %49, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 30, i32 18
  %55 = icmp eq ptr %51, %54
  br i1 %55, label %56, label %24

56:                                               ; preds = %48, %14
  %57 = phi i32 [ 0, %14 ], [ %50, %48 ]
  %58 = add i32 %57, 1
  %59 = getelementptr inbounds %struct.vc4_dev, ptr %9, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.vc4_hvs, ptr %60, i32 0, i32 6
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %61) #5
  %63 = load ptr, ptr %59, align 8
  %64 = getelementptr inbounds %struct.vc4_hvs, ptr %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 1
  %66 = zext i32 %58 to i64
  %67 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %64, ptr noundef %65, i64 noundef %66, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #5
  %68 = load ptr, ptr %59, align 8
  %69 = getelementptr inbounds %struct.vc4_hvs, ptr %68, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %69, i32 noundef %62) #5
  br label %70

70:                                               ; preds = %56, %2
  %71 = phi i32 [ -22, %2 ], [ %67, %56 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_plane_dlist_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_begin(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 11
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 13
  store i32 %8, ptr %9, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 10
  %7 = load i8, ptr %6, align 4, !range !16
  tail call fastcc void @vc4_hvs_update_dlist(ptr noundef %0)
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 11
  %12 = load i32, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vc4_hvs, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %10, 4
  %18 = add i32 %17, 64
  %19 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %13, align 8
  %21 = getelementptr inbounds %struct.vc4_hvs, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1073741824) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %13, align 8
  %25 = getelementptr inbounds %struct.vc4_hvs, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #5, !srcloc !24
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds %struct.vc4_hvs, ptr %28, i32 0, i32 9
  %30 = load i8, ptr %29, align 8, !range !16
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %33 = load i16, ptr %32, align 4
  br i1 %31, label %34, label %51

34:                                               ; preds = %2
  %35 = icmp ult i16 %33, 4096
  br i1 %35, label %38, label %36, !prof !34

36:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 275, i32 noundef 9, ptr noundef null) #5
  %37 = load i16, ptr %32, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i16 [ %37, %36 ], [ %33, %34 ]
  %40 = zext i16 %39 to i32
  %41 = shl nuw nsw i32 %40, 12
  %42 = and i32 %41, 16773120
  %43 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %44 = load i16, ptr %43, align 2
  %45 = icmp ult i16 %44, 4096
  br i1 %45, label %48, label %46, !prof !34

46:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 277, i32 noundef 9, ptr noundef null) #5
  %47 = load i16, ptr %43, align 2
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi i16 [ %47, %46 ], [ %44, %38 ]
  %50 = and i16 %49, 4095
  br label %68

51:                                               ; preds = %2
  %52 = icmp ult i16 %33, 8192
  br i1 %52, label %55, label %53, !prof !34

53:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 281, i32 noundef 9, ptr noundef null) #5
  %54 = load i16, ptr %32, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i16 [ %54, %53 ], [ %33, %51 ]
  %57 = zext i16 %56 to i32
  %58 = shl nuw i32 %57, 16
  %59 = and i32 %58, 536805376
  %60 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %61 = load i16, ptr %60, align 2
  %62 = icmp ult i16 %61, 8192
  br i1 %62, label %65, label %63, !prof !34

63:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 283, i32 noundef 9, ptr noundef null) #5
  %64 = load i16, ptr %60, align 2
  br label %65

65:                                               ; preds = %63, %55
  %66 = phi i16 [ %64, %63 ], [ %61, %55 ]
  %67 = and i16 %66, 8191
  br label %68

68:                                               ; preds = %65, %48
  %69 = phi i16 [ %50, %48 ], [ %67, %65 ]
  %70 = phi i32 [ 536870912, %48 ], [ 32768, %65 ]
  %71 = phi i32 [ %42, %48 ], [ %59, %65 ]
  %72 = icmp eq i8 %7, 0
  %73 = zext i16 %69 to i32
  %74 = select i1 %72, i32 0, i32 %70
  %75 = or i32 %74, %73
  %76 = or i32 %75, %71
  %77 = or i32 %76, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds %struct.vc4_hvs, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %77) #5, !srcloc !24
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds %struct.vc4_hvs, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = add i32 %17, 68
  %86 = getelementptr i8, ptr %84, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %88 = and i32 %87, 536870911
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds %struct.vc4_hvs, ptr %89, i32 0, i32 9
  %91 = load i8, ptr %90, align 8, !range !16
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i32 536870912, i32 0
  %94 = shl i32 %12, 26
  %95 = and i32 %94, 1073741824
  %96 = or i32 %95, %88
  %97 = or i32 %96, %93
  %98 = or i32 %97, -2147483648
  %99 = getelementptr inbounds %struct.vc4_hvs, ptr %89, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %98) #5, !srcloc !24
  tail call fastcc void @vc4_hvs_lut_load(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_hvs_update_dlist(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %6, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !34

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 373, i32 noundef 9, ptr noundef null) #5
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 28
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #5
  %18 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 10
  %19 = load i8, ptr %18, align 4, !range !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 2
  %23 = load i8, ptr %22, align 8, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 8
  store ptr %28, ptr %29, align 8
  store ptr null, ptr %27, align 4
  br label %30

30:                                               ; preds = %25, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %31 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 1, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.vc4_dev, ptr %2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.vc4_hvs, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 2
  %41 = add i32 %40, 32
  %42 = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %33) #5, !srcloc !24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #5
  br label %56

43:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %44 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 1, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.vc4_dev, ptr %2, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.vc4_hvs, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 2
  %54 = add i32 %53, 32
  %55 = getelementptr i8, ptr %50, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %46) #5, !srcloc !24
  br label %56

56:                                               ; preds = %43, %30
  %57 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 11
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #5
  %59 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 1, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 12
  store i32 %61, ptr %62, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %58) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %7, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vc4_crtc_state, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  tail call void @vc4_hvs_stop_channel(ptr noundef %3, i32 noundef %11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_atomic_flush(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.vc4_hvs, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.vc4_crtc_state, ptr %11, i32 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr i32, ptr %15, i32 %18
  %20 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %59, label %23

23:                                               ; preds = %57, %2
  %24 = phi ptr [ %51, %57 ], [ %9, %2 ]
  %25 = phi ptr [ %58, %57 ], [ %11, %2 ]
  %26 = phi ptr [ %54, %57 ], [ %21, %2 ]
  %27 = phi i1 [ %53, %57 ], [ false, %2 ]
  %28 = phi ptr [ %52, %57 ], [ %19, %2 ]
  %29 = getelementptr i8, ptr %26, i32 -4
  %30 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %26, i32 408
  %33 = load i32, ptr %32, align 4
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %23
  %38 = icmp eq ptr %28, %19
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %26, i32 416
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.vc4_plane_state, ptr %41, i32 0, i32 23
  %43 = load i8, ptr %42, align 8, !range !16
  %44 = icmp ne i8 %43, 0
  br label %45

45:                                               ; preds = %39, %37
  %46 = phi i1 [ %44, %39 ], [ %27, %37 ]
  %47 = tail call i32 @vc4_plane_write_dlist(ptr noundef %29, ptr noundef %28) #5
  %48 = getelementptr i32, ptr %28, i32 %47
  %49 = load ptr, ptr %0, align 8
  br label %50

50:                                               ; preds = %45, %23
  %51 = phi ptr [ %49, %45 ], [ %24, %23 ]
  %52 = phi ptr [ %48, %45 ], [ %28, %23 ]
  %53 = phi i1 [ %46, %45 ], [ %27, %23 ]
  %54 = load ptr, ptr %26, align 4
  %55 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 30, i32 18
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %10, align 4
  br label %23

59:                                               ; preds = %50, %2
  %60 = phi ptr [ %19, %2 ], [ %52, %50 ]
  %61 = phi i1 [ false, %2 ], [ %53, %50 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 -2147483648) #5, !srcloc !24
  %62 = getelementptr i32, ptr %60, i32 1
  %63 = ptrtoint ptr %62 to i32
  %64 = ptrtoint ptr %19 to i32
  %65 = sub i32 %63, %64
  %66 = ashr exact i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vc4_crtc_state, ptr %11, i32 0, i32 1, i32 2
  %69 = load i64, ptr %68, align 8
  %70 = icmp ne i64 %69, %67
  %71 = load i1, ptr @vc4_hvs_atomic_flush.__already_done, align 1
  %72 = xor i1 %71, true
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %75, !prof !28

74:                                               ; preds = %59
  store i1 true, ptr @vc4_hvs_atomic_flush.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 474, i32 noundef 9, ptr noundef null) #5
  br label %75

75:                                               ; preds = %74, %59
  br i1 %61, label %76, label %94

76:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds %struct.vc4_hvs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.vc4_crtc_state, ptr %11, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = shl i32 %81, 4
  %83 = add i32 %82, 68
  %84 = getelementptr i8, ptr %79, i32 %83
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !42
  %86 = or i32 %85, 16777216
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds %struct.vc4_hvs, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %80, align 4
  %91 = shl i32 %90, 4
  %92 = add i32 %91, 68
  %93 = getelementptr i8, ptr %89, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %86) #5, !srcloc !24
  br label %94

94:                                               ; preds = %76, %75
  %95 = load ptr, ptr %10, align 4
  %96 = getelementptr inbounds %struct.drm_crtc_state, ptr %95, i32 0, i32 2
  %97 = load i8, ptr %96, align 1, !range !16
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 2
  %101 = load i8, ptr %100, align 1, !range !16
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  tail call fastcc void @vc4_hvs_update_dlist(ptr noundef %0)
  %104 = load ptr, ptr %10, align 4
  br label %105

105:                                              ; preds = %103, %99, %94
  %106 = phi ptr [ %104, %103 ], [ %95, %99 ], [ %95, %94 ]
  %107 = getelementptr inbounds %struct.drm_crtc_state, ptr %106, i32 0, i32 3
  %108 = load i8, ptr %107, align 2
  %109 = and i8 %108, 32
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %174, label %111

111:                                              ; preds = %105
  %112 = load ptr, ptr %12, align 8
  %113 = getelementptr inbounds %struct.vc4_hvs, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.vc4_crtc_state, ptr %11, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = shl i32 %116, 4
  %118 = add i32 %117, 68
  %119 = getelementptr i8, ptr %114, i32 %118
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !43
  %121 = load ptr, ptr %10, align 4
  %122 = getelementptr inbounds %struct.drm_crtc_state, ptr %121, i32 0, i32 12
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %163, label %125

125:                                              ; preds = %111
  %126 = getelementptr inbounds %struct.drm_property_blob, ptr %123, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.drm_property_blob, ptr %123, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = icmp ult i32 %129, 8
  br i1 %130, label %161, label %131

131:                                              ; preds = %125
  %132 = lshr i32 %129, 3
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i32 [ %159, %133 ], [ 0, %131 ]
  %135 = getelementptr %struct.drm_color_lut, ptr %127, i32 %134
  %136 = load i16, ptr %135, align 2
  %137 = zext i16 %136 to i32
  %138 = add nuw nsw i32 %137, 128
  %139 = lshr i32 %138, 8
  %140 = tail call i32 @llvm.umin.i32(i32 %139, i32 255) #5
  %141 = trunc i32 %140 to i8
  %142 = getelementptr %struct.vc4_crtc, ptr %0, i32 0, i32 5, i32 %134
  store i8 %141, ptr %142, align 1
  %143 = getelementptr %struct.drm_color_lut, ptr %127, i32 %134, i32 1
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  %146 = add nuw nsw i32 %145, 128
  %147 = lshr i32 %146, 8
  %148 = tail call i32 @llvm.umin.i32(i32 %147, i32 255) #5
  %149 = trunc i32 %148 to i8
  %150 = getelementptr %struct.vc4_crtc, ptr %0, i32 0, i32 6, i32 %134
  store i8 %149, ptr %150, align 1
  %151 = getelementptr %struct.drm_color_lut, ptr %127, i32 %134, i32 2
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = add nuw nsw i32 %153, 128
  %155 = lshr i32 %154, 8
  %156 = tail call i32 @llvm.umin.i32(i32 %155, i32 255) #5
  %157 = trunc i32 %156 to i8
  %158 = getelementptr %struct.vc4_crtc, ptr %0, i32 0, i32 7, i32 %134
  store i8 %157, ptr %158, align 1
  %159 = add nuw nsw i32 %134, 1
  %160 = icmp eq i32 %159, %132
  br i1 %160, label %161, label %133

161:                                              ; preds = %133, %125
  tail call fastcc void @vc4_hvs_lut_load(ptr noundef %0) #5
  %162 = or i32 %120, 536870912
  br label %165

163:                                              ; preds = %111
  %164 = and i32 %120, -536870913
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %167 = load ptr, ptr %12, align 8
  %168 = getelementptr inbounds %struct.vc4_hvs, ptr %167, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = load i32, ptr %115, align 4
  %171 = shl i32 %170, 4
  %172 = add i32 %171, 68
  %173 = getelementptr i8, ptr %169, i32 %172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %166) #5, !srcloc !24
  br label %174

174:                                              ; preds = %165, %105
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_plane_write_dlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_mask_underrun(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  %8 = add i32 %1, 13
  %9 = shl nuw i32 1, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.vc4_hvs, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #5, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hvs_unmask_underrun(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %8 = add i32 %1, 13
  %9 = shl nuw i32 1, %8
  %10 = or i32 %7, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %11 = shl i32 %1, 3
  %12 = add i32 %11, 9
  %13 = shl nuw i32 1, %12
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.vc4_hvs, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.vc4_hvs, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %10) #5, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hvs_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @vc4_hvs_ops) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hvs_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @vc4_hvs_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_hvs_lut_load(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr inbounds %struct.vc4_crtc_state, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, 3
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %7, %9
  %11 = or i32 %10, -2147483648
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.vc4_hvs, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %11) #5, !srcloc !24
  %17 = load i32, ptr %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %59, label %21

19:                                               ; preds = %21
  %20 = icmp eq i32 %31, 0
  br i1 %20, label %59, label %35

21:                                               ; preds = %21, %1
  %22 = phi i32 [ %30, %21 ], [ 0, %1 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %23 = getelementptr %struct.vc4_crtc, ptr %0, i32 0, i32 5, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load ptr, ptr %12, align 8
  %27 = getelementptr inbounds %struct.vc4_hvs, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #5, !srcloc !24
  %30 = add nuw i32 %22, 1
  %31 = load i32, ptr %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %21, label %19

33:                                               ; preds = %35
  %34 = icmp eq i32 %45, 0
  br i1 %34, label %59, label %47

35:                                               ; preds = %35, %19
  %36 = phi i32 [ %44, %35 ], [ 0, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %37 = getelementptr %struct.vc4_crtc, ptr %0, i32 0, i32 6, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load ptr, ptr %12, align 8
  %41 = getelementptr inbounds %struct.vc4_hvs, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #5, !srcloc !24
  %44 = add nuw i32 %36, 1
  %45 = load i32, ptr %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %35, label %33

47:                                               ; preds = %47, %33
  %48 = phi i32 [ %56, %47 ], [ 0, %33 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %49 = getelementptr %struct.vc4_crtc, ptr %0, i32 0, i32 7, i32 %48
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load ptr, ptr %12, align 8
  %53 = getelementptr inbounds %struct.vc4_hvs, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %51) #5, !srcloc !24
  %56 = add nuw i32 %48, 1
  %57 = load i32, ptr %8, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %47, label %59

59:                                               ; preds = %47, %33, %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hvs_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 464, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %96, label %9

9:                                                ; preds = %3
  store ptr %4, ptr %7, align 8
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.10) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 9
  store i8 1, ptr %15, align 8
  br label %16

16:                                               ; preds = %14, %9
  %17 = tail call ptr @vc4_ioremap_regs(ptr noundef %4, i32 noundef 0) #5
  %18 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  br label %96

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 8
  %24 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 8, i32 2
  store ptr %17, ptr %24, align 8
  store ptr @hvs_regs, ptr %23, align 8
  %25 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 8, i32 1
  store i32 31, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 9
  %27 = load i8, ptr %26, align 8, !range !16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %22
  %30 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #5
  %31 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #6
  %34 = load ptr, ptr %31, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %96

36:                                               ; preds = %29
  %37 = tail call i32 @clk_prepare(ptr noundef %30) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = tail call i32 @clk_enable(ptr noundef %30) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  tail call void @clk_unprepare(ptr noundef %30) #5
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %40, %42 ], [ %37, %36 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #6
  br label %96

45:                                               ; preds = %39
  %46 = load i8, ptr %26, align 8
  %47 = icmp eq i8 %46, 0
  %48 = load ptr, ptr %18, align 4
  br i1 %47, label %49, label %52

49:                                               ; preds = %45, %22
  %50 = phi ptr [ %17, %22 ], [ %48, %45 ]
  %51 = getelementptr i8, ptr %50, i32 8192
  br label %54

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %48, i32 16384
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %51, %49 ], [ %53, %52 ]
  %56 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 2
  store ptr %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 6
  store i32 0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 4
  tail call void @drm_mm_init(ptr noundef %58, i64 noundef 32, i64 noundef 4064) #5
  %59 = load i8, ptr %26, align 8, !range !16
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i64 49152, i64 61440
  %62 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 5
  tail call void @drm_mm_init(ptr noundef %62, i64 noundef 0, i64 noundef %61) #5
  %63 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 7
  %64 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %58, ptr noundef %63, i64 noundef 11, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 7, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = getelementptr i32, ptr %68, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 132905984) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %73 = getelementptr i32, ptr %72, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 132378104) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %74 = getelementptr i32, ptr %72, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 4720125) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %75 = getelementptr i32, ptr %72, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 31237170) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %76 = getelementptr i32, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 55932571) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %77 = getelementptr i32, ptr %72, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 116451) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %78 = getelementptr i32, ptr %72, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 55932571) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %79 = getelementptr i32, ptr %72, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 31237170) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %80 = getelementptr i32, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 4720125) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %81 = getelementptr i32, ptr %72, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 132378104) #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %82 = getelementptr i32, ptr %72, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 132905984) #5, !srcloc !24
  %83 = getelementptr inbounds %struct.vc4_dev, ptr %6, i32 0, i32 2
  store ptr %7, ptr %83, align 8
  %84 = load ptr, ptr %18, align 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !54
  %86 = and i32 %85, 2146631680
  %87 = or i32 %86, -2146959346
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %88 = load ptr, ptr %83, align 8
  %89 = getelementptr inbounds %struct.vc4_hvs, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %87) #5, !srcloc !24
  %91 = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #5
  %92 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %91, ptr noundef nonnull @vc4_hvs_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %6) #5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %96

94:                                               ; preds = %54
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %64) #5
  br label %96

95:                                               ; preds = %66
  tail call void @vc4_debugfs_add_regset32(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef %23) #5
  tail call void @vc4_debugfs_add_file(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull @vc4_hvs_debugfs_underrun, ptr noundef null) #5
  br label %96

96:                                               ; preds = %95, %94, %66, %43, %33, %20, %3
  %97 = phi i32 [ %21, %20 ], [ %35, %33 ], [ %44, %43 ], [ 0, %95 ], [ -12, %3 ], [ %64, %94 ], [ %92, %66 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hvs_unbind(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 7, i32 12
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 7
  tail call void @drm_mm_remove_node(ptr noundef %13) #5
  %14 = load ptr, ptr %6, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %14, %12 ], [ %7, %3 ]
  %17 = getelementptr inbounds %struct.vc4_hvs, ptr %16, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %17) #5
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.vc4_hvs, ptr %18, i32 0, i32 5
  tail call void @drm_mm_takedown(ptr noundef %19) #5
  %20 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  store ptr null, ptr %6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hvs_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_hvs, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !56
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.vc4_hvs, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !57
  %13 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 28
  %14 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %15 = and i32 %8, 512
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %12, 8192
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.vc4_hvs, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  %25 = and i32 %24, -8193
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.vc4_hvs, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #5, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #5, !srcloc !58
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #5, !srcloc !59
  %30 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %30, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #5
  br label %31

31:                                               ; preds = %20, %2
  %32 = phi i32 [ 1, %20 ], [ 0, %2 ]
  %33 = and i32 %8, 131072
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %12, 16384
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.vc4_hvs, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  %43 = and i32 %42, -16385
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.vc4_hvs, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #5, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #5, !srcloc !58
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #5, !srcloc !59
  %48 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %48, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #5
  br label %49

49:                                               ; preds = %38, %31
  %50 = phi i32 [ 1, %38 ], [ %32, %31 ]
  %51 = and i32 %8, 33554432
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %12, 32768
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.vc4_hvs, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  %61 = and i32 %60, -32769
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct.vc4_hvs, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #5, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #5, !srcloc !58
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #5, !srcloc !59
  %66 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %66, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #5
  br label %67

67:                                               ; preds = %56, %49
  %68 = phi i32 [ 1, %56 ], [ %50, %49 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.vc4_hvs, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1061109504) #5, !srcloc !24
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hvs_debugfs_underrun(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !61
  %9 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %9, align 4, !alias.scope !61
  %10 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %10, align 4, !alias.scope !61
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %11, align 4, !alias.scope !61
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %8, i32 0, i32 28
  %13 = load volatile i32, ptr %12, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.50, i32 noundef %13) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!9}
!9 = distinct !{!9, !10, !"drm_info_printer: argument 0"}
!10 = distinct !{!10, !"drm_info_printer"}
!11 = !{i64 5501882}
!12 = !{i64 2155424779}
!13 = !{i64 2155425176}
!14 = !{i64 2155425573}
!15 = !{i64 2155425970}
!16 = !{i8 0, i8 2}
!17 = !{i64 2155430379}
!18 = !{i64 2155471748}
!19 = !{i64 2155517181}
!20 = !{i64 2155558553}
!21 = !{i64 2155983330}
!22 = !{i64 2155985313}
!23 = !{i64 2155986025}
!24 = !{i64 5501464}
!25 = !{i64 2155987961}
!26 = !{i64 2155988675}
!27 = !{i64 2155990409}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2156053094}
!30 = !{i64 2156056350}
!31 = !{i64 2155604070}
!32 = !{i64 2155604894}
!33 = !{i64 2155605634}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2155979845}
!36 = !{i64 2155980831}
!37 = !{i64 2155982053}
!38 = !{i64 2156066467}
!39 = !{i64 2156067289}
!40 = !{i64 2156073405}
!41 = !{i64 2156076782}
!42 = !{i64 2156077563}
!43 = !{i64 2156078488}
!44 = !{i64 2156079237}
!45 = !{i64 2156080481}
!46 = !{i64 2156080861}
!47 = !{i64 2156081427}
!48 = !{i64 2156082007}
!49 = !{i64 2156082502}
!50 = !{i64 2155428284}
!51 = !{i64 2155428879}
!52 = !{i64 2155429336}
!53 = !{i64 2155429793}
!54 = !{i64 2156095665}
!55 = !{i64 2156192772}
!56 = !{i64 2156083175}
!57 = !{i64 2156083592}
!58 = !{i64 519041, i64 2148009012, i64 2148009038, i64 2148009085, i64 2148009107, i64 2148009135, i64 2148009155}
!59 = !{i64 2148021224, i64 2148021250, i64 2148021279, i64 2148021313, i64 2148021344, i64 2148021367}
!60 = !{i64 2156089387}
!61 = !{!62}
!62 = distinct !{!62, !63, !"drm_seq_file_printer: argument 0"}
!63 = distinct !{!63, !"drm_seq_file_printer"}
