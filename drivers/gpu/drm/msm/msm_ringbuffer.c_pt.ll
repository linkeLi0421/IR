; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_ringbuffer.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_ringbuffer.c"
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
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.84] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.76, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.76 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.anon.84 = type { i32, %union.anon.85, i64 }
%union.anon.85 = type { ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.95, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.72, ptr }
%union.anon.72 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.75, i64, i64, i32, %struct.kref, i32 }
%union.anon.75 = type { i64 }
%struct.msm_gem_object = type { %struct.drm_gem_object, i32, i8, i8, i8, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, [32 x i8], i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.msm_rbmemptrs = type { i32, i32, [64 x %struct.msm_gpu_submit_stats], i64 }
%struct.msm_gpu_submit_stats = type { i64, i64, i64, i64 }

@__UNIQUE_ID_num_hw_submissions296 = internal constant [79 x i8] c"parm=num_hw_submissions:The max # of jobs to write into ringbuffer (default 8)\00", section ".modinfo", align 1
@__param_str_num_hw_submissions = internal constant [19 x i8] c"num_hw_submissions\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_hw_submissions = internal global i32 8, align 4
@__param_num_hw_submissions = internal constant %struct.kernel_param { ptr @__param_str_num_hw_submissions, ptr @__this_module, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @num_hw_submissions } }, section "__param", align 4
@__UNIQUE_ID_num_hw_submissionstype297 = internal constant [33 x i8] c"parmtype=num_hw_submissions:uint\00", section ".modinfo", align 1
@msm_sched_ops = dso_local constant %struct.drm_sched_backend_ops { ptr null, ptr @msm_job_run, ptr null, ptr @msm_job_free }, align 4
@.str = private unnamed_addr constant [7 x i8] c"ring%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gpu-ring-%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_num_hw_submissions296, ptr @__UNIQUE_ID_num_hw_submissionstype297, ptr @__param_num_hw_submissions], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @msm_job_run(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @msm_fence_alloc(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 8
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #6
  %14 = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %14) #6
  tail call void @msm_gpu_submit(ptr noundef %3, ptr noundef %0) #6
  tail call void @mutex_unlock(ptr noundef %14) #6
  %15 = load ptr, ptr %10, align 8
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #6
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #6, !srcloc !8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #6, !srcloc !9
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !10

25:                                               ; preds = %20
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !11

29:                                               ; preds = %25, %20
  %30 = phi i32 [ 2, %20 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %30) #6
  br label %31

31:                                               ; preds = %29, %25, %1
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_job_free(ptr noundef %0) #0 {
  tail call void @drm_sched_job_cleanup(ptr noundef %0) #6
  %2 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #6, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #6
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void @__msm_gem_submit_destroy(ptr noundef %2) #6
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_ringbuffer_new(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !15
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 304) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %4
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 1
  store i32 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 45
  %14 = load i8, ptr %13, align 1, !range !16
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 131074, i32 537001986
  %17 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 10
  %21 = tail call ptr @msm_gem_kernel_new(ptr noundef %12, i32 noundef 32768, i32 noundef %16, ptr noundef %18, ptr noundef %19, ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = ptrtoint ptr %21 to i32
  store ptr null, ptr %22, align 4
  br label %53

26:                                               ; preds = %9
  %27 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %27, ptr noundef nonnull @.str, i32 noundef %1) #6
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr i32, ptr %28, i32 8192
  %30 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 4
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 6
  store ptr %28, ptr %31, align 8
  %32 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 5
  store ptr %28, ptr %32, align 4
  %33 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 13
  store ptr %2, ptr %33, align 8
  %34 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 14
  store i64 %3, ptr %34, align 8
  %35 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 7
  %36 = load i32, ptr @num_hw_submissions, align 4
  %37 = load ptr, ptr %19, align 8
  %38 = getelementptr inbounds %struct.msm_gem_object, ptr %37, i32 0, i32 12
  %39 = tail call i32 @drm_sched_init(ptr noundef %35, ptr noundef nonnull @msm_sched_ops, i32 noundef %36, i32 noundef 0, i32 noundef 2147483647, ptr noundef null, ptr noundef null, ptr noundef %38) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 8
  store volatile ptr %42, ptr %42, align 8
  %43 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 8, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 9
  store i32 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 16
  store i32 0, ptr %45, align 4
  %46 = load i32, ptr %10, align 4
  %47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %46)
  %48 = load ptr, ptr %11, align 4
  %49 = load ptr, ptr %33, align 8
  %50 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %49, i32 0, i32 1
  %51 = call ptr @msm_fence_context_alloc(ptr noundef %48, ptr noundef %50, ptr noundef nonnull %5) #6
  %52 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 15
  store ptr %51, ptr %52, align 8
  br label %67

53:                                               ; preds = %26, %24
  %54 = phi i32 [ %25, %24 ], [ %39, %26 ]
  %55 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 7
  tail call void @drm_sched_fini(ptr noundef %57) #6
  %58 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 15
  %59 = load ptr, ptr %58, align 8
  tail call void @msm_fence_context_free(ptr noundef %59) #6
  %60 = load ptr, ptr %19, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = getelementptr inbounds %struct.msm_gpu, ptr %61, i32 0, i32 24
  %63 = load ptr, ptr %62, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %60, ptr noundef %63) #6
  tail call void @kfree(ptr noundef nonnull %7) #6
  br label %64

64:                                               ; preds = %56, %53, %4
  %65 = phi i32 [ %54, %53 ], [ %54, %56 ], [ -12, %4 ]
  %66 = inttoptr i32 %65 to ptr
  br label %67

67:                                               ; preds = %64, %41
  %68 = phi ptr [ %66, %64 ], [ %7, %41 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret ptr %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_fence_context_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_ringbuffer_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_ringbuffer, ptr %0, i32 0, i32 7
  tail call void @drm_sched_fini(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.msm_ringbuffer, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  tail call void @msm_fence_context_free(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.msm_ringbuffer, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.msm_gpu, ptr %11, i32 0, i32 24
  %13 = load ptr, ptr %12, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %10, ptr noundef %13) #6
  tail call void @kfree(ptr noundef nonnull %0) #6
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_fence_context_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_fence_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_submit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__msm_gem_submit_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 271147, i64 2147772713, i64 2147772739, i64 2147772786, i64 2147772808, i64 2147772836, i64 2147772856}
!9 = !{i64 2147847872, i64 2147847904, i64 2147847933, i64 2147847967, i64 2147847998, i64 2147848021}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147948070}
!13 = !{i64 2147850229, i64 2147850261, i64 2147850290, i64 2147850324, i64 2147850355, i64 2147850378}
!14 = !{i64 2148999959}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
