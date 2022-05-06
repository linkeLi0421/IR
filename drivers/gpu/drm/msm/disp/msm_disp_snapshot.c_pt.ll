; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/msm_disp_snapshot.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.msm_disp_state = type { ptr, ptr, %struct.list_head, ptr, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.drm_print_iterator = type { ptr, i32, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [45 x i8] c"drivers/gpu/drm/msm/disp/msm_disp_snapshot.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid params\0A\00", align 1
@msm_disp_snapshot_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&kms->dump_mutex\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"disp_snapshot\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to create disp state task\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_disp_snapshot_state_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_kms, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_kms, ptr %0, i32 0, i32 6
  %5 = tail call zeroext i1 @mutex_is_locked(ptr noundef %4) #4
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 40) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %9, align 8
  %14 = getelementptr inbounds %struct.msm_disp_state, ptr %9, i32 0, i32 1
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.msm_disp_state, ptr %9, i32 0, i32 2
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.msm_disp_state, ptr %9, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 4
  tail call void @msm_disp_snapshot_capture_state(ptr noundef nonnull %9) #4
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi ptr [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_capture_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_state(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 5
  %12 = tail call zeroext i1 @kthread_queue_work(ptr noundef %10, ptr noundef %11) #4
  br label %13

13:                                               ; preds = %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_disp_snapshot_init(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %19

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @msm_disp_snapshot_init.__key) #4
  %10 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #4
  %11 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 4
  store ptr %10, ptr %11, align 8
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  br label %14

14:                                               ; preds = %13, %4
  %15 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 5
  %16 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 5, i32 2
  store i64 0, ptr %16, align 4
  store volatile ptr %15, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 5, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  %18 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 5, i32 1
  store ptr @_msm_disp_snapshot_work, ptr %18, align 4
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi i32 [ 0, %14 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_msm_disp_snapshot_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  tail call void @mutex_lock(ptr noundef %2) #4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #4
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 40) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef %2) #4
  br label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %9, align 8
  %15 = getelementptr inbounds %struct.msm_disp_state, ptr %9, i32 0, i32 1
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.msm_disp_state, ptr %9, i32 0, i32 2
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.msm_disp_state, ptr %9, i32 0, i32 2, i32 1
  store ptr %16, ptr %17, align 4
  tail call void @msm_disp_snapshot_capture_state(ptr noundef nonnull %9) #4
  tail call void @mutex_unlock(ptr noundef %2) #4
  %18 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %9, align 8
  tail call void @dev_coredumpm(ptr noundef %20, ptr noundef nonnull @__this_module, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 3264, ptr noundef nonnull @disp_devcoredump_read, ptr noundef nonnull @msm_disp_state_free) #4
  br label %21

21:                                               ; preds = %19, %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_destroy(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @kthread_destroy_worker(ptr noundef nonnull %10) #4
  br label %13

13:                                               ; preds = %12, %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disp_devcoredump_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.drm_print_iterator, align 4
  %7 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #4
  store ptr %0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_print_iterator, ptr %6, i32 0, i32 3
  %9 = trunc i64 %1 to i32
  %10 = getelementptr inbounds %struct.drm_print_iterator, ptr %6, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_print_iterator, ptr %6, i32 0, i32 2
  store i32 %2, ptr %11, align 4
  store i32 0, ptr %8, align 4, !noalias !9
  store ptr @__drm_printfn_coredump, ptr %7, align 4
  %12 = getelementptr inbounds i8, ptr %7, i32 4
  store ptr @__drm_puts_coredump, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %7, i32 8
  store ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %7, i32 12
  store ptr null, ptr %14, align 4
  call void @msm_disp_state_print(ptr noundef %3, ptr noundef nonnull %7) #4
  %15 = load i32, ptr %11, align 4
  %16 = sub i32 %2, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #4
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_state_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_state_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_coredump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_coredump(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"drm_coredump_printer: argument 0"}
!11 = distinct !{!11, !"drm_coredump_printer"}
