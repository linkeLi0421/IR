; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_sched.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_sched.c"
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
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.72, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.72 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.71, i64, i64, i32, %struct.kref, i32 }
%union.anon.71 = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_job_hang_limit = internal constant [15 x i8] c"job_hang_limit\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@etnaviv_job_hang_limit = internal global i32 0, align 4
@__param_job_hang_limit = internal constant %struct.kernel_param { ptr @__param_str_job_hang_limit, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @etnaviv_job_hang_limit } }, section "__param", align 4
@__UNIQUE_ID_job_hang_limittype279 = internal constant [28 x i8] c"parmtype=job_hang_limit:int\00", section ".modinfo", align 1
@__param_str_hw_job_limit = internal constant [13 x i8] c"hw_job_limit\00", align 1
@etnaviv_hw_jobs_limit = internal global i32 4, align 4
@__param_hw_job_limit = internal constant %struct.kernel_param { ptr @__param_str_hw_job_limit, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @etnaviv_hw_jobs_limit } }, section "__param", align 4
@__UNIQUE_ID_hw_job_limittype280 = internal constant [26 x i8] c"parmtype=hw_job_limit:int\00", section ".modinfo", align 1
@etnaviv_sched_ops = internal constant %struct.drm_sched_backend_ops { ptr @etnaviv_sched_dependency, ptr @etnaviv_sched_run_job, ptr @etnaviv_sched_timedout_job, ptr @etnaviv_sched_free_job }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_hw_job_limittype280, ptr @__UNIQUE_ID_job_hang_limittype279, ptr @__param_hw_job_limit, ptr @__param_job_hang_limit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_sched_push_job(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @drm_sched_job_init(ptr noundef %1, ptr noundef %0, ptr noundef %7) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  tail call void @drm_sched_job_arm(ptr noundef %1) #3
  %11 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_sched_fence, ptr %12, i32 0, i32 1
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.drm_sched_fence, ptr %12, i32 0, i32 1, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #3, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #3, !srcloc !9
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #3
  br label %26

26:                                               ; preds = %24, %20, %10
  %27 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 6
  store ptr %13, ptr %27, align 4
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gpu, ptr %28, i32 0, i32 18
  %30 = tail call i32 @idr_alloc_cyclic(ptr noundef %29, ptr noundef %13, i32 noundef 0, i32 noundef 2147483647, i32 noundef 3264) #3
  %31 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 8
  store i32 %30, ptr %31, align 4
  %32 = icmp slt i32 %30, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void @drm_sched_job_cleanup(ptr noundef %1) #3
  br label %46

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #3, !srcloc !8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #3, !srcloc !9
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !10

39:                                               ; preds = %34
  %40 = add i32 %37, 1
  %41 = or i32 %40, %37
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %39, %34
  %44 = phi i32 [ 2, %34 ], [ 1, %39 ]
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef %44) #3
  br label %45

45:                                               ; preds = %43, %39
  tail call void @drm_sched_entity_push_job(ptr noundef %1) #3
  br label %46

46:                                               ; preds = %45, %33, %2
  %47 = phi i32 [ %8, %2 ], [ -12, %33 ], [ 0, %45 ]
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.etnaviv_gpu, ptr %48, i32 0, i32 17
  tail call void @mutex_unlock(ptr noundef %49) #3
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_sched_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @etnaviv_hw_jobs_limit, align 4
  %3 = load i32, ptr @etnaviv_job_hang_limit, align 4
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 7
  %14 = tail call i32 @drm_sched_init(ptr noundef %13, ptr noundef nonnull @etnaviv_sched_ops, i32 noundef %2, i32 noundef %3, i32 noundef 50, ptr noundef null, ptr noundef null, ptr noundef %12) #3
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_sched_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 7
  tail call void @drm_sched_fini(ptr noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @etnaviv_sched_dependency(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !11

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8
  %7 = tail call fastcc zeroext i1 @dma_fence_is_signaled(ptr noundef nonnull %4)
  br i1 %7, label %8, label %88

8:                                                ; preds = %6
  tail call fastcc void @dma_fence_put(ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %82, %9
  %14 = phi i32 [ %85, %82 ], [ 0, %9 ]
  %15 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %14, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  store ptr null, ptr %15, align 8
  %19 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 5
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_fence_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %88, label %29

29:                                               ; preds = %23
  %30 = tail call zeroext i1 %27(ptr noundef nonnull %16) #3
  br i1 %30, label %31, label %88

31:                                               ; preds = %29
  %32 = tail call i32 @dma_fence_signal(ptr noundef nonnull %16) #3
  br label %33

33:                                               ; preds = %31, %18
  %34 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #3, !srcloc !8
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #3, !srcloc !13
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %42, label %40, !prof !11

40:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef 3) #3
  br label %42

41:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %34) #3
  br label %42

42:                                               ; preds = %41, %40, %38, %13
  %43 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %14, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %82, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %14, i32 6
  br label %48

48:                                               ; preds = %78, %46
  %49 = phi i32 [ 0, %46 ], [ %79, %78 ]
  %50 = load ptr, ptr %47, align 8
  %51 = getelementptr ptr, ptr %50, i32 %49
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %48
  store ptr null, ptr %51, align 4
  %55 = getelementptr inbounds %struct.dma_fence, ptr %52, i32 0, i32 5
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.dma_fence, ptr %52, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dma_fence_ops, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %88, label %65

65:                                               ; preds = %59
  %66 = tail call zeroext i1 %63(ptr noundef nonnull %52) #3
  br i1 %66, label %67, label %88

67:                                               ; preds = %65
  %68 = tail call i32 @dma_fence_signal(ptr noundef nonnull %52) #3
  br label %69

69:                                               ; preds = %67, %54
  %70 = getelementptr inbounds %struct.dma_fence, ptr %52, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #3, !srcloc !8
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #3, !srcloc !13
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = icmp sgt i32 %72, 0
  br i1 %75, label %78, label %76, !prof !11

76:                                               ; preds = %74
  tail call void @refcount_warn_saturate(ptr noundef %70, i32 noundef 3) #3
  br label %78

77:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %70) #3
  br label %78

78:                                               ; preds = %77, %76, %74, %48
  %79 = add nuw i32 %49, 1
  %80 = load i32, ptr %43, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %48, label %82

82:                                               ; preds = %78, %42
  %83 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %14, i32 6
  %84 = load ptr, ptr %83, align 8
  tail call void @kfree(ptr noundef %84) #3
  store i32 0, ptr %43, align 4
  store ptr null, ptr %83, align 8
  %85 = add nuw i32 %14, 1
  %86 = load i32, ptr %10, align 8
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %13, label %88

88:                                               ; preds = %82, %65, %59, %29, %23, %9, %6
  %89 = phi ptr [ %4, %6 ], [ null, %9 ], [ %52, %59 ], [ %52, %65 ], [ null, %82 ], [ %16, %23 ], [ %16, %29 ]
  ret ptr %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @etnaviv_sched_run_job(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !11

7:                                                ; preds = %1
  %8 = tail call ptr @etnaviv_gpu_submit(ptr noundef %0) #3
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_sched_timedout_job(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 7
  tail call void @drm_sched_stop(ptr noundef %4, ptr noundef %0) #3
  %5 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_fence_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = tail call zeroext i1 %15(ptr noundef %6) #3
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i32 @dma_fence_signal(ptr noundef %6) #3
  br label %43

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 28
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 1636
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %26 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 26
  %27 = load i32, ptr %26, align 8
  %28 = sub i32 %25, %27
  %29 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 20
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 27
  %32 = load i32, ptr %31, align 4
  %33 = icmp ne i32 %30, %32
  %34 = icmp slt i32 %28, 0
  %35 = select i1 %33, i1 true, i1 %34
  %36 = icmp sgt i32 %28, 16
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store i32 %25, ptr %26, align 8
  store i32 %30, ptr %31, align 4
  br label %43

39:                                               ; preds = %21
  %40 = icmp eq ptr %0, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void @drm_sched_increase_karma(ptr noundef nonnull %0) #3
  br label %42

42:                                               ; preds = %41, %39
  tail call void @etnaviv_core_dump(ptr noundef %0) #3
  tail call void @etnaviv_gpu_recover_hang(ptr noundef %3) #3
  tail call void @drm_sched_resubmit_jobs(ptr noundef %4) #3
  br label %43

43:                                               ; preds = %42, %38, %19, %1
  tail call void @drm_sched_start(ptr noundef %4, i1 noundef zeroext true) #3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_sched_free_job(ptr noundef %0) #0 {
  tail call void @drm_sched_job_cleanup(ptr noundef %0) #3
  tail call void @etnaviv_submit_put(ptr noundef %0) #3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dma_fence_is_signaled(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_fence_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = tail call zeroext i1 %10(ptr noundef %0) #3
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call i32 @dma_fence_signal(ptr noundef %0) #3
  br label %16

16:                                               ; preds = %14, %12, %6, %1
  %17 = phi i1 [ true, %14 ], [ true, %1 ], [ false, %12 ], [ false, %6 ]
  ret i1 %17
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #3, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #3, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #3
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %4) #3
  br label %12

12:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gpu_submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_increase_karma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_core_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gpu_recover_hang(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_resubmit_jobs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_submit_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 448280, i64 2147938251, i64 2147938277, i64 2147938324, i64 2147938346, i64 2147938374, i64 2147938394}
!9 = !{i64 2147951921, i64 2147951953, i64 2147951982, i64 2147952016, i64 2147952047, i64 2147952070}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148052119}
!13 = !{i64 2147954278, i64 2147954310, i64 2147954339, i64 2147954373, i64 2147954404, i64 2147954427}
!14 = !{i64 2148954085}
!15 = !{i64 1945861}
!16 = !{i64 2155115592}
