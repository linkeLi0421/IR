; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_atomic.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_atomic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.80 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.83, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.83 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"atomic-worker-%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"drivers/gpu/drm/msm/msm_atomic.c\00", align 1
@__tracepoint_msm_atomic_async_commit_start = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_msm_atomic_async_commit_finish = external dso_local global %struct.tracepoint, align 4
@__tracepoint_msm_atomic_commit_tail_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_msm_atomic_wait_flush_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_msm_atomic_wait_flush_finish = external dso_local global %struct.tracepoint, align 4
@__tracepoint_msm_atomic_commit_tail_finish = external dso_local global %struct.tracepoint, align 4
@__tracepoint_msm_atomic_flush_commit = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_atomic_prepare_fb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %0, ptr noundef %1) #3
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.msm_kms, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @msm_framebuffer_prepare(ptr noundef %13, ptr noundef %15) #3
  br label %17

17:                                               ; preds = %6, %2
  %18 = phi i32 [ %16, %6 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_atomic_init_pending_timer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.msm_pending_timer, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.msm_pending_timer, ptr %0, i32 0, i32 3
  store i32 %2, ptr %5, align 8
  %6 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %2) #3
  %7 = getelementptr inbounds %struct.msm_pending_timer, ptr %0, i32 0, i32 1
  store ptr %6, ptr %7, align 8
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = ptrtoint ptr %6 to i32
  store ptr null, ptr %7, align 8
  br label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.kthread_worker, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @sched_set_fifo(ptr noundef %13) #3
  %14 = load ptr, ptr %7, align 8
  tail call void @msm_hrtimer_work_init(ptr noundef %0, ptr noundef %14, ptr noundef nonnull @msm_atomic_pending_work, i32 noundef 1, i32 noundef 0) #3
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_work_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_atomic_pending_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 32
  %5 = load i32, ptr %4, align 8
  %6 = shl nuw i32 1, %5
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_start, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #3
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %21 = tail call i32 @__traceiter_msm_atomic_async_commit_start(ptr noundef null, i32 noundef %6) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %44, label %28

28:                                               ; preds = %39, %22
  %29 = phi ptr [ %40, %39 ], [ %24, %22 ]
  %30 = phi ptr [ %41, %39 ], [ %26, %22 ]
  %31 = getelementptr i8, ptr %30, i32 72
  %32 = load i32, ptr %31, align 8
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 %32
  tail call void @mutex_lock(ptr noundef %37) #3
  %38 = load ptr, ptr %23, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi ptr [ %38, %36 ], [ %29, %28 ]
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 30, i32 20
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %28

44:                                               ; preds = %39, %22
  %45 = phi ptr [ %24, %22 ], [ %40, %39 ]
  %46 = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 30, i32 20, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 30, i32 20
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %216, label %55

55:                                               ; preds = %66, %50
  %56 = phi ptr [ %67, %66 ], [ %45, %50 ]
  %57 = phi ptr [ %69, %66 ], [ %52, %50 ]
  %58 = getelementptr i8, ptr %57, i32 72
  %59 = load i32, ptr %58, align 8
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 %59
  tail call void @mutex_unlock(ptr noundef %64) #3
  %65 = load ptr, ptr %23, align 4
  br label %66

66:                                               ; preds = %63, %55
  %67 = phi ptr [ %65, %63 ], [ %56, %55 ]
  %68 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 30, i32 20
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %216, label %55

72:                                               ; preds = %44
  %73 = xor i32 %6, -1
  %74 = and i32 %47, %73
  store i32 %74, ptr %46, align 4
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct.msm_kms_funcs, ptr %75, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %3) #3
  %78 = load ptr, ptr %23, align 4
  %79 = getelementptr inbounds %struct.drm_device, ptr %78, i32 0, i32 30, i32 20
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %105, label %82

82:                                               ; preds = %100, %72
  %83 = phi ptr [ %101, %100 ], [ %78, %72 ]
  %84 = phi ptr [ %102, %100 ], [ %80, %72 ]
  %85 = getelementptr i8, ptr %84, i32 -8
  %86 = getelementptr i8, ptr %84, i32 72
  %87 = load i32, ptr %86, align 8
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %82
  %92 = getelementptr i8, ptr %84, i32 636
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.drm_crtc_state, ptr %93, i32 0, i32 2
  %95 = load i8, ptr %94, align 1, !range !10
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @drm_crtc_vblank_get(ptr noundef %85) #3
  %99 = load ptr, ptr %23, align 4
  br label %100

100:                                              ; preds = %97, %91, %82
  %101 = phi ptr [ %99, %97 ], [ %83, %82 ], [ %83, %91 ]
  %102 = load ptr, ptr %84, align 4
  %103 = getelementptr inbounds %struct.drm_device, ptr %101, i32 0, i32 30, i32 20
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %105, label %82

105:                                              ; preds = %100, %72
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_flush_commit, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = tail call ptr @llvm.thread.pointer() #3
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr @__cpu_online_mask, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %120 = tail call i32 @__traceiter_msm_atomic_flush_commit(ptr noundef null, i32 noundef %6) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  br label %121

121:                                              ; preds = %119, %108, %105
  %122 = load ptr, ptr %3, align 8
  %123 = getelementptr inbounds %struct.msm_kms_funcs, ptr %122, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  tail call void %124(ptr noundef %3, i32 noundef %6) #3
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_start, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = tail call ptr @llvm.thread.pointer() #3
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %139 = tail call i32 @__traceiter_msm_atomic_wait_flush_start(ptr noundef null, i32 noundef %6) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %140

140:                                              ; preds = %138, %127, %121
  %141 = load ptr, ptr %3, align 8
  %142 = getelementptr inbounds %struct.msm_kms_funcs, ptr %141, i32 0, i32 12
  %143 = load ptr, ptr %142, align 4
  tail call void %143(ptr noundef %3, i32 noundef %6) #3
  %144 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_finish, i32 0, i32 1), align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = tail call ptr @llvm.thread.pointer() #3
  %148 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %149 = load i32, ptr %148, align 8
  %150 = lshr i32 %149, 5
  %151 = getelementptr i32, ptr @__cpu_online_mask, i32 %150
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %149, 31
  %154 = shl nuw i32 1, %153
  %155 = and i32 %154, %152
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %146
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  %158 = tail call i32 @__traceiter_msm_atomic_wait_flush_finish(ptr noundef null, i32 noundef %6) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %159

159:                                              ; preds = %157, %146, %140
  %160 = load ptr, ptr %23, align 4
  %161 = getelementptr inbounds %struct.drm_device, ptr %160, i32 0, i32 30, i32 20
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, %161
  br i1 %163, label %186, label %164

164:                                              ; preds = %181, %159
  %165 = phi ptr [ %182, %181 ], [ %160, %159 ]
  %166 = phi ptr [ %183, %181 ], [ %162, %159 ]
  %167 = getelementptr i8, ptr %166, i32 -8
  %168 = getelementptr i8, ptr %166, i32 72
  %169 = load i32, ptr %168, align 8
  %170 = shl nuw i32 1, %169
  %171 = and i32 %170, %6
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %164
  %174 = getelementptr i8, ptr %166, i32 636
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.drm_crtc_state, ptr %175, i32 0, i32 2
  %177 = load i8, ptr %176, align 1, !range !10
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %173
  tail call void @drm_crtc_vblank_put(ptr noundef %167) #3
  %180 = load ptr, ptr %23, align 4
  br label %181

181:                                              ; preds = %179, %173, %164
  %182 = phi ptr [ %180, %179 ], [ %165, %164 ], [ %165, %173 ]
  %183 = load ptr, ptr %166, align 4
  %184 = getelementptr inbounds %struct.drm_device, ptr %182, i32 0, i32 30, i32 20
  %185 = icmp eq ptr %183, %184
  br i1 %185, label %186, label %164

186:                                              ; preds = %181, %159
  %187 = load ptr, ptr %3, align 8
  %188 = getelementptr inbounds %struct.msm_kms_funcs, ptr %187, i32 0, i32 13
  %189 = load ptr, ptr %188, align 4
  tail call void %189(ptr noundef %3, i32 noundef %6) #3
  %190 = load ptr, ptr %23, align 4
  %191 = getelementptr inbounds %struct.drm_device, ptr %190, i32 0, i32 30, i32 20, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.drm_device, ptr %190, i32 0, i32 30, i32 20
  %194 = icmp eq ptr %192, %193
  br i1 %194, label %212, label %195

195:                                              ; preds = %206, %186
  %196 = phi ptr [ %207, %206 ], [ %190, %186 ]
  %197 = phi ptr [ %209, %206 ], [ %192, %186 ]
  %198 = getelementptr i8, ptr %197, i32 72
  %199 = load i32, ptr %198, align 8
  %200 = shl nuw i32 1, %199
  %201 = and i32 %200, %6
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %195
  %204 = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 %199
  tail call void @mutex_unlock(ptr noundef %204) #3
  %205 = load ptr, ptr %23, align 4
  br label %206

206:                                              ; preds = %203, %195
  %207 = phi ptr [ %205, %203 ], [ %196, %195 ]
  %208 = getelementptr inbounds %struct.list_head, ptr %197, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.drm_device, ptr %207, i32 0, i32 30, i32 20
  %211 = icmp eq ptr %209, %210
  br i1 %211, label %212, label %195

212:                                              ; preds = %206, %186
  %213 = load ptr, ptr %3, align 8
  %214 = getelementptr inbounds %struct.msm_kms_funcs, ptr %213, i32 0, i32 8
  %215 = load ptr, ptr %214, align 4
  tail call void %215(ptr noundef %3) #3
  br label %216

216:                                              ; preds = %212, %66, %50
  %217 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_finish, i32 0, i32 1), align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %216
  %220 = tail call ptr @llvm.thread.pointer() #3
  %221 = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 2
  %222 = load i32, ptr %221, align 8
  %223 = lshr i32 %222, 5
  %224 = getelementptr i32, ptr @__cpu_online_mask, i32 %223
  %225 = load volatile i32, ptr %224, align 4
  %226 = and i32 %222, 31
  %227 = shl nuw i32 1, %226
  %228 = and i32 %227, %225
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %219
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !17
  %231 = tail call i32 @__traceiter_msm_atomic_async_commit_finish(ptr noundef null, i32 noundef %6) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  br label %232

232:                                              ; preds = %230, %219, %216
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_atomic_destroy_pending_timer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_pending_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kthread_destroy_worker(ptr noundef nonnull %3) #3
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_atomic_commit_tail(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %25, %11
  %15 = phi i32 [ 0, %11 ], [ %26, %25 ]
  %16 = phi i32 [ 0, %11 ], [ %27, %25 ]
  %17 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %16
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.drm_crtc, ptr %18, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = shl nuw i32 1, %22
  %24 = or i32 %23, %15
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i32 [ %24, %20 ], [ %15, %14 ]
  %27 = add nuw i32 %16, 1
  %28 = icmp eq i32 %27, %9
  br i1 %28, label %29, label %14

29:                                               ; preds = %25, %1
  %30 = phi i32 [ 0, %1 ], [ %26, %25 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds %struct.msm_kms_funcs, ptr %31, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %82, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 2
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  br label %55

47:                                               ; preds = %55
  %48 = add nuw nsw i32 %56, 1
  %49 = icmp eq i32 %48, %42
  br i1 %49, label %50, label %55

50:                                               ; preds = %47, %40
  %51 = icmp sgt i32 %9, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  br label %60

55:                                               ; preds = %47, %44
  %56 = phi i32 [ 0, %44 ], [ %48, %47 ]
  %57 = getelementptr %struct.__drm_connnectors_state, ptr %46, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %47, label %82

60:                                               ; preds = %77, %52
  %61 = phi ptr [ null, %52 ], [ %78, %77 ]
  %62 = phi i32 [ 0, %52 ], [ %79, %77 ]
  %63 = phi i32 [ 0, %52 ], [ %80, %77 ]
  %64 = getelementptr %struct.__drm_crtcs_state, ptr %54, i32 %63
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = getelementptr %struct.__drm_crtcs_state, ptr %54, i32 %63, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.drm_crtc_state, ptr %69, i32 0, i32 3
  %71 = load i8, ptr %70, align 2
  %72 = and i8 %71, 14
  %73 = icmp ne i8 %72, 0
  %74 = add i32 %62, 1
  %75 = icmp sgt i32 %74, 1
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %67, %60
  %78 = phi ptr [ %61, %60 ], [ %65, %67 ]
  %79 = phi i32 [ %62, %60 ], [ 1, %67 ]
  %80 = add nuw nsw i32 %63, 1
  %81 = icmp slt i32 %80, %9
  br i1 %81, label %60, label %82

82:                                               ; preds = %77, %67, %55, %50, %35, %29
  %83 = phi ptr [ null, %29 ], [ null, %35 ], [ null, %50 ], [ %61, %67 ], [ %78, %77 ], [ null, %55 ]
  %84 = phi i1 [ false, %29 ], [ false, %35 ], [ true, %50 ], [ false, %67 ], [ true, %77 ], [ false, %55 ]
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_start, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = tail call ptr @llvm.thread.pointer() #3
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  %99 = tail call i32 @__traceiter_msm_atomic_commit_tail_start(ptr noundef null, i1 noundef zeroext %84, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !20
  %100 = load ptr, ptr %7, align 8
  br label %101

101:                                              ; preds = %98, %87, %82
  %102 = phi ptr [ %31, %82 ], [ %31, %87 ], [ %100, %98 ]
  %103 = getelementptr inbounds %struct.msm_kms_funcs, ptr %102, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  tail call void %104(ptr noundef %7) #3
  %105 = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.drm_device, ptr %106, i32 0, i32 30, i32 20
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %126, label %110

110:                                              ; preds = %121, %101
  %111 = phi ptr [ %122, %121 ], [ %106, %101 ]
  %112 = phi ptr [ %123, %121 ], [ %108, %101 ]
  %113 = getelementptr i8, ptr %112, i32 72
  %114 = load i32, ptr %113, align 8
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %30
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 %114
  tail call void @mutex_lock(ptr noundef %119) #3
  %120 = load ptr, ptr %105, align 4
  br label %121

121:                                              ; preds = %118, %110
  %122 = phi ptr [ %120, %118 ], [ %111, %110 ]
  %123 = load ptr, ptr %112, align 4
  %124 = getelementptr inbounds %struct.drm_device, ptr %122, i32 0, i32 30, i32 20
  %125 = icmp eq ptr %123, %124
  br i1 %125, label %126, label %110

126:                                              ; preds = %121, %101
  %127 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_start, i32 0, i32 1), align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = tail call ptr @llvm.thread.pointer() #3
  %131 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = lshr i32 %132, 5
  %134 = getelementptr i32, ptr @__cpu_online_mask, i32 %133
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %132, 31
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %129
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %141 = tail call i32 @__traceiter_msm_atomic_wait_flush_start(ptr noundef null, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %142

142:                                              ; preds = %140, %129, %126
  %143 = load ptr, ptr %7, align 8
  %144 = getelementptr inbounds %struct.msm_kms_funcs, ptr %143, i32 0, i32 12
  %145 = load ptr, ptr %144, align 4
  tail call void %145(ptr noundef %7, i32 noundef %30) #3
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_finish, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = tail call ptr @llvm.thread.pointer() #3
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  %160 = tail call i32 @__traceiter_msm_atomic_wait_flush_finish(ptr noundef null, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %161

161:                                              ; preds = %159, %148, %142
  %162 = load ptr, ptr %7, align 8
  %163 = getelementptr inbounds %struct.msm_kms_funcs, ptr %162, i32 0, i32 10
  %164 = load ptr, ptr %163, align 4
  tail call void %164(ptr noundef %7, ptr noundef %0) #3
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %3, ptr noundef %0) #3
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %3, ptr noundef %0, i32 noundef 0) #3
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %3, ptr noundef %0) #3
  br i1 %84, label %165, label %226

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.drm_crtc, ptr %83, i32 0, i32 8
  %167 = load i32, ptr %166, align 8
  %168 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 %167
  %169 = shl nuw i32 1, %167
  %170 = icmp eq i32 %30, %169
  br i1 %170, label %172, label %171, !prof !21

171:                                              ; preds = %165
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 9, ptr noundef null) #3
  br label %172

172:                                              ; preds = %171, %165
  %173 = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, %30
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = or i32 %174, %30
  store i32 %178, ptr %173, align 4
  %179 = load ptr, ptr %7, align 8
  %180 = getelementptr inbounds %struct.msm_kms_funcs, ptr %179, i32 0, i32 9
  %181 = load ptr, ptr %180, align 4
  %182 = tail call i64 %181(ptr noundef %7, ptr noundef %83) #3
  %183 = add i64 %182, -1000000
  tail call void @msm_hrtimer_queue_work(ptr noundef %168, i64 noundef %183, i32 noundef 0) #3
  br label %184

184:                                              ; preds = %177, %172
  %185 = load ptr, ptr %7, align 8
  %186 = getelementptr inbounds %struct.msm_kms_funcs, ptr %185, i32 0, i32 8
  %187 = load ptr, ptr %186, align 4
  tail call void %187(ptr noundef %7) #3
  %188 = load ptr, ptr %105, align 4
  %189 = getelementptr inbounds %struct.drm_device, ptr %188, i32 0, i32 30, i32 20, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.drm_device, ptr %188, i32 0, i32 30, i32 20
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %210, label %193

193:                                              ; preds = %204, %184
  %194 = phi ptr [ %205, %204 ], [ %188, %184 ]
  %195 = phi ptr [ %207, %204 ], [ %190, %184 ]
  %196 = getelementptr i8, ptr %195, i32 72
  %197 = load i32, ptr %196, align 8
  %198 = shl nuw i32 1, %197
  %199 = and i32 %198, %30
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %193
  %202 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 %197
  tail call void @mutex_unlock(ptr noundef %202) #3
  %203 = load ptr, ptr %105, align 4
  br label %204

204:                                              ; preds = %201, %193
  %205 = phi ptr [ %203, %201 ], [ %194, %193 ]
  %206 = getelementptr inbounds %struct.list_head, ptr %195, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.drm_device, ptr %205, i32 0, i32 30, i32 20
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %210, label %193

210:                                              ; preds = %204, %184
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %0) #3
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %3, ptr noundef %0) #3
  %211 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_finish, i32 0, i32 1), align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %430

213:                                              ; preds = %210
  %214 = tail call ptr @llvm.thread.pointer() #3
  %215 = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 2
  %216 = load i32, ptr %215, align 8
  %217 = lshr i32 %216, 5
  %218 = getelementptr i32, ptr @__cpu_online_mask, i32 %217
  %219 = load volatile i32, ptr %218, align 4
  %220 = and i32 %216, 31
  %221 = shl nuw i32 1, %220
  %222 = and i32 %221, %219
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %430, label %224

224:                                              ; preds = %213
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %225 = tail call i32 @__traceiter_msm_atomic_commit_tail_finish(ptr noundef null, i1 noundef zeroext true, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !23
  br label %430

226:                                              ; preds = %161
  %227 = xor i32 %30, -1
  %228 = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 8
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, %227
  store i32 %230, ptr %228, align 4
  %231 = load ptr, ptr %105, align 4
  %232 = getelementptr inbounds %struct.drm_device, ptr %231, i32 0, i32 30, i32 20
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, %232
  br i1 %234, label %258, label %235

235:                                              ; preds = %253, %226
  %236 = phi ptr [ %254, %253 ], [ %231, %226 ]
  %237 = phi ptr [ %255, %253 ], [ %233, %226 ]
  %238 = getelementptr i8, ptr %237, i32 -8
  %239 = getelementptr i8, ptr %237, i32 72
  %240 = load i32, ptr %239, align 8
  %241 = shl nuw i32 1, %240
  %242 = and i32 %241, %30
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %235
  %245 = getelementptr i8, ptr %237, i32 636
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.drm_crtc_state, ptr %246, i32 0, i32 2
  %248 = load i8, ptr %247, align 1, !range !10
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %244
  %251 = tail call i32 @drm_crtc_vblank_get(ptr noundef %238) #3
  %252 = load ptr, ptr %105, align 4
  br label %253

253:                                              ; preds = %250, %244, %235
  %254 = phi ptr [ %252, %250 ], [ %236, %235 ], [ %236, %244 ]
  %255 = load ptr, ptr %237, align 4
  %256 = getelementptr inbounds %struct.drm_device, ptr %254, i32 0, i32 30, i32 20
  %257 = icmp eq ptr %255, %256
  br i1 %257, label %258, label %235

258:                                              ; preds = %253, %226
  %259 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_flush_commit, i32 0, i32 1), align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %258
  %262 = tail call ptr @llvm.thread.pointer() #3
  %263 = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 2
  %264 = load i32, ptr %263, align 8
  %265 = lshr i32 %264, 5
  %266 = getelementptr i32, ptr @__cpu_online_mask, i32 %265
  %267 = load volatile i32, ptr %266, align 4
  %268 = and i32 %264, 31
  %269 = shl nuw i32 1, %268
  %270 = and i32 %269, %267
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %261
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %273 = tail call i32 @__traceiter_msm_atomic_flush_commit(ptr noundef null, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  br label %274

274:                                              ; preds = %272, %261, %258
  %275 = load ptr, ptr %7, align 8
  %276 = getelementptr inbounds %struct.msm_kms_funcs, ptr %275, i32 0, i32 11
  %277 = load ptr, ptr %276, align 4
  tail call void %277(ptr noundef %7, i32 noundef %30) #3
  %278 = load ptr, ptr %105, align 4
  %279 = getelementptr inbounds %struct.drm_device, ptr %278, i32 0, i32 30, i32 20, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.drm_device, ptr %278, i32 0, i32 30, i32 20
  %282 = icmp eq ptr %280, %281
  br i1 %282, label %300, label %283

283:                                              ; preds = %294, %274
  %284 = phi ptr [ %295, %294 ], [ %278, %274 ]
  %285 = phi ptr [ %297, %294 ], [ %280, %274 ]
  %286 = getelementptr i8, ptr %285, i32 72
  %287 = load i32, ptr %286, align 8
  %288 = shl nuw i32 1, %287
  %289 = and i32 %288, %30
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %283
  %292 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 %287
  tail call void @mutex_unlock(ptr noundef %292) #3
  %293 = load ptr, ptr %105, align 4
  br label %294

294:                                              ; preds = %291, %283
  %295 = phi ptr [ %293, %291 ], [ %284, %283 ]
  %296 = getelementptr inbounds %struct.list_head, ptr %285, i32 0, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.drm_device, ptr %295, i32 0, i32 30, i32 20
  %299 = icmp eq ptr %297, %298
  br i1 %299, label %300, label %283

300:                                              ; preds = %294, %274
  %301 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_start, i32 0, i32 1), align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %300
  %304 = tail call ptr @llvm.thread.pointer() #3
  %305 = getelementptr inbounds %struct.thread_info, ptr %304, i32 0, i32 2
  %306 = load i32, ptr %305, align 8
  %307 = lshr i32 %306, 5
  %308 = getelementptr i32, ptr @__cpu_online_mask, i32 %307
  %309 = load volatile i32, ptr %308, align 4
  %310 = and i32 %306, 31
  %311 = shl nuw i32 1, %310
  %312 = and i32 %311, %309
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %303
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %315 = tail call i32 @__traceiter_msm_atomic_wait_flush_start(ptr noundef null, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %316

316:                                              ; preds = %314, %303, %300
  %317 = load ptr, ptr %7, align 8
  %318 = getelementptr inbounds %struct.msm_kms_funcs, ptr %317, i32 0, i32 12
  %319 = load ptr, ptr %318, align 4
  tail call void %319(ptr noundef %7, i32 noundef %30) #3
  %320 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_finish, i32 0, i32 1), align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %316
  %323 = tail call ptr @llvm.thread.pointer() #3
  %324 = getelementptr inbounds %struct.thread_info, ptr %323, i32 0, i32 2
  %325 = load i32, ptr %324, align 8
  %326 = lshr i32 %325, 5
  %327 = getelementptr i32, ptr @__cpu_online_mask, i32 %326
  %328 = load volatile i32, ptr %327, align 4
  %329 = and i32 %325, 31
  %330 = shl nuw i32 1, %329
  %331 = and i32 %330, %328
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %322
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  %334 = tail call i32 @__traceiter_msm_atomic_wait_flush_finish(ptr noundef null, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %335

335:                                              ; preds = %333, %322, %316
  %336 = load ptr, ptr %105, align 4
  %337 = getelementptr inbounds %struct.drm_device, ptr %336, i32 0, i32 30, i32 20
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, %337
  br i1 %339, label %364, label %340

340:                                              ; preds = %357, %335
  %341 = phi ptr [ %358, %357 ], [ %336, %335 ]
  %342 = phi ptr [ %359, %357 ], [ %338, %335 ]
  %343 = getelementptr i8, ptr %342, i32 -8
  %344 = getelementptr i8, ptr %342, i32 72
  %345 = load i32, ptr %344, align 8
  %346 = shl nuw i32 1, %345
  %347 = and i32 %346, %30
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %340
  %350 = getelementptr i8, ptr %342, i32 636
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.drm_crtc_state, ptr %351, i32 0, i32 2
  %353 = load i8, ptr %352, align 1, !range !10
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %349
  tail call void @drm_crtc_vblank_put(ptr noundef %343) #3
  %356 = load ptr, ptr %105, align 4
  br label %357

357:                                              ; preds = %355, %349, %340
  %358 = phi ptr [ %356, %355 ], [ %341, %340 ], [ %341, %349 ]
  %359 = load ptr, ptr %342, align 4
  %360 = getelementptr inbounds %struct.drm_device, ptr %358, i32 0, i32 30, i32 20
  %361 = icmp eq ptr %359, %360
  br i1 %361, label %362, label %340

362:                                              ; preds = %357
  %363 = load ptr, ptr %359, align 4
  br label %364

364:                                              ; preds = %362, %335
  %365 = phi ptr [ %363, %362 ], [ %337, %335 ]
  %366 = phi ptr [ %358, %362 ], [ %336, %335 ]
  %367 = getelementptr inbounds %struct.drm_device, ptr %366, i32 0, i32 30, i32 20
  %368 = icmp eq ptr %365, %367
  br i1 %368, label %385, label %369

369:                                              ; preds = %380, %364
  %370 = phi ptr [ %381, %380 ], [ %366, %364 ]
  %371 = phi ptr [ %382, %380 ], [ %365, %364 ]
  %372 = getelementptr i8, ptr %371, i32 72
  %373 = load i32, ptr %372, align 8
  %374 = shl nuw i32 1, %373
  %375 = and i32 %374, %30
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %369
  %378 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 %373
  tail call void @mutex_lock(ptr noundef %378) #3
  %379 = load ptr, ptr %105, align 4
  br label %380

380:                                              ; preds = %377, %369
  %381 = phi ptr [ %379, %377 ], [ %370, %369 ]
  %382 = load ptr, ptr %371, align 4
  %383 = getelementptr inbounds %struct.drm_device, ptr %381, i32 0, i32 30, i32 20
  %384 = icmp eq ptr %382, %383
  br i1 %384, label %385, label %369

385:                                              ; preds = %380, %364
  %386 = load ptr, ptr %7, align 8
  %387 = getelementptr inbounds %struct.msm_kms_funcs, ptr %386, i32 0, i32 13
  %388 = load ptr, ptr %387, align 4
  tail call void %388(ptr noundef %7, i32 noundef %30) #3
  %389 = load ptr, ptr %105, align 4
  %390 = getelementptr inbounds %struct.drm_device, ptr %389, i32 0, i32 30, i32 20, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.drm_device, ptr %389, i32 0, i32 30, i32 20
  %393 = icmp eq ptr %391, %392
  br i1 %393, label %411, label %394

394:                                              ; preds = %405, %385
  %395 = phi ptr [ %406, %405 ], [ %389, %385 ]
  %396 = phi ptr [ %408, %405 ], [ %391, %385 ]
  %397 = getelementptr i8, ptr %396, i32 72
  %398 = load i32, ptr %397, align 8
  %399 = shl nuw i32 1, %398
  %400 = and i32 %399, %30
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %394
  %403 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 %398
  tail call void @mutex_unlock(ptr noundef %403) #3
  %404 = load ptr, ptr %105, align 4
  br label %405

405:                                              ; preds = %402, %394
  %406 = phi ptr [ %404, %402 ], [ %395, %394 ]
  %407 = getelementptr inbounds %struct.list_head, ptr %396, i32 0, i32 1
  %408 = load ptr, ptr %407, align 4
  %409 = getelementptr inbounds %struct.drm_device, ptr %406, i32 0, i32 30, i32 20
  %410 = icmp eq ptr %408, %409
  br i1 %410, label %411, label %394

411:                                              ; preds = %405, %385
  %412 = load ptr, ptr %7, align 8
  %413 = getelementptr inbounds %struct.msm_kms_funcs, ptr %412, i32 0, i32 8
  %414 = load ptr, ptr %413, align 4
  tail call void %414(ptr noundef %7) #3
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %0) #3
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %3, ptr noundef %0) #3
  %415 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_finish, i32 0, i32 1), align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %430

417:                                              ; preds = %411
  %418 = tail call ptr @llvm.thread.pointer() #3
  %419 = getelementptr inbounds %struct.thread_info, ptr %418, i32 0, i32 2
  %420 = load i32, ptr %419, align 8
  %421 = lshr i32 %420, 5
  %422 = getelementptr i32, ptr @__cpu_online_mask, i32 %421
  %423 = load volatile i32, ptr %422, align 4
  %424 = and i32 %420, 31
  %425 = shl nuw i32 1, %424
  %426 = and i32 %425, %423
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %417
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %429 = tail call i32 @__traceiter_msm_atomic_commit_tail_finish(ptr noundef null, i1 noundef zeroext false, i32 noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !23
  br label %430

430:                                              ; preds = %428, %417, %411, %224, %213, %210
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_queue_work(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_async_commit_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_async_commit_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_commit_tail_start(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_wait_flush_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_wait_flush_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_commit_tail_finish(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_flush_commit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2153501039}
!9 = !{i64 2153501227}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153559985}
!12 = !{i64 2153560161}
!13 = !{i64 2153532748}
!14 = !{i64 2153532932}
!15 = !{i64 2153546438}
!16 = !{i64 2153546624}
!17 = !{i64 2153518958}
!18 = !{i64 2153519148}
!19 = !{i64 2153473186}
!20 = !{i64 2153473386}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2153487205}
!23 = !{i64 2153487407}
