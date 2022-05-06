; ModuleID = '/llk/IR/drivers/gpu/drm/scheduler/sched_entity.c_pt.bc'
source_filename = "../drivers/gpu/drm/scheduler/sched_entity.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_entity_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_entity_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_entity_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_entity_modify_sched:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_entity_modify_sched\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_entity_modify_sched:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_entity_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_entity_flush\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_entity_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_entity_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_entity_fini\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_entity_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_entity_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_entity_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_entity_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_entity_set_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_entity_set_priority\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_entity_set_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_entity_push_job:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_entity_push_job\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_entity_push_job:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.2, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.2 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }

@__kstrtab_drm_sched_entity_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_entity_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_entity_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_entity_init to i32), ptr @__kstrtab_drm_sched_entity_init, ptr @__kstrtabns_drm_sched_entity_init }, section "___ksymtab+drm_sched_entity_init", align 4
@.str = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/scheduler/sched_entity.c\00", align 1
@__kstrtab_drm_sched_entity_modify_sched = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_entity_modify_sched = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_entity_modify_sched = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_entity_modify_sched to i32), ptr @__kstrtab_drm_sched_entity_modify_sched, ptr @__kstrtabns_drm_sched_entity_modify_sched }, section "___ksymtab+drm_sched_entity_modify_sched", align 4
@__kstrtab_drm_sched_entity_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_entity_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_entity_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_entity_flush to i32), ptr @__kstrtab_drm_sched_entity_flush, ptr @__kstrtabns_drm_sched_entity_flush }, section "___ksymtab+drm_sched_entity_flush", align 4
@__kstrtab_drm_sched_entity_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_entity_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_entity_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_entity_fini to i32), ptr @__kstrtab_drm_sched_entity_fini, ptr @__kstrtabns_drm_sched_entity_fini }, section "___ksymtab+drm_sched_entity_fini", align 4
@__kstrtab_drm_sched_entity_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_entity_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_entity_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_entity_destroy to i32), ptr @__kstrtab_drm_sched_entity_destroy, ptr @__kstrtabns_drm_sched_entity_destroy }, section "___ksymtab+drm_sched_entity_destroy", align 4
@__kstrtab_drm_sched_entity_set_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_entity_set_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_entity_set_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_entity_set_priority to i32), ptr @__kstrtab_drm_sched_entity_set_priority, ptr @__kstrtabns_drm_sched_entity_set_priority }, section "___ksymtab+drm_sched_entity_set_priority", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Trying to push to a killed entity\0A\00", align 1
@__kstrtab_drm_sched_entity_push_job = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_entity_push_job = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_entity_push_job = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_entity_push_job to i32), ptr @__kstrtab_drm_sched_entity_push_job, ptr @__kstrtabns_drm_sched_entity_push_job }, section "___ksymtab+drm_sched_entity_push_job", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"fence add callback failed (%d)\0A\00", align 1
@__tracepoint_drm_sched_job_wait_dep = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1
@__tracepoint_drm_sched_job = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_drm_sched_entity_destroy, ptr @__ksymtab_drm_sched_entity_fini, ptr @__ksymtab_drm_sched_entity_flush, ptr @__ksymtab_drm_sched_entity_init, ptr @__ksymtab_drm_sched_entity_modify_sched, ptr @__ksymtab_drm_sched_entity_push_job, ptr @__ksymtab_drm_sched_entity_set_priority], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sched_entity_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %11, %9
  %15 = getelementptr inbounds i8, ptr %0, i32 24
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %15, i8 0, i32 80, i1 false)
  store volatile ptr %0, ptr %0, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 1
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 11
  store ptr %4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 3
  store i32 %3, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 4
  store i32 %1, ptr %20, align 4
  %21 = icmp ugt i32 %3, 1
  %22 = select i1 %21, ptr %2, ptr null
  %23 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 12
  store ptr null, ptr %24, align 4
  br i1 %10, label %28, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr %struct.drm_gpu_scheduler, ptr %26, i32 0, i32 4, i32 %1
  store ptr %27, ptr %17, align 8
  br label %28

28:                                               ; preds = %25, %14
  %29 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 15
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #6
  tail call void @complete(ptr noundef %29) #6
  %31 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 5
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %32 to i32
  store volatile i32 %34, ptr %33, align 4
  %35 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  store volatile i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 7
  store volatile i32 0, ptr %36, align 4
  %37 = tail call i64 @dma_fence_context_alloc(i32 noundef 2) #6
  %38 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 8
  store i64 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %28, %11, %5
  %40 = phi i32 [ 0, %28 ], [ -22, %11 ], [ -22, %5 ]
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_entity_modify_sched(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq ptr %1, null
  %6 = or i1 %5, %4
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #6
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 2
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 3
  store i32 %2, ptr %10, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_sched_entity_is_ready(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 9
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sched_entity_flush(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %120, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_sched_rq, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @llvm.thread.pointer() #6
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %8
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %89, label %18

18:                                               ; preds = %16
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = load volatile ptr, ptr %0, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %89, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %89, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 14
  %27 = load i8, ptr %26, align 4, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #6
  %30 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %10, i32 0, i32 6
  %31 = call i32 @prepare_to_wait_event(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 2) #6
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %32 = load volatile ptr, ptr %0, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %38, label %34

34:                                               ; preds = %51, %29
  %35 = phi i32 [ %52, %51 ], [ %1, %29 ]
  %36 = load volatile i32, ptr %22, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %51, %34, %29
  %39 = phi i32 [ %1, %29 ], [ %35, %34 ], [ %52, %51 ]
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 1, i32 %39
  br label %56

42:                                               ; preds = %34
  %43 = load i8, ptr %26, align 4, !range !10
  %44 = icmp ne i8 %43, 0
  %45 = xor i1 %44, true
  %46 = icmp ne i32 %35, 0
  %47 = select i1 %45, i1 true, i1 %46
  %48 = select i1 %47, i32 %35, i32 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %44, i1 true, i1 %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = call i32 @schedule_timeout(i32 noundef %48) #6
  %53 = call i32 @prepare_to_wait_event(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 2) #6
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %54 = load volatile ptr, ptr %0, align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %38, label %34

56:                                               ; preds = %42, %38
  %57 = phi i32 [ %41, %38 ], [ %48, %42 ]
  call void @finish_wait(ptr noundef %30, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  br label %89

58:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %59 = load volatile ptr, ptr %0, align 4
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %89, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  %63 = load volatile i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 14
  %67 = load i8, ptr %66, align 4, !range !10
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #6
  %70 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %10, i32 0, i32 6
  %71 = call i32 @prepare_to_wait_event(ptr noundef %70, ptr noundef nonnull %4, i32 noundef 258) #6
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %72 = load volatile ptr, ptr %0, align 4
  %73 = icmp eq ptr %72, %0
  br i1 %73, label %87, label %74

74:                                               ; preds = %83, %69
  %75 = phi i32 [ %84, %83 ], [ %71, %69 ]
  %76 = load volatile i32, ptr %62, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = load i8, ptr %66, align 4, !range !10
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = icmp eq i32 %75, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  call void @schedule() #6
  %84 = call i32 @prepare_to_wait_event(ptr noundef %70, ptr noundef nonnull %4, i32 noundef 258) #6
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %85 = load volatile ptr, ptr %0, align 4
  %86 = icmp eq ptr %85, %0
  br i1 %86, label %87, label %74

87:                                               ; preds = %83, %78, %74, %69
  call void @finish_wait(ptr noundef %70, ptr noundef nonnull %4) #6
  br label %88

88:                                               ; preds = %87, %81
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %89

89:                                               ; preds = %88, %65, %61, %58, %56, %25, %21, %18, %16
  %90 = phi i32 [ 0, %16 ], [ %1, %25 ], [ %57, %56 ], [ %1, %88 ], [ %1, %65 ], [ %1, %21 ], [ %1, %18 ], [ %1, %61 ], [ %1, %58 ]
  %91 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %92 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 59
  %93 = load ptr, ptr %92, align 4
  %94 = ptrtoint ptr %93 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #6, !srcloc !13
  br label %95

95:                                               ; preds = %95, %89
  %96 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %91, i32 %94, i32 0) #6, !srcloc !14
  %97 = extractvalue { i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %95

99:                                               ; preds = %95
  %100 = extractvalue { i32, i32 } %96, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = inttoptr i32 %100 to ptr
  %104 = load ptr, ptr %92, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %106, label %120

106:                                              ; preds = %102, %99
  %107 = load i32, ptr %12, align 4
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 42
  %112 = load i32, ptr %111, align 64
  %113 = icmp eq i32 %112, 9
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %115) #6
  %116 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 14
  store i8 1, ptr %116, align 4
  %117 = load ptr, ptr %5, align 8
  call void @drm_sched_rq_remove_entity(ptr noundef %117, ptr noundef %0) #6
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %118 = load i16, ptr %115, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %115, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  br label %120

120:                                              ; preds = %114, %110, %106, %102, %2
  %121 = phi i32 [ 0, %2 ], [ %90, %114 ], [ %90, %110 ], [ %90, %106 ], [ %90, %102 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_rq_remove_entity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_entity_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_sched_rq, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @drm_sched_rq_remove_entity(ptr noundef nonnull %3, ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %120, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %120, label %19

15:                                               ; preds = %5
  %16 = icmp eq ptr %7, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 15
  tail call void @wait_for_completion(ptr noundef %18) #6
  br label %19

19:                                               ; preds = %17, %15, %11
  %20 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 10
  %26 = tail call zeroext i1 @dma_fence_remove_callback(ptr noundef nonnull %22, ptr noundef %25) #6
  %27 = load ptr, ptr %21, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dma_fence, ptr %27, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #6, !srcloc !13
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #6, !srcloc !21
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %38, label %36, !prof !22

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #6
  br label %38

37:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %30) #6
  br label %38

38:                                               ; preds = %37, %36, %34, %24
  store ptr null, ptr %21, align 8
  br label %39

39:                                               ; preds = %38, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  %40 = load volatile ptr, ptr %20, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %120, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  %44 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %20 to i32
  %46 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 12
  br label %47

47:                                               ; preds = %117, %42
  %48 = phi ptr [ %40, %42 ], [ %118, %117 ]
  %49 = load volatile ptr, ptr %48, align 4
  store volatile ptr %49, ptr %20, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %65, !prof !8

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #6, !srcloc !13
  br label %53

53:                                               ; preds = %53, %51
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 %52, i32 %45, ptr elementtype(i32) %44) #6, !srcloc !26
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i32 } %54, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !27
  %59 = icmp eq i32 %58, %52
  br i1 %59, label %63, label %60

60:                                               ; preds = %60, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !28
  %61 = load volatile ptr, ptr %48, align 4
  store ptr %61, ptr %20, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %60, label %63, !prof !8

63:                                               ; preds = %60, %57
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #6, !srcloc !13
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #6, !srcloc !29
  br label %67

65:                                               ; preds = %47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #6, !srcloc !13
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #6, !srcloc !29
  br label %67

67:                                               ; preds = %65, %63
  %68 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 2
  %71 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 10, i32 2
  %72 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 10
  %73 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 11
  br label %74

74:                                               ; preds = %91, %67
  %75 = load ptr, ptr %71, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %73, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %73, align 4
  %80 = tail call ptr @xa_erase(ptr noundef %72, i32 noundef %78) #6
  br label %88

81:                                               ; preds = %74
  %82 = load ptr, ptr %70, align 4
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = tail call ptr %84(ptr noundef nonnull %48, ptr noundef %0) #6
  br label %88

88:                                               ; preds = %86, %77
  %89 = phi ptr [ %87, %86 ], [ %80, %77 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %89, i1 noundef zeroext false, i32 noundef 2147483647) #6
  br label %74

93:                                               ; preds = %88, %81
  tail call void @drm_sched_fence_scheduled(ptr noundef %69) #6
  %94 = getelementptr inbounds %struct.drm_sched_fence, ptr %69, i32 0, i32 1, i32 5
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !22

98:                                               ; preds = %93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 545, i32 noundef 9, ptr noundef null) #6
  br label %99

99:                                               ; preds = %98, %93
  %100 = getelementptr inbounds %struct.drm_sched_fence, ptr %69, i32 0, i32 1, i32 7
  store i32 -3, ptr %100, align 8
  %101 = load ptr, ptr %46, align 4
  %102 = icmp eq ptr %101, null
  %103 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 4
  br i1 %102, label %104, label %109

104:                                              ; preds = %99
  store ptr null, ptr %103, align 4
  %105 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 4, i32 0, i32 0, i32 1
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 4, i32 0, i32 1
  store ptr @drm_sched_entity_kill_jobs_irq_work, ptr %106, align 4
  %107 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 4, i32 0, i32 2
  store ptr null, ptr %107, align 4
  %108 = tail call zeroext i1 @irq_work_queue(ptr noundef %103) #6
  br label %117

109:                                              ; preds = %99
  %110 = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %101, ptr noundef %103, ptr noundef nonnull @drm_sched_entity_kill_jobs_cb) #6
  switch i32 %110, label %116 [
    i32 -2, label %111
    i32 0, label %117
  ]

111:                                              ; preds = %109
  store ptr null, ptr %103, align 4
  %112 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 4, i32 0, i32 0, i32 1
  store i32 0, ptr %112, align 4
  %113 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 4, i32 0, i32 1
  store ptr @drm_sched_entity_kill_jobs_irq_work, ptr %113, align 4
  %114 = getelementptr inbounds %struct.drm_sched_job, ptr %48, i32 0, i32 4, i32 0, i32 2
  store ptr null, ptr %114, align 4
  %115 = tail call zeroext i1 @irq_work_queue(ptr noundef %103) #6
  br label %117

116:                                              ; preds = %109
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %110) #6
  br label %117

117:                                              ; preds = %116, %111, %109, %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  %118 = load volatile ptr, ptr %20, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %47

120:                                              ; preds = %117, %39, %11, %5
  %121 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 12
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.dma_fence, ptr %122, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %125) #6, !srcloc !13
  %126 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %125, ptr %125, i32 1, ptr elementtype(i32) %125) #6, !srcloc !21
  %127 = extractvalue { i32, i32, i32 } %126, 0
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = icmp sgt i32 %127, 0
  br i1 %130, label %133, label %131, !prof !22

131:                                              ; preds = %129
  tail call void @refcount_warn_saturate(ptr noundef %125, i32 noundef 3) #6
  br label %133

132:                                              ; preds = %124
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %125) #6
  br label %133

133:                                              ; preds = %132, %131, %129, %120
  store ptr null, ptr %121, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_entity_destroy(ptr noundef %0) #0 {
  %2 = tail call i32 @drm_sched_entity_flush(ptr noundef %0, i32 noundef 100)
  tail call void @drm_sched_entity_fini(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_entity_set_priority(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 4
  store i32 %1, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_sched_entity_pop_job(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %199, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_sched_job, ptr %3, i32 0, i32 10, i32 2
  %7 = getelementptr inbounds %struct.drm_sched_job, ptr %3, i32 0, i32 10
  %8 = getelementptr inbounds %struct.drm_sched_job, ptr %3, i32 0, i32 11
  %9 = getelementptr inbounds %struct.drm_sched_job, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 10
  br label %14

14:                                               ; preds = %63, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %8, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %8, align 4
  %20 = tail call ptr @xa_erase(ptr noundef %7, i32 noundef %18) #6
  br label %29

21:                                               ; preds = %14
  %22 = load ptr, ptr %9, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store ptr null, ptr %10, align 8
  br label %130

27:                                               ; preds = %21
  %28 = tail call ptr %24(ptr noundef nonnull %3, ptr noundef %0) #6
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi ptr [ %28, %27 ], [ %20, %17 ]
  store ptr %30, ptr %10, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %130, label %32

32:                                               ; preds = %29
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_sched_job_wait_dep, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = tail call ptr @llvm.thread.pointer() #6
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !30
  %47 = tail call i32 @__traceiter_drm_sched_job_wait_dep(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %30) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  %48 = load ptr, ptr %10, align 8
  br label %49

49:                                               ; preds = %46, %35, %32
  %50 = phi ptr [ %30, %32 ], [ %48, %46 ], [ %30, %35 ]
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds %struct.drm_sched_rq, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dma_fence, ptr %50, i32 0, i32 3
  %55 = load i64, ptr %54, align 8
  %56 = load i64, ptr %12, align 8
  %57 = icmp eq i64 %55, %56
  %58 = add i64 %56, 1
  %59 = icmp eq i64 %55, %58
  %60 = or i1 %57, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %49
  %62 = icmp eq ptr %50, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %129, %128, %126, %118, %113, %112, %110, %72, %71, %69, %61
  br label %14

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.dma_fence, ptr %50, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #6, !srcloc !13
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #6, !srcloc !21
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = icmp sgt i32 %67, 0
  br i1 %70, label %63, label %71, !prof !22

71:                                               ; preds = %69
  tail call void @refcount_warn_saturate(ptr noundef %65, i32 noundef 3) #6
  br label %63

72:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %65) #6
  br label %63

73:                                               ; preds = %49
  %74 = tail call ptr @to_drm_sched_fence(ptr noundef %50) #6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %114, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.drm_sched_fence, ptr %74, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %53
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.dma_fence, ptr %74, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #6, !srcloc !13
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #6, !srcloc !32
  %83 = extractvalue { i32, i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85, !prof !8

85:                                               ; preds = %80
  %86 = add i32 %83, 1
  %87 = or i32 %86, %83
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %91, label %89, !prof !22

89:                                               ; preds = %85, %80
  %90 = phi i32 [ 2, %80 ], [ 1, %85 ]
  tail call void @refcount_warn_saturate(ptr noundef %81, i32 noundef %90) #6
  br label %91

91:                                               ; preds = %89, %85
  %92 = load ptr, ptr %10, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.dma_fence, ptr %92, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %95) #6, !srcloc !13
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #6, !srcloc !21
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = icmp sgt i32 %97, 0
  br i1 %100, label %103, label %101, !prof !22

101:                                              ; preds = %99
  tail call void @refcount_warn_saturate(ptr noundef %95, i32 noundef 3) #6
  br label %103

102:                                              ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %95) #6
  br label %103

103:                                              ; preds = %102, %101, %99, %91
  store ptr %74, ptr %10, align 8
  %104 = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %74, ptr noundef %13, ptr noundef nonnull @drm_sched_entity_clear_dep) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %199, label %106

106:                                              ; preds = %103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #6, !srcloc !13
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #6, !srcloc !21
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = icmp sgt i32 %108, 0
  br i1 %111, label %63, label %112, !prof !22

112:                                              ; preds = %110
  tail call void @refcount_warn_saturate(ptr noundef %81, i32 noundef 3) #6
  br label %63

113:                                              ; preds = %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %81) #6
  br label %63

114:                                              ; preds = %76, %73
  %115 = load ptr, ptr %10, align 8
  %116 = tail call i32 @dma_fence_add_callback(ptr noundef %115, ptr noundef %13, ptr noundef nonnull @drm_sched_entity_wakeup) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %199, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %10, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %63, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.dma_fence, ptr %119, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #6, !srcloc !13
  %123 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #6, !srcloc !21
  %124 = extractvalue { i32, i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = icmp sgt i32 %124, 0
  br i1 %127, label %63, label %128, !prof !22

128:                                              ; preds = %126
  tail call void @refcount_warn_saturate(ptr noundef %122, i32 noundef 3) #6
  br label %63

129:                                              ; preds = %121
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %122) #6
  br label %63

130:                                              ; preds = %29, %26
  %131 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 11
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %147, label %134

134:                                              ; preds = %130
  %135 = load volatile i32, ptr %132, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.drm_sched_job, ptr %3, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.drm_sched_fence, ptr %139, i32 0, i32 1, i32 5
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144, !prof !22

144:                                              ; preds = %137
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 545, i32 noundef 9, ptr noundef null) #6
  br label %145

145:                                              ; preds = %144, %137
  %146 = getelementptr inbounds %struct.drm_sched_fence, ptr %139, i32 0, i32 1, i32 7
  store i32 -125, ptr %146, align 8
  br label %147

147:                                              ; preds = %145, %134, %130
  %148 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 12
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.dma_fence, ptr %149, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %152) #6, !srcloc !13
  %153 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %152, ptr %152, i32 1, ptr elementtype(i32) %152) #6, !srcloc !21
  %154 = extractvalue { i32, i32, i32 } %153, 0
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = icmp sgt i32 %154, 0
  br i1 %157, label %160, label %158, !prof !22

158:                                              ; preds = %156
  tail call void @refcount_warn_saturate(ptr noundef %152, i32 noundef 3) #6
  br label %160

159:                                              ; preds = %151
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %152) #6
  br label %160

160:                                              ; preds = %159, %158, %156, %147
  %161 = getelementptr inbounds %struct.drm_sched_job, ptr %3, i32 0, i32 3
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.drm_sched_fence, ptr %162, i32 0, i32 1
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.drm_sched_fence, ptr %162, i32 0, i32 1, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %166) #6, !srcloc !13
  %167 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %166, ptr %166, i32 1, ptr elementtype(i32) %166) #6, !srcloc !32
  %168 = extractvalue { i32, i32, i32 } %167, 0
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170, !prof !8

170:                                              ; preds = %165
  %171 = add i32 %168, 1
  %172 = or i32 %171, %168
  %173 = icmp sgt i32 %172, -1
  br i1 %173, label %176, label %174, !prof !22

174:                                              ; preds = %170, %165
  %175 = phi i32 [ 2, %165 ], [ 1, %170 ]
  tail call void @refcount_warn_saturate(ptr noundef %166, i32 noundef %175) #6
  br label %176

176:                                              ; preds = %174, %170, %160
  store ptr %163, ptr %148, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  %177 = load volatile ptr, ptr %2, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %199, label %179

179:                                              ; preds = %176
  %180 = load volatile ptr, ptr %177, align 4
  store volatile ptr %180, ptr %2, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %196, !prof !8

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 1
  %184 = ptrtoint ptr %177 to i32
  %185 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %183) #6, !srcloc !13
  br label %186

186:                                              ; preds = %186, %182
  %187 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %183, ptr %183, i32 %184, i32 %185, ptr elementtype(i32) %183) #6, !srcloc !26
  %188 = extractvalue { i32, i32 } %187, 0
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %186

190:                                              ; preds = %186
  %191 = extractvalue { i32, i32 } %187, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !27
  %192 = icmp eq i32 %191, %184
  br i1 %192, label %196, label %193

193:                                              ; preds = %193, %190
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !28
  %194 = load volatile ptr, ptr %177, align 4
  store ptr %194, ptr %2, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %193, label %196, !prof !8

196:                                              ; preds = %193, %190, %179
  %197 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %197) #6, !srcloc !13
  %198 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %197, ptr %197, i32 1, ptr elementtype(i32) %197) #6, !srcloc !29
  br label %199

199:                                              ; preds = %196, %176, %114, %103, %1
  %200 = phi ptr [ null, %1 ], [ %3, %176 ], [ %3, %196 ], [ null, %103 ], [ null, %114 ]
  ret ptr %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_entity_select_rq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 6, i32 2
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !34
  %10 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 5
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_fence_ops, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %18
  %25 = tail call zeroext i1 %22(ptr noundef nonnull %11) #6
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = tail call i32 @dma_fence_signal(ptr noundef nonnull %11) #6
  br label %28

28:                                               ; preds = %26, %13, %9
  %29 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %29) #6
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 8
  %33 = tail call ptr @drm_sched_pick_best(ptr noundef %30, i32 noundef %32) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.drm_gpu_scheduler, ptr %33, i32 0, i32 4, i32 %37
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi ptr [ %38, %35 ], [ null, %28 ]
  %41 = getelementptr inbounds %struct.drm_sched_entity, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void @drm_sched_rq_remove_entity(ptr noundef %42, ptr noundef %0) #6
  store ptr %40, ptr %41, align 8
  br label %45

45:                                               ; preds = %44, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %46 = load i16, ptr %29, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  %48 = load i32, ptr %31, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store ptr null, ptr %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %24, %18, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_sched_pick_best(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_entity_push_job(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_sched_job, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
  %18 = tail call i32 @__traceiter_drm_sched_job(ptr noundef null, ptr noundef %0, ptr noundef %3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_sched_rq, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #6, !srcloc !13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #6, !srcloc !37
  %27 = tail call ptr @llvm.thread.pointer() #6
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 59
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 13
  store volatile ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 6
  store ptr null, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %32 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #6, !srcloc !13
  %34 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %33, ptr %32) #6, !srcloc !40
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !41
  %36 = inttoptr i32 %35 to ptr
  store volatile ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 6, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #6, !srcloc !13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #6, !srcloc !37
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !42
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !43
  %39 = icmp eq ptr %31, %36
  br i1 %39, label %40, label %55

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %41) #6
  %42 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 14
  %43 = load i8, ptr %42, align 4, !range !10
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %46 = load i16, ptr %41, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %55

48:                                               ; preds = %40
  %49 = load ptr, ptr %20, align 8
  tail call void @drm_sched_rq_add_entity(ptr noundef %49, ptr noundef %3) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %50 = load i16, ptr %41, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  %52 = load ptr, ptr %20, align 8
  %53 = getelementptr inbounds %struct.drm_sched_rq, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void @drm_sched_wakeup(ptr noundef %54) #6
  br label %55

55:                                               ; preds = %48, %45, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_rq_add_entity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_scheduled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_entity_kill_jobs_cb(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  store ptr null, ptr %1, align 4
  %3 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  store ptr @drm_sched_entity_kill_jobs_irq_work, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 12
  store ptr null, ptr %5, align 4
  %6 = tail call zeroext i1 @irq_work_queue(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_entity_kill_jobs_irq_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_sched_fence_finished(ptr noundef %3) #6
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !22

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr i8, ptr %0, i32 -20
  %11 = getelementptr i8, ptr %0, i32 -8
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_finished(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drm_sched_job_wait_dep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_drm_sched_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_entity_clear_dep(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -4
  store ptr null, ptr %3, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #6, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !21
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !22

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #6
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %6) #6
  br label %14

14:                                               ; preds = %13, %12, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_entity_wakeup(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -4
  store ptr null, ptr %3, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #6, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !21
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !22

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #6
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %6) #6
  br label %14

14:                                               ; preds = %13, %12, %10, %2
  %15 = getelementptr i8, ptr %1, i32 -52
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_sched_rq, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @drm_sched_wakeup(ptr noundef %18) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drm_sched_job(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152313670}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
!12 = !{i64 2152321142}
!13 = !{i64 538238, i64 2148039804, i64 2148039830, i64 2148039877, i64 2148039899, i64 2148039927, i64 2148039947}
!14 = !{i64 613054, i64 613075, i64 613098, i64 613117, i64 613136}
!15 = !{i64 2152321554}
!16 = !{i64 2149186067}
!17 = !{i64 2149181891}
!18 = !{i64 2149181966, i64 2149181993, i64 2149182040, i64 2149182062, i64 2149182090, i64 2149182110}
!19 = !{i64 2149209070}
!20 = !{i64 2148204746}
!21 = !{i64 2148106881, i64 2148106913, i64 2148106942, i64 2148106976, i64 2148107007, i64 2148107030}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2149259982}
!24 = !{i64 2152111834}
!25 = !{i64 2148216492}
!26 = !{i64 524301, i64 524325, i64 524346, i64 524363, i64 524380}
!27 = !{i64 2148216692}
!28 = !{i64 2152119650}
!29 = !{i64 2148105423, i64 2148105449, i64 2148105478, i64 2148105512, i64 2148105543, i64 2148105566}
!30 = !{i64 2152298919}
!31 = !{i64 2152299107}
!32 = !{i64 2148104524, i64 2148104556, i64 2148104585, i64 2148104619, i64 2148104650, i64 2148104673}
!33 = !{i64 2152336120}
!34 = !{i64 2152336261}
!35 = !{i64 2152255102}
!36 = !{i64 2152255274}
!37 = !{i64 2148103066, i64 2148103092, i64 2148103121, i64 2148103155, i64 2148103186, i64 2148103209}
!38 = !{i64 2152109447}
!39 = !{i64 2148307389}
!40 = !{i64 610330, i64 610347, i64 610371, i64 610397, i64 610415}
!41 = !{i64 2148307733}
!42 = !{i64 2152111476}
!43 = !{i64 2152111546}
