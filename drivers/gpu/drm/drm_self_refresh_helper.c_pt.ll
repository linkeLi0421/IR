; ModuleID = '/llk/IR/drivers/gpu/drm/drm_self_refresh_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_self_refresh_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_update_avg_times:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_update_avg_times\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_update_avg_times:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_alter_state:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_alter_state\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_alter_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.71 = type { i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_self_refresh_data = type { ptr, %struct.delayed_work, %struct.mutex, %struct.ewma_psr_time, %struct.ewma_psr_time }
%struct.ewma_psr_time = type { i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }

@__kstrtab_drm_self_refresh_helper_update_avg_times = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_update_avg_times = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_update_avg_times = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_update_avg_times to i32), ptr @__kstrtab_drm_self_refresh_helper_update_avg_times, ptr @__kstrtabns_drm_self_refresh_helper_update_avg_times }, section "___ksymtab+drm_self_refresh_helper_update_avg_times", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_drm_self_refresh_helper_alter_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_alter_state = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_alter_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_alter_state to i32), ptr @__kstrtab_drm_self_refresh_helper_alter_state, ptr @__kstrtabns_drm_self_refresh_helper_alter_state }, section "___ksymtab+drm_self_refresh_helper_alter_state", align 4
@.str = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/drm_self_refresh_helper.c\00", align 1
@drm_self_refresh_helper_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&sr_data->avg_mutex\00", align 1
@__kstrtab_drm_self_refresh_helper_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_init to i32), ptr @__kstrtab_drm_self_refresh_helper_init, ptr @__kstrtabns_drm_self_refresh_helper_init }, section "___ksymtab+drm_self_refresh_helper_init", align 4
@__kstrtab_drm_self_refresh_helper_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_cleanup to i32), ptr @__kstrtab_drm_self_refresh_helper_cleanup, ptr @__kstrtabns_drm_self_refresh_helper_cleanup }, section "___ksymtab+drm_self_refresh_helper_cleanup", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_drm_self_refresh_helper_alter_state, ptr @__ksymtab_drm_self_refresh_helper_cleanup, ptr @__ksymtab_drm_self_refresh_helper_init, ptr @__ksymtab_drm_self_refresh_helper_update_avg_times], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_self_refresh_helper_update_avg_times(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %11 = shl i32 %1, 4
  br label %12

12:                                               ; preds = %43, %9
  %13 = phi ptr [ %5, %9 ], [ %44, %43 ]
  %14 = phi i32 [ 0, %9 ], [ %45, %43 ]
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %14
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %12
  %20 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %14, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = shl nuw i32 1, %14
  %23 = and i32 %22, %2
  %24 = icmp ne i32 %23, 0
  %25 = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 16
  %26 = load i8, ptr %25, align 2, !range !8
  %27 = zext i1 %24 to i8
  %28 = icmp eq i8 %26, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %17, i32 0, i32 31
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %31, i32 0, i32 4
  %34 = select i1 %24, ptr %32, ptr %33
  %35 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %31, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %35) #5
  %36 = load volatile i32, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  %38 = mul i32 %36, 3
  %39 = add i32 %38, %11
  %40 = lshr i32 %39, 2
  %41 = select i1 %37, i32 %11, i32 %40
  store volatile i32 %41, ptr %34, align 4
  tail call void @mutex_unlock(ptr noundef %35) #5
  %42 = load ptr, ptr %4, align 4
  br label %43

43:                                               ; preds = %29, %19, %12
  %44 = phi ptr [ %42, %29 ], [ %13, %19 ], [ %13, %12 ]
  %45 = add nuw nsw i32 %14, 1
  %46 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 30, i32 19
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %12, label %49

49:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_self_refresh_helper_alter_state(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 5
  %5 = icmp eq i8 %4, 1
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %29, %12
  %16 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %17 = getelementptr %struct.__drm_crtcs_state, ptr %14, i32 %16
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.__drm_crtcs_state, ptr %14, i32 %16, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 16
  %24 = load i8, ptr %23, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = and i8 %3, -6
  %28 = or i8 %27, 1
  store i8 %28, ptr %2, align 4
  br label %32

29:                                               ; preds = %20, %15
  %30 = add nuw nsw i32 %16, 1
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %32, label %15

32:                                               ; preds = %29, %26, %8, %1
  %33 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %34 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 19
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %39

39:                                               ; preds = %71, %37
  %40 = phi ptr [ %7, %37 ], [ %72, %71 ]
  %41 = phi i32 [ 0, %37 ], [ %73, %71 ]
  %42 = load ptr, ptr %38, align 4
  %43 = getelementptr %struct.__drm_crtcs_state, ptr %42, i32 %41
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %39
  %47 = getelementptr %struct.__drm_crtcs_state, ptr %42, i32 %41, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_crtc_state, ptr %48, i32 0, i32 16
  %50 = load i8, ptr %49, align 2, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.drm_crtc, ptr %44, i32 0, i32 31
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %54, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %57) #5
  %58 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %54, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %54, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  tail call void @mutex_unlock(ptr noundef %57) #5
  %62 = load ptr, ptr @system_wq, align 4
  %63 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %54, i32 0, i32 1
  %64 = lshr i32 %61, 4
  %65 = lshr i32 %59, 4
  %66 = add nuw nsw i32 %64, %65
  %67 = shl nuw nsw i32 %66, 1
  %68 = tail call i32 @__msecs_to_jiffies(i32 noundef %67) #5
  %69 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %62, ptr noundef %63, i32 noundef %68) #5
  %70 = load ptr, ptr %33, align 4
  br label %71

71:                                               ; preds = %56, %52, %46, %39
  %72 = phi ptr [ %70, %56 ], [ %40, %46 ], [ %40, %52 ], [ %40, %39 ]
  %73 = add nuw nsw i32 %41, 1
  %74 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 30, i32 19
  %75 = load i32, ptr %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %39, label %77

77:                                               ; preds = %71, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_self_refresh_helper_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef null) #5
  br label %31

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 76) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 1
  store i32 -32, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 1, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 1, i32 0, i32 2
  store ptr @drm_self_refresh_helper_entry_work, ptr %14, align 8
  %15 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %15, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  store ptr %0, ptr %8, align 8
  %16 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_self_refresh_helper_init.__key) #5
  %17 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 4
  store i32 0, ptr %18, align 8
  %19 = load volatile i32, ptr %17, align 4
  %20 = icmp eq i32 %19, 0
  %21 = mul i32 %19, 3
  %22 = add i32 %21, 3200
  %23 = lshr i32 %22, 2
  %24 = select i1 %20, i32 3200, i32 %23
  store volatile i32 %24, ptr %17, align 4
  %25 = load volatile i32, ptr %18, align 8
  %26 = icmp eq i32 %25, 0
  %27 = mul i32 %25, 3
  %28 = add i32 %27, 3200
  %29 = lshr i32 %28, 2
  %30 = select i1 %26, i32 3200, i32 %29
  store volatile i32 %30, ptr %18, align 8
  store ptr %8, ptr %2, align 4
  br label %31

31:                                               ; preds = %10, %6, %5
  %32 = phi i32 [ -22, %5 ], [ 0, %10 ], [ -12, %6 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_self_refresh_helper_entry_work(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !10
  call void @drm_modeset_acquire_init(ptr noundef nonnull %2, i32 noundef 0) #5
  %6 = call ptr @drm_atomic_state_alloc(ptr noundef %5) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %6, i32 0, i32 9
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %6, i32 0, i32 5
  %11 = getelementptr inbounds %struct.drm_atomic_state, ptr %6, i32 0, i32 6
  br label %12

12:                                               ; preds = %50, %8
  store ptr %2, ptr %9, align 4
  %13 = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %6, ptr noundef %4) #5
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  br label %47

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  %22 = call i32 @drm_atomic_add_affected_connectors(ptr noundef nonnull %6, ptr noundef %4) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i32, ptr %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load ptr, ptr %11, align 4
  br label %29

29:                                               ; preds = %40, %27
  %30 = phi i32 [ 0, %27 ], [ %41, %40 ]
  %31 = getelementptr %struct.__drm_connnectors_state, ptr %28, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.__drm_connnectors_state, ptr %28, i32 %30, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_connector_state, ptr %36, i32 0, i32 7
  %38 = load i8, ptr %37, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34, %29
  %41 = add nuw nsw i32 %30, 1
  %42 = icmp eq i32 %41, %25
  br i1 %42, label %43, label %29

43:                                               ; preds = %40, %24
  %44 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 16
  store i8 1, ptr %45, align 2
  %46 = call i32 @drm_atomic_commit(ptr noundef nonnull %6) #5
  br label %47

47:                                               ; preds = %43, %21, %15
  %48 = phi i32 [ %16, %15 ], [ %22, %21 ], [ %46, %43 ]
  %49 = icmp eq i32 %48, -35
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  call void @drm_atomic_state_clear(ptr noundef nonnull %6) #5
  %51 = call i32 @drm_modeset_backoff(ptr noundef nonnull %2) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %12, label %53

53:                                               ; preds = %50, %47, %34, %17
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #5, !srcloc !12
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #5, !srcloc !13
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %61, label %59, !prof !9

59:                                               ; preds = %57
  call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #5
  br label %61

60:                                               ; preds = %53
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  call void @__drm_atomic_state_free(ptr noundef nonnull %6) #5
  br label %61

61:                                               ; preds = %60, %59, %57, %1
  call void @drm_modeset_drop_locks(ptr noundef nonnull %2) #5
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_self_refresh_helper_cleanup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %3, i32 0, i32 1
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #5
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_connectors(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 2148089486}
!12 = !{i64 486444, i64 2147976415, i64 2147976441, i64 2147976488, i64 2147976510, i64 2147976538, i64 2147976558}
!13 = !{i64 2147991645, i64 2147991677, i64 2147991706, i64 2147991740, i64 2147991771, i64 2147991794}
!14 = !{i64 2149282661}
