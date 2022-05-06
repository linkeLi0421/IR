; ModuleID = '/llk/IR/drivers/gpu/drm/drm_damage_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_damage_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_check_plane_damage:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_check_plane_damage\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_check_plane_damage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_dirtyfb:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_dirtyfb\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_dirtyfb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_damage_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_damage_iter_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_damage_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_damage_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_damage_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_damage_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_damage_merged:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_damage_merged\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_damage_merged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mode_rect = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
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
%struct.anon.71 = type { i32, ptr }
%struct.drm_atomic_helper_damage_iter = type { %struct.drm_rect, ptr, i32, i32, i8 }

@.str = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/drm_damage_helper.c\00", align 1
@__kstrtab_drm_atomic_helper_check_plane_damage = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_check_plane_damage = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_check_plane_damage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_check_plane_damage to i32), ptr @__kstrtab_drm_atomic_helper_check_plane_damage, ptr @__kstrtabns_drm_atomic_helper_check_plane_damage }, section "___ksymtab+drm_atomic_helper_check_plane_damage", align 4
@__kstrtab_drm_atomic_helper_dirtyfb = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_dirtyfb = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_dirtyfb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_dirtyfb to i32), ptr @__kstrtab_drm_atomic_helper_dirtyfb, ptr @__kstrtabns_drm_atomic_helper_dirtyfb }, section "___ksymtab+drm_atomic_helper_dirtyfb", align 4
@__kstrtab_drm_atomic_helper_damage_iter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_damage_iter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_damage_iter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_damage_iter_init to i32), ptr @__kstrtab_drm_atomic_helper_damage_iter_init, ptr @__kstrtabns_drm_atomic_helper_damage_iter_init }, section "___ksymtab+drm_atomic_helper_damage_iter_init", align 4
@__kstrtab_drm_atomic_helper_damage_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_damage_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_damage_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_damage_iter_next to i32), ptr @__kstrtab_drm_atomic_helper_damage_iter_next, ptr @__kstrtabns_drm_atomic_helper_damage_iter_next }, section "___ksymtab+drm_atomic_helper_damage_iter_next", align 4
@__kstrtab_drm_atomic_helper_damage_merged = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_damage_merged = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_damage_merged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_damage_merged to i32), ptr @__kstrtab_drm_atomic_helper_damage_merged, ptr @__kstrtabns_drm_atomic_helper_damage_merged }, section "___ksymtab+drm_atomic_helper_damage_merged", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_atomic_helper_check_plane_damage, ptr @__ksymtab_drm_atomic_helper_damage_iter_init, ptr @__ksymtab_drm_atomic_helper_damage_iter_next, ptr @__ksymtab_drm_atomic_helper_damage_merged, ptr @__ksymtab_drm_atomic_helper_dirtyfb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_atomic_helper_check_plane_damage(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr %struct.__drm_crtcs_state, ptr %8, i32 %10, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #7
  br label %23

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 3
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, 14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  tail call void @drm_property_blob_put(ptr noundef %22) #7
  store ptr null, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %15, %14, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_helper_dirtyfb(ptr noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 %3, ptr noundef readonly %4, i32 noundef %5) #0 {
  %7 = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i32 36, i1 false), !annotation !9
  %8 = icmp ne ptr %1, null
  %9 = zext i1 %8 to i32
  call void @drm_modeset_acquire_init(ptr noundef nonnull %7, i32 noundef %9) #7
  %10 = load ptr, ptr %0, align 8
  %11 = call ptr @drm_atomic_state_alloc(ptr noundef %10) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %115, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.drm_atomic_state, ptr %11, i32 0, i32 9
  store ptr %7, ptr %14, align 4
  %15 = icmp eq ptr %4, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %13
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 2
  %20 = xor i1 %18, true
  %21 = zext i1 %20 to i32
  %22 = lshr i32 %5, %21
  %23 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 16) #7
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %104, label %25, !prof !8

25:                                               ; preds = %16
  %26 = extractvalue { i32, i1 } %23, 0
  %27 = call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %104, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %22, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %49, %31 ], [ %4, %29 ]
  %33 = phi i32 [ %51, %31 ], [ %22, %29 ]
  %34 = phi ptr [ %50, %31 ], [ %27, %29 ]
  %35 = load i16, ptr %32, align 2
  %36 = zext i16 %35 to i32
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.drm_clip_rect, ptr %32, i32 0, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.drm_mode_rect, ptr %34, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.drm_clip_rect, ptr %32, i32 0, i32 2
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.drm_mode_rect, ptr %34, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.drm_clip_rect, ptr %32, i32 0, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.drm_mode_rect, ptr %34, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr %struct.drm_clip_rect, ptr %32, i32 %19
  %50 = getelementptr %struct.drm_mode_rect, ptr %34, i32 1
  %51 = add i32 %33, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %31

53:                                               ; preds = %31, %29
  %54 = load ptr, ptr %0, align 8
  %55 = shl i32 %22, 4
  %56 = call ptr @drm_property_create_blob(ptr noundef %54, i32 noundef %55, ptr noundef nonnull %27) #7
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = ptrtoint ptr %56 to i32
  br label %96

60:                                               ; preds = %101, %53, %13
  %61 = phi ptr [ %98, %101 ], [ null, %13 ], [ %27, %53 ]
  %62 = phi ptr [ %99, %101 ], [ null, %13 ], [ %56, %53 ]
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 30, i32 18
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %94, label %67

67:                                               ; preds = %89, %60
  %68 = phi ptr [ %90, %89 ], [ %65, %60 ]
  %69 = getelementptr i8, ptr %68, i32 -4
  %70 = getelementptr i8, ptr %68, i32 12
  %71 = load ptr, ptr %14, align 4
  %72 = call i32 @drm_modeset_lock(ptr noundef %70, ptr noundef %71) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %67
  %75 = getelementptr i8, ptr %68, i32 416
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.drm_plane_state, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  call void @drm_modeset_unlock(ptr noundef %70) #7
  br label %89

81:                                               ; preds = %74
  %82 = call ptr @drm_atomic_get_plane_state(ptr noundef nonnull %11, ptr noundef %69) #7
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = ptrtoint ptr %82 to i32
  br label %96

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.drm_plane_state, ptr %82, i32 0, i32 19
  %88 = call zeroext i1 @drm_property_replace_blob(ptr noundef %87, ptr noundef %62) #7
  br label %89

89:                                               ; preds = %86, %80
  %90 = load ptr, ptr %68, align 4
  %91 = load ptr, ptr %0, align 8
  %92 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 30, i32 18
  %93 = icmp eq ptr %90, %92
  br i1 %93, label %94, label %67

94:                                               ; preds = %89, %60
  %95 = call i32 @drm_atomic_commit(ptr noundef nonnull %11) #7
  br label %96

96:                                               ; preds = %94, %84, %67, %58
  %97 = phi i32 [ %95, %94 ], [ %85, %84 ], [ %59, %58 ], [ %72, %67 ]
  %98 = phi ptr [ %61, %94 ], [ %61, %84 ], [ %27, %58 ], [ %61, %67 ]
  %99 = phi ptr [ %62, %94 ], [ %62, %84 ], [ null, %58 ], [ %62, %67 ]
  %100 = icmp eq i32 %97, -35
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  call void @drm_atomic_state_clear(ptr noundef nonnull %11) #7
  %102 = call i32 @drm_modeset_backoff(ptr noundef nonnull %7) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %60, label %104

104:                                              ; preds = %101, %96, %25, %16
  %105 = phi ptr [ %99, %101 ], [ %99, %96 ], [ null, %25 ], [ null, %16 ]
  %106 = phi ptr [ %98, %101 ], [ %98, %96 ], [ null, %25 ], [ null, %16 ]
  %107 = phi i32 [ %102, %101 ], [ %97, %96 ], [ -12, %25 ], [ -12, %16 ]
  call void @drm_property_blob_put(ptr noundef %105) #7
  call void @kfree(ptr noundef %106) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #7, !srcloc !11
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #7, !srcloc !12
  %109 = extractvalue { i32, i32, i32 } %108, 0
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = icmp sgt i32 %109, 0
  br i1 %112, label %115, label %113, !prof !13

113:                                              ; preds = %111
  call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #7
  br label %115

114:                                              ; preds = %104
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  call void @__drm_atomic_state_free(ptr noundef nonnull %11) #7
  br label %115

115:                                              ; preds = %114, %113, %111, %6
  %116 = phi i32 [ -12, %6 ], [ %107, %111 ], [ %107, %113 ], [ %107, %114 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %7) #7
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #7
  ret i32 %116
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_blob(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_replace_blob(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_atomic_helper_damage_iter_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %0, i8 0, i32 32, i1 false)
  %4 = icmp eq ptr %2, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 22
  %15 = load i8, ptr %14, align 4, !range !15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @drm_plane_get_damage_clips(ptr noundef nonnull %2) #7
  %19 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = tail call i32 @drm_plane_get_damage_clips_count(ptr noundef nonnull %2) #7
  %21 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 20
  %23 = load i32, ptr %22, align 4
  %24 = ashr i32 %23, 16
  store i32 %24, ptr %0, align 4
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 20, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = ashr i32 %26, 16
  %28 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 20, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %30, 65535
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = add nsw i32 %31, %34
  %36 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 20, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %38, 65535
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %39, %42
  %44 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %19, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %17
  %48 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20
  %49 = load i32, ptr %22, align 4
  %50 = load i32, ptr %48, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, ptr %29, align 4
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, ptr %25, align 4
  %59 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, ptr %37, align 4
  %64 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %62, %57, %52, %47, %17
  store ptr null, ptr %19, align 4
  store i32 0, ptr %21, align 4
  %68 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 4
  store i8 1, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %62, %13, %9, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_plane_get_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_get_damage_clips_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 1
  br label %11

10:                                               ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false)
  store i8 0, ptr %3, align 4
  br label %21

11:                                               ; preds = %15, %6
  %12 = load i32, ptr %7, align 4
  %13 = load i32, ptr %8, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr %struct.drm_rect, ptr %16, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 4 dereferenceable(16) %17, i32 16, i1 false)
  %18 = load i32, ptr %7, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %7, align 4
  %20 = tail call zeroext i1 @drm_rect_intersect(ptr noundef %1, ptr noundef %0) #7
  br i1 %20, label %21, label %11

21:                                               ; preds = %15, %11, %10
  %22 = phi i1 [ true, %10 ], [ %14, %15 ], [ %14, %11 ]
  ret i1 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %5 = alloca %struct.drm_rect, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  store i32 2147483647, ptr %2, align 4
  %6 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 1
  store i32 2147483647, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 3
  store i32 0, ptr %8, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1)
  %9 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 3
  br label %16

16:                                               ; preds = %30, %3
  %17 = phi i1 [ false, %3 ], [ true, %30 ]
  %18 = load i8, ptr %9, align 4, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false) #7
  store i8 0, ptr %9, align 4
  br label %30

21:                                               ; preds = %25, %16
  %22 = load i32, ptr %10, align 4
  %23 = load i32, ptr %11, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr %struct.drm_rect, ptr %26, i32 %22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %27, i32 16, i1 false) #7
  %28 = add nuw i32 %22, 1
  store i32 %28, ptr %10, align 4
  %29 = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  br i1 %29, label %30, label %21

30:                                               ; preds = %25, %20
  %31 = load i32, ptr %2, align 4
  %32 = load i32, ptr %5, align 4
  %33 = call i32 @llvm.smin.i32(i32 %31, i32 %32)
  store i32 %33, ptr %2, align 4
  %34 = load i32, ptr %6, align 4
  %35 = load i32, ptr %13, align 4
  %36 = call i32 @llvm.smin.i32(i32 %34, i32 %35)
  store i32 %36, ptr %6, align 4
  %37 = load i32, ptr %7, align 4
  %38 = load i32, ptr %14, align 4
  %39 = call i32 @llvm.smax.i32(i32 %37, i32 %38)
  store i32 %39, ptr %7, align 4
  %40 = load i32, ptr %8, align 4
  %41 = load i32, ptr %15, align 4
  %42 = call i32 @llvm.smax.i32(i32 %40, i32 %41)
  store i32 %42, ptr %8, align 4
  br label %16

43:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret i1 %17
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!10 = !{i64 2148242770}
!11 = !{i64 638919, i64 2148128890, i64 2148128916, i64 2148128963, i64 2148128985, i64 2148129013, i64 2148129033}
!12 = !{i64 2148144917, i64 2148144949, i64 2148144978, i64 2148145012, i64 2148145043, i64 2148145066}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149581796}
!15 = !{i8 0, i8 2}
