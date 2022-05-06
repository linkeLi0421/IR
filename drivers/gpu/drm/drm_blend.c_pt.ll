; ModuleID = '/llk/IR/drivers/gpu/drm/drm_blend.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_blend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_plane_create_alpha_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_plane_create_alpha_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_plane_create_alpha_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_plane_create_rotation_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_plane_create_rotation_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_plane_create_rotation_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rotation_simplify:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rotation_simplify\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rotation_simplify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_plane_create_zpos_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_plane_create_zpos_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_plane_create_zpos_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_plane_create_zpos_immutable_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_plane_create_zpos_immutable_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_plane_create_zpos_immutable_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_normalize_zpos:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_normalize_zpos\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_normalize_zpos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_plane_create_blend_mode_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_plane_create_blend_mode_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_plane_create_blend_mode_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
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
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.72 = type { i32, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@__kstrtab_drm_plane_create_alpha_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_plane_create_alpha_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_plane_create_alpha_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_plane_create_alpha_property to i32), ptr @__kstrtab_drm_plane_create_alpha_property, ptr @__kstrtabns_drm_plane_create_alpha_property }, section "___ksymtab+drm_plane_create_alpha_property", align 4
@drm_plane_create_rotation_property.props = internal constant [6 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.1 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.2 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.3 }, %struct.drm_prop_enum_list { i32 3, ptr @.str.4 }, %struct.drm_prop_enum_list { i32 4, ptr @.str.5 }, %struct.drm_prop_enum_list { i32 5, ptr @.str.6 }], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rotate-0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rotate-90\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rotate-180\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"rotate-270\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"reflect-x\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"reflect-y\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_blend.c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@__kstrtab_drm_plane_create_rotation_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_plane_create_rotation_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_plane_create_rotation_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_plane_create_rotation_property to i32), ptr @__kstrtab_drm_plane_create_rotation_property, ptr @__kstrtabns_drm_plane_create_rotation_property }, section "___ksymtab+drm_plane_create_rotation_property", align 4
@__kstrtab_drm_rotation_simplify = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rotation_simplify = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rotation_simplify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rotation_simplify to i32), ptr @__kstrtab_drm_rotation_simplify, ptr @__kstrtabns_drm_rotation_simplify }, section "___ksymtab+drm_rotation_simplify", align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"zpos\00", align 1
@__kstrtab_drm_plane_create_zpos_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_plane_create_zpos_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_plane_create_zpos_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_plane_create_zpos_property to i32), ptr @__kstrtab_drm_plane_create_zpos_property, ptr @__kstrtabns_drm_plane_create_zpos_property }, section "___ksymtab+drm_plane_create_zpos_property", align 4
@__kstrtab_drm_plane_create_zpos_immutable_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_plane_create_zpos_immutable_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_plane_create_zpos_immutable_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_plane_create_zpos_immutable_property to i32), ptr @__kstrtab_drm_plane_create_zpos_immutable_property, ptr @__kstrtabns_drm_plane_create_zpos_immutable_property }, section "___ksymtab+drm_plane_create_zpos_immutable_property", align 4
@__kstrtab_drm_atomic_normalize_zpos = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_normalize_zpos = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_normalize_zpos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_normalize_zpos to i32), ptr @__kstrtab_drm_atomic_normalize_zpos, ptr @__kstrtabns_drm_atomic_normalize_zpos }, section "___ksymtab+drm_atomic_normalize_zpos", align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Pre-multiplied\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Coverage\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"pixel blend mode\00", align 1
@__kstrtab_drm_plane_create_blend_mode_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_plane_create_blend_mode_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_plane_create_blend_mode_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_plane_create_blend_mode_property to i32), ptr @__kstrtab_drm_plane_create_blend_mode_property, ptr @__kstrtabns_drm_plane_create_blend_mode_property }, section "___ksymtab+drm_plane_create_blend_mode_property", align 4
@.str.14 = private unnamed_addr constant [49 x i8] c"[CRTC:%d:%s] calculating normalized zpos values\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"[PLANE:%d:%s] processing zpos value %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"[PLANE:%d:%s] normalized zpos value %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_drm_atomic_normalize_zpos, ptr @__ksymtab_drm_plane_create_alpha_property, ptr @__ksymtab_drm_plane_create_blend_mode_property, ptr @__ksymtab_drm_plane_create_rotation_property, ptr @__ksymtab_drm_plane_create_zpos_immutable_property, ptr @__ksymtab_drm_plane_create_zpos_property, ptr @__ksymtab_drm_rotation_simplify], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_plane_create_alpha_property(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call ptr @drm_property_create_range(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 65535) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  tail call void @drm_object_attach_property(ptr noundef %6, ptr noundef nonnull %3, i64 noundef 65535) #6
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 20
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 12
  store i16 -1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %5, %1
  %14 = phi i32 [ -12, %1 ], [ 0, %11 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_plane_create_rotation_property(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 286, i32 noundef 9, ptr noundef null) #6
  br label %7

7:                                                ; preds = %6, %3
  %8 = and i32 %1, 15
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8) #6, !range !9
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 287, i32 noundef 9, ptr noundef null) #6
  br label %12

12:                                               ; preds = %11, %7
  %13 = xor i32 %2, -1
  %14 = and i32 %13, %1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !11

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 288, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %0, align 8
  %19 = zext i32 %2 to i64
  %20 = tail call ptr @drm_property_create_bitmask(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @drm_plane_create_rotation_property.props, i32 noundef 6, i64 noundef %19) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %24 = zext i32 %1 to i64
  tail call void @drm_object_attach_property(ptr noundef %23, ptr noundef nonnull %20, i64 noundef %24) #6
  %25 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 14
  store i32 %1, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 22
  store ptr %20, ptr %31, align 8
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi i32 [ 0, %30 ], [ -12, %17 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_bitmask(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_rotation_simplify(i32 noundef %0, i32 noundef %1) #2 {
  %3 = xor i32 %1, -1
  %4 = and i32 %3, %0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = and i32 %0, 48
  %8 = and i32 %0, 15
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true), !range !12
  %10 = icmp eq i32 %8, 0
  %11 = add nuw nsw i32 %9, 2
  %12 = and i32 %11, 3
  %13 = shl nuw nsw i32 1, %12
  %14 = select i1 %10, i32 2, i32 %13
  %15 = or i32 %14, %7
  %16 = xor i32 %15, 48
  br label %17

17:                                               ; preds = %6, %2
  %18 = phi i32 [ %16, %6 ], [ %0, %2 ]
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_plane_create_zpos_property(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = zext i32 %2 to i64
  %7 = zext i32 %3 to i64
  %8 = tail call ptr @drm_property_create_range(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @.str.9, i64 noundef %6, i64 noundef %7) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %12 = zext i32 %1 to i64
  tail call void @drm_object_attach_property(ptr noundef %11, ptr noundef nonnull %8, i64 noundef %12) #6
  %13 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 21
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 15
  store i32 %1, ptr %18, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 16
  store i32 %1, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %10, %4
  %22 = phi i32 [ -12, %4 ], [ 0, %17 ], [ 0, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = zext i32 %1 to i64
  %5 = tail call ptr @drm_property_create_range(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.9, i64 noundef %4, i64 noundef %4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  tail call void @drm_object_attach_property(ptr noundef %8, ptr noundef nonnull %5, i64 noundef %4) #6
  %9 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 21
  store ptr %5, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 15
  store i32 %1, ptr %14, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 16
  store i32 %1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %7, %2
  %18 = phi i32 [ -12, %2 ], [ 0, %13 ], [ 0, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_normalize_zpos(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %18

11:                                               ; preds = %49, %2
  %12 = phi ptr [ %4, %2 ], [ %50, %49 ]
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 30, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %151

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %55

18:                                               ; preds = %49, %8
  %19 = phi ptr [ %4, %8 ], [ %50, %49 ]
  %20 = phi i32 [ 0, %8 ], [ %51, %49 ]
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr %struct.__drm_planes_state, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %18
  %26 = getelementptr %struct.__drm_planes_state, ptr %21, i32 %20, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = getelementptr %struct.__drm_planes_state, ptr %21, i32 %20, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %33, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %27, i32 0, i32 15
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %29, i32 0, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr %struct.__drm_crtcs_state, ptr %40, i32 %42, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %44, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  %47 = or i8 %46, 16
  store i8 %47, ptr %45, align 2
  %48 = load ptr, ptr %3, align 4
  br label %49

49:                                               ; preds = %39, %31, %25, %18
  %50 = phi ptr [ %19, %18 ], [ %48, %39 ], [ %19, %31 ], [ %19, %25 ]
  %51 = add nuw nsw i32 %20, 1
  %52 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 30, i32 17
  %53 = load i32, ptr %52, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %18, label %11

55:                                               ; preds = %145, %16
  %56 = phi ptr [ %12, %16 ], [ %146, %145 ]
  %57 = phi i32 [ 0, %16 ], [ %147, %145 ]
  %58 = load ptr, ptr %17, align 4
  %59 = getelementptr %struct.__drm_crtcs_state, ptr %58, i32 %57
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %145, label %62

62:                                               ; preds = %55
  %63 = getelementptr %struct.__drm_crtcs_state, ptr %58, i32 %57, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr %struct.__drm_crtcs_state, ptr %58, i32 %57, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_crtc_state, ptr %64, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 3
  %74 = load i8, ptr %73, align 2
  %75 = and i8 %74, 16
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %145, label %77

77:                                               ; preds = %72, %62
  %78 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 20
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %60, align 8
  %81 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 30, i32 17
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.drm_crtc, ptr %60, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.drm_crtc, ptr %60, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %84, ptr noundef %86) #6
  %87 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 4) #6
  %88 = extractvalue { i32, i1 } %87, 1
  br i1 %88, label %151, label %89, !prof !8

89:                                               ; preds = %77
  %90 = extractvalue { i32, i1 } %87, 0
  %91 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %90, i32 noundef 3264) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %151, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 30, i32 18
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  tail call void @sort(ptr noundef nonnull %91, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @drm_atomic_state_zpos_cmp, ptr noundef null) #6
  br label %138

98:                                               ; preds = %120, %93
  %99 = phi ptr [ %122, %120 ], [ %95, %93 ]
  %100 = phi i32 [ %121, %120 ], [ 0, %93 ]
  %101 = load i32, ptr %69, align 4
  %102 = getelementptr i8, ptr %99, i32 408
  %103 = load i32, ptr %102, align 4
  %104 = shl nuw i32 1, %103
  %105 = and i32 %104, %101
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %98
  %108 = getelementptr i8, ptr %99, i32 -4
  %109 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %79, ptr noundef %108) #6
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %143, label %111

111:                                              ; preds = %107
  %112 = add i32 %100, 1
  %113 = getelementptr ptr, ptr %91, i32 %100
  store ptr %109, ptr %113, align 4
  %114 = getelementptr i8, ptr %99, i32 44
  %115 = load i32, ptr %114, align 8
  %116 = getelementptr i8, ptr %99, i32 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.drm_plane_state, ptr %109, i32 0, i32 15
  %119 = load i32, ptr %118, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %115, ptr noundef %117, i32 noundef %119) #6
  br label %120

120:                                              ; preds = %111, %98
  %121 = phi i32 [ %100, %98 ], [ %112, %111 ]
  %122 = load ptr, ptr %99, align 4
  %123 = icmp eq ptr %122, %94
  br i1 %123, label %124, label %98

124:                                              ; preds = %120
  tail call void @sort(ptr noundef nonnull %91, i32 noundef %121, i32 noundef 4, ptr noundef nonnull @drm_atomic_state_zpos_cmp, ptr noundef null) #6
  %125 = icmp sgt i32 %121, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %126, %124
  %127 = phi i32 [ %136, %126 ], [ 0, %124 ]
  %128 = getelementptr ptr, ptr %91, i32 %127
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.drm_plane_state, ptr %129, i32 0, i32 16
  store i32 %127, ptr %131, align 4
  %132 = getelementptr inbounds %struct.drm_plane, ptr %130, i32 0, i32 4
  %133 = load i32, ptr %132, align 8
  %134 = getelementptr inbounds %struct.drm_plane, ptr %130, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %133, ptr noundef %135, i32 noundef %127) #6
  %136 = add nuw nsw i32 %127, 1
  %137 = icmp eq i32 %136, %121
  br i1 %137, label %138, label %126

138:                                              ; preds = %126, %124, %97
  %139 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 3
  %140 = load i8, ptr %139, align 2
  %141 = or i8 %140, 16
  store i8 %141, ptr %139, align 2
  tail call void @kfree(ptr noundef nonnull %91) #6
  %142 = load ptr, ptr %3, align 4
  br label %145

143:                                              ; preds = %107
  %144 = ptrtoint ptr %109 to i32
  tail call void @kfree(ptr noundef nonnull %91) #6
  br label %151

145:                                              ; preds = %138, %72, %55
  %146 = phi ptr [ %142, %138 ], [ %56, %55 ], [ %56, %72 ]
  %147 = add nuw nsw i32 %57, 1
  %148 = getelementptr inbounds %struct.drm_device, ptr %146, i32 0, i32 30, i32 19
  %149 = load i32, ptr %148, align 4
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %55, label %151

151:                                              ; preds = %145, %143, %89, %77, %11
  %152 = phi i32 [ %144, %143 ], [ 0, %11 ], [ 0, %145 ], [ -12, %89 ], [ -12, %77 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = and i32 %1, -7
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !11

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 588, i32 noundef 9, ptr noundef null) #6
  br label %34

7:                                                ; preds = %2
  %8 = tail call i32 @__sw_hweight32(i32 noundef %1) #6
  %9 = tail call ptr @drm_property_create(ptr noundef %3, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %8) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = and i32 %1, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %9, i64 noundef 2, ptr noundef nonnull @.str.10) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %28, %22, %14
  %18 = phi i32 [ %15, %14 ], [ %23, %22 ], [ %29, %28 ]
  tail call void @drm_property_destroy(ptr noundef %3, ptr noundef nonnull %9) #6
  br label %34

19:                                               ; preds = %14, %11
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %9, i64 noundef 0, ptr noundef nonnull @.str.11) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %17

25:                                               ; preds = %22, %19
  %26 = and i32 %1, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %9, i64 noundef 1, ptr noundef nonnull @.str.12) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %17

31:                                               ; preds = %28, %25
  %32 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  tail call void @drm_object_attach_property(ptr noundef %32, ptr noundef nonnull %9, i64 noundef 0) #6
  %33 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 23
  store ptr %9, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %17, %7, %6
  %35 = phi i32 [ -22, %6 ], [ %18, %17 ], [ 0, %31 ], [ -12, %7 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_property_add_enum(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @drm_atomic_state_zpos_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = sub i32 %6, %8
  br label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.drm_plane, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %15, %18
  br label %20

20:                                               ; preds = %12, %10
  %21 = phi i32 [ %11, %10 ], [ %19, %12 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{i32 0, i32 5}
!10 = !{!"branch_weights", i32 -102759400, i32 4193255}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i32 0, i32 33}
