; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_sched.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_sched.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lima_sched_task = type { %struct.drm_sched_job, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.62, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.62 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lima_vm_page = type { ptr, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.70 }
%union.anon.70 = type { %struct.spinlock }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.lima_fence = type { %struct.dma_fence, ptr }
%struct.dma_buf_map = type { %union.anon.71, i8 }
%union.anon.71 = type { ptr }
%struct.lima_ctx = type { %struct.kref, ptr, [2 x %struct.lima_sched_context], %struct.atomic_t, [16 x i8], i32 }
%struct.lima_sched_context = type { %struct.drm_sched_entity }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.lima_sched_error_task = type { %struct.list_head, ptr, i32 }
%struct.lima_dump_chunk = type { i32, i32, [2 x i32] }
%struct.lima_dump_chunk_pid = type { i32, i32, i32, i32 }
%struct.lima_dump_chunk_buffer = type { i32, i32, i32, i32 }

@lima_fence_slab = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [11 x i8] c"lima_fence\00", align 1
@lima_fence_slab_refcnt = internal unnamed_addr global i32 0, align 4
@lima_sched_timeout_ms = external dso_local local_unnamed_addr global i32, align 4
@lima_sched_ops = internal constant %struct.drm_sched_backend_ops { ptr null, ptr @lima_sched_run_job, ptr @lima_sched_timedout_job, ptr @lima_sched_free_job }, align 4
@lima_job_hang_limit = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_lima_task_submit = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@lima_fence_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @lima_fence_get_driver_name, ptr @lima_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr @lima_fence_release, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"lima\00", align 1
@__tracepoint_lima_task_run = external dso_local global %struct.tracepoint, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"lima job timeout\0A\00", align 1
@lima_max_error_tasks = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"fail to save task state from %s pid %d: error task list is full\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"fail to alloc task dump buffer of size %x\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"save error task state success\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_sched_slab_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @lima_fence_slab, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %4, ptr @lima_fence_slab, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3, %0
  %7 = load i32, ptr @lima_fence_slab_refcnt, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr @lima_fence_slab_refcnt, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %6 ], [ -12, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_sched_slab_fini() local_unnamed_addr #0 {
  %1 = load i32, ptr @lima_fence_slab_refcnt, align 4
  %2 = add i32 %1, -1
  store i32 %2, ptr @lima_fence_slab_refcnt, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load ptr, ptr @lima_fence_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #10
  store ptr null, ptr @lima_fence_slab, align 4
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_sched_task_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = shl i32 %3, 2
  %7 = tail call ptr @kmemdup(ptr noundef %2, i32 noundef %6, i32 noundef 3264) #10
  %8 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 3
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %25, %10
  %13 = phi i32 [ %26, %25 ], [ 0, %10 ]
  %14 = getelementptr ptr, ptr %2, i32 %13
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #10, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #10, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %12
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %12
  %24 = phi i32 [ 2, %12 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #10
  br label %25

25:                                               ; preds = %23, %19
  %26 = add nuw nsw i32 %13, 1
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %12

28:                                               ; preds = %25, %10
  %29 = tail call i32 @drm_sched_job_init(ptr noundef %0, ptr noundef %1, ptr noundef %4) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %32) #10
  br label %47

33:                                               ; preds = %28
  tail call void @drm_sched_job_arm(ptr noundef %0) #10
  %34 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 4
  store i32 %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.lima_vm, ptr %4, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #10, !srcloc !8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #10, !srcloc !9
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !10

39:                                               ; preds = %33
  %40 = add i32 %37, 1
  %41 = or i32 %40, %37
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %39, %33
  %44 = phi i32 [ 2, %33 ], [ 1, %39 ]
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef %44) #10
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 1
  store ptr %4, ptr %46, align 8
  br label %47

47:                                               ; preds = %45, %31, %5
  %48 = phi i32 [ %29, %31 ], [ 0, %45 ], [ -12, %5 ]
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_sched_task_fini(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @drm_sched_job_cleanup(ptr noundef %0) #10
  %2 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %23, %5
  %10 = phi ptr [ %27, %23 ], [ %3, %5 ]
  %11 = phi i32 [ %24, %23 ], [ 0, %5 ]
  %12 = getelementptr ptr, ptr %10, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #10, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !13
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #10
  br label %23

22:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %13) #10, !callees !15
  br label %23

23:                                               ; preds = %22, %21, %19, %9
  %24 = add nuw nsw i32 %11, 1
  %25 = load i32, ptr %6, align 4
  %26 = icmp slt i32 %24, %25
  %27 = load ptr, ptr %2, align 8
  br i1 %26, label %9, label %28

28:                                               ; preds = %23, %5
  %29 = phi ptr [ %3, %5 ], [ %27, %23 ]
  tail call void @kfree(ptr noundef %29) #10
  br label %30

30:                                               ; preds = %28, %1
  %31 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.lima_vm, ptr %32, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #10, !srcloc !8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #10, !srcloc !13
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef 3) #10
  br label %43

42:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @lima_vm_release(ptr noundef %35) #10, !callees !15
  br label %43

43:                                               ; preds = %42, %41, %39, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_sched_context_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr %0, ptr %4, align 4
  %5 = call i32 @drm_sched_entity_init(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_sched_context_fini(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @drm_sched_entity_fini(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lima_sched_context_queue_task(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #10, !srcloc !8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #10, !srcloc !9
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !10

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #10
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_submit, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %32 = tail call i32 @__traceiter_lima_task_submit(ptr noundef null, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %33

33:                                               ; preds = %31, %20, %17
  tail call void @drm_sched_entity_push_job(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_sched_pipe_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @lima_sched_timeout_ms, align 4
  %4 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #10
  %5 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 1
  store i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 26
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 26, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 26, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 26, i32 2
  store ptr @lima_sched_recover_work, ptr %10, align 4
  %11 = load i32, ptr @lima_job_hang_limit, align 4
  %12 = icmp sgt i32 %3, 0
  %13 = select i1 %12, i32 %3, i32 500
  %14 = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #10
  %15 = tail call i32 @drm_sched_init(ptr noundef %0, ptr noundef nonnull @lima_sched_ops, i32 noundef 1, i32 noundef %11, i32 noundef %14, ptr noundef null, ptr noundef null, ptr noundef %1) #10
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_sched_recover_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -380
  %3 = getelementptr i8, ptr %0, i32 -92
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -100
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %10 = getelementptr [2 x ptr], ptr %7, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @lima_l2_cache_flush(ptr noundef %11) #10
  %13 = add nuw nsw i32 %9, 1
  %14 = load i32, ptr %3, align 8
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %1
  %17 = getelementptr i8, ptr %0, i32 -48
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -104
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 -136
  br label %27

26:                                               ; preds = %16
  tail call void @lima_mmu_flush_tlb(ptr noundef nonnull %18) #10
  br label %34

27:                                               ; preds = %27, %24
  %28 = phi i32 [ 0, %24 ], [ %31, %27 ]
  %29 = getelementptr [8 x ptr], ptr %25, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  tail call void @lima_mmu_flush_tlb(ptr noundef %30) #10
  %31 = add nuw nsw i32 %28, 1
  %32 = load i32, ptr %21, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %27, label %34

34:                                               ; preds = %27, %26, %20
  %35 = getelementptr i8, ptr %0, i32 -4
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 %36(ptr noundef %2) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @drm_sched_fault(ptr noundef %2) #10
  br label %40

40:                                               ; preds = %39, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_sched_pipe_fini(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @drm_sched_fini(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_sched_pipe_task_done(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 16
  %5 = load i8, ptr %4, align 4, !range !18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.lima_sched_task, ptr %3, i32 0, i32 5
  %11 = load i8, ptr %10, align 8, !range !18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 26
  %15 = load ptr, ptr @system_wq, align 4
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %14) #10
  br label %32

17:                                               ; preds = %9, %7
  tail call void @drm_sched_fault(ptr noundef %0) #10
  br label %32

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 22
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0) #10
  %23 = getelementptr inbounds %struct.lima_sched_task, ptr %3, i32 0, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @dma_fence_signal(ptr noundef %24) #10
  %26 = getelementptr inbounds %struct.lima_device, ptr %20, i32 0, i32 18
  tail call void @lima_devfreq_record_idle(ptr noundef %26) #10
  %27 = load ptr, ptr %20, align 8
  %28 = tail call i64 @ktime_get_mono_fast_ns() #10
  %29 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 11, i32 22
  store volatile i64 %28, ptr %29, align 8
  %30 = load ptr, ptr %20, align 8
  %31 = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #10
  br label %32

32:                                               ; preds = %18, %17, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_lima_task_submit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_l2_cache_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_flush_tlb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @lima_sched_run_job(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_sched_fence, ptr %7, i32 0, i32 1, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %137, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @lima_fence_slab, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 3520) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %137, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lima_fence, ptr %13, i32 0, i32 1
  store ptr %3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 3
  %18 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  %23 = zext i32 %22 to i64
  tail call void @dma_fence_init(ptr noundef nonnull %13, ptr noundef nonnull @lima_fence_ops, ptr noundef %17, i64 noundef %19, i64 noundef %23) #10
  %24 = load ptr, ptr %5, align 8
  %25 = tail call i32 @__pm_runtime_resume(ptr noundef %24, i32 noundef 4) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #10, !srcloc !8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #10, !srcloc !20
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #10, !srcloc !8
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #10, !srcloc !13
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %137, label %40, !prof !11

40:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef 3) #10
  br label %137

41:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %34) #10, !callees !15
  br label %137

42:                                               ; preds = %15
  %43 = getelementptr inbounds %struct.lima_device, ptr %5, i32 0, i32 18
  tail call void @lima_devfreq_record_busy(ptr noundef %43) #10
  %44 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 7
  store ptr %13, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #10, !srcloc !8
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #10, !srcloc !9
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !10

49:                                               ; preds = %42
  %50 = add i32 %47, 1
  %51 = or i32 %50, %47
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %55, label %53, !prof !11

53:                                               ; preds = %49, %42
  %54 = phi i32 [ 2, %42 ], [ 1, %49 ]
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef %54) #10
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 5
  store ptr %0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 10
  %58 = load i32, ptr %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %60, %55
  %61 = phi i32 [ %65, %60 ], [ 0, %55 ]
  %62 = getelementptr %struct.lima_sched_pipe, ptr %3, i32 0, i32 9, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @lima_l2_cache_flush(ptr noundef %63) #10
  %65 = add nuw nsw i32 %61, 1
  %66 = load i32, ptr %57, align 8
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %60, label %68

68:                                               ; preds = %60, %55
  %69 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 6
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.lima_vm, ptr %70, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #10, !srcloc !8
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #10, !srcloc !13
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = icmp sgt i32 %75, 0
  br i1 %78, label %81, label %79, !prof !11

79:                                               ; preds = %77
  tail call void @refcount_warn_saturate(ptr noundef %73, i32 noundef 3) #10
  br label %81

80:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @lima_vm_release(ptr noundef %73) #10, !callees !15
  br label %81

81:                                               ; preds = %80, %79, %77, %68
  %82 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.lima_vm, ptr %83, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #10, !srcloc !8
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #10, !srcloc !9
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88, !prof !10

88:                                               ; preds = %81
  %89 = add i32 %86, 1
  %90 = or i32 %89, %86
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %94, label %92, !prof !11

92:                                               ; preds = %88, %81
  %93 = phi i32 [ 2, %81 ], [ 1, %88 ]
  tail call void @refcount_warn_saturate(ptr noundef %84, i32 noundef %93) #10
  br label %94

94:                                               ; preds = %92, %88
  store ptr %83, ptr %69, align 8
  %95 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 14
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 8
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = getelementptr %struct.lima_sched_pipe, ptr %3, i32 0, i32 7, i32 0
  %104 = load ptr, ptr %103, align 4
  tail call void @lima_mmu_switch_vm(ptr noundef %104, ptr noundef %83) #10
  %105 = load i32, ptr %99, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %108, label %116

107:                                              ; preds = %94
  tail call void @lima_mmu_switch_vm(ptr noundef nonnull %96, ptr noundef %83) #10
  br label %116

108:                                              ; preds = %108, %102
  %109 = phi i32 [ %113, %108 ], [ 1, %102 ]
  %110 = load ptr, ptr %69, align 8
  %111 = getelementptr %struct.lima_sched_pipe, ptr %3, i32 0, i32 7, i32 %109
  %112 = load ptr, ptr %111, align 4
  tail call void @lima_mmu_switch_vm(ptr noundef %112, ptr noundef %110) #10
  %113 = add nuw nsw i32 %109, 1
  %114 = load i32, ptr %99, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %108, label %116

116:                                              ; preds = %108, %107, %102, %98
  %117 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_run, i32 0, i32 1), align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = tail call ptr @llvm.thread.pointer() #10
  %121 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 5
  %124 = getelementptr i32, ptr @__cpu_online_mask, i32 %123
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %122, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %127, %125
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %131 = tail call i32 @__traceiter_lima_task_run(ptr noundef null, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %132

132:                                              ; preds = %130, %119, %116
  %133 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 16
  store i8 0, ptr %133, align 4
  %134 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 21
  %135 = load ptr, ptr %134, align 8
  tail call void %135(ptr noundef %3, ptr noundef %0) #10
  %136 = load ptr, ptr %44, align 8
  br label %137

137:                                              ; preds = %132, %41, %40, %38, %11, %1
  %138 = phi ptr [ %136, %132 ], [ null, %1 ], [ null, %38 ], [ null, %40 ], [ null, %41 ], [ null, %11 ]
  ret ptr %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_sched_timedout_job(ptr noundef %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  %3 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lima_sched_pipe, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.lima_sched_pipe, ptr %4, i32 0, i32 16
  %8 = load i8, ptr %7, align 4, !range !18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #10
  br label %11

11:                                               ; preds = %10, %1
  tail call void @drm_sched_stop(ptr noundef %4, ptr noundef %0) #10
  tail call void @drm_sched_increase_karma(ptr noundef %0) #10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.lima_sched_pipe, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.lima_ip, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 10
  %18 = zext i1 %17 to i32
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %17, i32 -112, i32 -8
  %23 = getelementptr i8, ptr %21, i32 %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !24
  %24 = getelementptr inbounds %struct.lima_device, ptr %19, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %24) #10
  %25 = getelementptr inbounds %struct.lima_device, ptr %19, i32 0, i32 19, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = load i32, ptr @lima_max_error_tasks, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %11
  %30 = load ptr, ptr %19, align 8
  %31 = getelementptr inbounds %struct.lima_ctx, ptr %23, i32 0, i32 4
  %32 = getelementptr inbounds %struct.lima_ctx, ptr %23, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.4, ptr noundef %31, i32 noundef %33) #11
  br label %163

34:                                               ; preds = %11
  %35 = getelementptr inbounds %struct.lima_sched_pipe, ptr %12, i32 0, i32 18
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 64
  %38 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  br label %44

44:                                               ; preds = %56, %41
  %45 = phi i32 [ 0, %41 ], [ %59, %56 ]
  %46 = phi i32 [ %37, %41 ], [ %58, %56 ]
  %47 = getelementptr ptr, ptr %43, i32 %45
  %48 = load ptr, ptr %47, align 4
  %49 = add i32 %46, 16
  %50 = getelementptr inbounds %struct.lima_bo, ptr %48, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.drm_gem_object, ptr %48, i32 0, i32 5
  %55 = load i32, ptr %54, align 8
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi i32 [ %55, %53 ], [ %51, %44 ]
  %58 = add i32 %49, %57
  %59 = add nuw nsw i32 %45, 1
  %60 = icmp eq i32 %59, %39
  br i1 %60, label %61, label %44

61:                                               ; preds = %56, %34
  %62 = phi i32 [ %37, %34 ], [ %58, %56 ]
  %63 = add i32 %62, 32
  %64 = tail call noalias ptr @kvmalloc_node(i32 noundef %63, i32 noundef 3264, i32 noundef -1) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.5, i32 noundef %63) #11
  br label %163

68:                                               ; preds = %61
  %69 = add i32 %62, 16
  %70 = getelementptr %struct.lima_sched_error_task, ptr %64, i32 1
  %71 = getelementptr inbounds %struct.lima_sched_error_task, ptr %64, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.lima_sched_error_task, ptr %64, i32 0, i32 2
  store i32 %69, ptr %72, align 4
  %73 = getelementptr %struct.lima_sched_error_task, ptr %64, i32 1, i32 1
  store i64 0, ptr %73, align 4
  store i32 %18, ptr %70, align 4
  %74 = getelementptr %struct.lima_sched_error_task, ptr %64, i32 1, i32 0, i32 1
  store i32 %62, ptr %74, align 4
  %75 = getelementptr %struct.lima_sched_error_task, ptr %64, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %75, i8 0, i64 16, i1 false) #10
  %76 = load i32, ptr %35, align 4
  %77 = getelementptr %struct.lima_sched_error_task, ptr %64, i32 2, i32 0, i32 1
  store i32 %76, ptr %77, align 4
  %78 = getelementptr %struct.lima_sched_error_task, ptr %64, i32 3
  %79 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %35, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %78, ptr align 1 %80, i32 %81, i1 false) #10
  store i32 1, ptr %73, align 4
  %82 = getelementptr i8, ptr %78, i32 %76
  %83 = getelementptr inbounds i8, ptr %82, i32 8
  store i64 0, ptr %83, align 4
  store i32 2, ptr %82, align 4
  %84 = getelementptr inbounds %struct.lima_dump_chunk, ptr %82, i32 0, i32 1
  store i32 16, ptr %84, align 4
  %85 = getelementptr %struct.lima_dump_chunk, ptr %82, i32 1
  %86 = getelementptr inbounds %struct.lima_ctx, ptr %23, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %85, ptr noundef align 4 dereferenceable(16) %86, i32 16, i1 false) #10
  %87 = load i32, ptr %73, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %73, align 4
  %89 = load i32, ptr %84, align 4
  %90 = getelementptr i8, ptr %85, i32 %89
  %91 = getelementptr inbounds i8, ptr %90, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %91, i8 0, i32 12, i1 false) #10
  store i32 3, ptr %90, align 4
  %92 = getelementptr inbounds %struct.lima_ctx, ptr %23, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.lima_dump_chunk_pid, ptr %90, i32 0, i32 2
  store i32 %93, ptr %94, align 4
  %95 = load i32, ptr %73, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %73, align 4
  %97 = load i32, ptr %38, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %151

99:                                               ; preds = %68
  %100 = getelementptr %struct.lima_dump_chunk_pid, ptr %90, i32 1
  %101 = load i32, ptr %91, align 4
  %102 = getelementptr i8, ptr %100, i32 %101
  %103 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 3
  %104 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 1
  br label %105

105:                                              ; preds = %142, %99
  %106 = phi i32 [ 0, %99 ], [ %148, %142 ]
  %107 = phi ptr [ %102, %99 ], [ %145, %142 ]
  %108 = load ptr, ptr %103, align 8
  %109 = getelementptr ptr, ptr %108, i32 %106
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds i8, ptr %107, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %111, i8 0, i32 12, i1 false) #10
  store i32 1, ptr %107, align 4
  %112 = load ptr, ptr %104, align 8
  %113 = call i32 @lima_vm_get_va(ptr noundef %112, ptr noundef %110) #10
  %114 = getelementptr inbounds %struct.lima_dump_chunk_buffer, ptr %107, i32 0, i32 2
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.lima_bo, ptr %110, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %105
  store i32 %116, ptr %111, align 4
  %119 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %110, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = load i32, ptr %115, align 4
  %122 = lshr i32 %121, 12
  %123 = load i32, ptr @pgprot_kernel, align 4
  %124 = and i32 %123, -573
  %125 = or i32 %124, 516
  %126 = call ptr @vmap(ptr noundef %120, i32 noundef %122, i32 noundef 4, i32 noundef %125) #10
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  call void @kvfree(ptr noundef nonnull %64) #10
  br label %163

129:                                              ; preds = %118
  %130 = getelementptr %struct.lima_dump_chunk_buffer, ptr %107, i32 1
  %131 = load i32, ptr %111, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %130, ptr nonnull align 1 %126, i32 %131, i1 false) #10
  call void @vunmap(ptr noundef nonnull %126) #10
  br label %142

132:                                              ; preds = %105
  %133 = getelementptr inbounds %struct.drm_gem_object, ptr %110, i32 0, i32 5
  %134 = load i32, ptr %133, align 8
  store i32 %134, ptr %111, align 4
  %135 = call i32 @drm_gem_shmem_vmap(ptr noundef %110, ptr noundef nonnull %2) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  call void @kvfree(ptr noundef nonnull %64) #10
  br label %163

138:                                              ; preds = %132
  %139 = getelementptr %struct.lima_dump_chunk_buffer, ptr %107, i32 1
  %140 = load ptr, ptr %2, align 8
  %141 = load i32, ptr %111, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %139, ptr align 1 %140, i32 %141, i1 false) #10
  call void @drm_gem_shmem_vunmap(ptr noundef %110, ptr noundef nonnull %2) #10
  br label %142

142:                                              ; preds = %138, %129
  %143 = getelementptr %struct.lima_dump_chunk_buffer, ptr %107, i32 1
  %144 = load i32, ptr %111, align 4
  %145 = getelementptr i8, ptr %143, i32 %144
  %146 = load i32, ptr %73, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %73, align 4
  %148 = add nuw nsw i32 %106, 1
  %149 = load i32, ptr %38, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %105, label %151

151:                                              ; preds = %142, %68
  %152 = getelementptr inbounds %struct.lima_device, ptr %19, i32 0, i32 20
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  store ptr %64, ptr %154, align 4
  store ptr %153, ptr %64, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %152, ptr %155, align 4
  store volatile ptr %64, ptr %152, align 4
  %156 = load i32, ptr %72, align 4
  %157 = getelementptr inbounds %struct.lima_device, ptr %19, i32 0, i32 19, i32 4
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, %156
  store i32 %159, ptr %157, align 4
  %160 = load i32, ptr %25, align 8
  %161 = add i32 %160, 1
  store i32 %161, ptr %25, align 8
  %162 = load ptr, ptr %19, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %162, ptr noundef nonnull @.str.6) #11
  br label %163

163:                                              ; preds = %151, %137, %128, %66, %29
  call void @mutex_unlock(ptr noundef %24) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %164 = getelementptr inbounds %struct.lima_sched_pipe, ptr %4, i32 0, i32 23
  %165 = load ptr, ptr %164, align 8
  call void %165(ptr noundef %4) #10
  %166 = getelementptr inbounds %struct.lima_sched_pipe, ptr %4, i32 0, i32 14
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.lima_sched_pipe, ptr %4, i32 0, i32 8
  %171 = load i32, ptr %170, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %174, label %181

173:                                              ; preds = %163
  call void @lima_mmu_page_fault_resume(ptr noundef nonnull %167) #10
  br label %181

174:                                              ; preds = %174, %169
  %175 = phi i32 [ %178, %174 ], [ 0, %169 ]
  %176 = getelementptr %struct.lima_sched_pipe, ptr %4, i32 0, i32 7, i32 %175
  %177 = load ptr, ptr %176, align 4
  call void @lima_mmu_page_fault_resume(ptr noundef %177) #10
  %178 = add nuw nsw i32 %175, 1
  %179 = load i32, ptr %170, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %174, label %181

181:                                              ; preds = %174, %173, %169
  %182 = getelementptr inbounds %struct.lima_sched_pipe, ptr %4, i32 0, i32 6
  %183 = load ptr, ptr %182, align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.lima_vm, ptr %183, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #10, !srcloc !8
  %187 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 1, ptr elementtype(i32) %186) #10, !srcloc !13
  %188 = extractvalue { i32, i32, i32 } %187, 0
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %193, label %190

190:                                              ; preds = %185
  %191 = icmp sgt i32 %188, 0
  br i1 %191, label %194, label %192, !prof !11

192:                                              ; preds = %190
  call void @refcount_warn_saturate(ptr noundef %186, i32 noundef 3) #10
  br label %194

193:                                              ; preds = %185
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  call void @lima_vm_release(ptr noundef %186) #10, !callees !15
  br label %194

194:                                              ; preds = %193, %192, %190, %181
  store ptr null, ptr %182, align 8
  %195 = getelementptr inbounds %struct.lima_sched_pipe, ptr %4, i32 0, i32 5
  store ptr null, ptr %195, align 4
  %196 = getelementptr inbounds %struct.lima_device, ptr %6, i32 0, i32 18
  call void @lima_devfreq_record_idle(ptr noundef %196) #10
  %197 = load ptr, ptr %6, align 8
  %198 = call i64 @ktime_get_mono_fast_ns() #10
  %199 = getelementptr inbounds %struct.device, ptr %197, i32 0, i32 11, i32 22
  store volatile i64 %198, ptr %199, align 8
  %200 = load ptr, ptr %6, align 8
  %201 = call i32 @__pm_runtime_suspend(ptr noundef %200, i32 noundef 13) #10
  call void @drm_sched_resubmit_jobs(ptr noundef %4) #10
  call void @drm_sched_start(ptr noundef %4, i1 noundef zeroext true) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_sched_free_job(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #10
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %12) #10, !callees !15
  br label %20

20:                                               ; preds = %19, %18, %16, %1
  %21 = getelementptr inbounds %struct.lima_sched_task, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %24, %20
  %25 = phi i32 [ %28, %24 ], [ 0, %20 ]
  %26 = getelementptr ptr, ptr %7, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call void @lima_vm_bo_del(ptr noundef %5, ptr noundef %27) #10
  %28 = add nuw nsw i32 %25, 1
  %29 = load i32, ptr %21, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %24, label %31

31:                                               ; preds = %24, %20
  tail call void @lima_sched_task_fini(ptr noundef %0)
  %32 = getelementptr inbounds %struct.lima_sched_pipe, ptr %3, i32 0, i32 19
  %33 = load ptr, ptr %32, align 8
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_switch_vm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @lima_fence_get_driver_name(ptr nocapture noundef readnone %0) #5 {
  ret ptr @.str.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @lima_fence_get_timeline_name(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.lima_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_fence_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @lima_fence_release_rcu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_fence_release_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr @lima_fence_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_devfreq_record_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_lima_task_run(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_increase_karma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_page_fault_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_resubmit_jobs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_get_va(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_bo_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_devfreq_record_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{i64 614753, i64 2148104724, i64 2148104750, i64 2148104797, i64 2148104819, i64 2148104847, i64 2148104867}
!9 = !{i64 2148117597, i64 2148117629, i64 2148117658, i64 2148117692, i64 2148117723, i64 2148117746}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148217795}
!13 = !{i64 2148119954, i64 2148119986, i64 2148120015, i64 2148120049, i64 2148120080, i64 2148120103}
!14 = !{i64 2149376763}
!15 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @lima_vm_release}
!16 = !{i64 2153202019}
!17 = !{i64 2153202171}
!18 = !{i8 0, i8 2}
!19 = !{i64 2148115646}
!20 = !{i64 601322, i64 601347, i64 601369, i64 601385, i64 601397, i64 601417, i64 601441, i64 601457, i64 601469}
!21 = !{i64 2148115772}
!22 = !{i64 2153214713}
!23 = !{i64 2153214859}
!24 = !{!"auto-init"}
