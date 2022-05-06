; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.93 = type { i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.msm_rbmemptrs = type { i32, i32, [64 x %struct.msm_gpu_submit_stats], i64 }
%struct.msm_gpu_submit_stats = type { i64, i64, i64, i64 }
%struct.msm_gpu_perfcntr = type { i32, i32, i32, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.75, i64, i64, i32, %struct.kref, i32 }
%union.anon.75 = type { i64 }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.82] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.80, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.80 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.anon.82 = type { i32, %union.anon.83, i64 }
%union.anon.83 = type { ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_gpu_config = type { ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.84], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.84 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.anon.81 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.msm_gpu_state_bo = type { i64, i32, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_print_iterator = type { ptr, i32, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/msm/msm_gpu.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s-worker\00", align 1
@msm_gpu_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"&gpu->active_lock\00", align 1
@msm_gpu_init.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"&gpu->lock\00", align 1
@msm_gpu_init.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"&gpu->retire_event\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to request IRQ%u: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ebi1_clk: %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"gpu_reg: %p\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"vddcx\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gpu_cx: %p\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%s: no IOMMU, fallback to VRAM carveout!\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"*ERROR* could not allocate memptrs: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"memptrs\00", align 1
@msm_gpu_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Only creating %zu ringbuffers\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"*ERROR* could not create ringbuffer %d: %d\0A\00", align 1
@__tracepoint_msm_gpu_resume = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.24 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to enable 'gpu_reg': %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to enable 'gpu_cx': %d\0A\00", align 1
@__tracepoint_msm_gpu_suspend = external dso_local global %struct.tracepoint, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_msm_gpu_submit_retired = external dso_local global %struct.tracepoint, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"*ERROR* %s: hangcheck recover!\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"*ERROR* %s: offending task: %s (%s)\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"offending task: %s (%s)\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@rd_full = external dso_local local_unnamed_addr global i8, align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"kernel: 5.17.0\0A\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"module: msm\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"time: %lld.%09ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"comm: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"cmdline: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"*ERROR* %s: hangcheck detected gpu lockup rb %d!\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"*ERROR* %s:     completed fence: %u\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"*ERROR* %s:     submitted fence: %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"rbbmtimer\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_pm_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %2) #8
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #8
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %17 = tail call i32 @__traceiter_msm_gpu_resume(ptr noundef null, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 25
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @regulator_enable(ptr noundef nonnull %22) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.24, i32 noundef %25) #8
  br label %78

30:                                               ; preds = %24, %18
  %31 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 26
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @regulator_enable(ptr noundef nonnull %32) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %39, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25, i32 noundef %35) #8
  br label %78

40:                                               ; preds = %34, %30
  %41 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 30
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 32
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @clk_set_rate(ptr noundef nonnull %42, i32 noundef %46) #8
  br label %50

50:                                               ; preds = %48, %44, %40
  %51 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 31
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @clk_set_rate(ptr noundef nonnull %52, i32 noundef 19200000) #8
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 28
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 27
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @clk_bulk_prepare(i32 noundef %58, ptr noundef %60) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = tail call i32 @clk_bulk_enable(i32 noundef %58, ptr noundef %60) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @clk_bulk_unprepare(i32 noundef %58, ptr noundef %60) #8
  br label %78

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 29
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @clk_prepare(ptr noundef %69) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = tail call i32 @clk_enable(ptr noundef %69) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @clk_unprepare(ptr noundef %69) #8
  br label %78

76:                                               ; preds = %72
  tail call void @msm_devfreq_resume(ptr noundef %0) #8
  %77 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 20
  store i8 1, ptr %77, align 8
  br label %78

78:                                               ; preds = %76, %75, %67, %66, %56, %37, %27
  %79 = phi i32 [ 0, %76 ], [ %25, %27 ], [ %35, %37 ], [ %64, %66 ], [ %61, %56 ], [ %73, %75 ], [ %70, %67 ]
  ret i32 %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_pm_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %2) #8
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #8
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %17 = tail call i32 @__traceiter_msm_gpu_suspend(ptr noundef null, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %18

18:                                               ; preds = %16, %5, %1
  tail call void @msm_devfreq_suspend(ptr noundef %0) #8
  %19 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 29
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #8
  tail call void @clk_unprepare(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 28
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_bulk_disable(i32 noundef %22, ptr noundef %24) #8
  tail call void @clk_bulk_unprepare(i32 noundef %22, ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 30
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = tail call i32 @clk_set_rate(ptr noundef nonnull %26, i32 noundef 27000000) #8
  br label %30

30:                                               ; preds = %28, %18
  %31 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 31
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @clk_set_rate(ptr noundef nonnull %32, i32 noundef 0) #8
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 26
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @regulator_disable(ptr noundef nonnull %38) #8
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 25
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @regulator_disable(ptr noundef nonnull %44) #8
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 42
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_hw_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 17
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #8
  br i1 %3, label %5, label %4, !prof !12

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 9, ptr noundef null) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 20
  %7 = load i8, ptr %6, align 8, !range !13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  tail call void @disable_irq(i32 noundef %11) #8
  %12 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i8 0, ptr %6, align 8
  br label %19

19:                                               ; preds = %18, %9
  %20 = load i32, ptr %10, align 4
  tail call void @enable_irq(i32 noundef %20) #8
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i32 [ %16, %19 ], [ 0, %5 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gpu_perfcntr_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [5 x i32], align 4
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 5
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 0
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msm_ringbuffer, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.msm_ringbuffer, ptr %14, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = sub i32 %16, %20
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %27, %12
  %24 = phi i32 [ %25, %27 ], [ 0, %12 ]
  %25 = add nuw nsw i32 %24, 1
  %26 = icmp eq i32 %25, %10
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %25
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.msm_ringbuffer, ptr %29, i32 0, i32 11
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.msm_ringbuffer, ptr %29, i32 0, i32 13
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %33, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = sub i32 %31, %35
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %23

38:                                               ; preds = %27, %23
  %39 = icmp slt i32 %25, %10
  br label %40

40:                                               ; preds = %38, %12, %1
  %41 = phi i1 [ false, %1 ], [ true, %12 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 7
  %43 = zext i1 %41 to i8
  store i8 %43, ptr %42, align 8
  %44 = tail call i64 @ktime_get() #8
  %45 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 7, i32 1
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 8
  store i32 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 9
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 6
  store i8 1, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #8, !annotation !14
  %49 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 12
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 11
  %54 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %57

55:                                               ; preds = %57
  %56 = icmp eq i32 %68, 0
  br i1 %56, label %78, label %70

57:                                               ; preds = %57, %52
  %58 = phi i32 [ 0, %52 ], [ %67, %57 ]
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr %struct.msm_gpu_perfcntr, ptr %59, i32 %58, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %54, align 8
  %63 = shl i32 %61, 2
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = tail call i32 @msm_readl(ptr noundef %64) #8
  %66 = getelementptr [5 x i32], ptr %2, i32 0, i32 %58
  store i32 %65, ptr %66, align 4
  %67 = add nuw i32 %58, 1
  %68 = load i32, ptr %49, align 8
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %57, label %55

70:                                               ; preds = %70, %55
  %71 = phi i32 [ %75, %70 ], [ 0, %55 ]
  %72 = getelementptr [5 x i32], ptr %2, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 10, i32 %71
  store i32 %73, ptr %74, align 4
  %75 = add nuw i32 %71, 1
  %76 = load i32, ptr %49, align 8
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %70, label %78

78:                                               ; preds = %70, %55, %40
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gpu_perfcntr_stop(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 6
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_perfcntr_sample(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [5 x i32], align 4
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 5
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %1, align 4
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  store i32 %16, ptr %2, align 4
  store i32 0, ptr %15, align 8
  store i32 0, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #8, !annotation !14
  %17 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 12
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %3) #8
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 11
  %23 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %27

24:                                               ; preds = %27, %12
  %25 = phi i32 [ 0, %12 ], [ %38, %27 ]
  %26 = icmp sgt i32 %19, 0
  br i1 %26, label %45, label %42

27:                                               ; preds = %27, %21
  %28 = phi i32 [ 0, %21 ], [ %37, %27 ]
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr %struct.msm_gpu_perfcntr, ptr %29, i32 %28, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %23, align 8
  %33 = shl i32 %31, 2
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = tail call i32 @msm_readl(ptr noundef %34) #8
  %36 = getelementptr [5 x i32], ptr %6, i32 0, i32 %28
  store i32 %35, ptr %36, align 4
  %37 = add nuw i32 %28, 1
  %38 = load i32, ptr %17, align 8
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %27, label %24

40:                                               ; preds = %45
  %41 = load i32, ptr %17, align 8
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi i32 [ %41, %40 ], [ %25, %24 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %55

45:                                               ; preds = %45, %24
  %46 = phi i32 [ %53, %45 ], [ 0, %24 ]
  %47 = getelementptr [5 x i32], ptr %6, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 10, i32 %46
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %48, %50
  %52 = getelementptr i32, ptr %4, i32 %46
  store i32 %51, ptr %52, align 4
  %53 = add nuw nsw i32 %46, 1
  %54 = icmp eq i32 %53, %19
  br i1 %54, label %40, label %45

55:                                               ; preds = %55, %42
  %56 = phi i32 [ %60, %55 ], [ 0, %42 ]
  %57 = getelementptr [5 x i32], ptr %6, i32 0, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 10, i32 %56
  store i32 %58, ptr %59, align 4
  %60 = add nuw i32 %56, 1
  %61 = load i32, ptr %17, align 8
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %55, label %63

63:                                               ; preds = %55, %42
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  br label %64

64:                                               ; preds = %63, %5
  %65 = phi i32 [ %19, %63 ], [ -22, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gpu_retire(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %38, %1
  %6 = phi i32 [ %39, %38 ], [ 0, %1 ]
  %7 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 9
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %38, label %18

18:                                               ; preds = %24, %5
  %19 = phi ptr [ %36, %24 ], [ %16, %5 ]
  %20 = getelementptr i8, ptr %19, i32 24
  %21 = load i32, ptr %20, align 8
  %22 = sub i32 %21, %12
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %19, i32 52
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.msm_ringbuffer, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %19, i32 28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_fence, ptr %30, i32 0, i32 4
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  tail call void @msm_update_fence(ptr noundef %28, i32 noundef %33) #8
  %34 = load ptr, ptr %29, align 4
  %35 = tail call i32 @dma_fence_signal(ptr noundef %34) #8
  %36 = load ptr, ptr %19, align 8
  %37 = icmp eq ptr %36, %15
  br i1 %37, label %38, label %18

38:                                               ; preds = %24, %18, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #8
  %39 = add nuw nsw i32 %6, 1
  %40 = load i32, ptr %2, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %5, label %42

42:                                               ; preds = %38, %1
  %43 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 39
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 38
  %46 = tail call zeroext i1 @kthread_queue_work(ptr noundef %44, ptr noundef %45) #8
  tail call fastcc void @update_sw_cntrs(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_sw_cntrs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %68, label %7

7:                                                ; preds = %1
  %8 = tail call i64 @ktime_get() #8
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 7, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = sub i64 %8, %11
  %13 = tail call i64 @llvm.abs.i64(i64 %12, i1 false) #8
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %13, i32 0) #9, !srcloc !15
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = extractvalue { i64, i32 } %14, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %13, i64 %15, i32 %16) #9, !srcloc !16
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = icmp slt i64 %12, 0
  %20 = lshr i64 %18, 9
  %21 = sub nsw i64 0, %20
  %22 = select i1 %19, i64 %21, i64 %20
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, %23
  store i32 %26, ptr %24, align 8
  %27 = load i8, ptr %9, align 8, !range !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %23
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %7
  %34 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 0
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.msm_ringbuffer, ptr %39, i32 0, i32 11
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.msm_ringbuffer, ptr %39, i32 0, i32 13
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %43, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = sub i32 %41, %45
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %52, %37
  %49 = phi i32 [ %50, %52 ], [ 0, %37 ]
  %50 = add nuw nsw i32 %49, 1
  %51 = icmp eq i32 %50, %35
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %50
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.msm_ringbuffer, ptr %54, i32 0, i32 11
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.msm_ringbuffer, ptr %54, i32 0, i32 13
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %58, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = sub i32 %56, %60
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %48

63:                                               ; preds = %52, %48
  %64 = icmp slt i32 %50, %35
  br label %65

65:                                               ; preds = %63, %37, %33
  %66 = phi i1 [ false, %33 ], [ true, %37 ], [ %64, %63 ]
  %67 = zext i1 %66 to i8
  store i8 %67, ptr %9, align 8
  store i64 %8, ptr %10, align 8
  br label %68

68:                                               ; preds = %65, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gpu_submit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 17
  %10 = tail call zeroext i1 @mutex_is_locked(ptr noundef %9) #8
  br i1 %10, label %12, label %11, !prof !12

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 737, i32 noundef 9, ptr noundef null) #8
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #8
  %17 = tail call zeroext i1 @mutex_is_locked(ptr noundef %9) #8
  br i1 %17, label %19, label %18, !prof !12

18:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 9, ptr noundef null) #8
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 20
  %21 = load i8, ptr %20, align 8, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 23
  %25 = load i32, ptr %24, align 4
  tail call void @disable_irq(i32 noundef %25) #8
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i8 0, ptr %20, align 8
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, ptr %24, align 4
  tail call void @enable_irq(i32 noundef %34) #8
  br label %35

35:                                               ; preds = %33, %19
  %36 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 11
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ptr, ...) @msm_rd_dump_submit(ptr noundef %41, ptr noundef %1, ptr noundef null) #8
  tail call fastcc void @update_sw_cntrs(ptr noundef %0)
  %42 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #8, !srcloc !17
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #8, !srcloc !18
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !19

46:                                               ; preds = %35
  %47 = add i32 %44, 1
  %48 = or i32 %47, %44
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %52, label %50, !prof !12

50:                                               ; preds = %46, %35
  %51 = phi i32 [ 2, %35 ], [ 1, %46 ]
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef %51) #8
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 9
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #8
  %55 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 5
  %56 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 8
  %57 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 8, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %55, ptr %57, align 4
  store ptr %56, ptr %55, align 4
  %59 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 5, i32 1
  store ptr %58, ptr %59, align 4
  store volatile ptr %55, ptr %58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #8
  %60 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %60) #8
  %61 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 18
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  tail call void @msm_devfreq_active(ptr noundef %0) #8
  %65 = load i32, ptr %61, align 8
  br label %66

66:                                               ; preds = %64, %52
  %67 = phi i32 [ %65, %64 ], [ %62, %52 ]
  %68 = add i32 %67, 1
  store i32 %68, ptr %61, align 8
  tail call void @mutex_unlock(ptr noundef %60) #8
  %69 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %0, ptr noundef %1) #8
  %73 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 11
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.msm_file_private, ptr %76, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 15
  store i32 %78, ptr %79, align 8
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = getelementptr inbounds %struct.msm_drm_private, ptr %82, i32 0, i32 39
  %85 = load i32, ptr %84, align 8
  %86 = tail call i32 @__msecs_to_jiffies(i32 noundef %85) #8
  %87 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 33
  %88 = add i32 %86, %83
  %89 = tail call i32 @round_jiffies_up(i32 noundef %88) #8
  %90 = tail call i32 @mod_timer(ptr noundef %87, i32 noundef %89) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_rd_dump_submit(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gpu_create_private_address_space(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %4
  %11 = tail call ptr %8(ptr noundef nonnull %0) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 62
  %15 = load ptr, ptr %14, align 64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %15) #8, !srcloc !17
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #8, !srcloc !18
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !19

21:                                               ; preds = %17
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !12

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 2, %17 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef %26) #8
  br label %27

27:                                               ; preds = %25, %21, %13
  %28 = getelementptr inbounds %struct.msm_gem_address_space, ptr %11, i32 0, i32 5
  store ptr %15, ptr %28, align 4
  %29 = icmp eq ptr %11, null
  %30 = or i1 %29, %12
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %10, %4
  %32 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %33 = load ptr, ptr %32, align 8
  %34 = tail call ptr @msm_gem_address_space_get(ptr noundef %33) #8
  br label %35

35:                                               ; preds = %31, %27, %2
  %36 = phi ptr [ null, %2 ], [ %34, %31 ], [ %11, %27 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.msm_gpu_config, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !14
  %10 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 5
  br i1 %12, label %13, label %14, !prof !19

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 834, i32 noundef 9, ptr noundef null) #8
  store i32 5, ptr %10, align 8
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 3
  store ptr %3, ptr %16, align 4
  store ptr %4, ptr %2, align 8
  %17 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %4) #8
  %18 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 39
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = ptrtoint ptr %17 to i32
  store ptr null, ptr %18, align 8
  br label %164

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.kthread_worker, ptr %17, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  tail call void @sched_set_fifo_low(ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 16
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 16, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @msm_gpu_init.__key) #8
  %28 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull @msm_gpu_init.__key.4) #8
  %29 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 37
  tail call void @__init_waitqueue_head(ptr noundef %29, ptr noundef nonnull @.str.7, ptr noundef nonnull @msm_gpu_init.__key.6) #8
  %30 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 38
  %31 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 38, i32 2
  store i64 0, ptr %31, align 4
  store volatile ptr %30, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 38, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 38, i32 1
  store ptr @retire_worker, ptr %33, align 4
  %34 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 36
  %35 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 36, i32 2
  store i64 0, ptr %35, align 4
  store volatile ptr %34, ptr %34, align 4
  %36 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 36, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 36, i32 1
  store ptr @recover_worker, ptr %37, align 4
  %38 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 35
  %39 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 35, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %39, i8 0, i32 12, i1 false)
  store volatile ptr %38, ptr %38, align 4
  %40 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 35, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 35, i32 1
  store ptr @fault_worker, ptr %41, align 8
  %42 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 33
  tail call void @init_timer_key(ptr noundef %42, ptr noundef nonnull @hangcheck_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %43 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 5
  store i32 0, ptr %43, align 8
  %44 = load ptr, ptr %5, align 4
  %45 = tail call ptr @msm_ioremap(ptr noundef %1, ptr noundef %44, ptr noundef %4) #8
  %46 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 22
  store ptr %45, ptr %46, align 8
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %22
  %49 = ptrtoint ptr %45 to i32
  br label %164

50:                                               ; preds = %22
  %51 = tail call i32 @platform_get_irq(ptr noundef %1, i32 noundef 0) #8
  %52 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 23
  store i32 %51, ptr %52, align 4
  %53 = icmp slt i32 %51, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %56, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %51) #8
  br label %164

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %59 = load ptr, ptr %2, align 8
  %60 = tail call i32 @devm_request_threaded_irq(ptr noundef %58, i32 noundef %51, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 4, ptr noundef %59, ptr noundef %2) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %64, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef %65, i32 noundef %60) #8
  br label %164

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 27
  %68 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %58, ptr noundef %67) #8
  %69 = icmp slt i32 %68, 1
  %70 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 28
  br i1 %69, label %79, label %71

71:                                               ; preds = %66
  store i32 %68, ptr %70, align 8
  %72 = load ptr, ptr %67, align 4
  %73 = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %72, i32 noundef %68, ptr noundef nonnull @.str.38) #8
  %74 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 30
  store ptr %73, ptr %74, align 8
  %75 = load ptr, ptr %67, align 4
  %76 = load i32, ptr %70, align 8
  %77 = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %75, i32 noundef %76, ptr noundef nonnull @.str.39) #8
  %78 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 31
  store ptr %77, ptr %78, align 4
  br label %81

79:                                               ; preds = %66
  store i32 0, ptr %70, align 8
  %80 = icmp eq i32 %68, 0
  br i1 %80, label %81, label %164

81:                                               ; preds = %79, %71
  %82 = tail call ptr @msm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.11) #8
  %83 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 29
  store ptr %82, ptr %83, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef %82) #8
  %84 = load ptr, ptr %83, align 4
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store ptr null, ptr %83, align 4
  br label %87

87:                                               ; preds = %86, %81
  %88 = tail call ptr @devm_regulator_get(ptr noundef %58, ptr noundef nonnull @.str.13) #8
  %89 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 25
  store ptr %88, ptr %89, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef %88) #8
  %90 = load ptr, ptr %89, align 4
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store ptr null, ptr %89, align 4
  br label %93

93:                                               ; preds = %92, %87
  %94 = tail call ptr @devm_regulator_get(ptr noundef %58, ptr noundef nonnull @.str.15) #8
  %95 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 26
  store ptr %94, ptr %95, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %94) #8
  %96 = load ptr, ptr %95, align 8
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store ptr null, ptr %95, align 8
  br label %99

99:                                               ; preds = %98, %93
  %100 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 2
  store ptr %1, ptr %100, align 8
  %101 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 4
  %102 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  store ptr %101, ptr %102, align 8
  tail call void @msm_devfreq_init(ptr noundef %2) #8
  %103 = load ptr, ptr %16, align 4
  %104 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %103, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = tail call ptr %105(ptr noundef %2, ptr noundef %1) #8
  %107 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 24
  store ptr %106, ptr %107, align 8
  %108 = icmp eq ptr %106, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %111, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %4) #8
  %112 = load ptr, ptr %107, align 8
  br label %117

113:                                              ; preds = %99
  %114 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  %116 = ptrtoint ptr %106 to i32
  br label %164

117:                                              ; preds = %113, %109
  %118 = phi ptr [ %106, %113 ], [ %112, %109 ]
  %119 = mul i32 %9, 2064
  %120 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 45
  %121 = load i8, ptr %120, align 1, !range !13
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i32 262144, i32 537133056
  %124 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 40
  %125 = call ptr @msm_gem_kernel_new(ptr noundef %0, i32 noundef %119, i32 noundef %123, ptr noundef %118, ptr noundef %124, ptr noundef nonnull %7) #8
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = ptrtoint ptr %125 to i32
  %129 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %130, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19, i32 noundef %128) #8
  br label %164

131:                                              ; preds = %117
  %132 = load ptr, ptr %124, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %132, ptr noundef nonnull @.str.20) #8
  %133 = icmp ugt i32 %9, 4
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i1, ptr @msm_gpu_init.__print_once, align 1
  br i1 %135, label %141, label %136

136:                                              ; preds = %134
  store i1 true, ptr @msm_gpu_init.__print_once, align 1
  %137 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %138, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21, i32 noundef 4) #8
  br label %141

139:                                              ; preds = %131
  %140 = icmp eq i32 %9, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %139, %136, %134
  %142 = phi i32 [ %9, %139 ], [ 4, %136 ], [ 4, %134 ]
  %143 = load i64, ptr %7, align 8
  br label %144

144:                                              ; preds = %155, %141
  %145 = phi i64 [ %158, %155 ], [ %143, %141 ]
  %146 = phi i32 [ %159, %155 ], [ 0, %141 ]
  %147 = phi ptr [ %156, %155 ], [ %125, %141 ]
  %148 = call ptr @msm_ringbuffer_new(ptr noundef %2, i32 noundef %146, ptr noundef %147, i64 noundef %145) #8
  %149 = getelementptr %struct.msm_gpu, ptr %2, i32 0, i32 13, i32 %146
  store ptr %148, ptr %149, align 4
  %150 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = ptrtoint ptr %148 to i32
  %153 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %154, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.22, i32 noundef %146, i32 noundef %152) #8
  br label %164

155:                                              ; preds = %144
  %156 = getelementptr i8, ptr %147, i32 2064
  %157 = load i64, ptr %7, align 8
  %158 = add i64 %157, 2064
  store i64 %158, ptr %7, align 8
  %159 = add nuw nsw i32 %146, 1
  %160 = icmp eq i32 %159, %142
  br i1 %160, label %161, label %144

161:                                              ; preds = %155, %139
  %162 = phi i32 [ 0, %139 ], [ %142, %155 ]
  %163 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 14
  store i32 %162, ptr %163, align 4
  br label %179

164:                                              ; preds = %151, %127, %115, %79, %62, %54, %48, %20
  %165 = phi i32 [ %21, %20 ], [ %49, %48 ], [ %51, %54 ], [ %60, %62 ], [ %68, %79 ], [ %128, %127 ], [ %152, %151 ], [ %116, %115 ]
  %166 = getelementptr %struct.msm_gpu, ptr %2, i32 0, i32 13, i32 0
  %167 = load ptr, ptr %166, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %167) #8
  store ptr null, ptr %166, align 4
  %168 = getelementptr %struct.msm_gpu, ptr %2, i32 0, i32 13, i32 1
  %169 = load ptr, ptr %168, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %169) #8
  store ptr null, ptr %168, align 4
  %170 = getelementptr %struct.msm_gpu, ptr %2, i32 0, i32 13, i32 2
  %171 = load ptr, ptr %170, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %171) #8
  store ptr null, ptr %170, align 4
  %172 = getelementptr %struct.msm_gpu, ptr %2, i32 0, i32 13, i32 3
  %173 = load ptr, ptr %172, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %173) #8
  store ptr null, ptr %172, align 4
  %174 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 40
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 24
  %177 = load ptr, ptr %176, align 8
  call void @msm_gem_kernel_put(ptr noundef %175, ptr noundef %177) #8
  %178 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  store ptr null, ptr %178, align 8
  br label %179

179:                                              ; preds = %164, %161
  %180 = phi i32 [ %165, %164 ], [ 0, %161 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %180
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @retire_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -324
  tail call fastcc void @retire_submits(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @recover_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -292
  %3 = getelementptr i8, ptr %0, i32 -288
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -280
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %2) #8
  %12 = getelementptr i8, ptr %0, i32 -160
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.26, ptr noundef %15) #8
  %16 = getelementptr inbounds %struct.msm_ringbuffer, ptr %11, i32 0, i32 13
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = getelementptr inbounds %struct.msm_ringbuffer, ptr %11, i32 0, i32 9
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #8
  %23 = getelementptr inbounds %struct.msm_ringbuffer, ptr %11, i32 0, i32 8
  br label %24

24:                                               ; preds = %29, %1
  %25 = phi ptr [ %23, %1 ], [ %26, %29 ]
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #8
  br label %75

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %26, i32 24
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, %20
  br i1 %32, label %33, label %24

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %26, i32 -104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %75, label %36

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %0, i32 -112
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  %40 = getelementptr i8, ptr %26, i32 40
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = getelementptr i8, ptr %26, i32 44
  %46 = load ptr, ptr %45, align 4
  %47 = tail call ptr @get_pid_task(ptr noundef %46, i32 noundef 0) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 85
  %51 = tail call noalias ptr @kstrdup(ptr noundef %50, i32 noundef 3264) #8
  %52 = tail call ptr @kstrdup_quotable_cmdline(ptr noundef nonnull %47, i32 noundef 3264) #8
  %53 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #8, !srcloc !17
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #8, !srcloc !21
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %61, label %59, !prof !12

59:                                               ; preds = %57
  tail call void @refcount_warn_saturate(ptr noundef %53, i32 noundef 3) #8
  br label %61

60:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void @__put_task_struct(ptr noundef nonnull %47) #8
  br label %61

61:                                               ; preds = %60, %59, %57
  %62 = icmp ne ptr %51, null
  %63 = icmp ne ptr %52, null
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load ptr, ptr %13, align 4
  %67 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %66, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.27, ptr noundef %67, ptr noundef nonnull %51, ptr noundef nonnull %52) #8
  %68 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 12
  %69 = load ptr, ptr %68, align 8
  tail call void (ptr, ptr, ptr, ...) @msm_rd_dump_submit(ptr noundef %69, ptr noundef nonnull %34, ptr noundef nonnull @.str.28, ptr noundef nonnull %51, ptr noundef nonnull %52) #8
  br label %75

70:                                               ; preds = %61, %36
  %71 = phi ptr [ %52, %61 ], [ null, %36 ]
  %72 = phi ptr [ %51, %61 ], [ null, %36 ]
  %73 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 12
  %74 = load ptr, ptr %73, align 8
  tail call void (ptr, ptr, ptr, ...) @msm_rd_dump_submit(ptr noundef %74, ptr noundef nonnull %34, ptr noundef null) #8
  br label %75

75:                                               ; preds = %70, %65, %33, %28
  %76 = phi ptr [ null, %33 ], [ %34, %70 ], [ %34, %65 ], [ null, %28 ]
  %77 = phi ptr [ null, %33 ], [ %72, %70 ], [ %51, %65 ], [ null, %28 ]
  %78 = phi ptr [ null, %33 ], [ %71, %70 ], [ %52, %65 ], [ null, %28 ]
  %79 = getelementptr i8, ptr %0, i32 -284
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  %82 = tail call i32 @__pm_runtime_resume(ptr noundef %81, i32 noundef 4) #8
  tail call fastcc void @msm_gpu_crashstate_capture(ptr noundef %2, ptr noundef %76, ptr noundef %77, ptr noundef %78)
  %83 = load ptr, ptr %79, align 8
  %84 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3
  %85 = tail call i32 @__pm_runtime_idle(ptr noundef %84, i32 noundef 4) #8
  tail call void @kfree(ptr noundef %78) #8
  tail call void @kfree(ptr noundef %77) #8
  %86 = getelementptr i8, ptr %0, i32 -176
  %87 = load i32, ptr %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %195

89:                                               ; preds = %75
  %90 = getelementptr i8, ptr %0, i32 -192
  br label %91

91:                                               ; preds = %128, %89
  %92 = phi i32 [ 0, %89 ], [ %129, %128 ]
  %93 = getelementptr [4 x ptr], ptr %90, i32 0, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.msm_ringbuffer, ptr %94, i32 0, i32 13
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %96, i32 0, i32 1
  %98 = load volatile i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.msm_ringbuffer, ptr %94, i32 0, i32 9
  %100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %99) #8
  %101 = getelementptr inbounds %struct.msm_ringbuffer, ptr %94, i32 0, i32 8
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %128, label %104

104:                                              ; preds = %91
  %105 = icmp eq ptr %94, %11
  %106 = sext i1 %105 to i32
  %107 = sub i32 %106, %98
  br label %108

108:                                              ; preds = %114, %104
  %109 = phi ptr [ %126, %114 ], [ %102, %104 ]
  %110 = getelementptr i8, ptr %109, i32 24
  %111 = load i32, ptr %110, align 8
  %112 = add i32 %107, %111
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %108
  %115 = getelementptr i8, ptr %109, i32 52
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.msm_ringbuffer, ptr %116, i32 0, i32 15
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr i8, ptr %109, i32 28
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.dma_fence, ptr %120, i32 0, i32 4
  %122 = load i64, ptr %121, align 8
  %123 = trunc i64 %122 to i32
  tail call void @msm_update_fence(ptr noundef %118, i32 noundef %123) #8
  %124 = load ptr, ptr %119, align 4
  %125 = tail call i32 @dma_fence_signal(ptr noundef %124) #8
  %126 = load ptr, ptr %109, align 8
  %127 = icmp eq ptr %126, %101
  br i1 %127, label %128, label %108

128:                                              ; preds = %114, %108, %91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %99, i32 noundef %100) #8
  %129 = add nuw nsw i32 %92, 1
  %130 = load i32, ptr %86, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %91, label %132

132:                                              ; preds = %128
  %133 = icmp sgt i32 %130, 0
  br i1 %133, label %134, label %195

134:                                              ; preds = %132
  %135 = getelementptr i8, ptr %0, i32 -192
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 11
  %138 = load i32, ptr %137, align 8
  %139 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 13
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %140, i32 0, i32 1
  %142 = load volatile i32, ptr %141, align 4
  %143 = sub i32 %138, %142
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %162, label %145

145:                                              ; preds = %149, %134
  %146 = phi i32 [ %147, %149 ], [ 0, %134 ]
  %147 = add nuw nsw i32 %146, 1
  %148 = icmp eq i32 %147, %130
  br i1 %148, label %160, label %149

149:                                              ; preds = %145
  %150 = getelementptr %struct.msm_gpu, ptr %2, i32 0, i32 13, i32 %147
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.msm_ringbuffer, ptr %151, i32 0, i32 11
  %153 = load i32, ptr %152, align 8
  %154 = getelementptr inbounds %struct.msm_ringbuffer, ptr %151, i32 0, i32 13
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %155, i32 0, i32 1
  %157 = load volatile i32, ptr %156, align 4
  %158 = sub i32 %153, %157
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %145

160:                                              ; preds = %149, %145
  %161 = icmp slt i32 %147, %130
  br i1 %161, label %162, label %195

162:                                              ; preds = %160, %134
  tail call fastcc void @retire_submits(ptr noundef %2)
  %163 = load ptr, ptr %79, align 8
  %164 = getelementptr inbounds %struct.platform_device, ptr %163, i32 0, i32 3
  %165 = tail call i32 @__pm_runtime_resume(ptr noundef %164, i32 noundef 4) #8
  %166 = load ptr, ptr %7, align 4
  %167 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %166, i32 0, i32 8
  %168 = load ptr, ptr %167, align 4
  tail call void %168(ptr noundef %2) #8
  %169 = load ptr, ptr %79, align 8
  %170 = getelementptr inbounds %struct.platform_device, ptr %169, i32 0, i32 3
  %171 = tail call i32 @__pm_runtime_idle(ptr noundef %170, i32 noundef 4) #8
  %172 = load i32, ptr %86, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %191, %162
  %175 = phi i32 [ %192, %191 ], [ 0, %162 ]
  %176 = getelementptr [4 x ptr], ptr %135, i32 0, i32 %175
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.msm_ringbuffer, ptr %177, i32 0, i32 9
  %179 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %178) #8
  %180 = getelementptr inbounds %struct.msm_ringbuffer, ptr %177, i32 0, i32 8
  %181 = load ptr, ptr %180, align 8
  %182 = icmp eq ptr %181, %180
  br i1 %182, label %191, label %183

183:                                              ; preds = %183, %174
  %184 = phi ptr [ %189, %183 ], [ %181, %174 ]
  %185 = getelementptr i8, ptr %184, i32 -104
  %186 = load ptr, ptr %7, align 4
  %187 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %186, i32 0, i32 4
  %188 = load ptr, ptr %187, align 4
  tail call void %188(ptr noundef %2, ptr noundef %185) #8
  %189 = load ptr, ptr %184, align 8
  %190 = icmp eq ptr %189, %180
  br i1 %190, label %191, label %183

191:                                              ; preds = %183, %174
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %178, i32 noundef %179) #8
  %192 = add nuw nsw i32 %175, 1
  %193 = load i32, ptr %86, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %174, label %195

195:                                              ; preds = %191, %162, %160, %132, %75
  tail call void @mutex_unlock(ptr noundef %12) #8
  tail call void @msm_gpu_retire(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fault_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -272
  %3 = getelementptr i8, ptr %0, i32 -260
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %2) #8
  %8 = getelementptr i8, ptr %0, i32 -140
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = add i32 %12, 1
  %14 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 9
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 8
  br label %17

17:                                               ; preds = %22, %1
  %18 = phi ptr [ %16, %1 ], [ %19, %22 ]
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  br label %53

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %19, i32 24
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, %13
  br i1 %25, label %26, label %17

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %19, i32 -104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %19, i32 48
  %31 = load i8, ptr %30, align 8, !range !13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %19, i32 44
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @get_pid_task(ptr noundef %35, i32 noundef 0) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 85
  %40 = tail call noalias ptr @kstrdup(ptr noundef %39, i32 noundef 3264) #8
  %41 = tail call ptr @kstrdup_quotable_cmdline(ptr noundef nonnull %36, i32 noundef 3264) #8
  %42 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #8, !srcloc !17
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #8, !srcloc !21
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = icmp sgt i32 %44, 0
  br i1 %47, label %50, label %48, !prof !12

48:                                               ; preds = %46
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef 3) #8
  br label %50

49:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void @__put_task_struct(ptr noundef nonnull %36) #8
  br label %50

50:                                               ; preds = %49, %48, %46, %33
  %51 = phi ptr [ null, %33 ], [ %40, %46 ], [ %40, %48 ], [ %40, %49 ]
  %52 = phi ptr [ null, %33 ], [ %41, %46 ], [ %41, %48 ], [ %41, %49 ]
  store i8 1, ptr %30, align 8
  br label %53

53:                                               ; preds = %50, %26, %21
  %54 = phi ptr [ %27, %50 ], [ null, %26 ], [ null, %21 ]
  %55 = phi ptr [ %51, %50 ], [ null, %26 ], [ null, %21 ]
  %56 = phi ptr [ %52, %50 ], [ null, %26 ], [ null, %21 ]
  %57 = getelementptr i8, ptr %0, i32 -264
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  %60 = tail call i32 @__pm_runtime_resume(ptr noundef %59, i32 noundef 4) #8
  tail call fastcc void @msm_gpu_crashstate_capture(ptr noundef %2, ptr noundef %54, ptr noundef %55, ptr noundef %56)
  %61 = load ptr, ptr %57, align 8
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  %63 = tail call i32 @__pm_runtime_idle(ptr noundef %62, i32 noundef 4) #8
  tail call void @kfree(ptr noundef %56) #8
  tail call void @kfree(ptr noundef %55) #8
  br label %64

64:                                               ; preds = %53, %29
  %65 = getelementptr i8, ptr %0, i32 -24
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %65, i8 0, i32 24, i1 false)
  %66 = getelementptr i8, ptr %0, i32 -80
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.msm_gem_address_space, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %69) #8
  tail call void @mutex_unlock(ptr noundef %8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hangcheck_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -228
  %3 = getelementptr i8, ptr %0, i32 -224
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -216
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8(ptr noundef %2) #8
  %10 = getelementptr inbounds %struct.msm_ringbuffer, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msm_ringbuffer, ptr %9, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 %13, ptr %14, align 4
  br label %39

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.msm_ringbuffer, ptr %9, i32 0, i32 11
  %20 = load i32, ptr %19, align 8
  %21 = sub i32 %13, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  store i32 %13, ptr %14, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.msm_ringbuffer, ptr %9, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.35, ptr noundef %26, i32 noundef %28) #8
  %29 = load ptr, ptr %24, align 4
  %30 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.36, ptr noundef %30, i32 noundef %13) #8
  %31 = load ptr, ptr %24, align 4
  %32 = load ptr, ptr %2, align 8
  %33 = load i32, ptr %19, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.37, ptr noundef %32, i32 noundef %33) #8
  %34 = getelementptr i8, ptr %0, i32 116
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %0, i32 64
  %37 = tail call zeroext i1 @kthread_queue_work(ptr noundef %35, ptr noundef %36) #8
  %38 = load i32, ptr %14, align 4
  br label %39

39:                                               ; preds = %23, %18, %17
  %40 = phi i32 [ %13, %18 ], [ %38, %23 ], [ %13, %17 ]
  %41 = getelementptr inbounds %struct.msm_ringbuffer, ptr %9, i32 0, i32 11
  %42 = load i32, ptr %41, align 8
  %43 = sub i32 %42, %40
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = getelementptr inbounds %struct.msm_drm_private, ptr %48, i32 0, i32 39
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 @__msecs_to_jiffies(i32 noundef %51) #8
  %53 = add i32 %52, %49
  %54 = tail call i32 @round_jiffies_up(i32 noundef %53) #8
  %55 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %54) #8
  br label %56

56:                                               ; preds = %45, %39
  tail call void @msm_gpu_retire(ptr noundef %2)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1) #8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ringbuffer_new(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_ringbuffer_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gpu_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 16
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %7, label %6, !prof !12

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 976, i32 noundef 9, ptr noundef null) #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 0
  %9 = load ptr, ptr %8, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %9) #8
  store ptr null, ptr %8, align 4
  %10 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %11) #8
  store ptr null, ptr %10, align 4
  %12 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %13) #8
  store ptr null, ptr %12, align 4
  %14 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %15) #8
  store ptr null, ptr %14, align 4
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 40
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %19 = load ptr, ptr %18, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %17, ptr noundef %19) #8
  %20 = load ptr, ptr %18, align 8
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.msm_gem_address_space, ptr %20, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %26) #8
  %29 = load ptr, ptr %18, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %29) #8
  br label %30

30:                                               ; preds = %24, %7
  %31 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 39
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @kthread_destroy_worker(ptr noundef nonnull %32) #8
  br label %35

35:                                               ; preds = %34, %30
  tail call void @msm_devfreq_cleanup(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_update_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @retire_submits(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %133

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 19
  %8 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 18
  br label %9

9:                                                ; preds = %129, %5
  %10 = phi i32 [ 0, %5 ], [ %130, %129 ]
  %11 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 9
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 8
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  %18 = getelementptr i8, ptr %16, i32 -104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #8
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %129, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 13
  br label %23

23:                                               ; preds = %122, %21
  %24 = phi ptr [ %18, %21 ], [ %126, %122 ]
  %25 = phi ptr [ %16, %21 ], [ %124, %122 ]
  %26 = getelementptr i8, ptr %25, i32 28
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dma_fence, ptr %27, i32 0, i32 5
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.dma_fence, ptr %27, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dma_fence_ops, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %129, label %38

38:                                               ; preds = %32
  %39 = tail call zeroext i1 %36(ptr noundef %27) #8
  br i1 %39, label %40, label %129

40:                                               ; preds = %38
  %41 = tail call i32 @dma_fence_signal(ptr noundef %27) #8
  br label %42

42:                                               ; preds = %40, %23
  %43 = getelementptr i8, ptr %25, i32 24
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 63
  %46 = load ptr, ptr %22, align 8
  %47 = getelementptr %struct.msm_rbmemptrs, ptr %46, i32 0, i32 2, i32 %45, i32 3
  %48 = load volatile i64, ptr %47, align 8
  %49 = getelementptr %struct.msm_rbmemptrs, ptr %46, i32 0, i32 2, i32 %45, i32 2
  %50 = load volatile i64, ptr %49, align 8
  %51 = sub i64 %48, %50
  %52 = mul i64 %51, 10000
  %53 = lshr i64 %52, 6
  %54 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %53, i64 6148914691236517205) #9, !srcloc !23
  %55 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %53, i64 %54) #9, !srcloc !24
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %42
  %58 = getelementptr %struct.msm_rbmemptrs, ptr %46, i32 0, i32 2, i32 %45
  %59 = getelementptr %struct.msm_rbmemptrs, ptr %46, i32 0, i32 2, i32 %45, i32 1
  %60 = load volatile i64, ptr %59, align 8
  %61 = load volatile i64, ptr %58, align 8
  %62 = sub i64 %60, %61
  %63 = mul i64 %62, 1000
  %64 = trunc i64 %55 to i32
  %65 = icmp ult i64 %63, 4294967296
  br i1 %65, label %66, label %70, !prof !12

66:                                               ; preds = %57
  %67 = trunc i64 %63 to i32
  %68 = udiv i32 %67, %64
  %69 = zext i32 %68 to i64
  br label %73

70:                                               ; preds = %57
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %64, i64 %63) #9, !srcloc !25
  %72 = extractvalue { i64, i64 } %71, 1
  br label %73

73:                                               ; preds = %70, %66, %42
  %74 = phi i64 [ 0, %42 ], [ %69, %66 ], [ %72, %70 ]
  %75 = load volatile i64, ptr %49, align 8
  %76 = load volatile i64, ptr %47, align 8
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_retired, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = tail call ptr @llvm.thread.pointer() #8
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 5
  %84 = getelementptr i32, ptr @__cpu_online_mask, i32 %83
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %82, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %91 = tail call i32 @__traceiter_msm_gpu_submit_retired(ptr noundef null, ptr noundef nonnull %24, i64 noundef %55, i64 noundef %74, i64 noundef %75, i64 noundef %76) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  br label %92

92:                                               ; preds = %90, %79, %73
  tail call void @msm_submit_retire(ptr noundef nonnull %24) #8
  %93 = load ptr, ptr %6, align 8
  %94 = tail call i64 @ktime_get_mono_fast_ns() #8
  %95 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %94, ptr %95, align 8
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  %98 = tail call i32 @__pm_runtime_suspend(ptr noundef %97, i32 noundef 13) #8
  %99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %100 = getelementptr i8, ptr %25, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %25, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %101, ptr %103, align 4
  store volatile ptr %102, ptr %101, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %100, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %99) #8
  tail call void @mutex_lock(ptr noundef %7) #8
  %104 = load i32, ptr %8, align 8
  %105 = add i32 %104, -1
  store i32 %105, ptr %8, align 8
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109, !prof !19

107:                                              ; preds = %92
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 669, i32 noundef 9, ptr noundef null) #8
  %108 = load i32, ptr %8, align 8
  br label %109

109:                                              ; preds = %107, %92
  %110 = phi i32 [ %108, %107 ], [ %105, %92 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  tail call void @msm_devfreq_idle(ptr noundef %0) #8
  br label %113

113:                                              ; preds = %112, %109
  tail call void @mutex_unlock(ptr noundef %7) #8
  %114 = getelementptr i8, ptr %25, i32 -16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %114) #8, !srcloc !17
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %114, ptr %114, i32 1, ptr elementtype(i32) %114) #8, !srcloc !21
  %116 = extractvalue { i32, i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = icmp sgt i32 %116, 0
  br i1 %119, label %122, label %120, !prof !12

120:                                              ; preds = %118
  tail call void @refcount_warn_saturate(ptr noundef %114, i32 noundef 3) #8
  br label %122

121:                                              ; preds = %113
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void @__msm_gem_submit_destroy(ptr noundef %114) #8
  br label %122

122:                                              ; preds = %121, %120, %118
  %123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %124 = load volatile ptr, ptr %15, align 4
  %125 = icmp eq ptr %124, %15
  %126 = getelementptr i8, ptr %124, i32 -104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %123) #8
  %127 = icmp eq ptr %126, null
  %128 = or i1 %125, %127
  br i1 %128, label %129, label %23

129:                                              ; preds = %122, %38, %32, %9
  %130 = add nuw nsw i32 %10, 1
  %131 = load i32, ptr %2, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %9, label %133

133:                                              ; preds = %129, %1
  %134 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 37
  tail call void @__wake_up(ptr noundef %134, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_submit_retire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_submit_retired(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__msm_gem_submit_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_quotable_cmdline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_gpu_crashstate_capture(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %143, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 43
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %143

14:                                               ; preds = %10
  %15 = tail call ptr %8(ptr noundef %0) #8
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %143, label %19

19:                                               ; preds = %14
  %20 = tail call noalias ptr @kstrdup(ptr noundef %2, i32 noundef 3264) #8
  %21 = getelementptr inbounds %struct.msm_gpu_state, ptr %15, i32 0, i32 6
  store ptr %20, ptr %21, align 4
  %22 = tail call noalias ptr @kstrdup(ptr noundef %3, i32 noundef 3264) #8
  %23 = getelementptr inbounds %struct.msm_gpu_state, ptr %15, i32 0, i32 7
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.msm_gpu_state, ptr %15, i32 0, i32 8
  %25 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 34
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %24, ptr noundef align 8 dereferenceable(24) %25, i32 24, i1 false)
  %26 = icmp eq ptr %1, null
  br i1 %26, label %138, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 19
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr @rd_full, align 1, !range !13
  %33 = icmp eq i8 %32, 0
  br label %43

34:                                               ; preds = %53, %27
  %35 = phi i32 [ 0, %27 ], [ %54, %53 ]
  %36 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 18
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %34
  %40 = load i8, ptr @rd_full, align 1, !range !13
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 21
  br label %57

43:                                               ; preds = %53, %31
  %44 = phi i32 [ 0, %31 ], [ %54, %53 ]
  %45 = phi i32 [ 0, %31 ], [ %55, %53 ]
  br i1 %33, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %45
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46, %43
  %52 = add i32 %44, 1
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %52, %51 ], [ %44, %46 ]
  %55 = add nuw i32 %45, 1
  %56 = icmp eq i32 %55, %29
  br i1 %56, label %34, label %43

57:                                               ; preds = %70, %39
  %58 = phi i32 [ %35, %39 ], [ %71, %70 ]
  %59 = phi i32 [ 0, %39 ], [ %72, %70 ]
  br i1 %41, label %60, label %69

60:                                               ; preds = %57
  %61 = load ptr, ptr %42, align 8
  %62 = getelementptr %struct.anon.81, ptr %61, i32 %59, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %63
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  %68 = add i32 %58, 1
  br i1 %67, label %70, label %69

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %69, %60
  %71 = phi i32 [ %58, %69 ], [ %68, %60 ]
  %72 = add nuw i32 %59, 1
  %73 = icmp eq i32 %72, %37
  br i1 %73, label %74, label %57

74:                                               ; preds = %70, %34
  %75 = phi i32 [ %35, %34 ], [ %71, %70 ]
  %76 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %75, i32 24) #8
  %77 = extractvalue { i32, i1 } %76, 1
  br i1 %77, label %78, label %80, !prof !19

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.msm_gpu_state, ptr %15, i32 0, i32 10
  store ptr null, ptr %79, align 4
  br label %138

80:                                               ; preds = %74
  %81 = extractvalue { i32, i1 } %76, 0
  %82 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %81, i32 noundef 3520) #10
  %83 = getelementptr inbounds %struct.msm_gpu_state, ptr %15, i32 0, i32 10
  store ptr %82, ptr %83, align 4
  %84 = icmp eq ptr %82, null
  br i1 %84, label %138, label %85

85:                                               ; preds = %104, %80
  %86 = phi ptr [ %105, %104 ], [ %82, %80 ]
  %87 = phi i32 [ %106, %104 ], [ 0, %80 ]
  %88 = load i32, ptr %28, align 8
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load i8, ptr @rd_full, align 1, !range !13
  %92 = icmp eq i8 %91, 0
  %93 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %87
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 4
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %92, i1 %96, i1 false
  br i1 %97, label %104, label %98

98:                                               ; preds = %90
  %99 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %87, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %87, i32 2
  %102 = load i64, ptr %101, align 8
  tail call fastcc void @msm_gpu_crashstate_get_bo(ptr noundef %15, ptr noundef %100, i64 noundef %102, i32 noundef %94)
  %103 = load ptr, ptr %83, align 4
  br label %104

104:                                              ; preds = %98, %90
  %105 = phi ptr [ %103, %98 ], [ %86, %90 ]
  %106 = add nuw i32 %87, 1
  %107 = icmp eq ptr %105, null
  br i1 %107, label %138, label %85

108:                                              ; preds = %85
  %109 = icmp eq ptr %86, null
  br i1 %109, label %138, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 21
  br label %112

112:                                              ; preds = %134, %110
  %113 = phi ptr [ %86, %110 ], [ %135, %134 ]
  %114 = phi i32 [ 0, %110 ], [ %136, %134 ]
  %115 = load i32, ptr %36, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load ptr, ptr %111, align 8
  %119 = getelementptr %struct.anon.81, ptr %118, i32 %114, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = load i8, ptr @rd_full, align 1, !range !13
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %120
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %120, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %120, i32 2
  %132 = load i64, ptr %131, align 8
  tail call fastcc void @msm_gpu_crashstate_get_bo(ptr noundef %15, ptr noundef %130, i64 noundef %132, i32 noundef %125)
  %133 = load ptr, ptr %83, align 4
  br label %134

134:                                              ; preds = %128, %123, %117
  %135 = phi ptr [ %113, %117 ], [ %133, %128 ], [ %113, %123 ]
  %136 = add nuw i32 %114, 1
  %137 = icmp eq ptr %135, null
  br i1 %137, label %138, label %112

138:                                              ; preds = %134, %112, %108, %104, %80, %78, %19
  store ptr %15, ptr %11, align 4
  %139 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.drm_device, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  tail call void @dev_coredumpm(ptr noundef %142, ptr noundef nonnull @__this_module, ptr noundef %0, i32 noundef 0, i32 noundef 3264, ptr noundef nonnull @msm_gpu_devcoredump_read, ptr noundef nonnull @msm_gpu_devcoredump_free) #8
  br label %143

143:                                              ; preds = %138, %14, %10, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_gpu_crashstate_get_bo(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.msm_gpu_state, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_gpu_state, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr %struct.msm_gpu_state_bo, ptr %6, i32 %8
  %10 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr %struct.msm_gpu_state_bo, ptr %6, i32 %8, i32 1
  store i32 %11, ptr %12, align 8
  store i64 %2, ptr %9, align 8
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, ptr %10, align 8
  %21 = tail call noalias ptr @kvmalloc_node(i32 noundef %20, i32 noundef 3264, i32 noundef -1) #10
  %22 = getelementptr %struct.msm_gpu_state_bo, ptr %6, i32 %8, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 9
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @ww_mutex_lock(ptr noundef %26, ptr noundef null) #8
  %28 = tail call ptr @msm_gem_get_vaddr_active(ptr noundef %1) #8
  %29 = load ptr, ptr %25, align 8
  tail call void @ww_mutex_unlock(ptr noundef %29) #8
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %31 = load ptr, ptr %22, align 4
  br i1 %30, label %32, label %33

32:                                               ; preds = %24
  tail call void @kvfree(ptr noundef %31) #8
  store ptr null, ptr %22, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, ptr %10, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr align 1 %28, i32 %34, i1 false)
  tail call void @msm_gem_put_vaddr(ptr noundef %1) #8
  br label %35

35:                                               ; preds = %33, %32, %19, %15, %4
  %36 = load i32, ptr %7, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %7, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpu_devcoredump_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.drm_print_iterator, align 4
  %7 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 43
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @mutex_unlock(ptr noundef %8) #8
  br label %64

13:                                               ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #8, !srcloc !17
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #8, !srcloc !18
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !19

17:                                               ; preds = %13
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !12

21:                                               ; preds = %17, %13
  %22 = phi i32 [ 2, %13 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef %22) #8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %23
  store ptr %0, ptr %6, align 4
  %27 = getelementptr inbounds %struct.drm_print_iterator, ptr %6, i32 0, i32 3
  %28 = trunc i64 %1 to i32
  %29 = getelementptr inbounds %struct.drm_print_iterator, ptr %6, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_print_iterator, ptr %6, i32 0, i32 2
  store i32 %2, ptr %30, align 4
  store i32 0, ptr %27, align 4, !noalias !28
  store ptr @__drm_printfn_coredump, ptr %7, align 4
  %31 = getelementptr inbounds i8, ptr %7, i32 4
  store ptr @__drm_puts_coredump, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %7, i32 8
  store ptr %6, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %7, i32 12
  store ptr null, ptr %33, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.29) #8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.30) #8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #8
  %34 = getelementptr inbounds %struct.msm_gpu_state, ptr %24, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.msm_gpu_state, ptr %24, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.32, i64 noundef %35, i32 noundef %37) #8
  %38 = getelementptr inbounds %struct.msm_gpu_state, ptr %24, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.33, ptr noundef nonnull %39) #8
  br label %42

42:                                               ; preds = %41, %26
  %43 = getelementptr inbounds %struct.msm_gpu_state, ptr %24, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.34, ptr noundef nonnull %44) #8
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %7) #8
  call void @mutex_lock(ptr noundef %8) #8
  %52 = load ptr, ptr %9, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %48, align 4
  %56 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %55, i32 0, i32 14
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef nonnull %52) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store ptr null, ptr %9, align 4
  br label %61

61:                                               ; preds = %60, %54, %47
  call void @mutex_unlock(ptr noundef %8) #8
  %62 = load i32, ptr %30, align 4
  %63 = sub i32 %2, %62
  br label %64

64:                                               ; preds = %61, %23, %12
  %65 = phi i32 [ %63, %61 ], [ 0, %23 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpu_devcoredump_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store ptr null, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_coredump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_coredump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_bulk_get_clock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 2155820972}
!9 = !{i64 2155821122}
!10 = !{i64 2155808538}
!11 = !{i64 2155808690}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
!15 = !{i64 1333490, i64 1333517, i64 1333539, i64 1333567}
!16 = !{i64 1333898, i64 1333925, i64 1333958, i64 1333979, i64 1334006, i64 1334032}
!17 = !{i64 413182, i64 2147903153, i64 2147903179, i64 2147903226, i64 2147903248, i64 2147903276, i64 2147903296}
!18 = !{i64 2147916823, i64 2147916855, i64 2147916884, i64 2147916918, i64 2147916949, i64 2147916972}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148017021}
!21 = !{i64 2147919180, i64 2147919212, i64 2147919241, i64 2147919275, i64 2147919306, i64 2147919329}
!22 = !{i64 2149459617}
!23 = !{i64 1333373, i64 1333400}
!24 = !{i64 1333713, i64 1333740, i64 1333774, i64 1333795}
!25 = !{i64 2148819034, i64 2148819314, i64 2148819648, i64 2148819982}
!26 = !{i64 2155728212}
!27 = !{i64 2155728436}
!28 = !{!29}
!29 = distinct !{!29, !30, !"drm_coredump_printer: argument 0"}
!30 = distinct !{!30, !"drm_coredump_printer"}
