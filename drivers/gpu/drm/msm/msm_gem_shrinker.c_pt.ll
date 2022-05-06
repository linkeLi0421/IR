; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gem_shrinker.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gem_shrinker.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.75, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.81, ptr, i32, ptr, i8, i32 }
%struct.anon.75 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.81 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.95, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.72, ptr }
%union.anon.72 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.msm_gem_object = type { %struct.drm_gem_object, i32, i8, i8, i8, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, [32 x i8], i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@enable_eviction = dso_local global i8 0, align 1
@__UNIQUE_ID_enable_eviction321 = internal constant [50 x i8] c"parm=enable_eviction:Enable swappable GEM buffers\00", section ".modinfo", align 1
@__param_str_enable_eviction = internal constant [16 x i8] c"enable_eviction\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_enable_eviction = internal constant %struct.kernel_param { ptr @__param_str_enable_eviction, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @enable_eviction } }, section "__param", align 4
@__UNIQUE_ID_enable_evictiontype322 = internal constant [30 x i8] c"parmtype=enable_eviction:bool\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/msm/msm_gem_shrinker.c\00", align 1
@__tracepoint_msm_gem_purge = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@__tracepoint_msm_gem_evict = external dso_local global %struct.tracepoint, align 4
@is_vunmapable._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.is_vunmapable = private unnamed_addr constant [14 x i8] c"is_vunmapable\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/msm/msm_gem.h\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"!msm_gem_is_locked(&msm_obj->base)\00", align 1
@__tracepoint_msm_gem_purge_vmaps = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_enable_eviction321, ptr @__UNIQUE_ID_enable_evictiontype322, ptr @__param_enable_eviction], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_shrinker_shrink(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.shrink_control, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.shrink_control, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 37
  %8 = call i32 @msm_gem_shrinker_scan(ptr noundef %7, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gem_shrinker_scan(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -668
  %4 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -568
  %7 = tail call fastcc i32 @scan(ptr noundef %3, i32 noundef %5, ptr noundef %6, ptr noundef nonnull @purge)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = shl i32 %7, 12
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gem_purge, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #6
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %25 = tail call i32 @__traceiter_msm_gem_purge(ptr noundef null, i32 noundef %10) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  br label %26

26:                                               ; preds = %24, %13, %9, %2
  %27 = load i8, ptr @enable_eviction, align 1, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %26
  %30 = load volatile i32, ptr @nr_swap_pages, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i32, ptr %4, align 4
  %34 = icmp ugt i32 %33, %7
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = sub i32 %33, %7
  %37 = getelementptr i8, ptr %0, i32 -576
  %38 = tail call fastcc i32 @scan(ptr noundef %3, i32 noundef %36, ptr noundef %37, ptr noundef nonnull @evict)
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = shl i32 %38, 12
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gem_evict, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = tail call ptr @llvm.thread.pointer() #6
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %56 = tail call i32 @__traceiter_msm_gem_evict(ptr noundef null, i32 noundef %41) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %57

57:                                               ; preds = %55, %44, %40, %35
  %58 = add i32 %38, %7
  br label %59

59:                                               ; preds = %57, %32, %29, %26
  %60 = phi i32 [ %58, %57 ], [ %7, %32 ], [ %7, %29 ], [ %7, %26 ]
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 -1, i32 %60
  ret i32 %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_shrinker_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 37
  store ptr @msm_gem_shrinker_count, ptr %4, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 37, i32 1
  store ptr @msm_gem_shrinker_scan, ptr %5, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 37, i32 3
  store i32 2, ptr %6, align 4
  %7 = tail call i32 @register_shrinker(ptr noundef %4) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !13

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 36
  store ptr @msm_gem_shrinker_vmap, ptr %11, align 8
  %12 = tail call i32 @register_vmap_purge_notifier(ptr noundef %11) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !13

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #6
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @msm_gem_shrinker_count(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -552
  %4 = load i32, ptr %3, align 4
  %5 = load i8, ptr @enable_eviction, align 1, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load volatile i32, ptr @nr_swap_pages, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 -548
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, %4
  br label %14

14:                                               ; preds = %10, %7, %2
  %15 = phi i32 [ %13, %10 ], [ %4, %7 ], [ %4, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gem_shrinker_vmap(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [4 x ptr], align 4
  %5 = getelementptr i8, ptr %0, i32 -656
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %6 = getelementptr i8, ptr %0, i32 -556
  store ptr %6, ptr %4, align 4
  %7 = getelementptr inbounds ptr, ptr %4, i32 1
  %8 = getelementptr i8, ptr %0, i32 -564
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds ptr, ptr %4, i32 2
  %10 = getelementptr i8, ptr %0, i32 -616
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %11, i32 0, i32 16
  %14 = select i1 %12, ptr null, ptr %13
  store ptr %14, ptr %9, align 4
  %15 = getelementptr inbounds ptr, ptr %4, i32 3
  store ptr null, ptr %15, align 4
  %16 = icmp eq ptr %6, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %17, %3
  %18 = phi ptr [ %26, %17 ], [ %6, %3 ]
  %19 = phi i32 [ %23, %17 ], [ 0, %3 ]
  %20 = phi i32 [ %24, %17 ], [ 0, %3 ]
  %21 = sub nuw nsw i32 15, %19
  %22 = tail call fastcc i32 @scan(ptr noundef %5, i32 noundef %21, ptr noundef nonnull %18, ptr noundef nonnull @vmap_shrink)
  %23 = add i32 %22, %19
  %24 = add i32 %20, 1
  %25 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ne ptr %26, null
  %28 = icmp ult i32 %23, 15
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %17, label %30

30:                                               ; preds = %17
  %31 = load i32, ptr %2, align 4
  %32 = add i32 %31, %23
  store i32 %32, ptr %2, align 4
  %33 = icmp eq i32 %23, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gem_purge_vmaps, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = tail call ptr @llvm.thread.pointer() #6
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %49 = tail call i32 @__traceiter_msm_gem_purge_vmaps(ptr noundef null, i32 noundef %23) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %50

50:                                               ; preds = %48, %37, %34, %30, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_vmap_purge_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_shrinker_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 37
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 37, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 36
  %10 = tail call i32 @unregister_vmap_purge_notifier(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !13

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %8
  tail call void @unregister_shrinker(ptr noundef %4) #6
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_vmap_purge_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scan(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store volatile ptr %5, ptr %5, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %0, i32 0, i32 21
  call void @mutex_lock(ptr noundef %7) #6
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %69, %4
  %10 = phi i32 [ %70, %69 ], [ 0, %4 ]
  %11 = load volatile ptr, ptr %2, align 4
  %12 = icmp eq ptr %11, %2
  %13 = getelementptr i8, ptr %11, i32 -224
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %72, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  %21 = load ptr, ptr %6, align 4
  store ptr %11, ptr %6, align 4
  store ptr %5, ptr %11, align 4
  store ptr %21, ptr %17, align 4
  store volatile ptr %11, ptr %21, align 4
  %22 = load volatile i32, ptr %13, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %34, %16
  %25 = phi i32 [ %32, %34 ], [ %22, %16 ]
  %26 = add i32 %25, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #6, !srcloc !16
  br label %27

27:                                               ; preds = %27, %24
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 %25, i32 %26, ptr elementtype(i32) %13) #6, !srcloc !17
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27
  %32 = extractvalue { i32, i32 } %28, 1
  %33 = icmp eq i32 %32, %25
  br i1 %33, label %36, label %34, !prof !13

34:                                               ; preds = %31
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %36, label %24

36:                                               ; preds = %34, %31, %16
  %37 = phi i32 [ 0, %16 ], [ %25, %31 ], [ 0, %34 ]
  %38 = add i32 %37, 1
  %39 = or i32 %38, %37
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %42, label %41, !prof !13

41:                                               ; preds = %36
  call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 0) #6
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %42
  call void @mutex_unlock(ptr noundef %7) #6
  %45 = getelementptr i8, ptr %11, i32 -64
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @ww_mutex_trylock(ptr noundef %46, ptr noundef null) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = call zeroext i1 %3(ptr noundef nonnull %13) #6, !callees !18
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %11, i32 -80
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 12
  %55 = add i32 %54, %10
  br label %56

56:                                               ; preds = %51, %49
  %57 = phi i32 [ %55, %51 ], [ %10, %49 ]
  %58 = load ptr, ptr %45, align 8
  call void @ww_mutex_unlock(ptr noundef %58) #6
  br label %59

59:                                               ; preds = %56, %44
  %60 = phi i32 [ %57, %56 ], [ %10, %44 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #6, !srcloc !16
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !20
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %68, label %66, !prof !13

66:                                               ; preds = %64
  call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #6
  br label %68

67:                                               ; preds = %59
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  call void @drm_gem_object_free(ptr noundef nonnull %13) #6
  br label %68

68:                                               ; preds = %67, %66, %64
  call void @mutex_lock(ptr noundef %7) #6
  br label %69

69:                                               ; preds = %68, %42
  %70 = phi i32 [ %60, %68 ], [ %10, %42 ]
  %71 = icmp ult i32 %70, %1
  br i1 %71, label %9, label %72

72:                                               ; preds = %69, %9, %4
  %73 = phi i32 [ 0, %4 ], [ %10, %9 ], [ %70, %69 ]
  %74 = load volatile ptr, ptr %5, align 8
  %75 = icmp eq ptr %74, %5
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  store ptr %74, ptr %78, align 4
  store ptr %2, ptr %79, align 4
  store ptr %79, ptr %77, align 4
  br label %81

81:                                               ; preds = %76, %72
  call void @mutex_unlock(ptr noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @purge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @msm_gem_purge(ptr noundef %0) #6
  br label %18

18:                                               ; preds = %17, %13, %9, %5, %1
  %19 = phi i1 [ false, %13 ], [ true, %17 ], [ false, %5 ], [ false, %1 ], [ false, %9 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @evict(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @msm_gem_evict(ptr noundef %0) #6
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  %15 = phi i1 [ false, %9 ], [ true, %13 ], [ false, %5 ], [ false, %1 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_purge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gem_purge(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_evict(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gem_evict(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vmap_shrink(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #6
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @___ratelimit(ptr noundef nonnull @is_vunmapable._rs, ptr noundef nonnull @__func__.is_vunmapable) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !13

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #6
  br label %9

9:                                                ; preds = %8, %5, %1
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @msm_gem_vunmap(ptr noundef %0) #6
  br label %18

18:                                               ; preds = %17, %13, %9
  %19 = phi i1 [ false, %13 ], [ true, %17 ], [ false, %9 ]
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_vunmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gem_purge_vmaps(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!8 = !{i64 2155775411}
!9 = !{i64 2155775559}
!10 = !{i8 0, i8 2}
!11 = !{i64 2155791776}
!12 = !{i64 2155791924}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155804377}
!15 = !{i64 2155804543}
!16 = !{i64 664878, i64 2148154849, i64 2148154875, i64 2148154922, i64 2148154944, i64 2148154972, i64 2148154992}
!17 = !{i64 650941, i64 650965, i64 650986, i64 651003, i64 651020}
!18 = !{ptr @evict, ptr @purge, ptr @vmap_shrink}
!19 = !{i64 2148267944}
!20 = !{i64 2148170079, i64 2148170111, i64 2148170140, i64 2148170174, i64 2148170205, i64 2148170228}
!21 = !{i64 2149295790}
