; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gem_submit.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gem_submit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.anon.91 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.92] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.70, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.70 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.anon.92 = type { i32, %union.anon.93, i64 }
%union.anon.93 = type { ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_msm_gem_submit = type { i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.90, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.90 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.20, ptr }
%union.anon.20 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.msm_submit_post_dep = type { ptr, i64, ptr }
%struct.drm_msm_gem_submit_syncobj = type { i32, i32, i64 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_msm_gem_submit_bo = type { i32, i32, i64 }
%struct.drm_msm_gem_submit_cmd = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_msm_gem_submit_reloc = type { i32, i32, i32, i32, i64 }

@msm_ioctl_gem_submit.ident = internal global %struct.atomic_t zeroinitializer, align 4
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid cmdstream size: %u\0A\00", align 1
@__tracepoint_msm_gpu_submit = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid flags: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid handle %u at index %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid type: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"non-aligned cmdstream buffer size: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"handle %u at index %u already on submit list\0A\00", align 1
@submit_lock_objects.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/msm/msm_gem_submit.c\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"invalid buffer index: %u (out of %u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"non-aligned cmdstream buffer: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"failed to map: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"non-aligned reloc offset: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"invalid offset %u at reloc %u\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__msm_gem_submit_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 56
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %7, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %9, i32 0, i32 7
  %11 = load i32, ptr %2, align 4
  %12 = tail call ptr @idr_remove(ptr noundef %10, i32 noundef %11) #9
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %13, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %14) #9
  br label %15

15:                                               ; preds = %5, %1
  %16 = getelementptr i8, ptr %0, i32 48
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #9, !srcloc !9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #9, !srcloc !10
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #9
  br label %28

27:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %20) #9
  br label %28

28:                                               ; preds = %27, %26, %24, %15
  %29 = getelementptr i8, ptr %0, i32 44
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dma_fence, ptr %30, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #9, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #9, !srcloc !10
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !11

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #9
  br label %41

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %33) #9
  br label %41

41:                                               ; preds = %40, %39, %37, %28
  %42 = getelementptr i8, ptr %0, i32 60
  %43 = load ptr, ptr %42, align 4
  tail call void @put_pid(ptr noundef %43) #9
  %44 = getelementptr i8, ptr %0, i32 56
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %45, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #9, !srcloc !9
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #9, !srcloc !10
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %56, label %54, !prof !11

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #9
  br label %56

55:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @msm_submitqueue_destroy(ptr noundef %48) #9
  br label %56

56:                                               ; preds = %55, %54, %52, %41
  %57 = getelementptr i8, ptr %0, i32 76
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %0, i32 88
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i32 [ 0, %60 ], [ %67, %62 ]
  %64 = load ptr, ptr %61, align 8
  %65 = getelementptr %struct.anon.91, ptr %64, i32 %63, i32 6
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #9
  %67 = add nuw i32 %63, 1
  %68 = load i32, ptr %57, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %62, label %70

70:                                               ; preds = %62, %56
  %71 = getelementptr i8, ptr %0, i32 -88
  tail call void @kfree(ptr noundef %71) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_submit_retire(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %38, %5
  %8 = phi i32 [ 0, %5 ], [ %39, %38 ]
  %9 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @ww_mutex_lock(ptr noundef %12, ptr noundef null) #9
  %14 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %8
  %15 = load ptr, ptr %9, align 4
  %16 = load i32, ptr %14, align 8
  %17 = and i32 %16, 4096
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %6, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %15, ptr noundef %20) #9
  br label %21

21:                                               ; preds = %19, %7
  %22 = and i32 %16, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @msm_gem_active_put(ptr noundef %15) #9
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, ptr %14, align 8
  %27 = and i32 %26, -12289
  store i32 %27, ptr %14, align 8
  %28 = load ptr, ptr %11, align 8
  tail call void @ww_mutex_unlock(ptr noundef %28) #9
  %29 = icmp eq ptr %10, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #9, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #9, !srcloc !10
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %38, label %36, !prof !11

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef 3) #9
  br label %38

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %10) #9
  br label %38

38:                                               ; preds = %37, %36, %34, %25
  %39 = add nuw i32 %8, 1
  %40 = load i32, ptr %2, align 8
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %7, label %42

42:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_ioctl_gem_submit(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 62
  %12 = load ptr, ptr %11, align 64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %12) #9, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #9, !srcloc !13
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !14

18:                                               ; preds = %14
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18, %14
  %23 = phi i32 [ 2, %14 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef %23) #9
  br label %24

24:                                               ; preds = %22, %18, %3
  %25 = icmp eq ptr %9, null
  br i1 %25, label %374, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %374

30:                                               ; preds = %26
  %31 = load i32, ptr %1, align 8
  %32 = and i32 %31, 335544319
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %374

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = tail call ptr @msm_submitqueue_get(ptr noundef %7, i32 noundef %36) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %374, label %39

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @msm_ioctl_gem_submit.ident) #9, !srcloc !9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @msm_ioctl_gem_submit.ident, ptr nonnull @msm_ioctl_gem_submit.ident, i32 1, ptr nonnull elementtype(i32) @msm_ioctl_gem_submit.ident) #9, !srcloc !16
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %42 = add i32 %41, -1
  %43 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %37, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.msm_gpu, ptr %9, i32 0, i32 13, i32 %44
  %46 = load ptr, ptr %45, align 4
  br i1 %13, label %50, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.pid, ptr %12, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi i32 [ %49, %47 ], [ 0, %39 ]
  %52 = getelementptr inbounds %struct.msm_ringbuffer, ptr %46, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %71 = tail call i32 @__traceiter_msm_gpu_submit(ptr noundef null, i32 noundef %51, i32 noundef %53, i32 noundef %42, i32 noundef %55, i32 noundef %57) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %72

72:                                               ; preds = %70, %60, %50
  %73 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %37, i32 0, i32 8
  %74 = tail call i32 @mutex_lock_interruptible(ptr noundef %73) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %374

76:                                               ; preds = %72
  %77 = load i32, ptr %1, align 8
  %78 = and i32 %77, 536870912
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void @mutex_unlock(ptr noundef %73) #9
  br label %374

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %81, %80 ], [ -1, %76 ]
  %86 = load i32, ptr %54, align 8
  %87 = load i32, ptr %56, align 4
  %88 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %86, i32 16) #9
  %89 = extractvalue { i32, i1 } %88, 1
  %90 = extractvalue { i32, i1 } %88, 0
  %91 = tail call i32 @llvm.uadd.sat.i32(i32 %90, i32 184) #9
  %92 = zext i32 %91 to i64
  %93 = select i1 %89, i64 4294967295, i64 %92
  %94 = zext i32 %87 to i64
  %95 = shl nuw nsw i64 %94, 5
  %96 = add nuw nsw i64 %93, %95
  %97 = icmp ugt i64 %96, 4294967295
  br i1 %97, label %131, label %98

98:                                               ; preds = %84
  %99 = trunc i64 %96 to i32
  %100 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %99, i32 noundef 77248) #10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %131, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %37, i32 0, i32 10
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 @drm_sched_job_init(ptr noundef nonnull %100, ptr noundef %104, ptr noundef nonnull %37) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  tail call void @kfree(ptr noundef nonnull %100) #9
  %108 = inttoptr i32 %105 to ptr
  br label %128

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 1
  store volatile i32 1, ptr %110, align 8
  %111 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 2
  store ptr %0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %37, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.msm_file_private, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 4
  store ptr %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 3
  store ptr %9, ptr %117, align 32
  %118 = getelementptr %struct.msm_gem_submit, ptr %100, i32 0, i32 22, i32 %86
  %119 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 21
  store ptr %118, ptr %119, align 16
  %120 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 11
  store ptr %37, ptr %120, align 16
  %121 = load i32, ptr %43, align 4
  %122 = getelementptr %struct.msm_gpu, ptr %9, i32 0, i32 13, i32 %121
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 16
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 13
  store i8 0, ptr %125, align 8
  %126 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 5
  store volatile ptr %126, ptr %126, align 8
  %127 = getelementptr inbounds %struct.msm_gem_submit, ptr %100, i32 0, i32 5, i32 1
  store ptr %126, ptr %127, align 4
  br label %128

128:                                              ; preds = %109, %107
  %129 = phi ptr [ %108, %107 ], [ %100, %109 ]
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %134

131:                                              ; preds = %128, %98, %84
  %132 = phi ptr [ %129, %128 ], [ inttoptr (i32 -12 to ptr), %84 ], [ inttoptr (i32 -12 to ptr), %98 ]
  %133 = ptrtoint ptr %132 to i32
  br label %310

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 12
  store ptr %12, ptr %135, align 4
  %136 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 20
  store i32 %42, ptr %136, align 4
  %137 = load i32, ptr %1, align 8
  %138 = and i32 %137, 268435456
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 15
  store i8 1, ptr %141, align 2
  %142 = load i32, ptr %1, align 8
  br label %143

143:                                              ; preds = %140, %134
  %144 = phi i32 [ %142, %140 ], [ %137, %134 ]
  %145 = and i32 %144, 1073741824
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 6
  %149 = load i32, ptr %148, align 8
  %150 = tail call ptr @sync_file_get_fence(i32 noundef %149) #9
  %151 = icmp eq ptr %150, null
  br i1 %151, label %310, label %152

152:                                              ; preds = %147
  %153 = tail call i32 @drm_sched_job_add_dependency(ptr noundef %129, ptr noundef nonnull %150) #9
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %310

155:                                              ; preds = %152
  %156 = load i32, ptr %1, align 8
  br label %157

157:                                              ; preds = %155, %143
  %158 = phi i32 [ %156, %155 ], [ %144, %143 ]
  %159 = and i32 %158, 134217728
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %174, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 8
  %163 = load i64, ptr %162, align 8
  %164 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 10
  %165 = load i32, ptr %164, align 8
  %166 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 12
  %167 = load i32, ptr %166, align 8
  %168 = tail call fastcc ptr @msm_parse_deps(ptr noundef %129, ptr noundef %2, i64 noundef %163, i32 noundef %165, i32 noundef %167)
  %169 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %172, label %170

170:                                              ; preds = %161
  %171 = load i32, ptr %1, align 8
  br label %174

172:                                              ; preds = %161
  %173 = ptrtoint ptr %168 to i32
  br label %310

174:                                              ; preds = %170, %157
  %175 = phi i32 [ %171, %170 ], [ %158, %157 ]
  %176 = phi ptr [ %168, %170 ], [ null, %157 ]
  %177 = and i32 %175, 67108864
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 9
  %181 = load i64, ptr %180, align 8
  %182 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 11
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 12
  %185 = load i32, ptr %184, align 8
  %186 = tail call fastcc ptr @msm_parse_post_deps(ptr noundef %0, ptr noundef %2, i64 noundef %181, i32 noundef %183, i32 noundef %185)
  %187 = icmp ugt ptr %186, inttoptr (i32 -4096 to ptr)
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = ptrtoint ptr %186 to i32
  br label %310

190:                                              ; preds = %179, %174
  %191 = phi ptr [ %186, %179 ], [ null, %174 ]
  %192 = tail call fastcc i32 @submit_lookup_objects(ptr noundef %129, ptr noundef %1, ptr noundef %2)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %305

194:                                              ; preds = %190
  %195 = tail call fastcc i32 @submit_lookup_cmds(ptr noundef %129, ptr noundef %1)
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %305

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 6
  store ptr %10, ptr %198, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @reservation_ww_class) #9, !srcloc !9
  %199 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #9, !srcloc !16
  %200 = extractvalue { i32, i32 } %199, 0
  %201 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 6, i32 1
  store i32 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 6, i32 2
  store i32 0, ptr %202, align 4
  %203 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 6, i32 3
  store i16 0, ptr %203, align 4
  %204 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %205 = trunc i32 %204 to i16
  %206 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 6, i32 4
  store i16 %205, ptr %206, align 2
  %207 = tail call fastcc i32 @submit_lock_objects(ptr noundef %129)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %307

209:                                              ; preds = %197
  %210 = load i32, ptr %1, align 8
  %211 = icmp slt i32 %210, 0
  %212 = tail call fastcc i32 @submit_fence_sync(ptr noundef %129, i1 noundef zeroext %211)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %307

214:                                              ; preds = %209
  %215 = tail call fastcc i32 @submit_pin_objects(ptr noundef %129)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %307

217:                                              ; preds = %214
  %218 = load i32, ptr %56, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %272, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 21
  %222 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 19
  %223 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 14
  br label %224

224:                                              ; preds = %268, %220
  %225 = phi i32 [ 0, %220 ], [ %269, %268 ]
  %226 = load ptr, ptr %221, align 8
  %227 = getelementptr %struct.anon.91, ptr %226, i32 %225, i32 4
  %228 = load i32, ptr %227, align 4
  %229 = load i32, ptr %222, align 8
  %230 = icmp ugt i32 %229, %228
  br i1 %230, label %232, label %231

231:                                              ; preds = %224
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %228, i32 noundef %229) #9
  br label %307

232:                                              ; preds = %224
  %233 = getelementptr %struct.msm_gem_submit, ptr %129, i32 0, i32 22, i32 %228, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr %struct.msm_gem_submit, ptr %129, i32 0, i32 22, i32 %228, i32 2
  %236 = load i64, ptr %235, align 8
  %237 = getelementptr %struct.anon.91, ptr %226, i32 %225, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %232
  %241 = getelementptr %struct.anon.91, ptr %226, i32 %225, i32 3
  %242 = load i32, ptr %241, align 8
  %243 = add i32 %242, %238
  %244 = getelementptr inbounds %struct.drm_gem_object, ptr %234, i32 0, i32 5
  %245 = load i32, ptr %244, align 8
  %246 = lshr i32 %245, 2
  %247 = icmp ugt i32 %243, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %240, %232
  %249 = shl i32 %238, 2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %249) #9
  br label %307

250:                                              ; preds = %240
  %251 = shl i32 %242, 2
  %252 = zext i32 %251 to i64
  %253 = add i64 %236, %252
  %254 = getelementptr %struct.anon.91, ptr %226, i32 %225, i32 2
  store i64 %253, ptr %254, align 8
  %255 = load i8, ptr %223, align 1, !range !20
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %250
  %258 = load ptr, ptr %221, align 8
  %259 = getelementptr %struct.anon.91, ptr %258, i32 %225, i32 3
  %260 = load i32, ptr %259, align 8
  %261 = shl i32 %260, 2
  %262 = getelementptr %struct.anon.91, ptr %258, i32 %225, i32 5
  %263 = load i32, ptr %262, align 8
  %264 = getelementptr %struct.anon.91, ptr %258, i32 %225, i32 6
  %265 = load ptr, ptr %264, align 4
  %266 = tail call fastcc i32 @submit_reloc(ptr noundef %129, ptr noundef %234, i32 noundef %261, i32 noundef %263, ptr noundef %265)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %307

268:                                              ; preds = %257, %250
  %269 = add nuw i32 %225, 1
  %270 = load i32, ptr %56, align 4
  %271 = icmp ult i32 %269, %270
  br i1 %271, label %224, label %272

272:                                              ; preds = %268, %217
  %273 = phi i32 [ 0, %217 ], [ %269, %268 ]
  %274 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 18
  store i32 %273, ptr %274, align 4
  tail call void @drm_sched_job_arm(ptr noundef %129) #9
  %275 = getelementptr inbounds %struct.drm_sched_job, ptr %129, i32 0, i32 3
  %276 = load ptr, ptr %275, align 8
  %277 = getelementptr inbounds %struct.drm_sched_fence, ptr %276, i32 0, i32 1
  %278 = tail call fastcc ptr @dma_fence_get(ptr noundef %277)
  %279 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 9
  store ptr %277, ptr %279, align 8
  %280 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %37, i32 0, i32 7
  %281 = tail call i32 @idr_alloc_cyclic(ptr noundef %280, ptr noundef %277, i32 noundef 1, i32 noundef 2147483647, i32 noundef 3264) #9
  %282 = getelementptr inbounds %struct.msm_gem_submit, ptr %129, i32 0, i32 10
  %283 = tail call i32 @llvm.smax.i32(i32 %281, i32 0)
  store i32 %283, ptr %282, align 4
  %284 = load i32, ptr %1, align 8
  %285 = and i32 %284, 536870912
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %294, label %287

287:                                              ; preds = %272
  %288 = load ptr, ptr %279, align 8
  %289 = tail call ptr @sync_file_create(ptr noundef %288) #9
  %290 = icmp eq ptr %289, null
  br i1 %290, label %294, label %291

291:                                              ; preds = %287
  %292 = load ptr, ptr %289, align 4
  tail call void @fd_install(i32 noundef %85, ptr noundef %292) #9
  %293 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 6
  store i32 %85, ptr %293, align 8
  br label %294

294:                                              ; preds = %291, %287, %272
  %295 = phi i32 [ 0, %272 ], [ 0, %291 ], [ -12, %287 ]
  tail call fastcc void @submit_attach_object_fences(ptr noundef %129)
  tail call fastcc void @msm_gem_submit_get(ptr noundef %129)
  tail call void @drm_sched_entity_push_job(ptr noundef %129) #9
  %296 = load i32, ptr %282, align 4
  %297 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 1
  store i32 %296, ptr %297, align 4
  %298 = load i32, ptr %282, align 4
  %299 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %37, i32 0, i32 4
  store i32 %298, ptr %299, align 4
  %300 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 10
  %301 = load i32, ptr %300, align 8
  tail call fastcc void @msm_reset_syncobjs(ptr noundef %176, i32 noundef %301)
  %302 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 11
  %303 = load i32, ptr %302, align 4
  %304 = load ptr, ptr %279, align 8
  tail call fastcc void @msm_process_post_deps(ptr noundef %191, i32 noundef %303, ptr noundef %304)
  br label %307

305:                                              ; preds = %194, %190
  %306 = phi i32 [ %192, %190 ], [ %195, %194 ]
  tail call fastcc void @submit_cleanup(ptr noundef %129, i1 noundef zeroext true)
  br label %310

307:                                              ; preds = %294, %257, %248, %231, %214, %209, %197
  %308 = phi i32 [ %295, %294 ], [ %215, %214 ], [ %212, %209 ], [ %207, %197 ], [ -22, %231 ], [ -22, %248 ], [ %266, %257 ]
  %309 = icmp ne i32 %308, 0
  tail call fastcc void @submit_cleanup(ptr noundef %129, i1 noundef zeroext %309)
  br label %310

310:                                              ; preds = %307, %305, %188, %172, %152, %147, %131
  %311 = phi ptr [ null, %131 ], [ %129, %172 ], [ %129, %188 ], [ %129, %307 ], [ %129, %305 ], [ %129, %147 ], [ %129, %152 ]
  %312 = phi ptr [ null, %131 ], [ null, %172 ], [ %186, %188 ], [ %191, %307 ], [ %191, %305 ], [ null, %147 ], [ null, %152 ]
  %313 = phi ptr [ null, %131 ], [ %168, %172 ], [ %176, %188 ], [ %176, %307 ], [ %176, %305 ], [ null, %147 ], [ null, %152 ]
  %314 = phi i32 [ %133, %131 ], [ %173, %172 ], [ %189, %188 ], [ %308, %307 ], [ %306, %305 ], [ -22, %147 ], [ %153, %152 ]
  %315 = icmp ne i32 %314, 0
  %316 = icmp sgt i32 %85, -1
  %317 = select i1 %315, i1 %316, i1 false
  br i1 %317, label %318, label %319

318:                                              ; preds = %310
  tail call void @put_unused_fd(i32 noundef %85) #9
  br label %319

319:                                              ; preds = %318, %310
  tail call void @mutex_unlock(ptr noundef %73) #9
  %320 = icmp eq ptr %311, null
  br i1 %320, label %322, label %321

321:                                              ; preds = %319
  tail call fastcc void @msm_gem_submit_put(ptr noundef nonnull %311)
  br label %322

322:                                              ; preds = %321, %319
  %323 = icmp eq ptr %312, null
  %324 = icmp ugt ptr %312, inttoptr (i32 -4096 to ptr)
  %325 = or i1 %323, %324
  br i1 %325, label %348, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 11
  %328 = load i32, ptr %327, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %347, label %330

330:                                              ; preds = %343, %326
  %331 = phi i32 [ %344, %343 ], [ 0, %326 ]
  %332 = getelementptr %struct.msm_submit_post_dep, ptr %312, i32 %331
  %333 = getelementptr %struct.msm_submit_post_dep, ptr %312, i32 %331, i32 2
  %334 = load ptr, ptr %333, align 8
  tail call void @kfree(ptr noundef %334) #9
  %335 = load ptr, ptr %332, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %335) #9, !srcloc !9
  %336 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %335, ptr %335, i32 1, ptr elementtype(i32) %335) #9, !srcloc !10
  %337 = extractvalue { i32, i32, i32 } %336, 0
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %342, label %339

339:                                              ; preds = %330
  %340 = icmp sgt i32 %337, 0
  br i1 %340, label %343, label %341, !prof !11

341:                                              ; preds = %339
  tail call void @refcount_warn_saturate(ptr noundef %335, i32 noundef 3) #9
  br label %343

342:                                              ; preds = %330
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @drm_syncobj_free(ptr noundef %335) #9
  br label %343

343:                                              ; preds = %342, %341, %339
  %344 = add nuw i32 %331, 1
  %345 = load i32, ptr %327, align 4
  %346 = icmp ult i32 %344, %345
  br i1 %346, label %330, label %347

347:                                              ; preds = %343, %326
  tail call void @kfree(ptr noundef %312) #9
  br label %348

348:                                              ; preds = %347, %322
  %349 = icmp eq ptr %313, null
  %350 = icmp ugt ptr %313, inttoptr (i32 -4096 to ptr)
  %351 = or i1 %349, %350
  br i1 %351, label %374, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 10
  %354 = load i32, ptr %353, align 8
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %373, label %356

356:                                              ; preds = %369, %352
  %357 = phi i32 [ %370, %369 ], [ 0, %352 ]
  %358 = getelementptr ptr, ptr %313, i32 %357
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %369, label %361

361:                                              ; preds = %356
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %359) #9, !srcloc !9
  %362 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %359, ptr nonnull %359, i32 1, ptr nonnull elementtype(i32) %359) #9, !srcloc !10
  %363 = extractvalue { i32, i32, i32 } %362, 0
  %364 = icmp eq i32 %363, 1
  br i1 %364, label %368, label %365

365:                                              ; preds = %361
  %366 = icmp sgt i32 %363, 0
  br i1 %366, label %369, label %367, !prof !11

367:                                              ; preds = %365
  tail call void @refcount_warn_saturate(ptr noundef nonnull %359, i32 noundef 3) #9
  br label %369

368:                                              ; preds = %361
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @drm_syncobj_free(ptr noundef nonnull %359) #9
  br label %369

369:                                              ; preds = %368, %367, %365, %356
  %370 = add nuw i32 %357, 1
  %371 = load i32, ptr %353, align 8
  %372 = icmp ult i32 %370, %371
  br i1 %372, label %356, label %373

373:                                              ; preds = %369, %352
  tail call void @kfree(ptr noundef %313) #9
  br label %374

374:                                              ; preds = %373, %348, %83, %72, %34, %30, %26, %24
  %375 = phi i32 [ -6, %24 ], [ -22, %26 ], [ -22, %30 ], [ -2, %34 ], [ %314, %373 ], [ %314, %348 ], [ %81, %83 ], [ %74, %72 ]
  ret i32 %375
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_submitqueue_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_fence(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @msm_parse_deps(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.drm_msm_gem_submit_syncobj, align 8
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #9
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %100, label %10, !prof !14

10:                                               ; preds = %5
  %11 = extractvalue { i32, i1 } %8, 0
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 77248) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %100, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %100, label %16

16:                                               ; preds = %14
  %17 = trunc i64 %2 to i32
  %18 = call i32 @llvm.umin.i32(i32 %4, i32 16)
  %19 = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %6, i32 0, i32 2
  %20 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %6, i32 0, i32 1
  br label %22

22:                                               ; preds = %77, %16
  %23 = phi i32 [ 0, %16 ], [ %78, %77 ]
  %24 = mul i32 %23, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4, !annotation !21
  %25 = add i32 %24, %17
  %26 = inttoptr i32 %25 to ptr
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 %18, i32 -1090519040) #11, !srcloc !22
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37, !prof !11

30:                                               ; preds = %22
  %31 = tail call ptr @llvm.thread.pointer() #9
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #12, !srcloc !23
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %36 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %26, i32 noundef %18) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  br label %37

37:                                               ; preds = %30, %22
  %38 = phi i32 [ %36, %30 ], [ %18, %22 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !11

40:                                               ; preds = %37
  %41 = sub i32 %18, %38
  %42 = getelementptr i8, ptr %6, i32 %41
  call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %38, i1 false) #9
  br label %80

43:                                               ; preds = %37
  %44 = load i64, ptr %19, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %20, align 4
  %48 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.drm_driver, ptr %49, i32 0, i32 24
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %51, 64
  %55 = and i32 %54, %53
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %46, %43
  %58 = load i32, ptr %21, align 4
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i32, ptr %6, align 8
  %62 = call i32 @drm_syncobj_find_fence(ptr noundef %1, i32 noundef %61, i64 noundef %44, i64 noundef 0, ptr noundef nonnull %7) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 4
  %66 = call i32 @drm_sched_job_add_dependency(ptr noundef %0, ptr noundef %65) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32, ptr %21, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %6, align 8
  %74 = call ptr @drm_syncobj_find(ptr noundef %1, i32 noundef %73) #9
  %75 = getelementptr ptr, ptr %12, i32 %23
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %78 = add nuw i32 %23, 1
  %79 = icmp eq i32 %78, %3
  br i1 %79, label %100, label %22

80:                                               ; preds = %72, %64, %60, %57, %46, %40
  %81 = phi i32 [ -14, %40 ], [ -22, %72 ], [ %66, %64 ], [ %62, %60 ], [ -22, %57 ], [ -95, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi i32 [ 0, %80 ], [ %96, %95 ]
  %84 = getelementptr ptr, ptr %12, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %85) #9, !srcloc !9
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %85, ptr nonnull %85, i32 1, ptr nonnull elementtype(i32) %85) #9, !srcloc !10
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = icmp sgt i32 %89, 0
  br i1 %92, label %95, label %93, !prof !11

93:                                               ; preds = %91
  call void @refcount_warn_saturate(ptr noundef nonnull %85, i32 noundef 3) #9
  br label %95

94:                                               ; preds = %87
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  call void @drm_syncobj_free(ptr noundef nonnull %85) #9
  br label %95

95:                                               ; preds = %94, %93, %91, %82
  %96 = add nuw i32 %83, 1
  %97 = icmp eq i32 %83, %23
  br i1 %97, label %98, label %82

98:                                               ; preds = %95
  call void @kfree(ptr noundef nonnull %12) #9
  %99 = inttoptr i32 %81 to ptr
  br label %100

100:                                              ; preds = %98, %77, %14, %10, %5
  %101 = phi ptr [ %99, %98 ], [ inttoptr (i32 -12 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %5 ], [ %12, %14 ], [ %12, %77 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret ptr %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @msm_parse_post_deps(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.drm_msm_gem_submit_syncobj, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 24) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %99, label %9, !prof !14

9:                                                ; preds = %5
  %10 = extractvalue { i32, i1 } %7, 0
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 76992) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %99, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %99, label %15

15:                                               ; preds = %13
  %16 = trunc i64 %2 to i32
  %17 = call i32 @llvm.umin.i32(i32 %4, i32 16)
  %18 = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %6, i32 0, i32 1
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  br label %22

22:                                               ; preds = %69, %15
  %23 = phi i1 [ true, %15 ], [ %71, %69 ]
  %24 = phi i32 [ 0, %15 ], [ %70, %69 ]
  %25 = mul i32 %24, %4
  %26 = add i32 %25, %16
  %27 = inttoptr i32 %26 to ptr
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %17, i32 -1090519040) #11, !srcloc !22
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38, !prof !11

31:                                               ; preds = %22
  %32 = tail call ptr @llvm.thread.pointer() #9
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #12, !srcloc !23
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %37 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %27, i32 noundef %17) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  br label %38

38:                                               ; preds = %31, %22
  %39 = phi i32 [ %37, %31 ], [ %17, %22 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !prof !11

41:                                               ; preds = %38
  %42 = sub i32 %17, %39
  %43 = getelementptr i8, ptr %6, i32 %42
  call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %39, i1 false) #9
  br i1 %23, label %77, label %99

44:                                               ; preds = %38
  %45 = load i64, ptr %18, align 8
  %46 = getelementptr %struct.msm_submit_post_dep, ptr %11, i32 %24
  %47 = getelementptr %struct.msm_submit_post_dep, ptr %11, i32 %24, i32 1
  store i64 %45, ptr %47, align 8
  %48 = getelementptr %struct.msm_submit_post_dep, ptr %11, i32 %24, i32 2
  store ptr null, ptr %48, align 8
  %49 = load i32, ptr %19, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = icmp eq i64 %45, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %20, align 4
  %55 = getelementptr inbounds %struct.drm_driver, ptr %54, i32 0, i32 24
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %21, align 4
  %58 = and i32 %56, 64
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %63 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3264, i32 noundef 88) #13
  store ptr %63, ptr %48, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %51
  %66 = load i32, ptr %6, align 8
  %67 = call ptr @drm_syncobj_find(ptr noundef %1, i32 noundef %66) #9
  store ptr %67, ptr %46, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = add nuw i32 %24, 1
  %71 = icmp ult i32 %70, %3
  %72 = icmp eq i32 %70, %3
  br i1 %72, label %73, label %22

73:                                               ; preds = %69, %65, %61, %53, %44
  %74 = phi i32 [ %24, %65 ], [ %24, %61 ], [ %24, %53 ], [ %24, %44 ], [ %3, %69 ]
  %75 = phi i1 [ %23, %65 ], [ %23, %61 ], [ %23, %53 ], [ %23, %44 ], [ %71, %69 ]
  %76 = phi ptr [ inttoptr (i32 -22 to ptr), %65 ], [ inttoptr (i32 -12 to ptr), %61 ], [ inttoptr (i32 -95 to ptr), %53 ], [ inttoptr (i32 -22 to ptr), %44 ], [ null, %69 ]
  br i1 %75, label %77, label %99

77:                                               ; preds = %73, %41
  %78 = phi ptr [ inttoptr (i32 -14 to ptr), %41 ], [ %76, %73 ]
  %79 = phi i32 [ %24, %41 ], [ %74, %73 ]
  br label %80

80:                                               ; preds = %95, %77
  %81 = phi i32 [ %96, %95 ], [ 0, %77 ]
  %82 = getelementptr %struct.msm_submit_post_dep, ptr %11, i32 %81
  %83 = getelementptr %struct.msm_submit_post_dep, ptr %11, i32 %81, i32 2
  %84 = load ptr, ptr %83, align 8
  call void @kfree(ptr noundef %84) #9
  %85 = load ptr, ptr %82, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %80
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %85) #9, !srcloc !9
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %85, ptr nonnull %85, i32 1, ptr nonnull elementtype(i32) %85) #9, !srcloc !10
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = icmp sgt i32 %89, 0
  br i1 %92, label %95, label %93, !prof !11

93:                                               ; preds = %91
  call void @refcount_warn_saturate(ptr noundef nonnull %85, i32 noundef 3) #9
  br label %95

94:                                               ; preds = %87
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  call void @drm_syncobj_free(ptr noundef nonnull %85) #9
  br label %95

95:                                               ; preds = %94, %93, %91, %80
  %96 = add i32 %81, 1
  %97 = icmp ugt i32 %96, %79
  br i1 %97, label %98, label %80

98:                                               ; preds = %95
  call void @kfree(ptr noundef nonnull %11) #9
  br label %99

99:                                               ; preds = %98, %73, %41, %13, %9, %5
  %100 = phi ptr [ %78, %98 ], [ %11, %73 ], [ inttoptr (i32 -12 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %5 ], [ %11, %41 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret ptr %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_lookup_objects(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.drm_msm_gem_submit_bo, align 8
  %5 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.drm_msm_gem_submit_bo, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_msm_gem_submit_bo, ptr %4, i32 0, i32 2
  br label %12

12:                                               ; preds = %44, %8
  %13 = phi i32 [ 0, %8 ], [ %49, %44 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !21
  %14 = load i64, ptr %9, align 8
  %15 = shl i32 %13, 4
  %16 = trunc i64 %14 to i32
  %17 = add i32 %15, %16
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %13
  store i32 0, ptr %19, align 8
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 16, i32 -1090519040) #11, !srcloc !22
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31, !prof !11

23:                                               ; preds = %12
  %24 = tail call ptr @llvm.thread.pointer() #9
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #12, !srcloc !23
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %29 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %18, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !11

31:                                               ; preds = %23, %12
  %32 = phi i32 [ %29, %23 ], [ 16, %12 ]
  %33 = sub i32 16, %32
  %34 = getelementptr i8, ptr %4, i32 %33
  call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %32, i1 false) #9
  br label %42

35:                                               ; preds = %23
  %36 = load i32, ptr %4, align 8
  %37 = icmp ugt i32 %36, 7
  %38 = and i32 %36, 3
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %36) #9
  br label %42

42:                                               ; preds = %41, %31
  %43 = phi i32 [ -22, %41 ], [ -14, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %85

44:                                               ; preds = %35
  %45 = load i32, ptr %10, align 4
  %46 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %13, i32 1
  store i32 %45, ptr %46, align 4
  store i32 %36, ptr %19, align 8
  %47 = load i64, ptr %11, align 8
  %48 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %13, i32 2
  store i64 %47, ptr %48, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %49 = add nuw i32 %13, 1
  %50 = load i32, ptr %5, align 8
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %12, label %52

52:                                               ; preds = %44, %3
  %53 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %53) #9
  %54 = load i32, ptr %5, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 14
  br label %58

58:                                               ; preds = %76, %56
  %59 = phi i32 [ 0, %56 ], [ %77, %76 ]
  %60 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %59, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = call ptr @idr_find(ptr noundef %57, i32 noundef %61) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %58
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %62) #9, !srcloc !9
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %62, ptr nonnull %62, i32 1, ptr nonnull elementtype(i32) %62) #9, !srcloc !13
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68, !prof !14

68:                                               ; preds = %64
  %69 = add i32 %66, 1
  %70 = or i32 %69, %66
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %76, label %72, !prof !11

72:                                               ; preds = %68, %64
  %73 = phi i32 [ 2, %64 ], [ 1, %68 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %62, i32 noundef %73) #9
  br label %76

74:                                               ; preds = %58
  %75 = load i32, ptr %60, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %75, i32 noundef %59) #9
  br label %80

76:                                               ; preds = %72, %68
  store ptr %62, ptr %60, align 4
  %77 = add nuw i32 %59, 1
  %78 = load i32, ptr %5, align 8
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %58, label %80

80:                                               ; preds = %76, %74, %52
  %81 = phi i32 [ %59, %74 ], [ 0, %52 ], [ %77, %76 ]
  %82 = phi i32 [ -22, %74 ], [ 0, %52 ], [ 0, %76 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %83 = load i16, ptr %53, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %53, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !27
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  br label %85

85:                                               ; preds = %80, %42
  %86 = phi i32 [ %82, %80 ], [ %43, %42 ]
  %87 = phi i32 [ %81, %80 ], [ 0, %42 ]
  %88 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  store i32 %87, ptr %88, align 8
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_lookup_cmds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.drm_msm_gem_submit_cmd, align 8
  %4 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %110, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 21
  %11 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %3, i32 0, i32 5
  %14 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %3, i32 0, i32 6
  br label %15

15:                                               ; preds = %106, %7
  %16 = phi i32 [ 0, %7 ], [ %107, %106 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !21
  %17 = load i64, ptr %8, align 8
  %18 = shl i32 %16, 5
  %19 = trunc i64 %17 to i32
  %20 = add i32 %18, %19
  %21 = inttoptr i32 %20 to ptr
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 32, i32 -1090519040) #11, !srcloc !22
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33, !prof !11

25:                                               ; preds = %15
  %26 = tail call ptr @llvm.thread.pointer() #9
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #12, !srcloc !23
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %31 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %21, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !11

33:                                               ; preds = %25, %15
  %34 = phi i32 [ %31, %25 ], [ 32, %15 ]
  %35 = sub i32 32, %34
  %36 = getelementptr i8, ptr %3, i32 %35
  call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %34, i1 false) #9
  br label %104

37:                                               ; preds = %25
  %38 = load i32, ptr %3, align 8
  %39 = add i32 %38, -1
  %40 = icmp ult i32 %39, 3
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %38) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %110

42:                                               ; preds = %37
  %43 = load i32, ptr %9, align 4
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %43) #9
  br label %104

47:                                               ; preds = %42
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr %struct.anon.91, ptr %48, i32 %16
  store i32 %38, ptr %49, align 8
  %50 = load i32, ptr %9, align 4
  %51 = lshr i32 %50, 2
  %52 = load ptr, ptr %10, align 8
  %53 = getelementptr %struct.anon.91, ptr %52, i32 %16, i32 1
  store i32 %51, ptr %53, align 4
  %54 = load i32, ptr %11, align 8
  %55 = lshr i32 %54, 2
  %56 = load ptr, ptr %10, align 8
  %57 = getelementptr %struct.anon.91, ptr %56, i32 %16, i32 3
  store i32 %55, ptr %57, align 8
  %58 = load i32, ptr %12, align 4
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr %struct.anon.91, ptr %59, i32 %16, i32 4
  store i32 %58, ptr %60, align 4
  %61 = load i32, ptr %13, align 4
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr %struct.anon.91, ptr %62, i32 %16, i32 5
  store i32 %61, ptr %63, align 8
  %64 = load i32, ptr %13, align 4
  %65 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 24) #9
  %66 = extractvalue { i32, i1 } %65, 1
  %67 = extractvalue { i32, i1 } %65, 0
  %68 = select i1 %66, i32 -1, i32 %67
  br i1 %66, label %104, label %69

69:                                               ; preds = %47
  %70 = load i64, ptr %14, align 8
  %71 = trunc i64 %70 to i32
  %72 = inttoptr i32 %71 to ptr
  %73 = call noalias align 64 ptr @__kmalloc(i32 noundef %68, i32 noundef 3264) #10
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr %struct.anon.91, ptr %74, i32 %16, i32 6
  store ptr %73, ptr %75, align 4
  %76 = load ptr, ptr %10, align 8
  %77 = getelementptr %struct.anon.91, ptr %76, i32 %16, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = icmp slt i32 %68, 0
  %80 = load i1, ptr @check_copy_size.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !14

83:                                               ; preds = %69
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %84

84:                                               ; preds = %83, %69
  br i1 %79, label %100, label %85, !prof !14

85:                                               ; preds = %84
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %72, i32 %68, i32 -1090519040) #11, !srcloc !22
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94, !prof !11

89:                                               ; preds = %85
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #12, !srcloc !23
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %93 = call i32 @arm_copy_from_user(ptr noundef %78, ptr noundef %72, i32 noundef %68) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i32 [ %93, %89 ], [ %67, %85 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97, !prof !11

97:                                               ; preds = %94
  %98 = sub i32 %68, %95
  %99 = getelementptr i8, ptr %78, i32 %98
  call void @llvm.memset.p0.i32(ptr align 1 %99, i8 0, i32 %95, i1 false) #9
  br label %104

100:                                              ; preds = %84
  %101 = extractvalue { i32, i1 } %65, 0
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 0, i32 -14
  br label %104

104:                                              ; preds = %100, %97, %47, %46, %33
  %105 = phi i32 [ -22, %46 ], [ -14, %33 ], [ -14, %97 ], [ %103, %100 ], [ -12, %47 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %110

106:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  %107 = add nuw i32 %16, 1
  %108 = load i32, ptr %4, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %15, label %110

110:                                              ; preds = %106, %104, %41, %2
  %111 = phi i32 [ -22, %41 ], [ %105, %104 ], [ 0, %2 ], [ 0, %106 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_lock_objects(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %118, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 4
  br label %8

8:                                                ; preds = %32, %5
  %9 = phi i32 [ %3, %5 ], [ %33, %32 ]
  %10 = phi i32 [ -1, %5 ], [ %34, %32 ]
  %11 = phi i32 [ 0, %5 ], [ %35, %32 ]
  %12 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %11
  %13 = icmp eq i32 %10, %11
  %14 = select i1 %13, i32 -1, i32 %10
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %8
  %19 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %11, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_gem_object, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %22, ptr noundef %6) #9
  switch i32 %23, label %38 [
    i32 0, label %24
    i32 -114, label %36
  ]

24:                                               ; preds = %18
  %25 = load i32, ptr %12, align 8
  %26 = or i32 %25, 16384
  store i32 %26, ptr %12, align 8
  %27 = load i32, ptr %2, align 8
  br label %28

28:                                               ; preds = %24, %8
  %29 = phi i32 [ %27, %24 ], [ %9, %8 ]
  %30 = add nuw i32 %11, 1
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %118

32:                                               ; preds = %113, %28
  %33 = phi i32 [ %29, %28 ], [ %116, %113 ]
  %34 = phi i32 [ %14, %28 ], [ %11, %113 ]
  %35 = phi i32 [ %30, %28 ], [ 0, %113 ]
  br label %8

36:                                               ; preds = %18
  %37 = load i32, ptr %19, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %37, i32 noundef %11) #9
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi i32 [ -22, %36 ], [ %23, %18 ]
  %40 = icmp sgt i32 %11, -1
  br i1 %40, label %41, label %71

41:                                               ; preds = %68, %38
  %42 = phi i32 [ %69, %68 ], [ %11, %38 ]
  %43 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %42
  %44 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %42, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %43, align 8
  %47 = and i32 %46, 4096
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %7, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %45, ptr noundef %50) #9
  br label %51

51:                                               ; preds = %49, %41
  %52 = and i32 %46, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @msm_gem_active_put(ptr noundef %45) #9
  br label %55

55:                                               ; preds = %54, %51
  %56 = and i32 %46, 16384
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.drm_gem_object, ptr %45, i32 0, i32 9
  %60 = load ptr, ptr %59, align 8
  tail call void @ww_mutex_unlock(ptr noundef %60) #9
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, ptr %43, align 8
  %63 = and i32 %62, -28673
  store i32 %63, ptr %43, align 8
  %64 = and i32 %62, 32768
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %42, i32 2
  store i64 0, ptr %67, align 8
  br label %68

68:                                               ; preds = %66, %61
  %69 = add nsw i32 %42, -1
  %70 = icmp sgt i32 %42, 0
  br i1 %70, label %41, label %71

71:                                               ; preds = %68, %38
  %72 = icmp sgt i32 %14, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %71
  %74 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %14
  %75 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %14, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %74, align 8
  %78 = and i32 %77, 4096
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %7, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %76, ptr noundef %81) #9
  br label %82

82:                                               ; preds = %80, %73
  %83 = and i32 %77, 8192
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @msm_gem_active_put(ptr noundef %76) #9
  br label %86

86:                                               ; preds = %85, %82
  %87 = and i32 %77, 16384
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.drm_gem_object, ptr %76, i32 0, i32 9
  %91 = load ptr, ptr %90, align 8
  tail call void @ww_mutex_unlock(ptr noundef %91) #9
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, ptr %74, align 8
  %94 = and i32 %93, -28673
  store i32 %94, ptr %74, align 8
  %95 = and i32 %93, 32768
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %14, i32 2
  store i64 0, ptr %98, align 8
  br label %99

99:                                               ; preds = %97, %92, %71
  %100 = icmp eq i32 %39, -35
  br i1 %100, label %101, label %118

101:                                              ; preds = %99
  %102 = load ptr, ptr %19, align 4
  %103 = getelementptr inbounds %struct.drm_gem_object, ptr %102, i32 0, i32 9
  %104 = load ptr, ptr %103, align 8
  %105 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %104, ptr noundef %6) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = icmp eq i32 %105, -114
  %109 = load i1, ptr @submit_lock_objects.__already_done, align 1
  %110 = xor i1 %109, true
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %112, label %118, !prof !14

112:                                              ; preds = %107
  store i1 true, ptr @submit_lock_objects.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 309, i32 noundef 9, ptr noundef null) #9
  br label %118

113:                                              ; preds = %101
  %114 = load i32, ptr %12, align 8
  %115 = or i32 %114, 16384
  store i32 %115, ptr %12, align 8
  %116 = load i32, ptr %2, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %32

118:                                              ; preds = %113, %112, %107, %99, %28, %1
  %119 = phi i32 [ -114, %112 ], [ %105, %107 ], [ 0, %1 ], [ 0, %113 ], [ %39, %99 ], [ 0, %28 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_fence_sync(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %23, %2
  %7 = phi i32 [ %24, %23 ], [ 0, %2 ]
  %8 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %7
  %9 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %7, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %10, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @dma_resv_reserve_shared(ptr noundef %16, i32 noundef 1) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  br i1 %1, label %23, label %20

20:                                               ; preds = %19, %6
  %21 = tail call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %0, ptr noundef %10, i1 noundef zeroext %13) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %19
  %24 = add nuw i32 %7, 1
  %25 = load i32, ptr %3, align 8
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %6, label %27

27:                                               ; preds = %23, %20, %14, %2
  %28 = phi i32 [ 0, %2 ], [ %17, %14 ], [ 0, %23 ], [ %21, %20 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_pin_objects(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 14
  store i8 1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 3
  br label %13

9:                                                ; preds = %13
  %10 = icmp eq i32 %22, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 4
  br label %24

13:                                               ; preds = %13, %7
  %14 = phi i32 [ 0, %7 ], [ %21, %13 ]
  %15 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %14
  %16 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %14, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %8, align 8
  tail call void @msm_gem_active_get(ptr noundef %17, ptr noundef %18) #9
  %19 = load i32, ptr %15, align 8
  %20 = or i32 %19, 8192
  store i32 %20, ptr %15, align 8
  %21 = add nuw i32 %14, 1
  %22 = load i32, ptr %4, align 8
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %13, label %9

24:                                               ; preds = %44, %11
  %25 = phi i32 [ 0, %11 ], [ %45, %44 ]
  %26 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %25
  %27 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %25, i32 1
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !21
  %29 = load ptr, ptr %12, align 4
  %30 = call i32 @msm_gem_get_and_pin_iova_locked(ptr noundef %28, ptr noundef %29, ptr noundef nonnull %2) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i32, ptr %26, align 8
  %34 = load i64, ptr %2, align 8
  %35 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %25, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = or i32 %33, 36864
  store i32 %39, ptr %26, align 8
  br label %44

40:                                               ; preds = %32
  store i64 %34, ptr %35, align 8
  %41 = and i32 %33, -36865
  %42 = or i32 %41, 4096
  store i32 %42, ptr %26, align 8
  store i8 0, ptr %3, align 1
  br label %44

43:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %48

44:                                               ; preds = %40, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %45 = add nuw i32 %25, 1
  %46 = load i32, ptr %4, align 8
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %24, label %48

48:                                               ; preds = %44, %43, %9, %1
  %49 = phi i32 [ %30, %43 ], [ 0, %9 ], [ 0, %1 ], [ 0, %44 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_reloc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %76, label %7

7:                                                ; preds = %5
  %8 = and i32 %2, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %2) #9
  br label %76

11:                                               ; preds = %7
  %12 = tail call ptr @msm_gem_get_vaddr_locked(ptr noundef %1) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %16 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  br label %19

17:                                               ; preds = %11
  %18 = ptrtoint ptr %12 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %18) #9
  br label %76

19:                                               ; preds = %70, %14
  %20 = phi i32 [ 0, %14 ], [ %71, %70 ]
  %21 = phi i32 [ 0, %14 ], [ %72, %70 ]
  %22 = getelementptr %struct.drm_msm_gem_submit_reloc, ptr %4, i32 %21
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %22, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %22, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr %22, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %22, i32 16
  %31 = load i64, ptr %30, align 8
  %32 = and i32 %23, 3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %23) #9
  br label %74

35:                                               ; preds = %19
  %36 = lshr i32 %23, 2
  %37 = load i32, ptr %15, align 8
  %38 = lshr i32 %37, 2
  %39 = icmp uge i32 %36, %38
  %40 = icmp ult i32 %36, %20
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %36, i32 noundef %21) #9
  br label %74

43:                                               ; preds = %35
  %44 = load i32, ptr %16, align 8
  %45 = icmp ugt i32 %44, %29
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %29, i32 noundef %44) #9
  br label %74

47:                                               ; preds = %43
  %48 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %29
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 32768
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %29, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, %31
  %56 = icmp slt i32 %27, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = sub i32 0, %27
  %59 = zext i32 %58 to i64
  %60 = lshr i64 %55, %59
  %61 = trunc i64 %60 to i32
  br label %66

62:                                               ; preds = %52
  %63 = zext i32 %27 to i64
  %64 = shl i64 %55, %63
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i32 [ %65, %62 ], [ %61, %57 ]
  %68 = or i32 %67, %25
  %69 = getelementptr i32, ptr %12, i32 %36
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %66, %47
  %71 = phi i32 [ %36, %66 ], [ %20, %47 ]
  %72 = add nuw i32 %21, 1
  %73 = icmp eq i32 %72, %3
  br i1 %73, label %74, label %19

74:                                               ; preds = %70, %46, %42, %34
  %75 = phi i32 [ -22, %34 ], [ -22, %42 ], [ -22, %46 ], [ 0, %70 ]
  tail call void @msm_gem_put_vaddr_locked(ptr noundef %1) #9
  br label %76

76:                                               ; preds = %74, %17, %10, %5
  %77 = phi i32 [ -22, %10 ], [ %18, %17 ], [ %75, %74 ], [ 0, %5 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dma_fence_get(ptr noundef returned %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !14

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #9
  br label %14

14:                                               ; preds = %12, %8, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @submit_attach_object_fences(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 9
  br label %7

7:                                                ; preds = %26, %5
  %8 = phi i32 [ 0, %5 ], [ %27, %26 ]
  %9 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %8
  %10 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %11, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %6, align 8
  tail call void @dma_resv_add_excl_fence(ptr noundef %17, ptr noundef %18) #9
  br label %26

19:                                               ; preds = %7
  %20 = and i32 %12, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.drm_gem_object, ptr %11, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %6, align 8
  tail call void @dma_resv_add_shared_fence(ptr noundef %24, ptr noundef %25) #9
  br label %26

26:                                               ; preds = %22, %19, %15
  %27 = add nuw i32 %8, 1
  %28 = load i32, ptr %2, align 8
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %7, label %30

30:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_gem_submit_get(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !14

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #9
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_reset_syncobjs(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %12, %2
  %7 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %8 = getelementptr ptr, ptr %0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %9, ptr noundef null) #9
  br label %12

12:                                               ; preds = %11, %6
  %13 = add nuw i32 %7, 1
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %6, label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_process_post_deps(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %18, %3
  %8 = phi i32 [ %19, %18 ], [ 0, %3 ]
  %9 = getelementptr %struct.msm_submit_post_dep, ptr %0, i32 %8
  %10 = getelementptr %struct.msm_submit_post_dep, ptr %0, i32 %8, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %9, align 8
  br i1 %12, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr %struct.msm_submit_post_dep, ptr %0, i32 %8, i32 1
  %16 = load i64, ptr %15, align 8
  tail call void @drm_syncobj_add_point(ptr noundef %13, ptr noundef nonnull %11, ptr noundef %2, i64 noundef %16) #9
  store ptr null, ptr %10, align 8
  br label %18

17:                                               ; preds = %7
  tail call void @drm_syncobj_replace_fence(ptr noundef %13, ptr noundef %2) #9
  br label %18

18:                                               ; preds = %17, %14
  %19 = add nuw i32 %8, 1
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %7, label %21

21:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @submit_cleanup(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = select i1 %1, i32 28672, i32 16384
  %4 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 4
  %9 = xor i32 %3, -1
  %10 = xor i1 %1, true
  br label %11

11:                                               ; preds = %45, %7
  %12 = phi i32 [ 0, %7 ], [ %46, %45 ]
  %13 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %12, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.msm_gem_submit, ptr %0, i32 0, i32 22, i32 %12
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, %3
  %18 = and i32 %17, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr %8, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %14, ptr noundef %21) #9
  br label %22

22:                                               ; preds = %20, %11
  %23 = and i32 %17, 8192
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @msm_gem_active_put(ptr noundef %14) #9
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %16, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 9
  %31 = load ptr, ptr %30, align 8
  tail call void @ww_mutex_unlock(ptr noundef %31) #9
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, ptr %15, align 8
  %34 = and i32 %33, %9
  store i32 %34, ptr %15, align 8
  %35 = icmp eq ptr %14, null
  %36 = select i1 %10, i1 true, i1 %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #9, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #9, !srcloc !10
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #9
  br label %45

44:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %14) #9
  br label %45

45:                                               ; preds = %44, %43, %41, %32
  %46 = add nuw i32 %12, 1
  %47 = load i32, ptr %4, align 8
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %11, label %49

49:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_gem_submit_put(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.msm_gem_submit, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #9
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @__msm_gem_submit_destroy(ptr noundef %2) #9
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_submitqueue_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_active_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_submit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova_locked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_add_point(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i64 2148045700}
!9 = !{i64 442658, i64 2147932629, i64 2147932655, i64 2147932702, i64 2147932724, i64 2147932752, i64 2147932772}
!10 = !{i64 2147947859, i64 2147947891, i64 2147947920, i64 2147947954, i64 2147947985, i64 2147948008}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149060617}
!13 = !{i64 2147945502, i64 2147945534, i64 2147945563, i64 2147945597, i64 2147945628, i64 2147945651}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148041866}
!16 = !{i64 2147944728, i64 2147944760, i64 2147944789, i64 2147944823, i64 2147944854, i64 2147944877}
!17 = !{i64 2148042069}
!18 = !{i64 2155753703}
!19 = !{i64 2155753907}
!20 = !{i8 0, i8 2}
!21 = !{!"auto-init"}
!22 = !{i64 2150027916, i64 2150027941}
!23 = !{i64 2524028}
!24 = !{i64 2524225}
!25 = !{i64 2150009504}
!26 = !{i64 2148920574}
!27 = !{i64 2148916398}
!28 = !{i64 2148916473, i64 2148916500, i64 2148916547, i64 2148916569, i64 2148916597, i64 2148916617}
!29 = !{i64 2148943577}
