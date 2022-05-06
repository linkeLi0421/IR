; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_rd.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_rd.c"
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
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
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
%struct.msm_rd_state = type { ptr, i8, ptr, %struct.mutex, %struct.wait_queue_head, %struct.circ_buf, [512 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.__va_list = type { ptr }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.84] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.82, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.82 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.anon.84 = type { i32, %union.anon.85, i64 }
%union.anon.85 = type { ptr }
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
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
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
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.anon.83 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.68 = type { ptr }

@rd_full = dso_local global i8 0, align 1
@__UNIQUE_ID_rd_full296 = internal constant [72 x i8] c"parm=rd_full:If true, $debugfs/.../rd will snapshot all buffer contents\00", section ".modinfo", align 1
@__param_str_rd_full = internal constant [8 x i8] c"rd_full\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_rd_full = internal constant %struct.kernel_param { ptr @__param_str_rd_full, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @rd_full } }, section "__param", align 4
@__UNIQUE_ID_rd_fulltype297 = internal constant [22 x i8] c"parmtype=rd_full:bool\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [3 x i8] c"rd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hangrd\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/msm/msm_rd.c\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%.*s/%d: fence=%u\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"???/%d: fence=%u\00", align 1
@rd_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"&rd->read_lock\00", align 1
@rd_init.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"&rd->fifo_event\00", align 1
@rd_debugfs_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @rd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rd_open, ptr null, ptr @rd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_rd_full296, ptr @__UNIQUE_ID_rd_fulltype297, ptr @__param_rd_full], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_rd_debugfs_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 568) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 4
  store ptr %14, ptr %11, align 8
  %15 = getelementptr inbounds %struct.msm_rd_state, ptr %11, i32 0, i32 6
  %16 = getelementptr inbounds %struct.msm_rd_state, ptr %11, i32 0, i32 5
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.msm_rd_state, ptr %11, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef nonnull @rd_init.__key) #10
  %18 = getelementptr inbounds %struct.msm_rd_state, ptr %11, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef nonnull @rd_init.__key.6) #10
  %19 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext -32476, ptr noundef %20, ptr noundef nonnull %11, ptr noundef nonnull @rd_debugfs_fops) #10
  %22 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %38, label %23

23:                                               ; preds = %13
  store ptr %11, ptr %6, align 4
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 568) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 4
  store ptr %28, ptr %25, align 8
  %29 = getelementptr inbounds %struct.msm_rd_state, ptr %25, i32 0, i32 6
  %30 = getelementptr inbounds %struct.msm_rd_state, ptr %25, i32 0, i32 5
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.msm_rd_state, ptr %25, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str.5, ptr noundef nonnull @rd_init.__key) #10
  %32 = getelementptr inbounds %struct.msm_rd_state, ptr %25, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %32, ptr noundef nonnull @.str.7, ptr noundef nonnull @rd_init.__key.6) #10
  %33 = load ptr, ptr %19, align 4
  %34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32476, ptr noundef %33, ptr noundef nonnull %25, ptr noundef nonnull @rd_debugfs_fops) #10
  %35 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 12
  store ptr %25, ptr %37, align 8
  br label %50

38:                                               ; preds = %27, %23, %13, %9
  %39 = phi ptr [ %11, %13 ], [ inttoptr (i32 -12 to ptr), %9 ], [ %25, %27 ], [ inttoptr (i32 -12 to ptr), %23 ]
  %40 = ptrtoint ptr %39 to i32
  %41 = load ptr, ptr %6, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @kfree(ptr noundef nonnull %41) #10
  br label %44

44:                                               ; preds = %43, %38
  store ptr null, ptr %6, align 4
  %45 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 12
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @kfree(ptr noundef nonnull %46) #10
  br label %49

49:                                               ; preds = %48, %44
  store ptr null, ptr %45, align 8
  br label %50

50:                                               ; preds = %49, %36, %1
  %51 = phi i32 [ %40, %49 ], [ 0, %36 ], [ 0, %1 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_rd_debugfs_cleanup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_drm_private, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_rd_dump_submit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 1
  %11 = alloca %struct.__va_list, align 4
  %12 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %10, i8 0, i32 256, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.msm_rd_state, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %137, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.msm_gpu, ptr %18, i32 0, i32 17
  %20 = tail call zeroext i1 @mutex_is_locked(ptr noundef %19) #10
  br i1 %20, label %22, label %21, !prof !10

21:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 360, i32 noundef 9, ptr noundef null) #10
  br label %22

22:                                               ; preds = %21, %16
  %23 = icmp eq ptr %2, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %11)
  %25 = load i32, ptr %11, align 4
  %26 = insertvalue [1 x i32] poison, i32 %25, 0
  %27 = call i32 @vscnprintf(ptr noundef nonnull %10, i32 noundef 256, ptr noundef nonnull %2, [1 x i32] %26) #10
  call void @llvm.va_end(ptr nonnull %11)
  %28 = add i32 %27, 3
  %29 = and i32 %28, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  store i32 2, ptr %8, align 4
  store i32 %29, ptr %9, align 4
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %30

30:                                               ; preds = %24, %22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %31 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = call ptr @pid_task(ptr noundef %32, i32 noundef 0) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 85
  %37 = load ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pid, ptr %37, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %41, %39 ], [ 0, %35 ]
  %44 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %45 = load i32, ptr %44, align 8
  %46 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %10, i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef 16, ptr noundef %36, i32 noundef %43, i32 noundef %45) #10
  br label %58

47:                                               ; preds = %30
  %48 = load ptr, ptr %31, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.pid, ptr %48, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %52, %50 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %56 = load i32, ptr %55, align 8
  %57 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %10, i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %54, i32 noundef %56) #10
  br label %58

58:                                               ; preds = %53, %42
  %59 = phi i32 [ %46, %42 ], [ %57, %53 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %60 = add i32 %59, 3
  %61 = and i32 %60, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 2, ptr %6, align 4
  store i32 %61, ptr %7, align 4
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %61) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %62 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 19
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %81, %58
  %66 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 18
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %137, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 21
  %71 = load i8, ptr @rd_full, align 1, !range !9
  br label %92

72:                                               ; preds = %81, %58
  %73 = phi i32 [ %83, %81 ], [ 0, %58 ]
  %74 = load i8, ptr @rd_full, align 1, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %73
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i1 [ true, %72 ], [ %80, %76 ]
  call fastcc void @snapshot_buf(ptr noundef %0, ptr noundef %1, i32 noundef %73, i64 noundef 0, i32 noundef 0, i1 noundef zeroext %82)
  %83 = add nuw i32 %73, 1
  %84 = load i32, ptr %62, align 8
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %72, label %65

86:                                               ; preds = %113
  %87 = icmp eq i32 %114, 0
  br i1 %87, label %137, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 21
  %90 = getelementptr inbounds i32, ptr %12, i32 1
  %91 = getelementptr inbounds i32, ptr %12, i32 2
  br label %118

92:                                               ; preds = %113, %69
  %93 = phi i32 [ %67, %69 ], [ %114, %113 ]
  %94 = phi i8 [ %71, %69 ], [ %115, %113 ]
  %95 = phi i32 [ 0, %69 ], [ %116, %113 ]
  %96 = load ptr, ptr %70, align 8
  %97 = getelementptr %struct.anon.83, ptr %96, i32 %95, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i8 %94, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %92
  %101 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %95
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = getelementptr %struct.anon.83, ptr %96, i32 %95, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr %struct.anon.83, ptr %96, i32 %95, i32 2
  %109 = load i64, ptr %108, align 8
  %110 = shl i32 %98, 2
  call fastcc void @snapshot_buf(ptr noundef %0, ptr noundef %1, i32 noundef %107, i64 noundef %109, i32 noundef %110, i1 noundef zeroext true)
  %111 = load i8, ptr @rd_full, align 1, !range !9
  %112 = load i32, ptr %66, align 4
  br label %113

113:                                              ; preds = %105, %100, %92
  %114 = phi i32 [ %93, %92 ], [ %112, %105 ], [ %93, %100 ]
  %115 = phi i8 [ %94, %92 ], [ %111, %105 ], [ 0, %100 ]
  %116 = add nuw i32 %95, 1
  %117 = icmp ult i32 %116, %114
  br i1 %117, label %92, label %86

118:                                              ; preds = %133, %88
  %119 = phi i32 [ %114, %88 ], [ %134, %133 ]
  %120 = phi i32 [ 0, %88 ], [ %135, %133 ]
  %121 = load ptr, ptr %89, align 8
  %122 = getelementptr %struct.anon.83, ptr %121, i32 %120
  %123 = load i32, ptr %122, align 8
  switch i32 %123, label %133 [
    i32 1, label %124
    i32 3, label %124
  ]

124:                                              ; preds = %118, %118
  %125 = getelementptr %struct.anon.83, ptr %121, i32 %120, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr %struct.anon.83, ptr %121, i32 %120, i32 2
  %128 = load i64, ptr %127, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, ptr %12, align 4
  store i32 %126, ptr %90, align 4
  %130 = lshr i64 %128, 32
  %131 = trunc i64 %130 to i32
  store i32 %131, ptr %91, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 6, ptr %4, align 4
  store i32 12, ptr %5, align 4
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %132 = load i32, ptr %66, align 4
  br label %133

133:                                              ; preds = %124, %118
  %134 = phi i32 [ %119, %118 ], [ %132, %124 ]
  %135 = add nuw i32 %120, 1
  %136 = icmp ult i32 %135, %134
  br i1 %136, label %118, label %137

137:                                              ; preds = %133, %86, %65, %3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snapshot_buf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %2
  %13 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq i64 %3, 0
  %16 = getelementptr %struct.msm_gem_submit, ptr %1, i32 0, i32 22, i32 %2, i32 2
  %17 = load i64, ptr %16, align 8
  br i1 %15, label %24, label %18

18:                                               ; preds = %6
  %19 = sub i64 %3, %17
  %20 = trunc i64 %19 to i32
  %21 = trunc i64 %3 to i32
  %22 = lshr i64 %3, 32
  %23 = trunc i64 %22 to i32
  br label %30

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = trunc i64 %17 to i32
  %28 = lshr i64 %17, 32
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i32 [ %27, %24 ], [ %21, %18 ]
  %32 = phi i32 [ %29, %24 ], [ %23, %18 ]
  %33 = phi i32 [ %26, %24 ], [ %4, %18 ]
  %34 = phi i32 [ 0, %24 ], [ %20, %18 ]
  store i32 %31, ptr %11, align 4
  %35 = getelementptr inbounds i32, ptr %11, i32 1
  store i32 %33, ptr %35, align 4
  %36 = getelementptr inbounds i32, ptr %11, i32 2
  store i32 %32, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  store i32 3, ptr %9, align 4
  store i32 12, ptr %10, align 4
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  br i1 %5, label %37, label %51

37:                                               ; preds = %30
  %38 = load i32, ptr %12, align 8
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 9
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i32 @ww_mutex_lock(ptr noundef %43, ptr noundef null) #10
  %45 = tail call ptr @msm_gem_get_vaddr_active(ptr noundef %14) #10
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %45, i32 %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 12, ptr %7, align 4
  store i32 %33, ptr %8, align 4
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 4) #10
  tail call fastcc void @rd_write(ptr noundef %0, ptr noundef %48, i32 noundef %33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  tail call void @msm_gem_put_vaddr_locked(ptr noundef %14) #10
  br label %49

49:                                               ; preds = %47, %41
  %50 = load ptr, ptr %42, align 8
  tail call void @ww_mutex_unlock(ptr noundef %50) #10
  br label %51

51:                                               ; preds = %49, %37, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rd_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.msm_rd_state, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_rd_state, ptr %7, i32 0, i32 5, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = getelementptr inbounds %struct.msm_rd_state, ptr %7, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.msm_rd_state, ptr %7, i32 0, i32 5, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %10, align 4
  %17 = sub i32 %15, %16
  %18 = and i32 %17, 511
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #10
  %21 = getelementptr inbounds %struct.msm_rd_state, ptr %7, i32 0, i32 4
  %22 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #10
  %23 = load i32, ptr %14, align 4
  %24 = load i32, ptr %10, align 4
  %25 = sub i32 %23, %24
  %26 = and i32 %25, 511
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %31, %20
  %29 = phi i32 [ %32, %31 ], [ %22, %20 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  call void @schedule() #10
  %32 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #10
  %33 = load i32, ptr %14, align 4
  %34 = load i32, ptr %10, align 4
  %35 = sub i32 %33, %34
  %36 = and i32 %35, 511
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %28, label %38

38:                                               ; preds = %31, %20
  call void @finish_wait(ptr noundef %21, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %39 = load i32, ptr %10, align 4
  %40 = load i32, ptr %14, align 4
  br label %42

41:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  br label %78

42:                                               ; preds = %38, %4
  %43 = phi i32 [ %15, %4 ], [ %40, %38 ]
  %44 = phi i32 [ %16, %4 ], [ %39, %38 ]
  %45 = sub i32 512, %44
  %46 = add i32 %43, %45
  %47 = and i32 %46, 511
  %48 = call i32 @llvm.smin.i32(i32 %47, i32 %45)
  %49 = call i32 @llvm.smin.i32(i32 %48, i32 %2)
  %50 = icmp slt i32 %49, 0
  %51 = load i1, ptr @check_copy_size.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !13

54:                                               ; preds = %42
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %55

55:                                               ; preds = %54, %42
  br i1 %50, label %78, label %56, !prof !13

56:                                               ; preds = %55
  %57 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %49, i32 -1090519040) #11, !srcloc !14
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #10
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #12, !srcloc !15
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !17
  %66 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %12, i32 noundef %49) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #10, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !17
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %66, %60 ], [ %49, %56 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %71 = load i32, ptr %10, align 4
  %72 = add i32 %71, %49
  %73 = and i32 %72, 511
  store volatile i32 %73, ptr %10, align 4
  %74 = zext i32 %49 to i64
  %75 = load i64, ptr %3, align 8
  %76 = add i64 %75, %74
  store i64 %76, ptr %3, align 8
  %77 = getelementptr inbounds %struct.msm_rd_state, ptr %7, i32 0, i32 4
  call void @__wake_up(ptr noundef %77, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %78

78:                                               ; preds = %70, %67, %55, %41
  %79 = phi i32 [ %49, %70 ], [ -14, %67 ], [ %29, %41 ], [ -14, %55 ]
  call void @mutex_unlock(ptr noundef %13) #10
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rd_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %13, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.msm_rd_state, ptr %8, i32 0, i32 1
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %8, ptr %21, align 8
  store i8 1, ptr %17, align 4
  %22 = getelementptr inbounds %struct.msm_gpu, ptr %13, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef nonnull %13, i32 noundef 1, ptr noundef nonnull %5) #10
  %26 = load i64, ptr %5, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 13, ptr %3, align 4
  store i32 4, ptr %4, align 4
  call fastcc void @rd_write(ptr noundef %8, ptr noundef nonnull %3, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 4) #10
  call fastcc void @rd_write(ptr noundef %8, ptr noundef nonnull %6, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %28

28:                                               ; preds = %20, %15
  %29 = phi i32 [ 0, %20 ], [ -16, %15 ]
  call void @mutex_unlock(ptr noundef %16) #10
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i32 [ %29, %28 ], [ -19, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rd_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_rd_state, ptr %4, i32 0, i32 1
  store i8 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.msm_rd_state, ptr %4, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rd_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.msm_rd_state, ptr %0, i32 0, i32 5
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.msm_rd_state, ptr %0, i32 0, i32 5, i32 1
  %9 = getelementptr inbounds %struct.msm_rd_state, ptr %0, i32 0, i32 5, i32 2
  %10 = getelementptr inbounds %struct.msm_rd_state, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.msm_rd_state, ptr %0, i32 0, i32 4
  br label %12

12:                                               ; preds = %49, %7
  %13 = phi i32 [ %2, %7 ], [ %62, %49 ]
  %14 = phi ptr [ %1, %7 ], [ %63, %49 ]
  %15 = load ptr, ptr %5, align 4
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = load i32, ptr %9, align 4
  %19 = xor i32 %16, -1
  %20 = add i32 %18, %19
  %21 = and i32 %20, 511
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %12
  %24 = load i8, ptr %10, align 4, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #10
  %27 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %4, i32 noundef 2) #10
  %28 = load i32, ptr %9, align 4
  %29 = load i32, ptr %8, align 4
  %30 = xor i32 %29, -1
  %31 = add i32 %28, %30
  %32 = and i32 %31, 511
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %37, %26
  %35 = load i8, ptr %10, align 4, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  call void @schedule() #10
  %38 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %4, i32 noundef 2) #10
  %39 = load i32, ptr %9, align 4
  %40 = load i32, ptr %8, align 4
  %41 = xor i32 %40, -1
  %42 = add i32 %39, %41
  %43 = and i32 %42, 511
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %34, label %45

45:                                               ; preds = %37, %34, %26
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %46

46:                                               ; preds = %45, %12
  %47 = load i8, ptr %10, align 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %8, align 4
  %51 = sub i32 511, %50
  %52 = load i32, ptr %9, align 4
  %53 = add i32 %51, %52
  %54 = and i32 %53, 511
  %55 = icmp sgt i32 %54, %51
  %56 = sub i32 512, %50
  %57 = select i1 %55, i32 %56, i32 %54
  %58 = call i32 @llvm.smin.i32(i32 %13, i32 %57)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %14, i32 %58, i1 false)
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %59 = load i32, ptr %8, align 4
  %60 = add i32 %58, %59
  %61 = and i32 %60, 511
  store volatile i32 %61, ptr %8, align 4
  %62 = sub i32 %13, %58
  %63 = getelementptr i8, ptr %14, i32 %58
  call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  %64 = icmp sgt i32 %62, 0
  br i1 %64, label %12, label %65

65:                                               ; preds = %49, %46, %23, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149168570}
!12 = !{i64 2149168787}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2150981499, i64 2150981524}
!15 = !{i64 3477033}
!16 = !{i64 3477230}
!17 = !{i64 2150962509}
!18 = !{i64 2155706154}
!19 = !{i64 2155696681}
