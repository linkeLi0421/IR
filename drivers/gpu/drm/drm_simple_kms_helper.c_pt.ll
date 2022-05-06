; ModuleID = '/llk/IR/drivers/gpu/drm/drm_simple_kms_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_simple_kms_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_simple_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_simple_encoder_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_simple_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_simple_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_simple_encoder_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_simple_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_simple_display_pipe_attach_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_simple_display_pipe_attach_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_drm_simple_display_pipe_attach_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_simple_display_pipe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_simple_display_pipe_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_simple_display_pipe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
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
%struct.anon.72 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@drm_simple_encoder_funcs_cleanup = internal constant %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, align 4
@__kstrtab_drm_simple_encoder_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_simple_encoder_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_simple_encoder_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_simple_encoder_init to i32), ptr @__kstrtab_drm_simple_encoder_init, ptr @__kstrtabns_drm_simple_encoder_init }, section "___ksymtab+drm_simple_encoder_init", align 4
@__kstrtab___drmm_simple_encoder_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_simple_encoder_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_simple_encoder_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_simple_encoder_alloc to i32), ptr @__kstrtab___drmm_simple_encoder_alloc, ptr @__kstrtabns___drmm_simple_encoder_alloc }, section "___ksymtab+__drmm_simple_encoder_alloc", align 4
@__kstrtab_drm_simple_display_pipe_attach_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_simple_display_pipe_attach_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_simple_display_pipe_attach_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_simple_display_pipe_attach_bridge to i32), ptr @__kstrtab_drm_simple_display_pipe_attach_bridge, ptr @__kstrtabns_drm_simple_display_pipe_attach_bridge }, section "___ksymtab+drm_simple_display_pipe_attach_bridge", align 4
@drm_simple_kms_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @drm_simple_kms_plane_prepare_fb, ptr @drm_simple_kms_plane_cleanup_fb, ptr @drm_simple_kms_plane_atomic_check, ptr @drm_simple_kms_plane_atomic_update, ptr null, ptr null, ptr null }, align 4
@drm_simple_kms_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_simple_kms_plane_reset, ptr null, ptr @drm_simple_kms_plane_duplicate_state, ptr @drm_simple_kms_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_simple_kms_format_mod_supported }, align 4
@drm_simple_kms_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @drm_simple_kms_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_simple_kms_crtc_check, ptr null, ptr null, ptr @drm_simple_kms_crtc_enable, ptr @drm_simple_kms_crtc_disable, ptr null }, align 4
@drm_simple_kms_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @drm_simple_kms_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_simple_kms_crtc_duplicate_state, ptr @drm_simple_kms_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_simple_kms_crtc_enable_vblank, ptr @drm_simple_kms_crtc_disable_vblank, ptr null }, align 4
@__kstrtab_drm_simple_display_pipe_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_simple_display_pipe_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_simple_display_pipe_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_simple_display_pipe_init to i32), ptr @__kstrtab_drm_simple_display_pipe_init, ptr @__kstrtabns_drm_simple_display_pipe_init }, section "___ksymtab+drm_simple_display_pipe_init", align 4
@__UNIQUE_ID_file265 = internal constant [51 x i8] c"drm_kms_helper.file=drivers/gpu/drm/drm_kms_helper\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [27 x i8] c"drm_kms_helper.license=GPL\00", section ".modinfo", align 1
@drm_simple_kms_plane_prepare_fb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/drm_simple_kms_helper.c\00", align 1
@drm_simple_kms_plane_prepare_fb.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__ksymtab___drmm_simple_encoder_alloc, ptr @__ksymtab_drm_simple_display_pipe_attach_bridge, ptr @__ksymtab_drm_simple_display_pipe_init, ptr @__ksymtab_drm_simple_encoder_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_simple_encoder_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @drm_simple_encoder_funcs_cleanup, i32 noundef %2, ptr noundef null) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr (ptr, i32, i32, ptr, i32, ptr, ...) @__drmm_encoder_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %3, ptr noundef null) #3
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_simple_display_pipe_attach_bridge(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 2
  %4 = tail call i32 @drm_bridge_attach(ptr noundef %3, ptr noundef %1, ptr noundef null, i32 noundef 0) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_simple_display_pipe_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %1, i32 0, i32 3
  store ptr %6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %1, i32 0, i32 4
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %1, i32 0, i32 1, i32 18
  store ptr @drm_simple_kms_plane_helper_funcs, ptr %12, align 8
  %13 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef %9, i32 noundef 0, ptr noundef nonnull @drm_simple_kms_plane_funcs, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef 1, ptr noundef null) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 19
  store ptr @drm_simple_kms_crtc_helper_funcs, ptr %16, align 4
  %17 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %1, ptr noundef %9, ptr noundef null, ptr noundef nonnull @drm_simple_kms_crtc_funcs, ptr noundef null) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = shl nuw i32 1, %21
  %23 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %1, i32 0, i32 2, i32 6
  store i32 %22, ptr %23, align 4
  %24 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @drm_simple_encoder_funcs_cleanup, i32 noundef 0, ptr noundef null) #3
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %6, ptr noundef %8) #3
  br label %30

30:                                               ; preds = %28, %19, %15, %7
  %31 = phi i32 [ %29, %28 ], [ %13, %7 ], [ %17, %15 ], [ %24, %19 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_plane_prepare_fb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -752
  %4 = getelementptr i8, ptr %0, i32 532
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %16, 1
  %20 = and i32 %19, %18
  %21 = icmp ne i32 %20, 0
  %22 = load i1, ptr @drm_simple_kms_plane_prepare_fb.__already_done, align 1
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %11
  store i1 true, ptr @drm_simple_kms_plane_prepare_fb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef null) #3
  br label %25

25:                                               ; preds = %24, %11
  br i1 %21, label %26, label %41

26:                                               ; preds = %25
  %27 = load ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %27, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ne ptr %31, null
  %33 = load i1, ptr @drm_simple_kms_plane_prepare_fb.__already_done.1, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %29
  store i1 true, ptr @drm_simple_kms_plane_prepare_fb.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef null) #3
  br label %37

37:                                               ; preds = %36, %29, %26
  %38 = tail call i32 @drm_gem_simple_display_pipe_prepare_fb(ptr noundef %3, ptr noundef %1) #3
  br label %41

39:                                               ; preds = %7
  %40 = tail call i32 %9(ptr noundef %3, ptr noundef %1) #3
  br label %41

41:                                               ; preds = %39, %37, %25
  %42 = phi i32 [ %40, %39 ], [ %38, %37 ], [ 0, %25 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_cleanup_fb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -752
  %4 = getelementptr i8, ptr %0, i32 532
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %5, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %3, ptr noundef %1) #3
  br label %12

12:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_plane_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -752
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -672
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %13, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef %15, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %20 = load i8, ptr %19, align 4, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 532
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %24, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 %28(ptr noundef %9, ptr noundef %8, ptr noundef %15) #3
  br label %32

32:                                               ; preds = %30, %26, %22, %18, %2
  %33 = phi i32 [ %31, %30 ], [ %16, %2 ], [ 0, %18 ], [ 0, %26 ], [ 0, %22 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -752
  %10 = getelementptr i8, ptr %0, i32 532
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %11, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef %9, ptr noundef %8) #3
  br label %18

18:                                               ; preds = %17, %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_simple_display_pipe_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_reset(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -752
  %3 = getelementptr i8, ptr %0, i32 532
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %4, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  tail call void @drm_atomic_helper_plane_reset(ptr noundef %0) #3
  br label %12

11:                                               ; preds = %6
  tail call void %8(ptr noundef %2) #3
  br label %12

12:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_simple_kms_plane_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -752
  %3 = getelementptr i8, ptr %0, i32 532
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = tail call ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef %0) #3
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr %8(ptr noundef %2) #3
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_destroy_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -752
  %4 = getelementptr i8, ptr %0, i32 532
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %5, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  tail call void @drm_atomic_helper_plane_destroy_state(ptr noundef %0, ptr noundef %1) #3
  br label %13

12:                                               ; preds = %7
  tail call void %9(ptr noundef %3, ptr noundef %1) #3
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @drm_simple_kms_format_mod_supported(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) #2 {
  %4 = icmp eq i64 %2, 0
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_crtc_mode_valid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1) #3
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_crtc_check(ptr noundef %0, ptr noundef %1) #0 {
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
  %16 = and i32 %15, %10
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !10
  %20 = zext i1 %17 to i8
  %21 = icmp eq i8 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %1, ptr noundef %0) #3
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, i32 19
  %14 = load ptr, ptr %13, align 4
  tail call void %8(ptr noundef %0, ptr noundef %12, ptr noundef %14) #3
  br label %15

15:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0) #3
  br label %11

11:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  tail call void @drm_atomic_helper_crtc_reset(ptr noundef %0) #3
  br label %11

10:                                               ; preds = %5
  tail call void %7(ptr noundef %0) #3
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_simple_kms_crtc_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %1
  %10 = tail call ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef %0) #3
  br label %13

11:                                               ; preds = %5
  %12 = tail call ptr %7(ptr noundef %0) #3
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_destroy_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call void @drm_atomic_helper_crtc_destroy_state(ptr noundef %0, ptr noundef %1) #3
  br label %12

11:                                               ; preds = %6
  tail call void %8(ptr noundef %0, ptr noundef %1) #3
  br label %12

12:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_crtc_enable_vblank(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #3
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_disable_vblank(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #3
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
