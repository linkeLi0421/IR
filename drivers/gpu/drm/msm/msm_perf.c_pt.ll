; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_perf.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_perf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
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
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_perf_state = type { ptr, i8, i32, %struct.mutex, [256 x i8], i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.95, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.68, ptr }
%union.anon.68 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.msm_gpu_perfcntr = type { i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.73 = type { ptr }

@msm_perf_debugfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [17 x i8] c"&perf->read_lock\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@perf_debugfs_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @perf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @perf_open, ptr null, ptr @perf_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.2 = private unnamed_addr constant [7 x i8] c"%%BUSY\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%3d.%d%%\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\09%5d.%02d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_perf_debugfs_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 300) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 4
  store ptr %14, ptr %11, align 8
  %15 = getelementptr inbounds %struct.msm_perf_state, ptr %11, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @msm_perf_debugfs_init.__key) #9
  store ptr %11, ptr %6, align 4
  %16 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32476, ptr noundef %17, ptr noundef nonnull %11, ptr noundef nonnull @perf_debugfs_fops) #9
  br label %19

19:                                               ; preds = %13, %9, %1
  %20 = phi i32 [ 0, %13 ], [ 0, %1 ], [ -12, %9 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_perf_debugfs_cleanup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_drm_private, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.msm_perf_state, ptr %9, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.msm_perf_state, ptr %9, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_perf_state, ptr %9, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %111, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msm_drm_private, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.msm_perf_state, ptr %9, i32 0, i32 4
  %23 = getelementptr inbounds %struct.msm_perf_state, ptr %9, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = and i32 %24, 31
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %16
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %22, i32 noundef 256, ptr noundef nonnull @.str.2) #9
  %30 = getelementptr i8, ptr %22, i32 %29
  %31 = sub i32 256, %29
  %32 = getelementptr inbounds %struct.msm_gpu, ptr %21, i32 0, i32 12
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %101, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.msm_gpu, ptr %21, i32 0, i32 11
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ 0, %35 ], [ %47, %37 ]
  %39 = phi i32 [ %31, %35 ], [ %46, %37 ]
  %40 = phi ptr [ %30, %35 ], [ %45, %37 ]
  %41 = load ptr, ptr %36, align 4
  %42 = getelementptr %struct.msm_gpu_perfcntr, ptr %41, i32 %38, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %40, i32 noundef %39, ptr noundef nonnull @.str.3, ptr noundef %43) #9
  %45 = getelementptr i8, ptr %40, i32 %44
  %46 = sub i32 %39, %44
  %47 = add nuw i32 %38, 1
  %48 = load i32, ptr %32, align 8
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %37, label %101

50:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #9, !annotation !8
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = getelementptr inbounds %struct.msm_perf_state, ptr %9, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %51, %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = sub i32 %53, %51
  %58 = tail call i32 @schedule_timeout_interruptible(i32 noundef %57) #9
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %109, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %52, align 4
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi i32 [ %61, %60 ], [ %53, %50 ]
  %64 = add i32 %63, 25
  store i32 %64, ptr %52, align 4
  %65 = call i32 @msm_gpu_perfcntr_sample(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 5, ptr noundef nonnull %7) #9
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %109, label %67

67:                                               ; preds = %62
  %68 = load i32, ptr %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %5, align 4
  %72 = mul i32 %71, 1000
  %73 = udiv i32 %72, %68
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ %73, %70 ], [ 0, %67 ]
  %76 = freeze i32 %75
  %77 = udiv i32 %76, 10
  %78 = mul i32 %77, 10
  %79 = sub i32 %76, %78
  %80 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %22, i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %77, i32 noundef %79) #9
  %81 = getelementptr i8, ptr %22, i32 %80
  %82 = sub i32 256, %80
  %83 = icmp eq i32 %65, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %84, %74
  %85 = phi i32 [ %96, %84 ], [ 0, %74 ]
  %86 = phi i32 [ %95, %84 ], [ %82, %74 ]
  %87 = phi ptr [ %94, %84 ], [ %81, %74 ]
  %88 = getelementptr [5 x i32], ptr %7, i32 0, i32 %85
  %89 = load i32, ptr %88, align 4
  %90 = udiv i32 %89, 10000
  %91 = udiv i32 %89, 1000000
  %92 = urem i32 %90, 100
  %93 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %87, i32 noundef %86, ptr noundef nonnull @.str.5, i32 noundef %91, i32 noundef %92) #9
  %94 = getelementptr i8, ptr %87, i32 %93
  %95 = sub i32 %86, %93
  %96 = add nuw nsw i32 %85, 1
  %97 = icmp eq i32 %96, %65
  br i1 %97, label %98, label %84

98:                                               ; preds = %84, %74
  %99 = phi ptr [ %81, %74 ], [ %94, %84 ]
  %100 = phi i32 [ %82, %74 ], [ %95, %84 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %101

101:                                              ; preds = %98, %37, %28
  %102 = phi ptr [ %99, %98 ], [ %30, %28 ], [ %45, %37 ]
  %103 = phi i32 [ %100, %98 ], [ %31, %28 ], [ %46, %37 ]
  %104 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %102, i32 noundef %103, ptr noundef nonnull @.str.6) #9
  %105 = getelementptr i8, ptr %102, i32 %104
  store i32 0, ptr %11, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = ptrtoint ptr %22 to i32
  %108 = sub i32 %106, %107
  store i32 %108, ptr %13, align 4
  br label %111

109:                                              ; preds = %62, %56
  %110 = phi i32 [ -512, %56 ], [ %65, %62 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %143

111:                                              ; preds = %101, %4
  %112 = phi i32 [ 0, %101 ], [ %12, %4 ]
  %113 = phi i32 [ %108, %101 ], [ %14, %4 ]
  %114 = sub i32 %113, %112
  %115 = call i32 @llvm.smin.i32(i32 %114, i32 %2)
  %116 = getelementptr %struct.msm_perf_state, ptr %9, i32 0, i32 4, i32 %112
  %117 = icmp slt i32 %115, 0
  %118 = load i1, ptr @check_copy_size.__already_done, align 1
  %119 = xor i1 %118, true
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %122, !prof !9

121:                                              ; preds = %111
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %122

122:                                              ; preds = %121, %111
  br i1 %117, label %143, label %123, !prof !9

123:                                              ; preds = %122
  %124 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %115, i32 -1090519040) #10, !srcloc !10
  %125 = extractvalue { i32, i32 } %124, 0
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = tail call ptr @llvm.thread.pointer() #9
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 3
  %130 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %129) #11, !srcloc !11
  %131 = and i32 %130, -13
  %132 = or i32 %131, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %133 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %116, i32 noundef %115) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  br label %134

134:                                              ; preds = %127, %123
  %135 = phi i32 [ %133, %127 ], [ %115, %123 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, ptr %11, align 4
  %139 = add i32 %138, %115
  store i32 %139, ptr %11, align 4
  %140 = zext i32 %115 to i64
  %141 = load i64, ptr %3, align 8
  %142 = add i64 %141, %140
  store i64 %142, ptr %3, align 8
  br label %143

143:                                              ; preds = %137, %134, %122, %109
  %144 = phi i32 [ %115, %137 ], [ -14, %134 ], [ %110, %109 ], [ -14, %122 ]
  call void @mutex_unlock(ptr noundef %10) #9
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msm_gpu, ptr %9, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.msm_perf_state, ptr %4, i32 0, i32 1
  %14 = load i8, ptr %13, align 4, !range !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %17, align 8
  store i8 1, ptr %13, align 4
  %18 = getelementptr inbounds %struct.msm_perf_state, ptr %4, i32 0, i32 2
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.msm_perf_state, ptr %4, i32 0, i32 5
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.msm_perf_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %20, align 4
  tail call void @msm_gpu_perfcntr_start(ptr noundef nonnull %9) #9
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = add i32 %21, 25
  %23 = getelementptr inbounds %struct.msm_perf_state, ptr %4, i32 0, i32 7
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %16, %11
  %25 = phi i32 [ 0, %16 ], [ -16, %11 ]
  tail call void @mutex_unlock(ptr noundef %12) #9
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i32 [ %25, %24 ], [ -19, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  tail call void @msm_gpu_perfcntr_stop(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.msm_perf_state, ptr %4, i32 0, i32 1
  store i8 0, ptr %10, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_perfcntr_sample(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_perfcntr_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_perfcntr_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150975449, i64 2150975474}
!11 = !{i64 3470983}
!12 = !{i64 3471180}
!13 = !{i64 2150956459}
!14 = !{i8 0, i8 2}
