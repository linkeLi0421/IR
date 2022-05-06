; ModuleID = '/llk/IR/drivers/gpu/drm/drm_plane_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_plane_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_primary_helper_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_primary_helper_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_drm_primary_helper_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_primary_helper_funcs:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_primary_helper_funcs\22\09\09\09\09\09"
module asm "__kstrtabns_drm_primary_helper_funcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }

@__kstrtab_drm_primary_helper_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_primary_helper_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_primary_helper_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_primary_helper_destroy to i32), ptr @__kstrtab_drm_primary_helper_destroy, ptr @__kstrtabns_drm_primary_helper_destroy }, section "___ksymtab+drm_primary_helper_destroy", align 4
@drm_primary_helper_funcs = dso_local constant %struct.drm_plane_funcs { ptr @drm_primary_helper_update, ptr @drm_primary_helper_disable, ptr @drm_primary_helper_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_primary_helper_funcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_primary_helper_funcs = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_primary_helper_funcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_primary_helper_funcs to i32), ptr @__kstrtab_drm_primary_helper_funcs, ptr @__kstrtabns_drm_primary_helper_funcs }, section "___ksymtab+drm_primary_helper_funcs", align 4
@.str = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/drm_plane_helper.c\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_drm_primary_helper_destroy, ptr @__ksymtab_drm_primary_helper_funcs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_primary_helper_destroy(ptr noundef %0) #0 {
  tail call void @drm_plane_cleanup(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_primary_helper_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11) #0 {
  %13 = alloca %struct.drm_plane_state, align 4
  %14 = alloca %struct.drm_crtc_state, align 4
  %15 = alloca %struct.drm_mode_set, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %15) #8
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_mode_set, ptr %15, i32 0, i32 1
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_mode_set, ptr %15, i32 0, i32 2
  %18 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 12
  store ptr %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_mode_set, ptr %15, i32 0, i32 3
  %20 = lshr i32 %7, 16
  store i32 %20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_mode_set, ptr %15, i32 0, i32 4
  %22 = lshr i32 %8, 16
  store i32 %22, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_mode_set, ptr %15, i32 0, i32 5
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_mode_set, ptr %15, i32 0, i32 6
  store i32 0, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %13) #8
  %25 = getelementptr inbounds i8, ptr %13, i32 108
  store i32 0, ptr %25, align 4, !annotation !8
  store ptr %0, ptr %13, align 4
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 1
  store ptr %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 3
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 4
  store i32 %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 5
  store i32 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 6
  store i32 %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 7
  store i32 %6, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 8
  store i32 %7, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 9
  store i32 %8, ptr %34, align 4
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 10
  store i32 %10, ptr %35, align 4
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 11
  store i32 %9, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 12
  store i16 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 13
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 14
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 15
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 23
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 24
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 25
  store ptr null, ptr %43, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(53) %40, i8 0, i64 53, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 284, ptr nonnull %14) #8
  %44 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(284) %44, i8 0, i32 264, i1 false) #8, !annotation !8
  store ptr %1, ptr %14, align 4
  %45 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 11
  %46 = load i8, ptr %45, align 4, !range !9
  store i8 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 4
  %48 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %47, i8 0, i64 124, i1 false) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %48, ptr noundef align 8 dereferenceable(112) %18, i32 112, i1 false) #8
  %49 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 9
  %50 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(23) %49, i8 0, i64 23, i1 false) #8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %50, i8 0, i64 16, i1 false) #8
  %51 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 284, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %13) #8
  br label %81

54:                                               ; preds = %12
  %55 = load i8, ptr %25, align 4, !range !9
  call void @llvm.lifetime.end.p0(i64 284, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %13) #8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 14
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.drm_plane_funcs, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %0, ptr noundef %11) #8
  br label %81

63:                                               ; preds = %54
  %64 = call fastcc i32 @get_connectors_for_crtc(ptr noundef %1, ptr noundef null, i32 noundef 0)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67, !prof !10

66:                                               ; preds = %63
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_plane_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

67:                                               ; preds = %63
  %68 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 4) #8
  %69 = extractvalue { i32, i1 } %68, 1
  br i1 %69, label %81, label %70, !prof !10

70:                                               ; preds = %67
  %71 = extractvalue { i32, i1 } %68, 0
  %72 = call noalias align 64 ptr @__kmalloc(i32 noundef %71, i32 noundef 3520) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = call fastcc i32 @get_connectors_for_crtc(ptr noundef %1, ptr noundef nonnull %72, i32 noundef %64)
  store ptr %72, ptr %23, align 4
  store i32 %64, ptr %24, align 4
  %76 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 16
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %77, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef nonnull %15, ptr noundef %11) #8
  call void @kfree(ptr noundef nonnull %72) #8
  br label %81

81:                                               ; preds = %74, %70, %67, %57, %53
  %82 = phi i32 [ %80, %74 ], [ %62, %57 ], [ %51, %53 ], [ -12, %70 ], [ -12, %67 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %15) #8
  ret i32 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @drm_primary_helper_disable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  ret i32 -22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_connectors_for_crtc(ptr noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %7 = tail call zeroext i1 @mutex_is_locked(ptr noundef %6) #8
  br i1 %7, label %9, label %8, !prof !12

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %3
  call void @drm_connector_list_iter_begin(ptr noundef %5, ptr noundef nonnull %4) #8
  %10 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %32, %9
  %13 = phi ptr [ %35, %32 ], [ %10, %9 ]
  %14 = phi ptr [ %34, %32 ], [ %1, %9 ]
  %15 = phi i32 [ %33, %32 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 41
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.drm_encoder, ptr %17, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = icmp eq ptr %14, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = icmp slt i32 %15, %2
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr ptr, ptr %14, i32 1
  store ptr %13, ptr %14, align 4
  br label %29

29:                                               ; preds = %27, %25, %23
  %30 = phi ptr [ %28, %27 ], [ %14, %25 ], [ null, %23 ]
  %31 = add i32 %15, 1
  br label %32

32:                                               ; preds = %29, %19, %12
  %33 = phi i32 [ %31, %29 ], [ %15, %19 ], [ %15, %12 ]
  %34 = phi ptr [ %30, %29 ], [ %14, %19 ], [ %14, %12 ]
  %35 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %12

37:                                               ; preds = %32, %9
  %38 = phi i32 [ 0, %9 ], [ %33, %32 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154967667, i64 2154968166, i64 2154967704, i64 2154967760, i64 2154967794, i64 2154967818, i64 2154967859, i64 2154967880, i64 2154967908, i64 2154967942}
!12 = !{!"branch_weights", i32 2000, i32 1}
