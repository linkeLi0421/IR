; ModuleID = '/llk/IR/drivers/gpu/drm/drm_color_mgmt.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_color_mgmt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_color_ctm_s31_32_to_qm_n:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_color_ctm_s31_32_to_qm_n\22\09\09\09\09\09"
module asm "__kstrtabns_drm_color_ctm_s31_32_to_qm_n:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_enable_color_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_enable_color_mgmt\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_enable_color_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_crtc_set_gamma_size:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_crtc_set_gamma_size\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_crtc_set_gamma_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_plane_create_color_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_plane_create_color_properties\22\09\09\09\09\09"
module asm "__kstrtabns_drm_plane_create_color_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_color_lut_check:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_color_lut_check\22\09\09\09\09\09"
module asm "__kstrtabns_drm_color_lut_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_crtc_lut = type { i32, i32, i64, i64, i64 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"drivers/gpu/drm/drm_color_mgmt.c\00", align 1
@__kstrtab_drm_color_ctm_s31_32_to_qm_n = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_color_ctm_s31_32_to_qm_n = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_color_ctm_s31_32_to_qm_n = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_color_ctm_s31_32_to_qm_n to i32), ptr @__kstrtab_drm_color_ctm_s31_32_to_qm_n, ptr @__kstrtabns_drm_color_ctm_s31_32_to_qm_n }, section "___ksymtab+drm_color_ctm_s31_32_to_qm_n", align 4
@__kstrtab_drm_crtc_enable_color_mgmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_enable_color_mgmt = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_enable_color_mgmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_enable_color_mgmt to i32), ptr @__kstrtab_drm_crtc_enable_color_mgmt, ptr @__kstrtabns_drm_crtc_enable_color_mgmt }, section "___ksymtab+drm_crtc_enable_color_mgmt", align 4
@__kstrtab_drm_mode_crtc_set_gamma_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_crtc_set_gamma_size = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_crtc_set_gamma_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_crtc_set_gamma_size to i32), ptr @__kstrtab_drm_mode_crtc_set_gamma_size, ptr @__kstrtabns_drm_mode_crtc_set_gamma_size }, section "___ksymtab+drm_mode_crtc_set_gamma_size", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@color_encoding_name = internal unnamed_addr constant [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@color_range_name = internal unnamed_addr constant [2 x ptr] [ptr @.str.11, ptr @.str.12], align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"COLOR_ENCODING\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"COLOR_RANGE\00", align 1
@__kstrtab_drm_plane_create_color_properties = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_plane_create_color_properties = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_plane_create_color_properties = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_plane_create_color_properties to i32), ptr @__kstrtab_drm_plane_create_color_properties, ptr @__kstrtabns_drm_plane_create_color_properties }, section "___ksymtab+drm_plane_create_color_properties", align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"All LUT entries must have equal r/g/b\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"LUT entries must never decrease.\0A\00", align 1
@__kstrtab_drm_color_lut_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_color_lut_check = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_color_lut_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_color_lut_check to i32), ptr @__kstrtab_drm_color_lut_check, ptr @__kstrtabns_drm_color_lut_check }, section "___ksymtab+drm_color_lut_check", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ITU-R BT.601 YCbCr\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ITU-R BT.709 YCbCr\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ITU-R BT.2020 YCbCr\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"YCbCr limited range\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"YCbCr full range\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_color_ctm_s31_32_to_qm_n, ptr @__ksymtab_drm_color_lut_check, ptr @__ksymtab_drm_crtc_enable_color_mgmt, ptr @__ksymtab_drm_mode_crtc_set_gamma_size, ptr @__ksymtab_drm_plane_create_color_properties], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i64 %0, -1
  %5 = icmp ugt i32 %1, 32
  %6 = icmp ugt i32 %2, 32
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %3
  %10 = add i32 %1, -1
  %11 = add i32 %10, %2
  %12 = zext i32 %11 to i64
  br i1 %4, label %15, label %13

13:                                               ; preds = %9
  %14 = shl nuw i64 1, %12
  br label %18

15:                                               ; preds = %9
  %16 = shl nsw i64 -1, %12
  %17 = xor i64 %16, -1
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i64 [ %14, %13 ], [ %17, %15 ]
  %20 = and i64 %0, 9223372036854775807
  %21 = sub i32 32, %2
  %22 = zext i32 %21 to i64
  %23 = lshr i64 %20, %22
  %24 = tail call i64 @llvm.umin.i64(i64 %23, i64 %19)
  %25 = sub nsw i64 0, %24
  %26 = select i1 %4, i64 %24, i64 %25
  ret i64 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_crtc_enable_color_mgmt(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 76
  %10 = load ptr, ptr %9, align 4
  tail call void @drm_object_attach_property(ptr noundef %8, ptr noundef %10, i64 noundef 0) #7
  %11 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 77
  %12 = load ptr, ptr %11, align 4
  %13 = zext i32 %1 to i64
  tail call void @drm_object_attach_property(ptr noundef %8, ptr noundef %12, i64 noundef %13) #7
  br label %14

14:                                               ; preds = %7, %4
  br i1 %2, label %15, label %19

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 78
  %18 = load ptr, ptr %17, align 4
  tail call void @drm_object_attach_property(ptr noundef %16, ptr noundef %18, i64 noundef 0) #7
  br label %19

19:                                               ; preds = %15, %14
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %23 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 79
  %24 = load ptr, ptr %23, align 4
  tail call void @drm_object_attach_property(ptr noundef %22, ptr noundef %24, i64 noundef 0) #7
  %25 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 80
  %26 = load ptr, ptr %25, align 4
  %27 = zext i32 %3 to i64
  tail call void @drm_object_attach_property(ptr noundef %22, ptr noundef %26, i64 noundef %27) #7
  br label %28

28:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_crtc_set_gamma_size(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 17
  store i32 %1, ptr %3, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 6) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %6, label %8, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 18
  store ptr null, ptr %7, align 8
  br label %13

8:                                                ; preds = %2
  %9 = extractvalue { i32, i1 } %4, 0
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #8
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 18
  store ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %6
  store i32 0, ptr %3, align 4
  br label %27

14:                                               ; preds = %8
  %15 = getelementptr i16, ptr %10, i32 %1
  %16 = getelementptr i16, ptr %15, i32 %1
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %14
  %19 = phi i32 [ %25, %18 ], [ 0, %14 ]
  %20 = trunc i32 %19 to i16
  %21 = shl i16 %20, 8
  %22 = getelementptr i16, ptr %10, i32 %19
  store i16 %21, ptr %22, align 2
  %23 = getelementptr i16, ptr %15, i32 %19
  store i16 %21, ptr %23, align 2
  %24 = getelementptr i16, ptr %16, i32 %19
  store i16 %21, ptr %24, align 2
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %18

27:                                               ; preds = %18, %14, %13
  %28 = phi i32 [ -12, %13 ], [ 0, %14 ], [ 0, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_gamma_set_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 2
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %255

14:                                               ; preds = %3
  %15 = load i32, ptr %1, align 8
  %16 = tail call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %15, i32 noundef -858993460) #7
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -52
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %255, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %18, align 8
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 30, i32 79
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_property, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 30, i32 76
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_property, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %16, i32 280
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %255, label %34

34:                                               ; preds = %21
  %35 = getelementptr i8, ptr %16, i32 276
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = tail call ptr @drm_mode_obj_find_prop_id(ptr noundef nonnull %16, i32 noundef %26) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = tail call ptr @drm_mode_obj_find_prop_id(ptr noundef nonnull %16, i32 noundef %30) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %255, label %46

46:                                               ; preds = %43, %40, %34
  %47 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %31, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %255

51:                                               ; preds = %46
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.drm_driver, ptr %52, i32 0, i32 24
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %9, align 4
  %56 = and i32 %54, 16
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %61, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59
  %68 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %68) #7
  br label %69

69:                                               ; preds = %67, %63, %51
  call void @drm_modeset_acquire_init(ptr noundef nonnull %4, i32 noundef 0) #7
  %70 = getelementptr i8, ptr %16, i32 284
  %71 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 2
  %72 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 3
  %73 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 4
  br label %74

74:                                               ; preds = %228, %69
  %75 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %0, ptr noundef nonnull %4) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %225

77:                                               ; preds = %74
  %78 = load i32, ptr %47, align 4
  %79 = shl i32 %78, 1
  %80 = load ptr, ptr %70, align 8
  %81 = load i64, ptr %71, align 8
  %82 = trunc i64 %81 to i32
  %83 = inttoptr i32 %82 to ptr
  %84 = icmp slt i32 %79, 0
  %85 = load i1, ptr @check_copy_size.__already_done, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %89, !prof !8

88:                                               ; preds = %77
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %89

89:                                               ; preds = %88, %77
  br i1 %84, label %236, label %90, !prof !8

90:                                               ; preds = %89
  %91 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %83, i32 %79, i32 -1090519040) #9, !srcloc !10
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101, !prof !11

94:                                               ; preds = %90
  %95 = tail call ptr @llvm.thread.pointer() #7
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %97 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #10, !srcloc !12
  %98 = and i32 %97, -13
  %99 = or i32 %98, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #7, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %100 = call i32 @arm_copy_from_user(ptr noundef %80, ptr noundef %83, i32 noundef %79) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #7, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  br label %101

101:                                              ; preds = %94, %90
  %102 = phi i32 [ %100, %94 ], [ %79, %90 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %231, !prof !11

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %80, i32 %79
  %106 = load i64, ptr %72, align 8
  %107 = trunc i64 %106 to i32
  %108 = inttoptr i32 %107 to ptr
  %109 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %108, i32 %79, i32 -1090519040) #9, !srcloc !10
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119, !prof !11

112:                                              ; preds = %104
  %113 = tail call ptr @llvm.thread.pointer() #7
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 3
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %114) #10, !srcloc !12
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #7, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %118 = call i32 @arm_copy_from_user(ptr noundef %105, ptr noundef %108, i32 noundef %79) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #7, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  br label %119

119:                                              ; preds = %112, %104
  %120 = phi i32 [ %118, %112 ], [ %79, %104 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %231, !prof !11

122:                                              ; preds = %119
  %123 = getelementptr i8, ptr %105, i32 %79
  %124 = load i64, ptr %73, align 8
  %125 = trunc i64 %124 to i32
  %126 = inttoptr i32 %125 to ptr
  %127 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %126, i32 %79, i32 -1090519040) #9, !srcloc !10
  %128 = extractvalue { i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %137, !prof !11

130:                                              ; preds = %122
  %131 = tail call ptr @llvm.thread.pointer() #7
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %133 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %132) #10, !srcloc !12
  %134 = and i32 %133, -13
  %135 = or i32 %134, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #7, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %136 = call i32 @arm_copy_from_user(ptr noundef %123, ptr noundef %126, i32 noundef %79) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %133) #7, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  br label %137

137:                                              ; preds = %130, %122
  %138 = phi i32 [ %136, %130 ], [ %79, %122 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %231, !prof !11

140:                                              ; preds = %137
  %141 = load i32, ptr %31, align 4
  %142 = load ptr, ptr %18, align 8
  %143 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 30, i32 76
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.drm_property, ptr %144, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = load ptr, ptr %35, align 8
  %148 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %147, i32 0, i32 4
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  %152 = call i32 %149(ptr noundef %18, ptr noundef %80, ptr noundef %105, ptr noundef %123, i32 noundef %141, ptr noundef nonnull %4) #7
  br label %225

153:                                              ; preds = %140
  %154 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 30, i32 79
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.drm_property, ptr %155, i32 0, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = call ptr @drm_mode_obj_find_prop_id(ptr noundef %16, i32 noundef %157) #7
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = call ptr @drm_mode_obj_find_prop_id(ptr noundef %16, i32 noundef %146) #7
  %162 = icmp eq ptr %161, null
  br i1 %162, label %236, label %163

163:                                              ; preds = %160, %153
  %164 = load ptr, ptr %18, align 8
  %165 = call ptr @drm_atomic_state_alloc(ptr noundef %164) #7
  %166 = icmp eq ptr %165, null
  br i1 %166, label %236, label %167

167:                                              ; preds = %163
  %168 = shl i32 %141, 3
  %169 = call ptr @drm_property_create_blob(ptr noundef %142, i32 noundef %168, ptr noundef null) #7
  %170 = icmp ugt ptr %169, inttoptr (i32 -4096 to ptr)
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = ptrtoint ptr %169 to i32
  br label %214

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.drm_property_blob, ptr %169, i32 0, i32 5
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq i32 %141, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %177, %173
  %178 = phi i32 [ %188, %177 ], [ 0, %173 ]
  %179 = getelementptr i16, ptr %80, i32 %178
  %180 = load i16, ptr %179, align 2
  %181 = getelementptr %struct.drm_color_lut, ptr %175, i32 %178
  store i16 %180, ptr %181, align 2
  %182 = getelementptr i16, ptr %105, i32 %178
  %183 = load i16, ptr %182, align 2
  %184 = getelementptr %struct.drm_color_lut, ptr %175, i32 %178, i32 1
  store i16 %183, ptr %184, align 2
  %185 = getelementptr i16, ptr %123, i32 %178
  %186 = load i16, ptr %185, align 2
  %187 = getelementptr %struct.drm_color_lut, ptr %175, i32 %178, i32 2
  store i16 %186, ptr %187, align 2
  %188 = add nuw i32 %178, 1
  %189 = icmp eq i32 %188, %141
  br i1 %189, label %190, label %177

190:                                              ; preds = %177, %173
  %191 = getelementptr inbounds %struct.drm_atomic_state, ptr %165, i32 0, i32 9
  store ptr %4, ptr %191, align 4
  %192 = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %165, ptr noundef %18) #7
  %193 = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = ptrtoint ptr %192 to i32
  br label %214

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.drm_crtc_state, ptr %192, i32 0, i32 10
  %198 = select i1 %159, ptr %169, ptr null
  %199 = call zeroext i1 @drm_property_replace_blob(ptr noundef %197, ptr noundef %198) #7
  %200 = getelementptr inbounds %struct.drm_crtc_state, ptr %192, i32 0, i32 11
  %201 = call zeroext i1 @drm_property_replace_blob(ptr noundef %200, ptr noundef null) #7
  %202 = or i1 %199, %201
  %203 = getelementptr inbounds %struct.drm_crtc_state, ptr %192, i32 0, i32 12
  %204 = select i1 %159, ptr null, ptr %169
  %205 = call zeroext i1 @drm_property_replace_blob(ptr noundef %203, ptr noundef %204) #7
  %206 = or i1 %202, %205
  %207 = getelementptr inbounds %struct.drm_crtc_state, ptr %192, i32 0, i32 3
  %208 = load i8, ptr %207, align 2
  %209 = and i8 %208, 32
  %210 = select i1 %206, i8 32, i8 %209
  %211 = and i8 %208, -33
  %212 = or i8 %210, %211
  store i8 %212, ptr %207, align 2
  %213 = call i32 @drm_atomic_commit(ptr noundef nonnull %165) #7
  br label %214

214:                                              ; preds = %196, %194, %171
  %215 = phi ptr [ null, %171 ], [ %169, %194 ], [ %169, %196 ]
  %216 = phi i32 [ %172, %171 ], [ %195, %194 ], [ %213, %196 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %165) #7, !srcloc !16
  %217 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %165, ptr nonnull %165, i32 1, ptr nonnull elementtype(i32) %165) #7, !srcloc !17
  %218 = extractvalue { i32, i32, i32 } %217, 0
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = icmp sgt i32 %218, 0
  br i1 %221, label %224, label %222, !prof !11

222:                                              ; preds = %220
  call void @refcount_warn_saturate(ptr noundef nonnull %165, i32 noundef 3) #7
  br label %224

223:                                              ; preds = %214
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  call void @__drm_atomic_state_free(ptr noundef nonnull %165) #7
  br label %224

224:                                              ; preds = %223, %222, %220
  call void @drm_property_blob_put(ptr noundef %215) #7
  br label %225

225:                                              ; preds = %224, %151, %74
  %226 = phi i32 [ %75, %74 ], [ %152, %151 ], [ %216, %224 ]
  %227 = icmp eq i32 %226, -35
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = call i32 @drm_modeset_backoff(ptr noundef nonnull %4) #7
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %74, label %236

231:                                              ; preds = %137, %119, %101
  %232 = phi i32 [ %102, %101 ], [ %120, %119 ], [ %138, %137 ]
  %233 = phi ptr [ %80, %101 ], [ %105, %119 ], [ %123, %137 ]
  %234 = sub i32 %79, %232
  %235 = getelementptr i8, ptr %233, i32 %234
  call void @llvm.memset.p0.i32(ptr align 1 %235, i8 0, i32 %232, i1 false) #7
  br label %236

236:                                              ; preds = %231, %228, %225, %163, %160, %89
  %237 = phi i32 [ -14, %231 ], [ -14, %89 ], [ -19, %160 ], [ -12, %163 ], [ %226, %225 ], [ %229, %228 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #7
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #7
  %238 = load ptr, ptr %5, align 4
  %239 = getelementptr inbounds %struct.drm_driver, ptr %238, i32 0, i32 24
  %240 = load i32, ptr %239, align 4
  %241 = load i32, ptr %9, align 4
  %242 = and i32 %240, 16
  %243 = and i32 %242, %241
  %244 = icmp eq i32 %243, 16
  br i1 %244, label %255, label %245

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %247, i32 0, i32 5
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %249, %245
  %254 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %254) #7
  br label %255

255:                                              ; preds = %253, %249, %236, %46, %43, %21, %14, %3
  %256 = phi i32 [ -95, %3 ], [ -2, %14 ], [ -38, %43 ], [ -22, %46 ], [ %237, %253 ], [ %237, %249 ], [ -38, %21 ], [ %237, %236 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  ret i32 %256
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_gamma_get_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 2
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %98

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 8
  %15 = tail call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %14, i32 noundef -858993460) #7
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -52
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %98, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %15, i32 280
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %15, i32 -32
  %28 = tail call i32 @drm_modeset_lock(ptr noundef %27, ptr noundef null) #7
  %29 = load i32, ptr %21, align 4
  %30 = shl i32 %29, 1
  %31 = getelementptr i8, ptr %15, i32 284
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = inttoptr i32 %35 to ptr
  %37 = icmp slt i32 %30, 0
  %38 = load i1, ptr @check_copy_size.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %26
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %42

42:                                               ; preds = %41, %26
  br i1 %37, label %96, label %43, !prof !8

43:                                               ; preds = %42
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 %30, i32 -1090519040) #9, !srcloc !19
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #7
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #10, !srcloc !12
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %53 = tail call i32 @arm_copy_to_user(ptr noundef %36, ptr noundef %32, i32 noundef %30) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i32 [ %53, %47 ], [ %30, %43 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %32, i32 %30
  %59 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 3
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %62, i32 %30, i32 -1090519040) #9, !srcloc !19
  %64 = extractvalue { i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = tail call ptr @llvm.thread.pointer() #7
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %69 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %68) #10, !srcloc !12
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %72 = tail call i32 @arm_copy_to_user(ptr noundef %62, ptr noundef %58, i32 noundef %30) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  br label %73

73:                                               ; preds = %66, %57
  %74 = phi i32 [ %72, %66 ], [ %30, %57 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %1, i32 0, i32 4
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %80, i32 %30, i32 -1090519040) #9, !srcloc !19
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = getelementptr i8, ptr %58, i32 %30
  %86 = tail call ptr @llvm.thread.pointer() #7
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %87) #10, !srcloc !12
  %89 = and i32 %88, -13
  %90 = or i32 %89, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %91 = tail call i32 @arm_copy_to_user(ptr noundef %80, ptr noundef %85, i32 noundef %30) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  br label %92

92:                                               ; preds = %84, %76
  %93 = phi i32 [ %91, %84 ], [ %30, %76 ]
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 0, i32 -14
  br label %96

96:                                               ; preds = %92, %73, %54, %42
  %97 = phi i32 [ -14, %54 ], [ -14, %73 ], [ -14, %42 ], [ %95, %92 ]
  tail call void @drm_modeset_unlock(ptr noundef %27) #7
  br label %98

98:                                               ; preds = %96, %20, %13, %3
  %99 = phi i32 [ %97, %96 ], [ -95, %3 ], [ -2, %13 ], [ -22, %20 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_get_color_encoding_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 2
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #7
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr [3 x ptr], ptr @color_encoding_name, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi ptr [ @.str.1, %3 ], [ %6, %4 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_get_color_range_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 1
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #7
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr [2 x ptr], ptr @color_range_name, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi ptr [ @.str.1, %3 ], [ %6, %4 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_plane_create_color_properties(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [3 x %struct.drm_prop_enum_list], align 4
  %7 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = shl nuw i32 1, %3
  %12 = and i32 %11, %1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %10, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 537, i32 noundef 9, ptr noundef null) #7
  br label %81

15:                                               ; preds = %10
  %16 = add i32 %2, -1
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = shl nuw i32 1, %4
  %20 = and i32 %19, %2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !8

22:                                               ; preds = %18
  %23 = and i32 %1, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %26

25:                                               ; preds = %18, %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 542, i32 noundef 9, ptr noundef null) #7
  br label %81

26:                                               ; preds = %22
  %27 = getelementptr inbounds [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 0, i32 1
  store ptr @.str.8, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ 0, %22 ], [ 1, %26 ]
  %30 = and i32 %1, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 %29
  store i32 1, ptr %33, align 4
  %34 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 %29, i32 1
  store ptr @.str.9, ptr %34, align 4
  %35 = add nuw nsw i32 %29, 1
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %29, %28 ], [ %35, %32 ]
  %38 = and i32 %1, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 %37
  store i32 2, ptr %41, align 4
  %42 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 %37, i32 1
  store ptr @.str.10, ptr %42, align 4
  %43 = add nuw nsw i32 %37, 1
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %37, %36 ], [ %43, %40 ]
  %46 = call ptr @drm_property_create_enum(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %6, i32 noundef %45) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %81, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 24
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %51 = zext i32 %3 to i64
  call void @drm_object_attach_property(ptr noundef %50, ptr noundef nonnull %46, i64 noundef %51) #7
  %52 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %53, i32 0, i32 17
  store i32 %3, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = and i32 %2, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  store i32 0, ptr %6, align 4
  %61 = getelementptr inbounds [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 0, i32 1
  store ptr @.str.11, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ 0, %57 ], [ 1, %60 ]
  %64 = and i32 %2, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 %63
  store i32 1, ptr %67, align 4
  %68 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %6, i32 0, i32 %63, i32 1
  store ptr @.str.12, ptr %68, align 4
  %69 = add nuw nsw i32 %63, 1
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %63, %62 ], [ %69, %66 ]
  %72 = call ptr @drm_property_create_enum(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, i32 noundef %71) #7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 25
  store ptr %72, ptr %75, align 4
  %76 = zext i32 %4 to i64
  call void @drm_object_attach_property(ptr noundef %50, ptr noundef nonnull %72, i64 noundef %76) #7
  %77 = load ptr, ptr %52, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.drm_plane_state, ptr %77, i32 0, i32 18
  store i32 %4, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %74, %70, %44, %25, %14
  %82 = phi i32 [ -22, %14 ], [ -22, %25 ], [ -12, %44 ], [ -12, %70 ], [ 0, %79 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_color_lut_check(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %57

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_property_blob, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_property_blob, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %57, label %12

12:                                               ; preds = %6
  %13 = lshr i32 %10, 3
  %14 = and i32 %1, 1
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %1, 2
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %52, %12
  %19 = phi i32 [ 0, %12 ], [ %53, %52 ]
  br i1 %15, label %30, label %20

20:                                               ; preds = %18
  %21 = getelementptr %struct.drm_color_lut, ptr %8, i32 %19
  %22 = load i16, ptr %21, align 2
  %23 = getelementptr %struct.drm_color_lut, ptr %8, i32 %19, i32 2
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %22, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = getelementptr %struct.drm_color_lut, ptr %8, i32 %19, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %22, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26, %18
  %31 = icmp eq i32 %19, 0
  %32 = or i1 %17, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %30
  %34 = getelementptr %struct.drm_color_lut, ptr %8, i32 %19
  %35 = load i16, ptr %34, align 2
  %36 = add nsw i32 %19, -1
  %37 = getelementptr %struct.drm_color_lut, ptr %8, i32 %36
  %38 = load i16, ptr %37, align 2
  %39 = icmp ult i16 %35, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %33
  %41 = getelementptr %struct.drm_color_lut, ptr %8, i32 %19, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = getelementptr %struct.drm_color_lut, ptr %8, i32 %36, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = icmp ult i16 %42, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = getelementptr %struct.drm_color_lut, ptr %8, i32 %19, i32 2
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr %struct.drm_color_lut, ptr %8, i32 %36, i32 2
  %50 = load i16, ptr %49, align 2
  %51 = icmp ult i16 %48, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %46, %30
  %53 = add nuw nsw i32 %19, 1
  %54 = icmp eq i32 %53, %13
  br i1 %54, label %57, label %18

55:                                               ; preds = %46, %40, %33, %26, %20
  %56 = phi ptr [ @.str.4, %26 ], [ @.str.4, %20 ], [ @.str.5, %46 ], [ @.str.5, %40 ], [ @.str.5, %33 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %56) #7
  br label %57

57:                                               ; preds = %55, %52, %6, %2
  %58 = phi i32 [ 0, %2 ], [ 0, %6 ], [ -22, %55 ], [ 0, %52 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_obj_find_prop_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_blob(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_replace_blob(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2149922697, i64 2149922722}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2418809}
!13 = !{i64 2419006}
!14 = !{i64 2149904285}
!15 = !{i64 2148224924}
!16 = !{i64 558416, i64 2148059982, i64 2148060008, i64 2148060055, i64 2148060077, i64 2148060105, i64 2148060125}
!17 = !{i64 2148127059, i64 2148127091, i64 2148127120, i64 2148127154, i64 2148127185, i64 2148127208}
!18 = !{i64 2149270454}
!19 = !{i64 2149923275, i64 2149923300}
