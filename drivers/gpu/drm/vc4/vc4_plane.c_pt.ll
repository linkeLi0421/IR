; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hvs_format = type { i32, i32, i32, i32, i8 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vc4_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i8, i8, [3 x i32], %struct.drm_mm_node, i8, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.74 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.77, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.78, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.77 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.78 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@vc4_plane_async_set_fb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/vc4/vc4_plane.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"brcm,bcm2711-vc5\00", align 1
@vc4_plane_init.modifiers = internal constant [6 x i64] [i64 504403158265495553, i64 504403158265495556, i64 504403158265495555, i64 504403158265495557, i64 0, i64 72057594037927935], align 8
@hvs_formats = internal unnamed_addr constant [19 x %struct.hvs_format] [%struct.hvs_format { i32 875713112, i32 7, i32 3, i32 2, i8 0 }, %struct.hvs_format { i32 875713089, i32 7, i32 3, i32 2, i8 0 }, %struct.hvs_format { i32 875708993, i32 7, i32 2, i32 3, i8 0 }, %struct.hvs_format { i32 875709016, i32 7, i32 2, i32 3, i8 0 }, %struct.hvs_format { i32 909199186, i32 4, i32 2, i32 0, i8 0 }, %struct.hvs_format { i32 909199170, i32 4, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 892424769, i32 3, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 892424792, i32 3, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 875710290, i32 5, i32 2, i32 0, i8 0 }, %struct.hvs_format { i32 875710274, i32 5, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 909202777, i32 10, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 909203033, i32 10, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 842093913, i32 8, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 842094169, i32 8, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 842094158, i32 9, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 825382478, i32 9, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 909203022, i32 11, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 825644622, i32 11, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 808661072, i32 17, i32 0, i32 0, i8 1 }], align 4
@vc4_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @vc4_plane_reset, ptr null, ptr @vc4_plane_duplicate_state, ptr @vc4_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_format_mod_supported }, align 4
@vc4_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @vc4_prepare_fb, ptr @vc4_cleanup_fb, ptr @vc4_plane_atomic_check, ptr @vc4_plane_atomic_update, ptr null, ptr @vc4_plane_atomic_async_check, ptr @vc4_plane_atomic_async_update }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SAND height too large (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unsupported FB tiling flag 0x%16llx\00", align 1
@colorspace_coeffs = internal unnamed_addr constant [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 15728640, i32 -416086872, i32 419332], [3 x i32] [i32 15728640, i32 -227048280, i32 470557], [3 x i32] [i32 15728640, i32 -197815128, i32 439844]], [3 x [3 x i32]] [[3 x i32] [i32 0, i32 -365652992, i32 368070], [3 x i32] [i32 0, i32 -197622784, i32 413147], [3 x i32] [i32 0, i32 -172567552, i32 386530]]], align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid crtc state\0A\00", align 1
@vc4_plane_allocate_lbm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.vc4_plane_mode_set = private unnamed_addr constant [9 x i32] [i32 1073749504, i32 1073749248, i32 1073747968, i32 1073749760, i32 1073748736, i32 1073748224, i32 1073747968, i32 1073748992, i32 1073748480], align 4
@switch.table.vc4_plane_mode_set.6 = private unnamed_addr constant [9 x i32] [i32 6, i32 5, i32 0, i32 7, i32 3, i32 1, i32 0, i32 4, i32 2], align 4
@switch.table.vc4_plane_mode_set.7 = private unnamed_addr constant [3 x i32] [i32 64, i32 128, i32 256], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_plane_write_dlist(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_plane_state, ptr %4, i32 0, i32 8
  store ptr %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.vc4_plane_state, ptr %4, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vc4_plane_state, ptr %4, i32 0, i32 1
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %17, %11 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr i32, ptr %13, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i32, ptr %1, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #10, !srcloc !9
  %17 = add nuw i32 %12, 1
  %18 = load i32, ptr %6, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %11, label %20

20:                                               ; preds = %11, %2
  %21 = phi i32 [ 0, %2 ], [ %18, %11 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vc4_plane_dlist_size(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_plane_async_set_fb(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %1, i32 noundef 0) #10
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.drm_plane_state, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %6, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = load i1, ptr @vc4_plane_async_set_fb.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %14
  store i1 true, ptr @vc4_plane_async_set_fb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1223, i32 noundef 9, ptr noundef null) #10
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %5, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %26 = getelementptr inbounds %struct.vc4_plane_state, ptr %4, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.vc4_plane_state, ptr %4, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr i32, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %25) #10, !srcloc !9
  %31 = getelementptr inbounds %struct.vc4_plane_state, ptr %4, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %28, align 8
  %34 = getelementptr i32, ptr %32, i32 %33
  store i32 %25, ptr %34, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_plane_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [19 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %3, i8 0, i32 76, i1 false), !annotation !12
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.1) #10
  %9 = icmp ne i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 456, i32 noundef 3520) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %18, %2
  %14 = phi i32 [ %23, %18 ], [ 0, %2 ]
  %15 = phi i32 [ %22, %18 ], [ 0, %2 ]
  %16 = icmp ne i32 %14, 18
  %17 = select i1 %16, i1 true, i1 %9
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr [19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 %14
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [19 x i32], ptr %3, i32 0, i32 %15
  store i32 %20, ptr %21, align 4
  %22 = add i32 %15, 1
  %23 = add nuw nsw i32 %14, 1
  %24 = icmp eq i32 %23, 19
  br i1 %24, label %25, label %13

25:                                               ; preds = %18, %13
  %26 = phi i32 [ %22, %18 ], [ %15, %13 ]
  %27 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 0, ptr noundef nonnull @vc4_plane_funcs, ptr noundef nonnull %3, i32 noundef %26, ptr noundef nonnull @vc4_plane_init.modifiers, i32 noundef %1, ptr noundef null) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = inttoptr i32 %27 to ptr
  br label %36

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 18
  store ptr @vc4_plane_helper_funcs, ptr %32, align 8
  %33 = call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %11) #10
  %34 = call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %11, i32 noundef 1, i32 noundef 53) #10
  %35 = call i32 @drm_plane_create_color_properties(ptr noundef nonnull %11, i32 noundef 7, i32 noundef 3, i32 noundef 1, i32 noundef 0) #10
  br label %36

36:                                               ; preds = %31, %29, %2
  %37 = phi ptr [ %30, %29 ], [ %11, %31 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %3) #10
  ret ptr %37
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_plane_create_additional_planes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  br label %3

3:                                                ; preds = %12, %1
  %4 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %5 = tail call ptr @vc4_plane_init(ptr noundef %0, i32 noundef 0)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = sub i32 32, %8
  %10 = lshr i32 -1, %9
  %11 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %7, %3
  %13 = add nuw nsw i32 %4, 1
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %3

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %32, label %19

19:                                               ; preds = %29, %15
  %20 = phi ptr [ %30, %29 ], [ %17, %15 ]
  %21 = tail call ptr @vc4_plane_init(ptr noundef %0, i32 noundef 2)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %20, i32 72
  %25 = load i32, ptr %24, align 8
  %26 = shl nuw i32 1, %25
  %27 = getelementptr inbounds %struct.drm_plane, ptr %21, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %20, i32 68
  store ptr %21, ptr %28, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load ptr, ptr %20, align 4
  %31 = icmp eq ptr %30, %16
  br i1 %31, label %32, label %19

32:                                               ; preds = %29, %15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_plane_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !13

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 368) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vc4_plane_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #10
  br label %25

6:                                                ; preds = %1
  %7 = tail call ptr @kmemdup(ptr noundef nonnull %3, i32 noundef 368, i32 noundef 3264) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 22
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %10, i8 0, i32 112, i1 false)
  %11 = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 24
  store i8 0, ptr %11, align 1
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %7) #10
  %12 = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 2
  %19 = tail call ptr @kmemdup(ptr noundef nonnull %13, i32 noundef %18, i32 noundef 3264) #10
  store ptr %19, ptr %12, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %25

22:                                               ; preds = %15
  %23 = load i32, ptr %16, align 4
  %24 = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 2
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %22, %21, %9, %6, %5
  %26 = phi ptr [ null, %5 ], [ null, %21 ], [ null, %6 ], [ %7, %22 ], [ %7, %9 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_plane_destroy_state(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 22, i32 12
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 22
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.vc4_hvs, ptr %11, i32 0, i32 6
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #10
  tail call void @drm_mm_remove_node(ptr noundef %9) #10
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr inbounds %struct.vc4_hvs, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %13) #10
  br label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #10
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vc4_format_mod_supported(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) #5 {
  switch i32 %1, label %15 [
    i32 875713112, label %4
    i32 875713089, label %4
    i32 875708993, label %4
    i32 875709016, label %4
    i32 909199186, label %4
    i32 909199170, label %4
    i32 892424769, label %4
    i32 892424792, label %4
    i32 842094158, label %9
    i32 825382478, label %9
    i32 808661072, label %12
  ]

4:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %5 = and i64 %2, -72057594037927681
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i64 %5, 504403158265495553
  %8 = or i1 %6, %7
  br label %17

9:                                                ; preds = %3, %3
  %10 = and i64 %2, -72057594037927681
  switch i64 %10, label %11 [
    i64 0, label %17
    i64 504403158265495555, label %17
    i64 504403158265495556, label %17
    i64 504403158265495557, label %17
  ]

11:                                               ; preds = %9
  br label %17

12:                                               ; preds = %3
  %13 = and i64 %2, -72057594037927681
  %14 = icmp eq i64 %13, 504403158265495556
  br label %17

15:                                               ; preds = %3
  %16 = icmp eq i64 %2, 0
  br label %17

17:                                               ; preds = %15, %12, %11, %9, %9, %9, %9, %4
  %18 = phi i1 [ %16, %15 ], [ false, %11 ], [ %8, %4 ], [ true, %9 ], [ true, %9 ], [ true, %9 ], [ true, %9 ], [ %14, %12 ]
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_prepare_fb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %4, i32 noundef 0) #10
  %8 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %0, ptr noundef %1) #10
  %9 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %7) #10
  br label %17

17:                                               ; preds = %15, %6, %2
  %18 = phi i32 [ 0, %2 ], [ 0, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_cleanup_fb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, %8
  %10 = icmp eq ptr %8, null
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %8, i32 noundef 0) #10
  tail call void @vc4_bo_dec_usecnt(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %102, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 9, ptr noundef null) #10
  br label %102

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @vc4_plane_mode_set(ptr noundef %0, ptr noundef %8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %102

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr %struct.vc4_plane_state, ptr %8, i32 0, i32 18, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %102, label %31

31:                                               ; preds = %27, %21
  %32 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  %35 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 11
  %36 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 15
  %37 = select i1 %34, ptr %35, ptr %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 20
  %40 = load i8, ptr %39, align 1, !range !14
  %41 = icmp eq i8 %40, 0
  %42 = icmp eq i32 %25, 1
  %43 = select i1 %41, i1 %42, i1 false
  %44 = select i1 %43, i32 3, i32 4
  %45 = shl i32 %38, %44
  %46 = getelementptr inbounds %struct.vc4_dev, ptr %23, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.vc4_hvs, ptr %47, i32 0, i32 9
  %49 = load i8, ptr %48, align 8, !range !14
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 64, i32 128
  %52 = add i32 %45, -1
  %53 = add i32 %52, %51
  %54 = select i1 %50, i32 6, i32 7
  %55 = lshr i32 %53, %54
  %56 = mul i32 %55, %51
  %57 = select i1 %50, i32 1, i32 2
  %58 = lshr i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %102, label %60

60:                                               ; preds = %31
  %61 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65, !prof !10

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %102

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 22, i32 12
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 22
  %72 = getelementptr inbounds %struct.vc4_hvs, ptr %47, i32 0, i32 6
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #10
  %74 = load ptr, ptr %46, align 8
  %75 = getelementptr inbounds %struct.vc4_hvs, ptr %74, i32 0, i32 5
  %76 = zext i32 %58 to i64
  %77 = getelementptr inbounds %struct.vc4_hvs, ptr %74, i32 0, i32 9
  %78 = load i8, ptr %77, align 8, !range !14
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i64 32, i64 64
  %81 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %75, ptr noundef %71, i64 noundef %76, i64 noundef %80, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #10
  %82 = load ptr, ptr %46, align 8
  %83 = getelementptr inbounds %struct.vc4_hvs, ptr %82, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %73) #10
  %84 = icmp eq i32 %81, 0
  br i1 %84, label %94, label %102

85:                                               ; preds = %65
  %86 = zext i32 %58 to i64
  %87 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 22, i32 2
  %88 = load i64, ptr %87, align 8
  %89 = icmp ne i64 %88, %86
  %90 = load i1, ptr @vc4_plane_allocate_lbm.__already_done, align 1
  %91 = xor i1 %90, true
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %93, label %94, !prof !10

93:                                               ; preds = %85
  store i1 true, ptr @vc4_plane_allocate_lbm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 618, i32 noundef 9, ptr noundef null) #10
  br label %94

94:                                               ; preds = %93, %85, %70
  %95 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 22, i32 1
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %61, align 4
  %101 = getelementptr i32, ptr %99, i32 %100
  store i32 %97, ptr %101, align 4
  br label %102

102:                                              ; preds = %94, %70, %64, %31, %27, %18, %17, %2
  %103 = phi i32 [ %19, %18 ], [ -22, %64 ], [ 0, %94 ], [ %81, %70 ], [ 0, %31 ], [ 0, %27 ], [ 0, %2 ], [ 0, %17 ]
  ret i32 %103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @vc4_plane_atomic_update(ptr nocapture noundef %0, ptr nocapture noundef %1) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_plane_atomic_async_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @vc4_plane_mode_set(ptr noundef %0, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %146

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %146

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %146

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %146

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %146

37:                                               ; preds = %31
  %38 = load ptr, ptr %13, align 4
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 18
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = getelementptr %struct.vc4_plane_state, ptr %13, i32 0, i32 18, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %43, %37
  %48 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 17
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  %51 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 11
  %52 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 15
  %53 = select i1 %50, ptr %51, ptr %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 20
  %56 = load i8, ptr %55, align 1, !range !14
  %57 = icmp eq i8 %56, 0
  %58 = icmp eq i32 %41, 1
  %59 = select i1 %57, i1 %58, i1 false
  %60 = select i1 %59, i32 3, i32 4
  %61 = shl i32 %54, %60
  %62 = getelementptr inbounds %struct.vc4_dev, ptr %39, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.vc4_hvs, ptr %63, i32 0, i32 9
  %65 = load i8, ptr %64, align 8, !range !14
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i32 64, i32 128
  %68 = add i32 %61, -1
  %69 = add i32 %68, %67
  %70 = select i1 %66, i32 6, i32 7
  %71 = lshr i32 %69, %70
  %72 = mul i32 %71, %67
  %73 = select i1 %66, i32 1, i32 2
  %74 = lshr i32 %72, %73
  br label %75

75:                                               ; preds = %47, %43
  %76 = phi i32 [ %74, %47 ], [ 0, %43 ]
  %77 = load ptr, ptr %8, align 4
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 18
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = getelementptr %struct.vc4_plane_state, ptr %8, i32 0, i32 18, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %114, label %86

86:                                               ; preds = %82, %75
  %87 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 17
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 1
  %90 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 11
  %91 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 15
  %92 = select i1 %89, ptr %90, ptr %91
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 20
  %95 = load i8, ptr %94, align 1, !range !14
  %96 = icmp eq i8 %95, 0
  %97 = icmp eq i32 %80, 1
  %98 = select i1 %96, i1 %97, i1 false
  %99 = select i1 %98, i32 3, i32 4
  %100 = shl i32 %93, %99
  %101 = getelementptr inbounds %struct.vc4_dev, ptr %78, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.vc4_hvs, ptr %102, i32 0, i32 9
  %104 = load i8, ptr %103, align 8, !range !14
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 64, i32 128
  %107 = add i32 %100, -1
  %108 = add i32 %107, %106
  %109 = select i1 %105, i32 6, i32 7
  %110 = lshr i32 %108, %109
  %111 = mul i32 %110, %106
  %112 = select i1 %105, i32 1, i32 2
  %113 = lshr i32 %111, %112
  br label %114

114:                                              ; preds = %86, %82
  %115 = phi i32 [ %113, %86 ], [ 0, %82 ]
  %116 = icmp eq i32 %76, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 1
  %119 = icmp eq i32 %15, 0
  br i1 %119, label %146, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 7
  %122 = getelementptr inbounds %struct.vc4_plane_state, ptr %13, i32 0, i32 1
  br label %123

123:                                              ; preds = %143, %120
  %124 = phi i32 [ 0, %120 ], [ %144, %143 ]
  %125 = icmp eq i32 %124, %21
  %126 = icmp eq i32 %124, %27
  %127 = select i1 %125, i1 true, i1 %126
  %128 = icmp eq i32 %124, %33
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %143, label %130

130:                                              ; preds = %123
  %131 = load i32, ptr %121, align 4
  %132 = icmp ne i32 %131, 0
  %133 = icmp eq i32 %124, %131
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %143, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %118, align 4
  %137 = getelementptr i32, ptr %136, i32 %124
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %122, align 4
  %140 = getelementptr i32, ptr %139, i32 %124
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135, %130, %123
  %144 = add nuw i32 %124, 1
  %145 = icmp eq i32 %144, %15
  br i1 %145, label %146, label %123

146:                                              ; preds = %143, %135, %117, %114, %31, %25, %19, %11, %2
  %147 = phi i32 [ %9, %2 ], [ -22, %114 ], [ -22, %31 ], [ -22, %25 ], [ -22, %19 ], [ -22, %11 ], [ 0, %117 ], [ -22, %135 ], [ 0, %143 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_plane_atomic_async_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %11, align 4
  store ptr %12, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 4
  store i32 %16, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 5
  store i32 %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 6
  store i32 %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 7
  store i32 %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %33, i32 0, i32 8
  store i32 %32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %37, i32 0, i32 9
  store i32 %36, ptr %38, align 4
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %41, i32 0, i32 11
  store i32 %40, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.drm_plane_state, ptr %45, i32 0, i32 10
  store i32 %44, ptr %46, align 4
  %47 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 12
  %48 = load i16, ptr %47, align 4
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %49, i32 0, i32 12
  store i16 %48, ptr %50, align 4
  %51 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 13
  %52 = load i16, ptr %51, align 2
  %53 = load ptr, ptr %9, align 4
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %53, i32 0, i32 13
  store i16 %52, ptr %54, align 2
  %55 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 14
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 14
  store i32 %56, ptr %58, align 4
  %59 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 15
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr inbounds %struct.drm_plane_state, ptr %61, i32 0, i32 15
  store i32 %60, ptr %62, align 4
  %63 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 16
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr inbounds %struct.drm_plane_state, ptr %65, i32 0, i32 16
  store i32 %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 17
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %9, align 4
  %70 = getelementptr inbounds %struct.drm_plane_state, ptr %69, i32 0, i32 17
  store i32 %68, ptr %70, align 4
  %71 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 18
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %9, align 4
  %74 = getelementptr inbounds %struct.drm_plane_state, ptr %73, i32 0, i32 18
  store i32 %72, ptr %74, align 4
  %75 = load ptr, ptr %9, align 4
  %76 = getelementptr inbounds %struct.drm_plane_state, ptr %75, i32 0, i32 20
  %77 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %76, ptr noundef align 4 dereferenceable(16) %77, i32 16, i1 false)
  %78 = load ptr, ptr %9, align 4
  %79 = getelementptr inbounds %struct.drm_plane_state, ptr %78, i32 0, i32 21
  %80 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %79, ptr noundef align 4 dereferenceable(16) %80, i32 16, i1 false)
  %81 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %82 = load i8, ptr %81, align 4, !range !14
  %83 = load ptr, ptr %9, align 4
  %84 = getelementptr inbounds %struct.drm_plane_state, ptr %83, i32 0, i32 22
  store i8 %82, ptr %84, align 4
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 9
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 10
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 10
  store i32 %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 12
  %93 = load i32, ptr %92, align 8
  %94 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 12
  store i32 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 11
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 11
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 13
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 13
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 14
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 14
  store i32 %102, ptr %103, align 8
  %104 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 15
  %105 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 15
  %106 = load i64, ptr %105, align 4
  store i64 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 16
  %108 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 16
  %109 = load i64, ptr %108, align 4
  store i64 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 17
  %111 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 17
  %112 = load i64, ptr %111, align 4
  store i64 %112, ptr %110, align 4
  %113 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 18
  %114 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 18
  %115 = load i64, ptr %114, align 4
  store i64 %115, ptr %113, align 4
  %116 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 19
  %117 = load i8, ptr %116, align 4, !range !14
  %118 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 19
  store i8 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 20
  %120 = load i8, ptr %119, align 1, !range !14
  %121 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 20
  store i8 %120, ptr %121, align 1
  %122 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 21
  %123 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %122, ptr noundef align 8 dereferenceable(12) %123, i32 12, i1 false)
  %124 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 23
  %125 = load i8, ptr %124, align 8, !range !14
  %126 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 23
  store i8 %125, ptr %126, align 8
  %127 = getelementptr inbounds %struct.vc4_plane_state, ptr %8, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 4
  %130 = load i32, ptr %129, align 8
  %131 = getelementptr i32, ptr %128, i32 %130
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i32, ptr %134, i32 %130
  store i32 %132, ptr %135, align 4
  %136 = load ptr, ptr %127, align 4
  %137 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr i32, ptr %136, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %133, align 4
  %142 = getelementptr i32, ptr %141, i32 %138
  store i32 %140, ptr %142, align 4
  %143 = load ptr, ptr %127, align 4
  %144 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 6
  %145 = load i32, ptr %144, align 8
  %146 = getelementptr i32, ptr %143, i32 %145
  %147 = load i32, ptr %146, align 4
  %148 = load ptr, ptr %133, align 4
  %149 = getelementptr i32, ptr %148, i32 %145
  store i32 %147, ptr %149, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %150 = load ptr, ptr %133, align 4
  %151 = load i32, ptr %129, align 8
  %152 = getelementptr i32, ptr %150, i32 %151
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.vc4_plane_state, ptr %85, i32 0, i32 8
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr i32, ptr %155, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %153) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %157 = load ptr, ptr %133, align 4
  %158 = load i32, ptr %137, align 4
  %159 = getelementptr i32, ptr %157, i32 %158
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %154, align 8
  %162 = getelementptr i32, ptr %161, i32 %158
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %163 = load ptr, ptr %133, align 4
  %164 = load i32, ptr %144, align 8
  %165 = getelementptr i32, ptr %163, i32 %164
  %166 = load i32, ptr %165, align 4
  %167 = load ptr, ptr %154, align 8
  %168 = getelementptr i32, ptr %167, i32 %164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #10, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_bo_inc_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_dec_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_plane_mode_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 875713112, label %30
    i32 875713089, label %12
    i32 875708993, label %13
    i32 875709016, label %14
    i32 909199186, label %15
    i32 909199170, label %16
    i32 892424769, label %17
    i32 892424792, label %18
    i32 875710290, label %19
    i32 875710274, label %20
    i32 909202777, label %21
    i32 909203033, label %22
    i32 842093913, label %23
    i32 842094169, label %24
    i32 842094158, label %25
    i32 825382478, label %26
    i32 909203022, label %27
    i32 825644622, label %28
    i32 808661072, label %29
  ]

11:                                               ; preds = %2
  br label %30

12:                                               ; preds = %2
  br label %30

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  br label %30

15:                                               ; preds = %2
  br label %30

16:                                               ; preds = %2
  br label %30

17:                                               ; preds = %2
  br label %30

18:                                               ; preds = %2
  br label %30

19:                                               ; preds = %2
  br label %30

20:                                               ; preds = %2
  br label %30

21:                                               ; preds = %2
  br label %30

22:                                               ; preds = %2
  br label %30

23:                                               ; preds = %2
  br label %30

24:                                               ; preds = %2
  br label %30

25:                                               ; preds = %2
  br label %30

26:                                               ; preds = %2
  br label %30

27:                                               ; preds = %2
  br label %30

28:                                               ; preds = %2
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %2
  %31 = phi ptr [ @hvs_formats, %2 ], [ null, %11 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 1), %12 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 2), %13 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 3), %14 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 4), %15 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 5), %16 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 6), %17 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 7), %18 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 8), %19 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 9), %20 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 10), %21 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 11), %22 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 12), %23 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 13), %24 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 14), %25 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 15), %26 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 16), %27 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 17), %28 ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 18), %29 ]
  %32 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 8
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, -72057594037927681
  %35 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 6
  %39 = load i8, ptr %38, align 2
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 7
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.hvs_format, ptr %31, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 24
  %47 = load i8, ptr %46, align 1, !range !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %1378

49:                                               ; preds = %30
  %50 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %5, i32 noundef 0) #10
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds %struct.drm_format_info, ptr %51, i32 0, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.drm_format_info, ptr %51, i32 0, i32 6
  %56 = load i8, ptr %55, align 2
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.drm_format_info, ptr %51, i32 0, i32 7
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 25
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.drm_atomic_state, ptr %62, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_crtc, ptr %64, i32 0, i32 8
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr %struct.__drm_crtcs_state, ptr %66, i32 %68, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %49
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #10
  br label %1378

73:                                               ; preds = %49
  %74 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %1, ptr noundef nonnull %70, i32 noundef 1, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %1378

76:                                               ; preds = %73
  %77 = icmp eq i8 %53, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %50, i32 0, i32 1
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi i32 [ 0, %78 ], [ %87, %80 ]
  %82 = load i32, ptr %79, align 8
  %83 = getelementptr %struct.drm_framebuffer, ptr %5, i32 0, i32 7, i32 %81
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, %82
  %86 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 21, i32 %81
  store i32 %85, ptr %86, align 4
  %87 = add nuw nsw i32 %81, 1
  %88 = icmp eq i32 %87, %54
  br i1 %88, label %89, label %80

89:                                               ; preds = %80, %76
  %90 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %1378

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %1378

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %1378

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %1378

109:                                              ; preds = %104
  %110 = ashr i32 %91, 16
  %111 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 13
  store i32 %110, ptr %111, align 4
  %112 = ashr i32 %101, 16
  %113 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 14
  store i32 %112, ptr %113, align 8
  %114 = sub i32 %96, %91
  %115 = ashr i32 %114, 16
  %116 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 15
  store i32 %115, ptr %116, align 4
  %117 = sub i32 %106, %101
  %118 = ashr i32 %117, 16
  %119 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 16
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 9
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 10
  store i32 %124, ptr %125, align 8
  %126 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = sub i32 %127, %121
  %129 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 11
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = sub i32 %131, %124
  %133 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 12
  store i32 %132, ptr %133, align 8
  %134 = tail call fastcc i32 @vc4_plane_margins_adj(ptr noundef %1) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %1378

136:                                              ; preds = %109
  %137 = load i32, ptr %116, align 4
  %138 = load i32, ptr %129, align 4
  %139 = icmp eq i32 %138, %137
  %140 = mul i32 %138, 3
  %141 = shl i32 %137, 1
  %142 = icmp ult i32 %140, %141
  %143 = select i1 %142, i32 1, i32 2
  %144 = select i1 %139, i32 0, i32 %143
  %145 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 17
  store i32 %144, ptr %145, align 4
  %146 = load i32, ptr %119, align 4
  %147 = load i32, ptr %133, align 8
  %148 = icmp eq i32 %147, %146
  %149 = mul i32 %147, 3
  %150 = shl i32 %146, 1
  %151 = icmp ult i32 %149, %150
  %152 = select i1 %151, i32 1, i32 2
  %153 = select i1 %148, i32 0, i32 %152
  %154 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 18
  store i32 %153, ptr %154, align 4
  %155 = select i1 %139, i1 %148, i1 false
  %156 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 19
  %157 = zext i1 %155 to i8
  store i8 %157, ptr %156, align 4
  %158 = icmp ugt i8 %53, 1
  %159 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 20
  br i1 %158, label %160, label %178

160:                                              ; preds = %136
  store i8 1, ptr %159, align 1
  %161 = udiv i32 %137, %57
  %162 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 15, i32 1
  store i32 %161, ptr %162, align 4
  %163 = udiv i32 %146, %60
  %164 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 16, i32 1
  store i32 %163, ptr %164, align 4
  %165 = icmp eq i32 %138, %161
  %166 = shl i32 %161, 1
  %167 = icmp ult i32 %140, %166
  %168 = select i1 %167, i32 1, i32 2
  %169 = select i1 %165, i32 0, i32 %168
  %170 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 17, i32 1
  store i32 %169, ptr %170, align 4
  %171 = icmp eq i32 %147, %163
  %172 = shl i32 %163, 1
  %173 = icmp ult i32 %149, %172
  %174 = select i1 %173, i32 1, i32 2
  %175 = select i1 %171, i32 0, i32 %174
  %176 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 18, i32 1
  store i32 %175, ptr %176, align 4
  br i1 %165, label %177, label %181

177:                                              ; preds = %160
  store i32 2, ptr %170, align 4
  br label %181

178:                                              ; preds = %136
  store i8 0, ptr %159, align 1
  %179 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 17, i32 1
  store i32 0, ptr %179, align 4
  %180 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 18, i32 1
  store i32 0, ptr %180, align 4
  br label %181

181:                                              ; preds = %178, %177, %160
  %182 = phi i32 [ 0, %178 ], [ %175, %177 ], [ %175, %160 ]
  %183 = phi i32 [ 0, %178 ], [ 2, %177 ], [ %168, %160 ]
  %184 = icmp eq i8 %36, 1
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = shl nuw nsw i32 %144, 2
  %187 = or i32 %186, %153
  %188 = add nsw i32 %187, -1
  %189 = icmp ult i32 %188, 9
  br i1 %189, label %209, label %214

190:                                              ; preds = %181
  %191 = shl nuw nsw i32 %183, 2
  %192 = or i32 %191, %182
  %193 = add nsw i32 %192, -1
  %194 = icmp ult i32 %193, 9
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = getelementptr inbounds [9 x i32], ptr @switch.table.vc4_plane_mode_set.6, i32 0, i32 %193
  %197 = load i32, ptr %196, align 4
  br label %198

198:                                              ; preds = %195, %190
  %199 = phi i32 [ 0, %190 ], [ %197, %195 ]
  %200 = shl nuw nsw i32 %144, 2
  %201 = or i32 %200, %153
  switch i32 %201, label %214 [
    i32 4, label %208
    i32 6, label %202
    i32 9, label %203
    i32 5, label %204
    i32 8, label %205
    i32 2, label %206
    i32 1, label %207
  ]

202:                                              ; preds = %198
  br label %214

203:                                              ; preds = %198
  br label %214

204:                                              ; preds = %198
  br label %214

205:                                              ; preds = %198
  br label %214

206:                                              ; preds = %198
  br label %214

207:                                              ; preds = %198
  br label %214

208:                                              ; preds = %198
  br label %214

209:                                              ; preds = %185
  %210 = getelementptr inbounds [9 x i32], ptr @switch.table.vc4_plane_mode_set, i32 0, i32 %188
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds [9 x i32], ptr @switch.table.vc4_plane_mode_set.6, i32 0, i32 %188
  %213 = load i32, ptr %212, align 4
  br label %214

214:                                              ; preds = %209, %208, %207, %206, %205, %204, %203, %202, %198, %185
  %215 = phi i32 [ 1073747968, %185 ], [ 1073749760, %208 ], [ 1073749504, %207 ], [ 1073749248, %206 ], [ 1073748992, %205 ], [ 1073748736, %204 ], [ 1073748480, %203 ], [ 1073748224, %202 ], [ 1073747968, %198 ], [ %211, %209 ]
  %216 = phi i32 [ 0, %185 ], [ %199, %208 ], [ %199, %207 ], [ %199, %206 ], [ %199, %205 ], [ %199, %204 ], [ %199, %203 ], [ %199, %202 ], [ %199, %198 ], [ %213, %209 ]
  %217 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 14
  %218 = load i32, ptr %217, align 4
  %219 = tail call i32 @drm_rotation_simplify(i32 noundef %218, i32 noundef 49) #10
  %220 = load i32, ptr %113, align 8
  %221 = and i32 %219, 32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %214
  %224 = load i32, ptr %119, align 4
  %225 = add i32 %220, -1
  %226 = add i32 %225, %224
  br label %227

227:                                              ; preds = %223, %214
  %228 = phi i32 [ %226, %223 ], [ %220, %214 ]
  switch i64 %34, label %411 [
    i64 0, label %229
    i64 504403158265495553, label %262
    i64 504403158265495555, label %323
    i64 504403158265495556, label %323
    i64 504403158265495557, label %323
  ]

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %231 = load i32, ptr %230, align 8
  %232 = icmp ult i32 %231, 65536
  br i1 %232, label %235, label %233, !prof !13

233:                                              ; preds = %229
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #10
  %234 = load i32, ptr %230, align 8
  br label %235

235:                                              ; preds = %233, %229
  %236 = phi i32 [ %234, %233 ], [ %231, %229 ]
  %237 = and i32 %236, 65535
  %238 = icmp eq i8 %36, 0
  br i1 %238, label %413, label %239

239:                                              ; preds = %239, %235
  %240 = phi i32 [ %260, %239 ], [ 0, %235 ]
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, i32 1, i32 %43
  %243 = udiv i32 %228, %242
  %244 = getelementptr %struct.drm_framebuffer, ptr %5, i32 0, i32 6, i32 %240
  %245 = load i32, ptr %244, align 4
  %246 = mul i32 %245, %243
  %247 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 21, i32 %240
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, %246
  store i32 %249, ptr %247, align 4
  %250 = load i32, ptr %111, align 4
  %251 = select i1 %241, i32 1, i32 %40
  %252 = udiv i32 %250, %251
  %253 = load ptr, ptr %8, align 8
  %254 = getelementptr inbounds %struct.drm_format_info, ptr %253, i32 0, i32 3
  %255 = getelementptr [4 x i8], ptr %254, i32 0, i32 %240
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = mul i32 %252, %257
  %259 = add i32 %258, %249
  store i32 %259, ptr %247, align 4
  %260 = add nuw nsw i32 %240, 1
  %261 = icmp eq i32 %260, %37
  br i1 %261, label %413, label %239

262:                                              ; preds = %227
  %263 = load ptr, ptr %8, align 8
  %264 = getelementptr inbounds %struct.drm_format_info, ptr %263, i32 0, i32 3
  %265 = load i8, ptr %264, align 2
  %266 = icmp eq i8 %265, 2
  %267 = select i1 %266, i32 6, i32 5
  %268 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %269 = load i32, ptr %268, align 8
  %270 = lshr i32 %269, 7
  %271 = load i32, ptr %111, align 4
  %272 = lshr i32 %271, %267
  %273 = sub nsw i32 %270, %272
  %274 = lshr i32 %228, 4
  %275 = and i32 %274, 1
  %276 = shl nuw nsw i32 %221, 10
  %277 = shl nsw i32 -1, %267
  %278 = xor i32 %277, -1
  %279 = and i32 %271, %278
  %280 = shl i32 %279, 26
  %281 = shl i32 %228, 8
  %282 = and i32 %281, 16128
  %283 = xor i32 %282, 16128
  %284 = select i1 %222, i32 %282, i32 %283
  %285 = or i32 %280, %284
  %286 = shl i32 %272, 16
  %287 = icmp ult i32 %286, 8388608
  br i1 %287, label %289, label %288, !prof !13

288:                                              ; preds = %262
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 793, i32 noundef 9, ptr noundef null) #10
  br label %289

289:                                              ; preds = %288, %262
  %290 = and i32 %286, 8323072
  %291 = or i32 %285, %290
  %292 = icmp ult i32 %273, 128
  br i1 %292, label %294, label %293, !prof !13

293:                                              ; preds = %289
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 9, ptr noundef null) #10
  br label %294

294:                                              ; preds = %293, %289
  %295 = and i32 %273, 127
  %296 = or i32 %291, %295
  %297 = or i32 %296, %276
  %298 = shl i32 %228, 7
  %299 = and i32 %298, -4096
  %300 = mul i32 %299, %270
  %301 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 21
  %302 = load i32, ptr %301, align 8
  %303 = shl i32 %228, 6
  %304 = and i32 %303, 768
  %305 = shl i32 %228, 4
  %306 = and i32 %305, 48
  %307 = or i32 %306, %304
  %308 = or i32 %307, %300
  %309 = add i32 %308, %302
  %310 = and i32 %228, 32
  %311 = icmp eq i32 %310, 0
  %312 = shl i32 %272, 12
  %313 = shl nuw nsw i32 %275, 10
  %314 = or i32 %312, %313
  %315 = shl i32 %273, 12
  %316 = shl nuw nsw i32 %275, 10
  %317 = or i32 %316, -2048
  %318 = add i32 %317, %315
  %319 = select i1 %311, i32 %314, i32 %318
  %320 = shl nuw nsw i32 %310, 9
  %321 = or i32 %320, %297
  %322 = add i32 %319, %309
  store i32 %322, ptr %301, align 8
  br label %413

323:                                              ; preds = %227, %227, %227
  %324 = load i64, ptr %32, align 8
  %325 = lshr i64 %324, 8
  %326 = trunc i64 %325 to i32
  %327 = icmp ugt i32 %326, 65535
  br i1 %327, label %328, label %329

328:                                              ; preds = %323
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %326) #10
  br label %1378

329:                                              ; preds = %323
  %330 = load ptr, ptr %8, align 8
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %331, 808661072
  br i1 %332, label %339, label %333

333:                                              ; preds = %329
  %334 = add i64 %34, -504403158265495555
  %335 = icmp ult i64 %334, 3
  br i1 %335, label %336, label %1378

336:                                              ; preds = %333
  %337 = trunc i64 %334 to i32
  %338 = add i32 %337, 1
  br label %339

339:                                              ; preds = %336, %329
  %340 = phi i32 [ 17, %329 ], [ 12, %336 ]
  %341 = phi i32 [ 2, %329 ], [ %338, %336 ]
  %342 = icmp eq i8 %36, 0
  br i1 %342, label %409, label %343

343:                                              ; preds = %339
  %344 = add i64 %34, -504403158265495555
  %345 = icmp ult i64 %344, 3
  %346 = trunc i64 %344 to i32
  %347 = getelementptr inbounds [3 x i32], ptr @switch.table.vc4_plane_mode_set.7, i32 0, i32 %346
  br label %348

348:                                              ; preds = %403, %343
  %349 = phi i32 [ %405, %403 ], [ %331, %343 ]
  %350 = phi ptr [ %404, %403 ], [ %330, %343 ]
  %351 = phi i32 [ %401, %403 ], [ 0, %343 ]
  %352 = icmp eq i32 %349, 808661072
  br i1 %352, label %353, label %364

353:                                              ; preds = %348
  %354 = load i32, ptr %111, align 4
  %355 = urem i32 %354, 96
  %356 = trunc i32 %355 to i8
  %357 = freeze i8 %356
  %358 = udiv i8 %357, 12
  %359 = mul i8 %358, 12
  %360 = sub i8 %357, %359
  %361 = shl nuw nsw i8 %358, 4
  %362 = or i8 %361, %360
  %363 = zext i8 %362 to i32
  br label %382

364:                                              ; preds = %348
  br i1 %345, label %365, label %1378

365:                                              ; preds = %364
  %366 = load i32, ptr %347, align 4
  %367 = getelementptr inbounds %struct.drm_format_info, ptr %350, i32 0, i32 3
  %368 = load i8, ptr %367, align 2
  %369 = trunc i32 %366 to i16
  %370 = zext i8 %368 to i16
  %371 = udiv i16 %369, %370
  %372 = zext i16 %371 to i32
  %373 = load i32, ptr %111, align 4
  %374 = urem i32 %373, %372
  %375 = icmp eq i32 %351, 0
  %376 = select i1 %375, i32 1, i32 %40
  %377 = udiv i32 %374, %376
  %378 = getelementptr [4 x i8], ptr %367, i32 0, i32 %351
  %379 = load i8, ptr %378, align 1
  %380 = zext i8 %379 to i32
  %381 = mul nuw nsw i32 %377, %380
  br label %382

382:                                              ; preds = %365, %353
  %383 = phi i32 [ %354, %353 ], [ %373, %365 ]
  %384 = phi i32 [ 96, %353 ], [ %372, %365 ]
  %385 = phi i32 [ %363, %353 ], [ %381, %365 ]
  %386 = phi i32 [ 128, %353 ], [ %366, %365 ]
  %387 = udiv i32 %383, %384
  %388 = mul i32 %387, %326
  %389 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 21, i32 %351
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %351, 0
  %392 = select i1 %391, i32 1, i32 %43
  %393 = udiv i32 %228, %392
  %394 = zext i1 %391 to i32
  %395 = or i32 %394, -2
  %396 = and i32 %385, %395
  %397 = add i32 %393, %388
  %398 = mul i32 %397, %386
  %399 = add i32 %390, %396
  %400 = add i32 %399, %398
  store i32 %400, ptr %389, align 4
  %401 = add nuw nsw i32 %351, 1
  %402 = icmp eq i32 %401, %37
  br i1 %402, label %406, label %403

403:                                              ; preds = %382
  %404 = load ptr, ptr %8, align 8
  %405 = load i32, ptr %404, align 4
  br label %348

406:                                              ; preds = %382
  %407 = icmp ult i32 %326, 65536
  br i1 %407, label %409, label %408, !prof !13

408:                                              ; preds = %406
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 903, i32 noundef 9, ptr noundef null) #10
  br label %409

409:                                              ; preds = %408, %406, %339
  %410 = and i32 %326, 65535
  br label %413

411:                                              ; preds = %227
  %412 = load i64, ptr %32, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i64 noundef %412) #10
  br label %1378

413:                                              ; preds = %409, %294, %239, %235
  %414 = phi i32 [ %340, %409 ], [ %45, %294 ], [ %45, %235 ], [ %45, %239 ]
  %415 = phi i32 [ %341, %409 ], [ 3, %294 ], [ 0, %235 ], [ 0, %239 ]
  %416 = phi i32 [ %410, %409 ], [ %321, %294 ], [ %237, %235 ], [ %237, %239 ]
  %417 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 12
  %418 = load i16, ptr %417, align 4
  %419 = icmp eq i16 %418, -1
  br i1 %419, label %425, label %420

420:                                              ; preds = %413
  %421 = load ptr, ptr %8, align 8
  %422 = getelementptr inbounds %struct.drm_format_info, ptr %421, i32 0, i32 8
  %423 = load i8, ptr %422, align 4, !range !14
  %424 = icmp ne i8 %423, 0
  br label %425

425:                                              ; preds = %420, %413
  %426 = phi i1 [ false, %413 ], [ %424, %420 ]
  %427 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 2
  %428 = load ptr, ptr %427, align 8
  %429 = getelementptr inbounds %struct.vc4_hvs, ptr %428, i32 0, i32 9
  %430 = load i8, ptr %429, align 8, !range !14
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %620

432:                                              ; preds = %425
  %433 = shl nuw nsw i32 %221, 10
  %434 = shl i32 %219, 12
  %435 = and i32 %434, 65536
  %436 = or i32 %435, %433
  %437 = getelementptr inbounds %struct.hvs_format, ptr %31, i32 0, i32 2
  %438 = load i32, ptr %437, align 4
  %439 = shl i32 %438, 13
  %440 = shl nsw i32 %415, 20
  %441 = icmp ult i32 %440, 4194304
  br i1 %441, label %443, label %442, !prof !13

442:                                              ; preds = %432
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 929, i32 noundef 9, ptr noundef null) #10
  br label %443

443:                                              ; preds = %442, %432
  %444 = and i32 %440, 3145728
  %445 = load i8, ptr %156, align 4, !range !14
  %446 = icmp eq i8 %445, 0
  %447 = select i1 %446, i32 0, i32 16
  %448 = shl i32 %216, 5
  %449 = and i32 %448, 224
  %450 = or i32 %215, %449
  %451 = or i32 %450, %436
  %452 = or i32 %451, %414
  %453 = or i32 %452, %444
  %454 = or i32 %453, %439
  %455 = or i32 %454, %447
  %456 = load i32, ptr %6, align 4
  %457 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 2
  %458 = load i32, ptr %457, align 8
  %459 = icmp eq i32 %456, %458
  br i1 %459, label %460, label %475

460:                                              ; preds = %443
  %461 = shl i32 %456, 1
  %462 = tail call i32 @llvm.umax.i32(i32 %461, i32 4) #10
  %463 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %462, i32 4) #10
  %464 = extractvalue { i32, i1 } %463, 1
  br i1 %464, label %478, label %465, !prof !10

465:                                              ; preds = %460
  %466 = extractvalue { i32, i1 } %463, 0
  %467 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %466, i32 noundef 3264) #12
  %468 = icmp eq ptr %467, null
  br i1 %468, label %478, label %469

469:                                              ; preds = %465
  %470 = load i32, ptr %6, align 4
  %471 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %472 = load ptr, ptr %471, align 4
  %473 = shl i32 %470, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %467, ptr align 4 %472, i32 %473, i1 false) #10
  tail call void @kfree(ptr noundef %472) #10
  store ptr %467, ptr %471, align 4
  store i32 %462, ptr %457, align 8
  %474 = load i32, ptr %6, align 4
  br label %475

475:                                              ; preds = %469, %443
  %476 = phi i32 [ %474, %469 ], [ %456, %443 ]
  %477 = add i32 %476, 1
  store i32 %477, ptr %6, align 4
  br label %478

478:                                              ; preds = %475, %465, %460
  %479 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr i32, ptr %480, i32 %456
  store i32 %455, ptr %481, align 4
  %482 = load i32, ptr %6, align 4
  %483 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 4
  store i32 %482, ptr %483, align 8
  %484 = load i16, ptr %417, align 4
  %485 = lshr i16 %484, 8
  %486 = zext i16 %485 to i32
  %487 = shl nuw i32 %486, 24
  %488 = load i32, ptr %122, align 4
  %489 = icmp ult i32 %488, 4096
  br i1 %489, label %492, label %490, !prof !13

490:                                              ; preds = %478
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 938, i32 noundef 9, ptr noundef null) #10
  %491 = load i32, ptr %122, align 4
  br label %492

492:                                              ; preds = %490, %478
  %493 = phi i32 [ %491, %490 ], [ %488, %478 ]
  %494 = and i32 %493, 4095
  %495 = or i32 %494, %487
  %496 = load i32, ptr %125, align 8
  %497 = and i32 %496, 1044480
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %501, label %499, !prof !13

499:                                              ; preds = %492
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 939, i32 noundef 9, ptr noundef null) #10
  %500 = load i32, ptr %125, align 8
  br label %501

501:                                              ; preds = %499, %492
  %502 = phi i32 [ %500, %499 ], [ %496, %492 ]
  %503 = shl i32 %502, 12
  %504 = and i32 %503, 16773120
  %505 = or i32 %504, %495
  %506 = load i32, ptr %6, align 4
  %507 = load i32, ptr %457, align 8
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %523

509:                                              ; preds = %501
  %510 = shl i32 %506, 1
  %511 = tail call i32 @llvm.umax.i32(i32 %510, i32 4) #10
  %512 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %511, i32 4) #10
  %513 = extractvalue { i32, i1 } %512, 1
  br i1 %513, label %526, label %514, !prof !10

514:                                              ; preds = %509
  %515 = extractvalue { i32, i1 } %512, 0
  %516 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %515, i32 noundef 3264) #12
  %517 = icmp eq ptr %516, null
  br i1 %517, label %526, label %518

518:                                              ; preds = %514
  %519 = load i32, ptr %6, align 4
  %520 = load ptr, ptr %479, align 4
  %521 = shl i32 %519, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %516, ptr align 4 %520, i32 %521, i1 false) #10
  tail call void @kfree(ptr noundef %520) #10
  store ptr %516, ptr %479, align 4
  store i32 %511, ptr %457, align 8
  %522 = load i32, ptr %6, align 4
  br label %523

523:                                              ; preds = %518, %501
  %524 = phi i32 [ %522, %518 ], [ %506, %501 ]
  %525 = add i32 %524, 1
  store i32 %525, ptr %6, align 4
  br label %526

526:                                              ; preds = %523, %514, %509
  %527 = load ptr, ptr %479, align 4
  %528 = getelementptr i32, ptr %527, i32 %506
  store i32 %505, ptr %528, align 4
  %529 = load i8, ptr %156, align 4, !range !14
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %531, label %549

531:                                              ; preds = %526
  %532 = load i32, ptr %129, align 4
  %533 = icmp ult i32 %532, 4096
  br i1 %533, label %536, label %534, !prof !13

534:                                              ; preds = %531
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 945, i32 noundef 9, ptr noundef null) #10
  %535 = load i32, ptr %129, align 4
  br label %536

536:                                              ; preds = %534, %531
  %537 = phi i32 [ %535, %534 ], [ %532, %531 ]
  %538 = and i32 %537, 4095
  %539 = load i32, ptr %133, align 8
  %540 = and i32 %539, 61440
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %544, label %542, !prof !13

542:                                              ; preds = %536
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 947, i32 noundef 9, ptr noundef null) #10
  %543 = load i32, ptr %133, align 8
  br label %544

544:                                              ; preds = %542, %536
  %545 = phi i32 [ %543, %542 ], [ %539, %536 ]
  %546 = shl i32 %545, 16
  %547 = and i32 %546, 268369920
  %548 = or i32 %547, %538
  tail call fastcc void @vc4_dlist_write(ptr noundef %1, i32 noundef %548)
  br label %549

549:                                              ; preds = %544, %526
  %550 = load i32, ptr %6, align 4
  %551 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 5
  store i32 %550, ptr %551, align 4
  %552 = load ptr, ptr %8, align 8
  %553 = getelementptr inbounds %struct.drm_format_info, ptr %552, i32 0, i32 8
  %554 = load i8, ptr %553, align 4, !range !14
  %555 = xor i8 %554, 1
  %556 = zext i8 %555 to i32
  %557 = icmp eq i8 %554, 0
  %558 = shl nuw nsw i32 %556, 30
  %559 = select i1 %426, i32 268435456, i32 0
  %560 = or i32 %558, %559
  %561 = select i1 %557, i32 0, i32 536870912
  %562 = or i32 %560, %561
  %563 = load i32, ptr %116, align 4
  %564 = icmp ult i32 %563, 4096
  br i1 %564, label %567, label %565, !prof !13

565:                                              ; preds = %549
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 961, i32 noundef 9, ptr noundef null) #10
  %566 = load i32, ptr %116, align 4
  br label %567

567:                                              ; preds = %565, %549
  %568 = phi i32 [ %566, %565 ], [ %563, %549 ]
  %569 = and i32 %568, 4095
  %570 = or i32 %569, %562
  %571 = load i32, ptr %119, align 4
  %572 = and i32 %571, 61440
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %576, label %574, !prof !13

574:                                              ; preds = %567
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef null) #10
  %575 = load i32, ptr %119, align 4
  br label %576

576:                                              ; preds = %574, %567
  %577 = phi i32 [ %575, %574 ], [ %571, %567 ]
  %578 = shl i32 %577, 16
  %579 = and i32 %578, 268369920
  %580 = or i32 %579, %570
  %581 = load i32, ptr %6, align 4
  %582 = load i32, ptr %457, align 8
  %583 = icmp eq i32 %581, %582
  br i1 %583, label %584, label %598

584:                                              ; preds = %576
  %585 = shl i32 %581, 1
  %586 = tail call i32 @llvm.umax.i32(i32 %585, i32 4) #10
  %587 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %586, i32 4) #10
  %588 = extractvalue { i32, i1 } %587, 1
  br i1 %588, label %601, label %589, !prof !10

589:                                              ; preds = %584
  %590 = extractvalue { i32, i1 } %587, 0
  %591 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %590, i32 noundef 3264) #12
  %592 = icmp eq ptr %591, null
  br i1 %592, label %601, label %593

593:                                              ; preds = %589
  %594 = load i32, ptr %6, align 4
  %595 = load ptr, ptr %479, align 4
  %596 = shl i32 %594, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %591, ptr align 4 %595, i32 %596, i1 false) #10
  tail call void @kfree(ptr noundef %595) #10
  store ptr %591, ptr %479, align 4
  store i32 %586, ptr %457, align 8
  %597 = load i32, ptr %6, align 4
  br label %598

598:                                              ; preds = %593, %576
  %599 = phi i32 [ %597, %593 ], [ %581, %576 ]
  %600 = add i32 %599, 1
  store i32 %600, ptr %6, align 4
  br label %601

601:                                              ; preds = %598, %589, %584
  %602 = load ptr, ptr %479, align 4
  %603 = getelementptr i32, ptr %602, i32 %581
  store i32 %580, ptr %603, align 4
  %604 = load i32, ptr %6, align 4
  %605 = load i32, ptr %457, align 8
  %606 = icmp eq i32 %604, %605
  br i1 %606, label %607, label %837

607:                                              ; preds = %601
  %608 = shl i32 %604, 1
  %609 = tail call i32 @llvm.umax.i32(i32 %608, i32 4) #10
  %610 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %609, i32 4) #10
  %611 = extractvalue { i32, i1 } %610, 1
  br i1 %611, label %842, label %612, !prof !10

612:                                              ; preds = %607
  %613 = extractvalue { i32, i1 } %610, 0
  %614 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %613, i32 noundef 3264) #12
  %615 = icmp eq ptr %614, null
  br i1 %615, label %842, label %616

616:                                              ; preds = %612
  %617 = load i32, ptr %6, align 4
  %618 = load ptr, ptr %479, align 4
  %619 = shl i32 %617, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %614, ptr align 4 %618, i32 %619, i1 false) #10
  tail call void @kfree(ptr noundef %618) #10
  store ptr %614, ptr %479, align 4
  store i32 %609, ptr %457, align 8
  br label %833

620:                                              ; preds = %425
  %621 = getelementptr inbounds %struct.hvs_format, ptr %31, i32 0, i32 2
  %622 = load i32, ptr %621, align 4
  %623 = getelementptr inbounds %struct.hvs_format, ptr %31, i32 0, i32 3
  %624 = load i32, ptr %623, align 4
  %625 = icmp eq i32 %624, 0
  %626 = select i1 %625, i32 %622, i32 %624
  %627 = shl i32 %626, 13
  %628 = shl nsw i32 %415, 20
  %629 = icmp ult i32 %628, 4194304
  br i1 %629, label %631, label %630, !prof !13

630:                                              ; preds = %620
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 979, i32 noundef 9, ptr noundef null) #10
  br label %631

631:                                              ; preds = %630, %620
  %632 = and i32 %628, 3145728
  %633 = load i8, ptr %156, align 4, !range !14
  %634 = icmp eq i8 %633, 0
  %635 = select i1 %634, i32 0, i32 32768
  %636 = shl i32 %216, 5
  %637 = and i32 %636, 224
  %638 = or i32 %215, %637
  %639 = or i32 %638, %414
  %640 = or i32 %639, %632
  %641 = or i32 %640, %627
  %642 = or i32 %641, %635
  %643 = load i32, ptr %6, align 4
  %644 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 2
  %645 = load i32, ptr %644, align 8
  %646 = icmp eq i32 %643, %645
  br i1 %646, label %647, label %662

647:                                              ; preds = %631
  %648 = shl i32 %643, 1
  %649 = tail call i32 @llvm.umax.i32(i32 %648, i32 4) #10
  %650 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %649, i32 4) #10
  %651 = extractvalue { i32, i1 } %650, 1
  br i1 %651, label %665, label %652, !prof !10

652:                                              ; preds = %647
  %653 = extractvalue { i32, i1 } %650, 0
  %654 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %653, i32 noundef 3264) #12
  %655 = icmp eq ptr %654, null
  br i1 %655, label %665, label %656

656:                                              ; preds = %652
  %657 = load i32, ptr %6, align 4
  %658 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %659 = load ptr, ptr %658, align 4
  %660 = shl i32 %657, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %654, ptr align 4 %659, i32 %660, i1 false) #10
  tail call void @kfree(ptr noundef %659) #10
  store ptr %654, ptr %658, align 4
  store i32 %649, ptr %644, align 8
  %661 = load i32, ptr %6, align 4
  br label %662

662:                                              ; preds = %656, %631
  %663 = phi i32 [ %661, %656 ], [ %643, %631 ]
  %664 = add i32 %663, 1
  store i32 %664, ptr %6, align 4
  br label %665

665:                                              ; preds = %662, %652, %647
  %666 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %667 = load ptr, ptr %666, align 4
  %668 = getelementptr i32, ptr %667, i32 %643
  store i32 %642, ptr %668, align 4
  %669 = load i32, ptr %6, align 4
  %670 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 4
  store i32 %669, ptr %670, align 8
  %671 = shl nuw i32 %221, 26
  %672 = load i32, ptr %122, align 4
  %673 = icmp ult i32 %672, 4096
  br i1 %673, label %676, label %674, !prof !13

674:                                              ; preds = %665
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 993, i32 noundef 9, ptr noundef null) #10
  %675 = load i32, ptr %122, align 4
  br label %676

676:                                              ; preds = %674, %665
  %677 = phi i32 [ %675, %674 ], [ %672, %665 ]
  %678 = and i32 %677, 4095
  %679 = or i32 %678, %671
  %680 = shl i32 %219, 11
  %681 = and i32 %680, 32768
  %682 = or i32 %679, %681
  %683 = load i32, ptr %125, align 8
  %684 = and i32 %683, 61440
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %688, label %686, !prof !13

686:                                              ; preds = %676
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef null) #10
  %687 = load i32, ptr %125, align 8
  br label %688

688:                                              ; preds = %686, %676
  %689 = phi i32 [ %687, %686 ], [ %683, %676 ]
  %690 = shl i32 %689, 16
  %691 = and i32 %690, 268369920
  %692 = or i32 %691, %682
  %693 = load i32, ptr %6, align 4
  %694 = load i32, ptr %644, align 8
  %695 = icmp eq i32 %693, %694
  br i1 %695, label %696, label %710

696:                                              ; preds = %688
  %697 = shl i32 %693, 1
  %698 = tail call i32 @llvm.umax.i32(i32 %697, i32 4) #10
  %699 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %698, i32 4) #10
  %700 = extractvalue { i32, i1 } %699, 1
  br i1 %700, label %713, label %701, !prof !10

701:                                              ; preds = %696
  %702 = extractvalue { i32, i1 } %699, 0
  %703 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %702, i32 noundef 3264) #12
  %704 = icmp eq ptr %703, null
  br i1 %704, label %713, label %705

705:                                              ; preds = %701
  %706 = load i32, ptr %6, align 4
  %707 = load ptr, ptr %666, align 4
  %708 = shl i32 %706, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %703, ptr align 4 %707, i32 %708, i1 false) #10
  tail call void @kfree(ptr noundef %707) #10
  store ptr %703, ptr %666, align 4
  store i32 %698, ptr %644, align 8
  %709 = load i32, ptr %6, align 4
  br label %710

710:                                              ; preds = %705, %688
  %711 = phi i32 [ %709, %705 ], [ %693, %688 ]
  %712 = add i32 %711, 1
  store i32 %712, ptr %6, align 4
  br label %713

713:                                              ; preds = %710, %701, %696
  %714 = load ptr, ptr %666, align 4
  %715 = getelementptr i32, ptr %714, i32 %693
  store i32 %692, ptr %715, align 4
  %716 = load i16, ptr %417, align 4
  %717 = and i16 %716, -16
  %718 = zext i16 %717 to i32
  %719 = load ptr, ptr %8, align 8
  %720 = getelementptr inbounds %struct.drm_format_info, ptr %719, i32 0, i32 8
  %721 = load i8, ptr %720, align 4, !range !14
  %722 = icmp eq i8 %721, 0
  %723 = select i1 %722, i32 0, i32 536870912
  %724 = select i1 %426, i32 268435456, i32 0
  %725 = xor i8 %721, 1
  %726 = zext i8 %725 to i32
  %727 = shl nuw nsw i32 %726, 30
  %728 = or i32 %724, %718
  %729 = or i32 %728, %723
  %730 = or i32 %729, %727
  %731 = load i32, ptr %6, align 4
  %732 = load i32, ptr %644, align 8
  %733 = icmp eq i32 %731, %732
  br i1 %733, label %734, label %748

734:                                              ; preds = %713
  %735 = shl i32 %731, 1
  %736 = tail call i32 @llvm.umax.i32(i32 %735, i32 4) #10
  %737 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %736, i32 4) #10
  %738 = extractvalue { i32, i1 } %737, 1
  br i1 %738, label %751, label %739, !prof !10

739:                                              ; preds = %734
  %740 = extractvalue { i32, i1 } %737, 0
  %741 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %740, i32 noundef 3264) #12
  %742 = icmp eq ptr %741, null
  br i1 %742, label %751, label %743

743:                                              ; preds = %739
  %744 = load i32, ptr %6, align 4
  %745 = load ptr, ptr %666, align 4
  %746 = shl i32 %744, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %741, ptr align 4 %745, i32 %746, i1 false) #10
  tail call void @kfree(ptr noundef %745) #10
  store ptr %741, ptr %666, align 4
  store i32 %736, ptr %644, align 8
  %747 = load i32, ptr %6, align 4
  br label %748

748:                                              ; preds = %743, %713
  %749 = phi i32 [ %747, %743 ], [ %731, %713 ]
  %750 = add i32 %749, 1
  store i32 %750, ptr %6, align 4
  br label %751

751:                                              ; preds = %748, %739, %734
  %752 = load ptr, ptr %666, align 4
  %753 = getelementptr i32, ptr %752, i32 %731
  store i32 %730, ptr %753, align 4
  %754 = load i8, ptr %156, align 4, !range !14
  %755 = icmp eq i8 %754, 0
  br i1 %755, label %756, label %774

756:                                              ; preds = %751
  %757 = load i32, ptr %129, align 4
  %758 = icmp ult i32 %757, 8192
  br i1 %758, label %761, label %759, !prof !13

759:                                              ; preds = %756
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1018, i32 noundef 9, ptr noundef null) #10
  %760 = load i32, ptr %129, align 4
  br label %761

761:                                              ; preds = %759, %756
  %762 = phi i32 [ %760, %759 ], [ %757, %756 ]
  %763 = and i32 %762, 8191
  %764 = load i32, ptr %133, align 8
  %765 = and i32 %764, 57344
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %769, label %767, !prof !13

767:                                              ; preds = %761
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1020, i32 noundef 9, ptr noundef null) #10
  %768 = load i32, ptr %133, align 8
  br label %769

769:                                              ; preds = %767, %761
  %770 = phi i32 [ %768, %767 ], [ %764, %761 ]
  %771 = shl i32 %770, 16
  %772 = and i32 %771, 536805376
  %773 = or i32 %772, %763
  tail call fastcc void @vc4_dlist_write(ptr noundef %1, i32 noundef %773)
  br label %774

774:                                              ; preds = %769, %751
  %775 = load i32, ptr %6, align 4
  %776 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 5
  store i32 %775, ptr %776, align 4
  %777 = load i32, ptr %116, align 4
  %778 = icmp ult i32 %777, 8192
  br i1 %778, label %781, label %779, !prof !13

779:                                              ; preds = %774
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef null) #10
  %780 = load i32, ptr %116, align 4
  br label %781

781:                                              ; preds = %779, %774
  %782 = phi i32 [ %780, %779 ], [ %777, %774 ]
  %783 = and i32 %782, 8191
  %784 = load i32, ptr %119, align 4
  %785 = and i32 %784, 57344
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %789, label %787, !prof !13

787:                                              ; preds = %781
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1029, i32 noundef 9, ptr noundef null) #10
  %788 = load i32, ptr %119, align 4
  br label %789

789:                                              ; preds = %787, %781
  %790 = phi i32 [ %788, %787 ], [ %784, %781 ]
  %791 = shl i32 %790, 16
  %792 = and i32 %791, 536805376
  %793 = or i32 %792, %783
  %794 = load i32, ptr %6, align 4
  %795 = load i32, ptr %644, align 8
  %796 = icmp eq i32 %794, %795
  br i1 %796, label %797, label %811

797:                                              ; preds = %789
  %798 = shl i32 %794, 1
  %799 = tail call i32 @llvm.umax.i32(i32 %798, i32 4) #10
  %800 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %799, i32 4) #10
  %801 = extractvalue { i32, i1 } %800, 1
  br i1 %801, label %814, label %802, !prof !10

802:                                              ; preds = %797
  %803 = extractvalue { i32, i1 } %800, 0
  %804 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %803, i32 noundef 3264) #12
  %805 = icmp eq ptr %804, null
  br i1 %805, label %814, label %806

806:                                              ; preds = %802
  %807 = load i32, ptr %6, align 4
  %808 = load ptr, ptr %666, align 4
  %809 = shl i32 %807, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %804, ptr align 4 %808, i32 %809, i1 false) #10
  tail call void @kfree(ptr noundef %808) #10
  store ptr %804, ptr %666, align 4
  store i32 %799, ptr %644, align 8
  %810 = load i32, ptr %6, align 4
  br label %811

811:                                              ; preds = %806, %789
  %812 = phi i32 [ %810, %806 ], [ %794, %789 ]
  %813 = add i32 %812, 1
  store i32 %813, ptr %6, align 4
  br label %814

814:                                              ; preds = %811, %802, %797
  %815 = load ptr, ptr %666, align 4
  %816 = getelementptr i32, ptr %815, i32 %794
  store i32 %793, ptr %816, align 4
  %817 = load i32, ptr %6, align 4
  %818 = load i32, ptr %644, align 8
  %819 = icmp eq i32 %817, %818
  br i1 %819, label %820, label %837

820:                                              ; preds = %814
  %821 = shl i32 %817, 1
  %822 = tail call i32 @llvm.umax.i32(i32 %821, i32 4) #10
  %823 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %822, i32 4) #10
  %824 = extractvalue { i32, i1 } %823, 1
  br i1 %824, label %842, label %825, !prof !10

825:                                              ; preds = %820
  %826 = extractvalue { i32, i1 } %823, 0
  %827 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %826, i32 noundef 3264) #12
  %828 = icmp eq ptr %827, null
  br i1 %828, label %842, label %829

829:                                              ; preds = %825
  %830 = load i32, ptr %6, align 4
  %831 = load ptr, ptr %666, align 4
  %832 = shl i32 %830, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %827, ptr align 4 %831, i32 %832, i1 false) #10
  tail call void @kfree(ptr noundef %831) #10
  store ptr %827, ptr %666, align 4
  store i32 %822, ptr %644, align 8
  br label %833

833:                                              ; preds = %829, %616
  %834 = phi ptr [ %666, %829 ], [ %479, %616 ]
  %835 = phi i32 [ %817, %829 ], [ %604, %616 ]
  %836 = load i32, ptr %6, align 4
  br label %837

837:                                              ; preds = %833, %814, %601
  %838 = phi i32 [ %604, %601 ], [ %817, %814 ], [ %836, %833 ]
  %839 = phi ptr [ %479, %601 ], [ %666, %814 ], [ %834, %833 ]
  %840 = phi i32 [ %604, %601 ], [ %817, %814 ], [ %835, %833 ]
  %841 = add i32 %838, 1
  store i32 %841, ptr %6, align 4
  br label %842

842:                                              ; preds = %837, %825, %820, %612, %607
  %843 = phi ptr [ %479, %607 ], [ %479, %612 ], [ %666, %820 ], [ %666, %825 ], [ %839, %837 ]
  %844 = phi i32 [ %604, %607 ], [ %604, %612 ], [ %817, %820 ], [ %817, %825 ], [ %840, %837 ]
  %845 = load ptr, ptr %843, align 4
  %846 = getelementptr i32, ptr %845, i32 %844
  store i32 -1061109568, ptr %846, align 4
  %847 = load i32, ptr %6, align 4
  %848 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 6
  store i32 %847, ptr %848, align 8
  %849 = icmp eq i8 %36, 0
  br i1 %849, label %915, label %850

850:                                              ; preds = %842
  %851 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 2
  %852 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  br label %857

853:                                              ; preds = %881
  br i1 %849, label %915, label %854

854:                                              ; preds = %853
  %855 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 2
  %856 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  br label %888

857:                                              ; preds = %886, %850
  %858 = phi i32 [ %847, %850 ], [ %887, %886 ]
  %859 = phi i32 [ 0, %850 ], [ %884, %886 ]
  %860 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 21, i32 %859
  %861 = load i32, ptr %860, align 4
  %862 = load i32, ptr %851, align 8
  %863 = icmp eq i32 %858, %862
  br i1 %863, label %864, label %878

864:                                              ; preds = %857
  %865 = shl i32 %858, 1
  %866 = tail call i32 @llvm.umax.i32(i32 %865, i32 4) #10
  %867 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %866, i32 4) #10
  %868 = extractvalue { i32, i1 } %867, 1
  br i1 %868, label %881, label %869, !prof !10

869:                                              ; preds = %864
  %870 = extractvalue { i32, i1 } %867, 0
  %871 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %870, i32 noundef 3264) #12
  %872 = icmp eq ptr %871, null
  br i1 %872, label %881, label %873

873:                                              ; preds = %869
  %874 = load i32, ptr %6, align 4
  %875 = load ptr, ptr %852, align 4
  %876 = shl i32 %874, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %871, ptr align 4 %875, i32 %876, i1 false) #10
  tail call void @kfree(ptr noundef %875) #10
  store ptr %871, ptr %852, align 4
  store i32 %866, ptr %851, align 8
  %877 = load i32, ptr %6, align 4
  br label %878

878:                                              ; preds = %873, %857
  %879 = phi i32 [ %877, %873 ], [ %858, %857 ]
  %880 = add i32 %879, 1
  store i32 %880, ptr %6, align 4
  br label %881

881:                                              ; preds = %878, %869, %864
  %882 = load ptr, ptr %852, align 4
  %883 = getelementptr i32, ptr %882, i32 %858
  store i32 %861, ptr %883, align 4
  %884 = add nuw nsw i32 %859, 1
  %885 = icmp eq i32 %884, %37
  br i1 %885, label %853, label %886

886:                                              ; preds = %881
  %887 = load i32, ptr %6, align 4
  br label %857

888:                                              ; preds = %910, %854
  %889 = phi i32 [ 0, %854 ], [ %913, %910 ]
  %890 = load i32, ptr %6, align 4
  %891 = load i32, ptr %855, align 8
  %892 = icmp eq i32 %890, %891
  br i1 %892, label %893, label %907

893:                                              ; preds = %888
  %894 = shl i32 %890, 1
  %895 = tail call i32 @llvm.umax.i32(i32 %894, i32 4) #10
  %896 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %895, i32 4) #10
  %897 = extractvalue { i32, i1 } %896, 1
  br i1 %897, label %910, label %898, !prof !10

898:                                              ; preds = %893
  %899 = extractvalue { i32, i1 } %896, 0
  %900 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %899, i32 noundef 3264) #12
  %901 = icmp eq ptr %900, null
  br i1 %901, label %910, label %902

902:                                              ; preds = %898
  %903 = load i32, ptr %6, align 4
  %904 = load ptr, ptr %856, align 4
  %905 = shl i32 %903, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %900, ptr align 4 %904, i32 %905, i1 false) #10
  tail call void @kfree(ptr noundef %904) #10
  store ptr %900, ptr %856, align 4
  store i32 %895, ptr %855, align 8
  %906 = load i32, ptr %6, align 4
  br label %907

907:                                              ; preds = %902, %888
  %908 = phi i32 [ %906, %902 ], [ %890, %888 ]
  %909 = add i32 %908, 1
  store i32 %909, ptr %6, align 4
  br label %910

910:                                              ; preds = %907, %898, %893
  %911 = load ptr, ptr %856, align 4
  %912 = getelementptr i32, ptr %911, i32 %890
  store i32 -1061109568, ptr %912, align 4
  %913 = add nuw nsw i32 %889, 1
  %914 = icmp eq i32 %913, %37
  br i1 %914, label %915, label %888

915:                                              ; preds = %910, %853, %842
  %916 = load i32, ptr %6, align 4
  %917 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 2
  %918 = load i32, ptr %917, align 8
  %919 = icmp eq i32 %916, %918
  br i1 %919, label %920, label %935

920:                                              ; preds = %915
  %921 = shl i32 %916, 1
  %922 = tail call i32 @llvm.umax.i32(i32 %921, i32 4) #10
  %923 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %922, i32 4) #10
  %924 = extractvalue { i32, i1 } %923, 1
  br i1 %924, label %938, label %925, !prof !10

925:                                              ; preds = %920
  %926 = extractvalue { i32, i1 } %923, 0
  %927 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %926, i32 noundef 3264) #12
  %928 = icmp eq ptr %927, null
  br i1 %928, label %938, label %929

929:                                              ; preds = %925
  %930 = load i32, ptr %6, align 4
  %931 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %932 = load ptr, ptr %931, align 4
  %933 = shl i32 %930, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %927, ptr align 4 %932, i32 %933, i1 false) #10
  tail call void @kfree(ptr noundef %932) #10
  store ptr %927, ptr %931, align 4
  store i32 %922, ptr %917, align 8
  %934 = load i32, ptr %6, align 4
  br label %935

935:                                              ; preds = %929, %915
  %936 = phi i32 [ %934, %929 ], [ %916, %915 ]
  %937 = add i32 %936, 1
  store i32 %937, ptr %6, align 4
  br label %938

938:                                              ; preds = %935, %925, %920
  %939 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %940 = load ptr, ptr %939, align 4
  %941 = getelementptr i32, ptr %940, i32 %916
  store i32 %416, ptr %941, align 4
  %942 = icmp ugt i8 %36, 1
  br i1 %942, label %943, label %1006

943:                                              ; preds = %999, %938
  %944 = phi i32 [ %1004, %999 ], [ 1, %938 ]
  switch i32 %414, label %945 [
    i32 17, label %970
    i32 12, label %970
  ]

945:                                              ; preds = %943
  %946 = getelementptr %struct.drm_framebuffer, ptr %5, i32 0, i32 6, i32 %944
  %947 = load i32, ptr %946, align 4
  %948 = icmp ult i32 %947, 65536
  br i1 %948, label %951, label %949, !prof !13

949:                                              ; preds = %945
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1057, i32 noundef 9, ptr noundef null) #10
  %950 = load i32, ptr %946, align 4
  br label %951

951:                                              ; preds = %949, %945
  %952 = phi i32 [ %950, %949 ], [ %947, %945 ]
  %953 = and i32 %952, 65535
  %954 = load i32, ptr %6, align 4
  %955 = load i32, ptr %917, align 8
  %956 = icmp eq i32 %954, %955
  br i1 %956, label %957, label %994

957:                                              ; preds = %951
  %958 = shl i32 %954, 1
  %959 = tail call i32 @llvm.umax.i32(i32 %958, i32 4) #10
  %960 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %959, i32 4) #10
  %961 = extractvalue { i32, i1 } %960, 1
  br i1 %961, label %999, label %962, !prof !10

962:                                              ; preds = %957
  %963 = extractvalue { i32, i1 } %960, 0
  %964 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %963, i32 noundef 3264) #12
  %965 = icmp eq ptr %964, null
  br i1 %965, label %999, label %966

966:                                              ; preds = %962
  %967 = load i32, ptr %6, align 4
  %968 = load ptr, ptr %939, align 4
  %969 = shl i32 %967, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %964, ptr align 4 %968, i32 %969, i1 false) #10
  br label %987

970:                                              ; preds = %943, %943
  %971 = load i32, ptr %6, align 4
  %972 = load i32, ptr %917, align 8
  %973 = icmp eq i32 %971, %972
  br i1 %973, label %974, label %994

974:                                              ; preds = %970
  %975 = shl i32 %971, 1
  %976 = tail call i32 @llvm.umax.i32(i32 %975, i32 4) #10
  %977 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %976, i32 4) #10
  %978 = extractvalue { i32, i1 } %977, 1
  br i1 %978, label %999, label %979, !prof !10

979:                                              ; preds = %974
  %980 = extractvalue { i32, i1 } %977, 0
  %981 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %980, i32 noundef 3264) #12
  %982 = icmp eq ptr %981, null
  br i1 %982, label %999, label %983

983:                                              ; preds = %979
  %984 = load i32, ptr %6, align 4
  %985 = load ptr, ptr %939, align 4
  %986 = shl i32 %984, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %981, ptr align 4 %985, i32 %986, i1 false) #10
  br label %987

987:                                              ; preds = %983, %966
  %988 = phi ptr [ %985, %983 ], [ %968, %966 ]
  %989 = phi ptr [ %981, %983 ], [ %964, %966 ]
  %990 = phi i32 [ %976, %983 ], [ %959, %966 ]
  %991 = phi i32 [ %971, %983 ], [ %954, %966 ]
  %992 = phi i32 [ %416, %983 ], [ %953, %966 ]
  tail call void @kfree(ptr noundef %988) #10
  store ptr %989, ptr %939, align 4
  store i32 %990, ptr %917, align 8
  %993 = load i32, ptr %6, align 4
  br label %994

994:                                              ; preds = %987, %970, %951
  %995 = phi i32 [ %954, %951 ], [ %971, %970 ], [ %993, %987 ]
  %996 = phi i32 [ %954, %951 ], [ %971, %970 ], [ %991, %987 ]
  %997 = phi i32 [ %953, %951 ], [ %416, %970 ], [ %992, %987 ]
  %998 = add i32 %995, 1
  store i32 %998, ptr %6, align 4
  br label %999

999:                                              ; preds = %994, %979, %974, %962, %957
  %1000 = phi i32 [ %954, %957 ], [ %954, %962 ], [ %971, %974 ], [ %971, %979 ], [ %996, %994 ]
  %1001 = phi i32 [ %953, %957 ], [ %953, %962 ], [ %416, %974 ], [ %416, %979 ], [ %997, %994 ]
  %1002 = load ptr, ptr %939, align 4
  %1003 = getelementptr i32, ptr %1002, i32 %1000
  store i32 %1001, ptr %1003, align 4
  %1004 = add nuw nsw i32 %944, 1
  %1005 = icmp eq i32 %1004, %37
  br i1 %1005, label %1006, label %943

1006:                                             ; preds = %999, %938
  %1007 = load i8, ptr %159, align 1, !range !14
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1093, label %1009

1009:                                             ; preds = %1006
  %1010 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 17
  %1011 = load i32, ptr %1010, align 4
  %1012 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 18
  %1013 = load i32, ptr %1012, align 4
  %1014 = icmp ugt i32 %1011, 2
  %1015 = select i1 %1014, i32 0, i32 %1011
  %1016 = icmp ugt i32 %1013, 1
  %1017 = select i1 %1016, i32 0, i32 %1013
  %1018 = getelementptr [2 x [3 x [3 x i32]]], ptr @colorspace_coeffs, i32 0, i32 %1017, i32 %1015
  %1019 = load i32, ptr %1018, align 4
  %1020 = load i32, ptr %6, align 4
  %1021 = load i32, ptr %917, align 8
  %1022 = icmp eq i32 %1020, %1021
  br i1 %1022, label %1023, label %1037

1023:                                             ; preds = %1009
  %1024 = shl i32 %1020, 1
  %1025 = tail call i32 @llvm.umax.i32(i32 %1024, i32 4) #10
  %1026 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1025, i32 4) #10
  %1027 = extractvalue { i32, i1 } %1026, 1
  br i1 %1027, label %1040, label %1028, !prof !10

1028:                                             ; preds = %1023
  %1029 = extractvalue { i32, i1 } %1026, 0
  %1030 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1029, i32 noundef 3264) #12
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1040, label %1032

1032:                                             ; preds = %1028
  %1033 = load i32, ptr %6, align 4
  %1034 = load ptr, ptr %939, align 4
  %1035 = shl i32 %1033, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1030, ptr align 4 %1034, i32 %1035, i1 false) #10
  tail call void @kfree(ptr noundef %1034) #10
  store ptr %1030, ptr %939, align 4
  store i32 %1025, ptr %917, align 8
  %1036 = load i32, ptr %6, align 4
  br label %1037

1037:                                             ; preds = %1032, %1009
  %1038 = phi i32 [ %1036, %1032 ], [ %1020, %1009 ]
  %1039 = add i32 %1038, 1
  store i32 %1039, ptr %6, align 4
  br label %1040

1040:                                             ; preds = %1037, %1028, %1023
  %1041 = load ptr, ptr %939, align 4
  %1042 = getelementptr i32, ptr %1041, i32 %1020
  store i32 %1019, ptr %1042, align 4
  %1043 = getelementptr i32, ptr %1018, i32 1
  %1044 = load i32, ptr %1043, align 4
  %1045 = load i32, ptr %6, align 4
  %1046 = load i32, ptr %917, align 8
  %1047 = icmp eq i32 %1045, %1046
  br i1 %1047, label %1048, label %1062

1048:                                             ; preds = %1040
  %1049 = shl i32 %1045, 1
  %1050 = tail call i32 @llvm.umax.i32(i32 %1049, i32 4) #10
  %1051 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1050, i32 4) #10
  %1052 = extractvalue { i32, i1 } %1051, 1
  br i1 %1052, label %1065, label %1053, !prof !10

1053:                                             ; preds = %1048
  %1054 = extractvalue { i32, i1 } %1051, 0
  %1055 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1054, i32 noundef 3264) #12
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1065, label %1057

1057:                                             ; preds = %1053
  %1058 = load i32, ptr %6, align 4
  %1059 = load ptr, ptr %939, align 4
  %1060 = shl i32 %1058, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1055, ptr align 4 %1059, i32 %1060, i1 false) #10
  tail call void @kfree(ptr noundef %1059) #10
  store ptr %1055, ptr %939, align 4
  store i32 %1050, ptr %917, align 8
  %1061 = load i32, ptr %6, align 4
  br label %1062

1062:                                             ; preds = %1057, %1040
  %1063 = phi i32 [ %1061, %1057 ], [ %1045, %1040 ]
  %1064 = add i32 %1063, 1
  store i32 %1064, ptr %6, align 4
  br label %1065

1065:                                             ; preds = %1062, %1053, %1048
  %1066 = load ptr, ptr %939, align 4
  %1067 = getelementptr i32, ptr %1066, i32 %1045
  store i32 %1044, ptr %1067, align 4
  %1068 = getelementptr i32, ptr %1018, i32 2
  %1069 = load i32, ptr %1068, align 4
  %1070 = load i32, ptr %6, align 4
  %1071 = load i32, ptr %917, align 8
  %1072 = icmp eq i32 %1070, %1071
  br i1 %1072, label %1073, label %1087

1073:                                             ; preds = %1065
  %1074 = shl i32 %1070, 1
  %1075 = tail call i32 @llvm.umax.i32(i32 %1074, i32 4) #10
  %1076 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1075, i32 4) #10
  %1077 = extractvalue { i32, i1 } %1076, 1
  br i1 %1077, label %1090, label %1078, !prof !10

1078:                                             ; preds = %1073
  %1079 = extractvalue { i32, i1 } %1076, 0
  %1080 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1079, i32 noundef 3264) #12
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1090, label %1082

1082:                                             ; preds = %1078
  %1083 = load i32, ptr %6, align 4
  %1084 = load ptr, ptr %939, align 4
  %1085 = shl i32 %1083, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1080, ptr align 4 %1084, i32 %1085, i1 false) #10
  tail call void @kfree(ptr noundef %1084) #10
  store ptr %1080, ptr %939, align 4
  store i32 %1075, ptr %917, align 8
  %1086 = load i32, ptr %6, align 4
  br label %1087

1087:                                             ; preds = %1082, %1065
  %1088 = phi i32 [ %1086, %1082 ], [ %1070, %1065 ]
  %1089 = add i32 %1088, 1
  store i32 %1089, ptr %6, align 4
  br label %1090

1090:                                             ; preds = %1087, %1078, %1073
  %1091 = load ptr, ptr %939, align 4
  %1092 = getelementptr i32, ptr %1091, i32 %1070
  store i32 %1069, ptr %1092, align 4
  br label %1093

1093:                                             ; preds = %1090, %1006
  %1094 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 7
  store i32 0, ptr %1094, align 4
  %1095 = load i32, ptr %145, align 4
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1097, label %1108

1097:                                             ; preds = %1093
  %1098 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 17, i32 1
  %1099 = load i32, ptr %1098, align 4
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1101, label %1108

1101:                                             ; preds = %1097
  %1102 = load i32, ptr %154, align 4
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1104, label %1115

1104:                                             ; preds = %1101
  %1105 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 18, i32 1
  %1106 = load i32, ptr %1105, align 4
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1259, label %1108

1108:                                             ; preds = %1104, %1097, %1093
  %1109 = load i32, ptr %154, align 4
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1115

1111:                                             ; preds = %1108
  %1112 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 18, i32 1
  %1113 = load i32, ptr %1112, align 4
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1136, label %1115

1115:                                             ; preds = %1111, %1108, %1101
  %1116 = load i32, ptr %6, align 4
  store i32 %1116, ptr %1094, align 4
  %1117 = load i32, ptr %917, align 8
  %1118 = icmp eq i32 %1116, %1117
  br i1 %1118, label %1119, label %1133

1119:                                             ; preds = %1115
  %1120 = shl i32 %1116, 1
  %1121 = tail call i32 @llvm.umax.i32(i32 %1120, i32 4) #10
  %1122 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1121, i32 4) #10
  %1123 = extractvalue { i32, i1 } %1122, 1
  br i1 %1123, label %1136, label %1124, !prof !10

1124:                                             ; preds = %1119
  %1125 = extractvalue { i32, i1 } %1122, 0
  %1126 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1125, i32 noundef 3264) #12
  %1127 = icmp eq ptr %1126, null
  br i1 %1127, label %1136, label %1128

1128:                                             ; preds = %1124
  %1129 = load i32, ptr %6, align 4
  %1130 = load ptr, ptr %939, align 4
  %1131 = shl i32 %1129, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1126, ptr align 4 %1130, i32 %1131, i1 false) #10
  tail call void @kfree(ptr noundef %1130) #10
  store ptr %1126, ptr %939, align 4
  store i32 %1121, ptr %917, align 8
  %1132 = load i32, ptr %6, align 4
  br label %1133

1133:                                             ; preds = %1128, %1115
  %1134 = phi i32 [ %1132, %1128 ], [ %1116, %1115 ]
  %1135 = add i32 %1134, 1
  store i32 %1135, ptr %6, align 4
  br label %1136

1136:                                             ; preds = %1133, %1124, %1119, %1111
  br i1 %942, label %1137, label %1138

1137:                                             ; preds = %1136
  tail call fastcc void @vc4_write_scaling_parameters(ptr noundef %1, i32 noundef 1)
  br label %1138

1138:                                             ; preds = %1137, %1136
  tail call fastcc void @vc4_write_scaling_parameters(ptr noundef %1, i32 noundef 0)
  %1139 = load i32, ptr %145, align 4
  %1140 = icmp eq i32 %1139, 2
  br i1 %1140, label %1152, label %1141

1141:                                             ; preds = %1138
  %1142 = load i32, ptr %154, align 4
  %1143 = icmp eq i32 %1142, 2
  br i1 %1143, label %1152, label %1144

1144:                                             ; preds = %1141
  %1145 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 17, i32 1
  %1146 = load i32, ptr %1145, align 4
  %1147 = icmp eq i32 %1146, 2
  br i1 %1147, label %1152, label %1148

1148:                                             ; preds = %1144
  %1149 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 18, i32 1
  %1150 = load i32, ptr %1149, align 4
  %1151 = icmp eq i32 %1150, 2
  br i1 %1151, label %1152, label %1259

1152:                                             ; preds = %1148, %1144, %1141, %1138
  %1153 = load ptr, ptr %427, align 8
  %1154 = getelementptr inbounds %struct.vc4_hvs, ptr %1153, i32 0, i32 7, i32 1
  %1155 = load i64, ptr %1154, align 8
  %1156 = and i64 %1155, 4294950912
  %1157 = icmp eq i64 %1156, 0
  %1158 = trunc i64 %1155 to i32
  br i1 %1157, label %1164, label %1159, !prof !13

1159:                                             ; preds = %1152
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1113, i32 noundef 9, ptr noundef null) #10
  %1160 = load ptr, ptr %427, align 8
  %1161 = getelementptr inbounds %struct.vc4_hvs, ptr %1160, i32 0, i32 7, i32 1
  %1162 = load i64, ptr %1161, align 8
  %1163 = trunc i64 %1162 to i32
  br label %1164

1164:                                             ; preds = %1159, %1152
  %1165 = phi i32 [ %1163, %1159 ], [ %1158, %1152 ]
  %1166 = and i32 %1165, 16383
  %1167 = load i32, ptr %6, align 4
  %1168 = load i32, ptr %917, align 8
  %1169 = icmp eq i32 %1167, %1168
  br i1 %1169, label %1170, label %1184

1170:                                             ; preds = %1164
  %1171 = shl i32 %1167, 1
  %1172 = tail call i32 @llvm.umax.i32(i32 %1171, i32 4) #10
  %1173 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1172, i32 4) #10
  %1174 = extractvalue { i32, i1 } %1173, 1
  br i1 %1174, label %1187, label %1175, !prof !10

1175:                                             ; preds = %1170
  %1176 = extractvalue { i32, i1 } %1173, 0
  %1177 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1176, i32 noundef 3264) #12
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1187, label %1179

1179:                                             ; preds = %1175
  %1180 = load i32, ptr %6, align 4
  %1181 = load ptr, ptr %939, align 4
  %1182 = shl i32 %1180, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1177, ptr align 4 %1181, i32 %1182, i1 false) #10
  tail call void @kfree(ptr noundef %1181) #10
  store ptr %1177, ptr %939, align 4
  store i32 %1172, ptr %917, align 8
  %1183 = load i32, ptr %6, align 4
  br label %1184

1184:                                             ; preds = %1179, %1164
  %1185 = phi i32 [ %1183, %1179 ], [ %1167, %1164 ]
  %1186 = add i32 %1185, 1
  store i32 %1186, ptr %6, align 4
  br label %1187

1187:                                             ; preds = %1184, %1175, %1170
  %1188 = load ptr, ptr %939, align 4
  %1189 = getelementptr i32, ptr %1188, i32 %1167
  store i32 %1166, ptr %1189, align 4
  %1190 = load i32, ptr %6, align 4
  %1191 = load i32, ptr %917, align 8
  %1192 = icmp eq i32 %1190, %1191
  br i1 %1192, label %1193, label %1207

1193:                                             ; preds = %1187
  %1194 = shl i32 %1190, 1
  %1195 = tail call i32 @llvm.umax.i32(i32 %1194, i32 4) #10
  %1196 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1195, i32 4) #10
  %1197 = extractvalue { i32, i1 } %1196, 1
  br i1 %1197, label %1210, label %1198, !prof !10

1198:                                             ; preds = %1193
  %1199 = extractvalue { i32, i1 } %1196, 0
  %1200 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1199, i32 noundef 3264) #12
  %1201 = icmp eq ptr %1200, null
  br i1 %1201, label %1210, label %1202

1202:                                             ; preds = %1198
  %1203 = load i32, ptr %6, align 4
  %1204 = load ptr, ptr %939, align 4
  %1205 = shl i32 %1203, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1200, ptr align 4 %1204, i32 %1205, i1 false) #10
  tail call void @kfree(ptr noundef %1204) #10
  store ptr %1200, ptr %939, align 4
  store i32 %1195, ptr %917, align 8
  %1206 = load i32, ptr %6, align 4
  br label %1207

1207:                                             ; preds = %1202, %1187
  %1208 = phi i32 [ %1206, %1202 ], [ %1190, %1187 ]
  %1209 = add i32 %1208, 1
  store i32 %1209, ptr %6, align 4
  br label %1210

1210:                                             ; preds = %1207, %1198, %1193
  %1211 = load ptr, ptr %939, align 4
  %1212 = getelementptr i32, ptr %1211, i32 %1190
  store i32 %1166, ptr %1212, align 4
  %1213 = load i32, ptr %6, align 4
  %1214 = load i32, ptr %917, align 8
  %1215 = icmp eq i32 %1213, %1214
  br i1 %1215, label %1216, label %1230

1216:                                             ; preds = %1210
  %1217 = shl i32 %1213, 1
  %1218 = tail call i32 @llvm.umax.i32(i32 %1217, i32 4) #10
  %1219 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1218, i32 4) #10
  %1220 = extractvalue { i32, i1 } %1219, 1
  br i1 %1220, label %1233, label %1221, !prof !10

1221:                                             ; preds = %1216
  %1222 = extractvalue { i32, i1 } %1219, 0
  %1223 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1222, i32 noundef 3264) #12
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1233, label %1225

1225:                                             ; preds = %1221
  %1226 = load i32, ptr %6, align 4
  %1227 = load ptr, ptr %939, align 4
  %1228 = shl i32 %1226, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1223, ptr align 4 %1227, i32 %1228, i1 false) #10
  tail call void @kfree(ptr noundef %1227) #10
  store ptr %1223, ptr %939, align 4
  store i32 %1218, ptr %917, align 8
  %1229 = load i32, ptr %6, align 4
  br label %1230

1230:                                             ; preds = %1225, %1210
  %1231 = phi i32 [ %1229, %1225 ], [ %1213, %1210 ]
  %1232 = add i32 %1231, 1
  store i32 %1232, ptr %6, align 4
  br label %1233

1233:                                             ; preds = %1230, %1221, %1216
  %1234 = load ptr, ptr %939, align 4
  %1235 = getelementptr i32, ptr %1234, i32 %1213
  store i32 %1166, ptr %1235, align 4
  %1236 = load i32, ptr %6, align 4
  %1237 = load i32, ptr %917, align 8
  %1238 = icmp eq i32 %1236, %1237
  br i1 %1238, label %1239, label %1253

1239:                                             ; preds = %1233
  %1240 = shl i32 %1236, 1
  %1241 = tail call i32 @llvm.umax.i32(i32 %1240, i32 4) #10
  %1242 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1241, i32 4) #10
  %1243 = extractvalue { i32, i1 } %1242, 1
  br i1 %1243, label %1256, label %1244, !prof !10

1244:                                             ; preds = %1239
  %1245 = extractvalue { i32, i1 } %1242, 0
  %1246 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1245, i32 noundef 3264) #12
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1256, label %1248

1248:                                             ; preds = %1244
  %1249 = load i32, ptr %6, align 4
  %1250 = load ptr, ptr %939, align 4
  %1251 = shl i32 %1249, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %1246, ptr align 4 %1250, i32 %1251, i1 false) #10
  tail call void @kfree(ptr noundef %1250) #10
  store ptr %1246, ptr %939, align 4
  store i32 %1241, ptr %917, align 8
  %1252 = load i32, ptr %6, align 4
  br label %1253

1253:                                             ; preds = %1248, %1233
  %1254 = phi i32 [ %1252, %1248 ], [ %1236, %1233 ]
  %1255 = add i32 %1254, 1
  store i32 %1255, ptr %6, align 4
  br label %1256

1256:                                             ; preds = %1253, %1244, %1239
  %1257 = load ptr, ptr %939, align 4
  %1258 = getelementptr i32, ptr %1257, i32 %1236
  store i32 %1166, ptr %1258, align 4
  br label %1259

1259:                                             ; preds = %1256, %1148, %1104
  %1260 = load i32, ptr %6, align 4
  %1261 = and i32 %1260, 192
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1265, label %1263, !prof !13

1263:                                             ; preds = %1259
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1127, i32 noundef 9, ptr noundef null) #10
  %1264 = load i32, ptr %6, align 4
  br label %1265

1265:                                             ; preds = %1263, %1259
  %1266 = phi i32 [ %1264, %1263 ], [ %1260, %1259 ]
  %1267 = shl i32 %1266, 24
  %1268 = and i32 %1267, 1056964608
  %1269 = load ptr, ptr %939, align 4
  %1270 = getelementptr i32, ptr %1269, i32 %7
  %1271 = load i32, ptr %1270, align 4
  %1272 = or i32 %1271, %1268
  store i32 %1272, ptr %1270, align 4
  %1273 = load i32, ptr %122, align 4
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1275, label %1299

1275:                                             ; preds = %1265
  %1276 = load i32, ptr %125, align 8
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1278, label %1299

1278:                                             ; preds = %1275
  %1279 = load i32, ptr %129, align 4
  %1280 = load ptr, ptr %63, align 4
  %1281 = getelementptr inbounds %struct.drm_crtc, ptr %1280, i32 0, i32 12, i32 1
  %1282 = load i16, ptr %1281, align 4
  %1283 = zext i16 %1282 to i32
  %1284 = icmp eq i32 %1279, %1283
  br i1 %1284, label %1285, label %1299

1285:                                             ; preds = %1278
  %1286 = load i32, ptr %133, align 8
  %1287 = getelementptr inbounds %struct.drm_crtc, ptr %1280, i32 0, i32 12, i32 6
  %1288 = load i16, ptr %1287, align 2
  %1289 = zext i16 %1288 to i32
  %1290 = icmp ne i32 %1286, %1289
  %1291 = load ptr, ptr %8, align 8
  %1292 = getelementptr inbounds %struct.drm_format_info, ptr %1291, i32 0, i32 8
  %1293 = load i8, ptr %1292, align 4, !range !14
  %1294 = icmp ne i8 %1293, 0
  %1295 = select i1 %1294, i1 true, i1 %1290
  br i1 %1295, label %1299, label %1296

1296:                                             ; preds = %1285
  %1297 = load i16, ptr %417, align 4
  %1298 = icmp ne i16 %1297, -1
  br label %1299

1299:                                             ; preds = %1296, %1285, %1278, %1275, %1265
  %1300 = phi i1 [ true, %1285 ], [ %1298, %1296 ], [ true, %1278 ], [ true, %1275 ], [ true, %1265 ]
  %1301 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 23
  %1302 = zext i1 %1300 to i8
  store i8 %1302, ptr %1301, align 8
  store i8 1, ptr %46, align 1
  %1303 = load ptr, ptr %4, align 4
  %1304 = load ptr, ptr %61, align 4
  %1305 = load ptr, ptr %63, align 4
  %1306 = getelementptr inbounds %struct.drm_atomic_state, ptr %1304, i32 0, i32 4
  %1307 = load ptr, ptr %1306, align 4
  %1308 = getelementptr inbounds %struct.drm_crtc, ptr %1305, i32 0, i32 8
  %1309 = load i32, ptr %1308, align 8
  %1310 = getelementptr %struct.__drm_crtcs_state, ptr %1307, i32 %1309, i32 1
  %1311 = load ptr, ptr %1310, align 4
  %1312 = getelementptr inbounds %struct.drm_crtc_state, ptr %1311, i32 0, i32 7
  %1313 = tail call i32 @drm_mode_vrefresh(ptr noundef %1312) #10
  %1314 = load i32, ptr %145, align 4
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1316, label %1328

1316:                                             ; preds = %1299
  %1317 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 17, i32 1
  %1318 = load i32, ptr %1317, align 4
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1320, label %1328

1320:                                             ; preds = %1316
  %1321 = load i32, ptr %154, align 4
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1328

1323:                                             ; preds = %1320
  %1324 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 18, i32 1
  %1325 = load i32, ptr %1324, align 4
  %1326 = icmp eq i32 %1325, 0
  %1327 = select i1 %1326, i32 2, i32 1
  br label %1328

1328:                                             ; preds = %1323, %1320, %1316, %1299
  %1329 = phi i32 [ 1, %1320 ], [ 1, %1316 ], [ 1, %1299 ], [ %1327, %1323 ]
  %1330 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 26
  %1331 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 25
  %1332 = getelementptr inbounds %struct.drm_framebuffer, ptr %1303, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %1331, i8 0, i64 16, i1 false) #10
  %1333 = load ptr, ptr %1332, align 8
  %1334 = getelementptr inbounds %struct.drm_format_info, ptr %1333, i32 0, i32 2
  %1335 = load i8, ptr %1334, align 1
  %1336 = icmp eq i8 %1335, 0
  br i1 %1336, label %1370, label %1337

1337:                                             ; preds = %1328
  %1338 = load i32, ptr %133, align 8
  %1339 = load i32, ptr %129, align 4
  %1340 = mul i32 %1339, %1338
  %1341 = sext i32 %1340 to i64
  %1342 = add i32 %1338, -1
  br label %1343

1343:                                             ; preds = %1343, %1337
  %1344 = phi i64 [ 0, %1337 ], [ %1363, %1343 ]
  %1345 = phi i64 [ 0, %1337 ], [ %1362, %1343 ]
  %1346 = phi ptr [ %1333, %1337 ], [ %1365, %1343 ]
  %1347 = phi i32 [ 0, %1337 ], [ %1364, %1343 ]
  %1348 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 16, i32 %1347
  %1349 = load i32, ptr %1348, align 4
  %1350 = add i32 %1342, %1349
  %1351 = udiv i32 %1350, %1338
  %1352 = getelementptr %struct.vc4_plane_state, ptr %1, i32 0, i32 15, i32 %1347
  %1353 = load i32, ptr %1352, align 4
  %1354 = getelementptr inbounds %struct.drm_format_info, ptr %1346, i32 0, i32 3
  %1355 = getelementptr [4 x i8], ptr %1354, i32 0, i32 %1347
  %1356 = load i8, ptr %1355, align 1
  %1357 = zext i8 %1356 to i32
  %1358 = mul i32 %1351, %1349
  %1359 = mul i32 %1358, %1353
  %1360 = mul i32 %1359, %1357
  %1361 = zext i32 %1360 to i64
  %1362 = add i64 %1345, %1361
  store i64 %1362, ptr %1330, align 8
  %1363 = add nsw i64 %1344, %1341
  store i64 %1363, ptr %1331, align 8
  %1364 = add nuw nsw i32 %1347, 1
  %1365 = load ptr, ptr %1332, align 8
  %1366 = getelementptr inbounds %struct.drm_format_info, ptr %1365, i32 0, i32 2
  %1367 = load i8, ptr %1366, align 1
  %1368 = zext i8 %1367 to i32
  %1369 = icmp ult i32 %1364, %1368
  br i1 %1369, label %1343, label %1370

1370:                                             ; preds = %1343, %1328
  %1371 = phi i64 [ 0, %1328 ], [ %1362, %1343 ]
  %1372 = phi i64 [ 0, %1328 ], [ %1363, %1343 ]
  %1373 = zext i32 %1313 to i64
  %1374 = mul i64 %1372, %1373
  %1375 = zext i32 %1329 to i64
  %1376 = lshr i64 %1374, %1375
  store i64 %1376, ptr %1331, align 8
  %1377 = mul i64 %1371, %1373
  store i64 %1377, ptr %1330, align 8
  br label %1378

1378:                                             ; preds = %1370, %411, %364, %333, %328, %109, %104, %99, %94, %89, %73, %72, %30
  %1379 = phi i32 [ -22, %411 ], [ 0, %1370 ], [ 0, %30 ], [ %134, %109 ], [ -22, %89 ], [ -22, %94 ], [ -22, %99 ], [ -22, %104 ], [ %74, %73 ], [ -22, %72 ], [ -22, %328 ], [ -22, %333 ], [ -22, %364 ]
  ret i32 %1379
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_dlist_write(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = shl i32 %4, 1
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 4) #10
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %26, label %13, !prof !10

13:                                               ; preds = %8
  %14 = extractvalue { i32, i1 } %11, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = shl i32 %18, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %15, ptr align 4 %20, i32 %21, i1 false) #10
  tail call void @kfree(ptr noundef %20) #10
  store ptr %15, ptr %19, align 4
  store i32 %10, ptr %5, align 8
  %22 = load i32, ptr %3, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i32 [ %22, %17 ], [ %4, %2 ]
  %25 = add i32 %24, 1
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %23, %13, %8
  %27 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i32, ptr %28, i32 %4
  store i32 %1, ptr %29, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_write_scaling_parameters(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.vc4_plane_state, ptr %0, i32 0, i32 17, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr %struct.vc4_plane_state, ptr %0, i32 0, i32 15, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  tail call fastcc void @vc4_write_ppf(ptr noundef %0, i32 noundef %8, i32 noundef %10)
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr %struct.vc4_plane_state, ptr %0, i32 0, i32 18, i32 %1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = getelementptr %struct.vc4_plane_state, ptr %0, i32 0, i32 16, i32 %1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 12
  %19 = load i32, ptr %18, align 8
  tail call fastcc void @vc4_write_ppf(ptr noundef %0, i32 noundef %17, i32 noundef %19)
  %20 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %15
  %26 = shl i32 %21, 1
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 4) #10
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #10
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %43, label %30, !prof !10

30:                                               ; preds = %25
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3264) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %20, align 4
  %36 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = shl i32 %35, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %32, ptr align 4 %37, i32 %38, i1 false) #10
  tail call void @kfree(ptr noundef %37) #10
  store ptr %32, ptr %36, align 4
  store i32 %27, ptr %22, align 8
  %39 = load i32, ptr %20, align 4
  br label %40

40:                                               ; preds = %34, %15
  %41 = phi i32 [ %39, %34 ], [ %21, %15 ]
  %42 = add i32 %41, 1
  store i32 %42, ptr %20, align 4
  br label %43

43:                                               ; preds = %40, %30, %25
  %44 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i32, ptr %45, i32 %21
  store i32 -1061109568, ptr %46, align 4
  br label %47

47:                                               ; preds = %43, %11
  %48 = load i32, ptr %3, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = getelementptr %struct.vc4_plane_state, ptr %0, i32 0, i32 15, i32 %1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  tail call fastcc void @vc4_write_tpz(ptr noundef %0, i32 noundef %52, i32 noundef %54)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, ptr %12, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = getelementptr %struct.vc4_plane_state, ptr %0, i32 0, i32 16, i32 %1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 12
  %62 = load i32, ptr %61, align 8
  tail call fastcc void @vc4_write_tpz(ptr noundef %0, i32 noundef %60, i32 noundef %62)
  %63 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %58
  %69 = shl i32 %64, 1
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 4) #10
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 4) #10
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %86, label %73, !prof !10

73:                                               ; preds = %68
  %74 = extractvalue { i32, i1 } %71, 0
  %75 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %74, i32 noundef 3264) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %63, align 4
  %79 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = shl i32 %78, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %75, ptr align 4 %80, i32 %81, i1 false) #10
  tail call void @kfree(ptr noundef %80) #10
  store ptr %75, ptr %79, align 4
  store i32 %70, ptr %65, align 8
  %82 = load i32, ptr %63, align 4
  br label %83

83:                                               ; preds = %77, %58
  %84 = phi i32 [ %82, %77 ], [ %64, %58 ]
  %85 = add i32 %84, 1
  store i32 %85, ptr %63, align 4
  br label %86

86:                                               ; preds = %83, %73, %68
  %87 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i32, ptr %88, i32 %64
  store i32 -1061109568, ptr %89, align 4
  br label %90

90:                                               ; preds = %86, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_plane_margins_adj(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %13, i32 3
  %15 = load ptr, ptr %14, align 4
  call void @vc4_crtc_get_margins(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %16 = load i32, ptr %2, align 4
  %17 = icmp ne i32 %16, 0
  %18 = load i32, ptr %3, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  %21 = load i32, ptr %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  %24 = load i32, ptr %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %1
  %28 = add i32 %18, %16
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 8, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %27
  %34 = add i32 %24, %21
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 8, i32 6
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %33
  %40 = sub i32 %31, %28
  %41 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, %40
  %44 = lshr i32 %31, 1
  %45 = add i32 %43, %44
  %46 = udiv i32 %45, %31
  %47 = add i32 %46, %16
  store i32 %47, ptr %41, align 4
  %48 = load i16, ptr %29, align 4
  %49 = zext i16 %48 to i32
  %50 = sub i32 %49, %16
  %51 = call i32 @llvm.umin.i32(i32 %47, i32 %50)
  store i32 %51, ptr %41, align 4
  %52 = load i16, ptr %35, align 2
  %53 = zext i16 %52 to i32
  %54 = sub i32 %53, %34
  %55 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 10
  %56 = load i32, ptr %55, align 8
  %57 = mul i32 %54, %56
  %58 = lshr i32 %53, 1
  %59 = add i32 %57, %58
  %60 = udiv i32 %59, %53
  %61 = add i32 %60, %21
  store i32 %61, ptr %55, align 8
  %62 = load i16, ptr %35, align 2
  %63 = zext i16 %62 to i32
  %64 = sub i32 %63, %21
  %65 = call i32 @llvm.umin.i32(i32 %61, i32 %64)
  store i32 %65, ptr %55, align 8
  %66 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 11
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, %40
  %69 = load i16, ptr %29, align 4
  %70 = zext i16 %69 to i32
  %71 = lshr i32 %70, 1
  %72 = add i32 %71, %68
  %73 = udiv i32 %72, %70
  store i32 %73, ptr %66, align 4
  %74 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 12
  %75 = load i32, ptr %74, align 8
  %76 = mul i32 %75, %54
  %77 = load i16, ptr %35, align 2
  %78 = zext i16 %77 to i32
  %79 = lshr i32 %78, 1
  %80 = add i32 %79, %76
  %81 = udiv i32 %80, %78
  store i32 %81, ptr %74, align 8
  %82 = icmp ult i32 %72, %70
  %83 = icmp ult i32 %80, %78
  %84 = select i1 %82, i1 true, i1 %83
  %85 = select i1 %84, i32 -22, i32 0
  br label %86

86:                                               ; preds = %39, %33, %27, %1
  %87 = phi i32 [ 0, %1 ], [ -22, %33 ], [ -22, %27 ], [ %85, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_get_margins(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_write_ppf(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = shl i32 %1, 16
  %5 = udiv i32 %4, %2
  %6 = shl i32 %5, 8
  %7 = icmp ult i32 %6, 33554432
  br i1 %7, label %9, label %8, !prof !13

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 448, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = shl i32 %11, 1
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 4) #10
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #10
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %33, label %20, !prof !10

20:                                               ; preds = %15
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %10, align 4
  %26 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %25, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %22, ptr align 4 %27, i32 %28, i1 false) #10
  tail call void @kfree(ptr noundef %27) #10
  store ptr %22, ptr %26, align 4
  store i32 %17, ptr %12, align 8
  %29 = load i32, ptr %10, align 4
  br label %30

30:                                               ; preds = %24, %9
  %31 = phi i32 [ %29, %24 ], [ %11, %9 ]
  %32 = add i32 %31, 1
  store i32 %32, ptr %10, align 4
  br label %33

33:                                               ; preds = %30, %20, %15
  %34 = and i32 %6, 33554176
  %35 = or i32 %34, 1073741824
  %36 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i32, ptr %37, i32 %11
  store i32 %35, ptr %38, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_write_tpz(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = shl i32 %1, 16
  %5 = udiv i32 %4, %2
  %6 = shl i32 %5, 8
  %7 = icmp ult i32 %6, 536870912
  br i1 %7, label %9, label %8, !prof !13

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %3
  %10 = and i32 %6, 536870656
  %11 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = shl i32 %12, 1
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 4) #10
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #10
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %34, label %21, !prof !10

21:                                               ; preds = %16
  %22 = extractvalue { i32, i1 } %19, 0
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %11, align 4
  %27 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = shl i32 %26, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %23, ptr align 4 %28, i32 %29, i1 false) #10
  tail call void @kfree(ptr noundef %28) #10
  store ptr %23, ptr %27, align 4
  store i32 %18, ptr %13, align 8
  %30 = load i32, ptr %11, align 4
  br label %31

31:                                               ; preds = %25, %9
  %32 = phi i32 [ %30, %25 ], [ %12, %9 ]
  %33 = add i32 %32, 1
  store i32 %33, ptr %11, align 4
  br label %34

34:                                               ; preds = %31, %21, %16
  %35 = getelementptr inbounds %struct.vc4_plane_state, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i32, ptr %36, i32 %12
  store i32 %10, ptr %37, align 4
  %38 = icmp ugt i32 %5, 65535
  br i1 %38, label %40, label %39, !prof !13

39:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #10
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, ptr %11, align 4
  %42 = load i32, ptr %13, align 8
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = shl i32 %41, 1
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 4) #10
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %46, i32 4) #10
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %61, label %49, !prof !10

49:                                               ; preds = %44
  %50 = extractvalue { i32, i1 } %47, 0
  %51 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %11, align 4
  %55 = load ptr, ptr %35, align 4
  %56 = shl i32 %54, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %51, ptr align 4 %55, i32 %56, i1 false) #10
  tail call void @kfree(ptr noundef %55) #10
  store ptr %51, ptr %35, align 4
  store i32 %46, ptr %13, align 8
  %57 = load i32, ptr %11, align 4
  br label %58

58:                                               ; preds = %53, %40
  %59 = phi i32 [ %57, %53 ], [ %41, %40 ]
  %60 = add i32 %59, 1
  store i32 %60, ptr %11, align 4
  br label %61

61:                                               ; preds = %58, %49, %44
  %62 = udiv i32 -1, %5
  %63 = and i32 %62, 65535
  %64 = load ptr, ptr %35, align 4
  %65 = getelementptr i32, ptr %64, i32 %41
  store i32 %63, ptr %65, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{i64 2158857605}
!9 = !{i64 5478002}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2158860233}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i8 0, i8 2}
!15 = !{i64 2158860795}
!16 = !{i64 2158861274}
!17 = !{i64 2158861753}
