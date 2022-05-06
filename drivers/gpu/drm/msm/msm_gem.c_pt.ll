; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.msm_gem_object = type { %struct.drm_gem_object, i32, i8, i8, i8, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, [32 x i8], i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.77, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.83, ptr, i32, ptr, i8, i32 }
%struct.anon.77 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.83 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.98, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.98 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.msm_gem_vma = type { %struct.drm_mm_node, i64, ptr, %struct.list_head, i8, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.74 = type { ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.97, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.97 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.33, ptr }
%union.anon.33 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.anon.99 = type { i32, i32 }
%struct.msm_gem_stats = type { %struct.anon.99, %struct.anon.99, %struct.anon.99, %struct.anon.99, %struct.anon.99 }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__va_list = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.22, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.24 = type { ptr, i32, i32, i32 }

@msm_gem_get_pages._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_get_pages = private unnamed_addr constant [18 x i8] c"msm_gem_get_pages\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/msm/msm_gem.c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"msm_obj->madv != 0\00", align 1
@msm_gem_put_pages._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_put_pages = private unnamed_addr constant [18 x i8] c"msm_gem_put_pages\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"msm_obj->pin_count < 0\00", align 1
@msm_gem_iova._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_iova = private unnamed_addr constant [13 x i8] c"msm_gem_iova\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"!vma\00", align 1
@msm_gem_unpin_iova_locked._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_unpin_iova_locked = private unnamed_addr constant [26 x i8] c"msm_gem_unpin_iova_locked\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"!msm_gem_is_locked(obj)\00", align 1
@msm_gem_unpin_iova_locked._rs.6 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@msm_gem_unpin_iova_locked._rs.7 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@msm_gem_put_vaddr_locked._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_put_vaddr_locked = private unnamed_addr constant [25 x i8] c"msm_gem_put_vaddr_locked\00", align 1
@msm_gem_put_vaddr_locked._rs.9 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"msm_obj->vmap_count < 1\00", align 1
@msm_gem_purge._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_purge = private unnamed_addr constant [14 x i8] c"msm_gem_purge\00", align 1
@msm_gem_purge._rs.11 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"!is_purgeable(msm_obj)\00", align 1
@msm_gem_evict._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_evict = private unnamed_addr constant [14 x i8] c"msm_gem_evict\00", align 1
@msm_gem_evict._rs.13 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"is_unevictable(msm_obj)\00", align 1
@msm_gem_evict._rs.15 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"!msm_obj->evictable\00", align 1
@msm_gem_evict._rs.17 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"msm_obj->active_count\00", align 1
@msm_gem_vunmap._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_vunmap = private unnamed_addr constant [15 x i8] c"msm_gem_vunmap\00", align 1
@msm_gem_vunmap._rs.19 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"!is_vunmapable(msm_obj)\00", align 1
@msm_gem_active_get._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_active_get = private unnamed_addr constant [19 x i8] c"msm_gem_active_get\00", align 1
@msm_gem_active_get._rs.21 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@msm_gem_active_get._rs.22 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"msm_obj->dontneed\00", align 1
@msm_gem_active_put._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_active_put = private unnamed_addr constant [19 x i8] c"msm_gem_active_put\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" purged\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c" purgeable\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"%08x: %c %2d (%2d) %08llx %p\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c" %08zu %9s %-32s\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"      vmas:\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c" [%s%s%s: aspace=%p, %08llx,%s,inuse=%d]\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"mapped\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"   flags       id ref  offset   kaddr            size     madv      name\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Total:     %4d objects, %9zu bytes\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"Active:    %4d objects, %9zu bytes\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Resident:  %4d objects, %9zu bytes\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Purgeable: %4d objects, %9zu bytes\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Purged:    %4d objects, %9zu bytes\0A\00", align 1
@msm_gem_free_object._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_free_object = private unnamed_addr constant [20 x i8] c"msm_gem_free_object\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"is_active(msm_obj)\00", align 1
@msm_gem_free_object._rs.43 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.44 = private unnamed_addr constant [15 x i8] c"msm_obj->vaddr\00", align 1
@msm_gem_new._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_new = private unnamed_addr constant [12 x i8] c"msm_gem_new\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"use_vram && !priv->vram.size\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"*ERROR* cannot import without IOMMU\0A\00", align 1
@get_pages._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.get_pages = private unnamed_addr constant [10 x i8] c"get_pages\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"*ERROR* could not get pages: %ld\0A\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to allocate sgt\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mmap_offset._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.mmap_offset = private unnamed_addr constant [12 x i8] c"mmap_offset\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"*ERROR* could not allocate mmap offset\0A\00", align 1
@get_and_pin_iova_range_locked._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.get_and_pin_iova_range_locked = private unnamed_addr constant [30 x i8] c"get_and_pin_iova_range_locked\00", align 1
@msm_gem_pin_iova._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_pin_iova = private unnamed_addr constant [17 x i8] c"msm_gem_pin_iova\00", align 1
@msm_gem_pin_iova._rs.51 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@msm_gem_pin_iova._rs.52 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@get_iova_locked._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.get_iova_locked = private unnamed_addr constant [16 x i8] c"get_iova_locked\00", align 1
@lookup_vma._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.lookup_vma = private unnamed_addr constant [11 x i8] c"lookup_vma\00", align 1
@get_vaddr._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.get_vaddr = private unnamed_addr constant [10 x i8] c"get_vaddr\00", align 1
@get_vaddr._rs.53 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.54 = private unnamed_addr constant [21 x i8] c"msm_obj->madv > madv\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"*ERROR* Invalid madv state: %u vs %u\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@put_iova_spaces._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.put_iova_spaces = private unnamed_addr constant [16 x i8] c"put_iova_spaces\00", align 1
@put_iova_vmas._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.put_iova_vmas = private unnamed_addr constant [14 x i8] c"put_iova_vmas\00", align 1
@is_vunmapable._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.is_vunmapable = private unnamed_addr constant [14 x i8] c"is_vunmapable\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/msm/msm_gem.h\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"!msm_gem_is_locked(&msm_obj->base)\00", align 1
@update_inactive._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.update_inactive = private unnamed_addr constant [16 x i8] c"update_inactive\00", align 1
@update_inactive._rs.58 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [37 x i8] c"(msm_obj->madv != 2) && msm_obj->sgt\00", align 1
@mark_purgeable._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.mark_purgeable = private unnamed_addr constant [15 x i8] c"mark_purgeable\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"!mutex_is_locked(&priv->mm_lock)\00", align 1
@mark_purgeable._rs.61 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@is_active._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.is_active = private unnamed_addr constant [10 x i8] c"is_active\00", align 1
@mark_unpurgeable._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.mark_unpurgeable = private unnamed_addr constant [17 x i8] c"mark_unpurgeable\00", align 1
@mark_unpurgeable._rs.62 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.63 = private unnamed_addr constant [19 x i8] c"!msm_obj->dontneed\00", align 1
@mark_unpurgeable._rs.64 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.65 = private unnamed_addr constant [27 x i8] c"priv->shrinkable_count < 0\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"invalid cache flag: %x\0A\00", align 1
@msm_gem_object_funcs = internal constant %struct.drm_gem_object_funcs { ptr @msm_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr @msm_gem_prime_pin, ptr @msm_gem_prime_unpin, ptr @msm_gem_prime_get_sg_table, ptr @msm_gem_prime_vmap, ptr @msm_gem_prime_vunmap, ptr @msm_gem_object_mmap, ptr @vm_ops }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vm_ops = internal constant %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @msm_gem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@msm_gem_fault._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_gem_fault = private unnamed_addr constant [14 x i8] c"msm_gem_fault\00", align 1
@add_vma._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.add_vma = private unnamed_addr constant [8 x i8] c"add_vma\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_pages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #12
  %5 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_get_pages._rs, ptr noundef nonnull @__func__.msm_gem_get_pages) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11, !prof !8

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %19

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @get_pages(ptr noundef %0)
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call fastcc void @update_inactive(ptr noundef %0)
  br label %19

19:                                               ; preds = %15, %12, %11, %8
  %20 = phi ptr [ inttoptr (i32 -16 to ptr), %8 ], [ inttoptr (i32 -16 to ptr), %11 ], [ %13, %15 ], [ %13, %12 ]
  %21 = load ptr, ptr %2, align 8
  tail call void @ww_mutex_unlock(ptr noundef %21) #12
  ret ptr %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_pages(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @___ratelimit(ptr noundef nonnull @get_pages._rs, ptr noundef nonnull @__func__.get_pages) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %9

9:                                                ; preds = %8, %5, %1
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %95

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 12
  %19 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = tail call ptr @drm_gem_get_pages(ptr noundef %0) #12
  br label %67

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = shl nuw nsw i32 %18, 2
  %28 = tail call noalias ptr @kvmalloc_node(i32 noundef %27, i32 noundef 3264, i32 noundef -1) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 35, i32 3
  tail call void @_raw_spin_lock(ptr noundef %31) #12
  %32 = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 35, i32 2
  %33 = load ptr, ptr %19, align 4
  %34 = zext i32 %18 to i64
  %35 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %32, ptr noundef %33, i64 noundef %34, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %36 = load i16, ptr %31, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  tail call void @kvfree(ptr noundef nonnull %28) #12
  %40 = inttoptr i32 %35 to ptr
  br label %67

41:                                               ; preds = %30
  %42 = icmp ult i32 %17, 4096
  br i1 %42, label %67, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr inbounds %struct.drm_mm_node, ptr %44, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %47, 12
  %49 = load ptr, ptr %14, align 8
  %50 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.msm_drm_private, ptr %51, i32 0, i32 35, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %48
  %55 = load ptr, ptr @mem_map, align 4
  %56 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %57

57:                                               ; preds = %57, %43
  %58 = phi i32 [ 0, %43 ], [ %65, %57 ]
  %59 = phi i32 [ %54, %43 ], [ %64, %57 ]
  %60 = lshr i32 %59, 12
  %61 = sub i32 %60, %56
  %62 = getelementptr %struct.page, ptr %55, i32 %61
  %63 = getelementptr ptr, ptr %28, i32 %58
  store ptr %62, ptr %63, align 4
  %64 = add i32 %59, 4096
  %65 = add nuw nsw i32 %58, 1
  %66 = icmp eq i32 %65, %18
  br i1 %66, label %67, label %57

67:                                               ; preds = %57, %41, %39, %22
  %68 = phi ptr [ %23, %22 ], [ %40, %39 ], [ %28, %41 ], [ %28, %57 ]
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %75

70:                                               ; preds = %67, %24
  %71 = phi ptr [ %68, %67 ], [ inttoptr (i32 -12 to ptr), %24 ]
  %72 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %71 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %73, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.48, i32 noundef %74) #12
  br label %95

75:                                               ; preds = %67
  store ptr %68, ptr %10, align 8
  %76 = load ptr, ptr %14, align 8
  %77 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %76, ptr noundef %68, i32 noundef %18) #12
  %78 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  store ptr %77, ptr %78, align 4
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %82, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.49) #12
  store ptr null, ptr %78, align 4
  br label %95

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 393216
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds %struct.drm_device, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @dma_map_sgtable(ptr noundef %91, ptr noundef %77, i32 noundef 0, i32 noundef 0) #12
  br label %93

93:                                               ; preds = %88, %83
  tail call fastcc void @update_inactive(ptr noundef %0)
  %94 = load ptr, ptr %10, align 8
  br label %95

95:                                               ; preds = %93, %80, %70, %9
  %96 = phi ptr [ %71, %70 ], [ %77, %80 ], [ %94, %93 ], [ %11, %9 ]
  ret ptr %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_inactive(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #12
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @___ratelimit(ptr noundef nonnull @update_inactive._rs, ptr noundef nonnull @__func__.update_inactive) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 817, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #12
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %164

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  tail call fastcc void @mark_unpurgeable(ptr noundef %0)
  %24 = load i8, ptr %19, align 1
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i8 [ %24, %23 ], [ %20, %17 ]
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %65, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.msm_drm_private, ptr %32, i32 0, i32 21
  %34 = tail call zeroext i1 @mutex_is_locked(ptr noundef %33) #12
  br i1 %34, label %36, label %35, !prof !8

35:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 281, i32 noundef 9, ptr noundef null) #12
  br label %36

36:                                               ; preds = %35, %29
  %37 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i8, ptr %19, align 1
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53, !prof !13

52:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %65

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 12
  %57 = getelementptr inbounds %struct.msm_drm_private, ptr %32, i32 0, i32 20
  %58 = load i32, ptr %57, align 8
  %59 = sub i32 %58, %56
  store i32 %59, ptr %57, align 8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62, !prof !13

61:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 290, i32 noundef 9, ptr noundef null) #12
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i8, ptr %19, align 1
  %64 = and i8 %63, -3
  store i8 %64, ptr %19, align 1
  br label %65

65:                                               ; preds = %62, %52, %44, %40, %36, %25
  %66 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 6, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %68, ptr %70, align 4
  store volatile ptr %69, ptr %68, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %66, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %67, align 4
  %71 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %72 = load i8, ptr %71, align 4
  switch i8 %72, label %151 [
    i8 0, label %73
    i8 1, label %113
    i8 2, label %159
  ]

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %159, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 16
  %79 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 16, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr %66, ptr %79, align 4
  store ptr %78, ptr %66, align 4
  store ptr %80, ptr %67, align 4
  store volatile ptr %66, ptr %80, align 4
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.msm_drm_private, ptr %83, i32 0, i32 21
  %85 = tail call zeroext i1 @mutex_is_locked(ptr noundef %84) #12
  br i1 %85, label %87, label %86, !prof !8

86:                                               ; preds = %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  br label %87

87:                                               ; preds = %86, %77
  %88 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %163

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %163

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %163

99:                                               ; preds = %95
  %100 = load i8, ptr %19, align 1
  %101 = and i8 %100, 2
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103, !prof !8

103:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 270, i32 noundef 9, ptr noundef null) #12
  br label %163

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %106 = load i32, ptr %105, align 8
  %107 = lshr i32 %106, 12
  %108 = getelementptr inbounds %struct.msm_drm_private, ptr %83, i32 0, i32 20
  %109 = load i32, ptr %108, align 8
  %110 = add i32 %109, %107
  store i32 %110, ptr %108, align 8
  %111 = load i8, ptr %19, align 1
  %112 = or i8 %111, 2
  store i8 %112, ptr %19, align 1
  br label %163

113:                                              ; preds = %65
  %114 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 17
  %115 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 17, i32 1
  %116 = load ptr, ptr %115, align 4
  store ptr %66, ptr %115, align 4
  store ptr %114, ptr %66, align 4
  store ptr %116, ptr %67, align 4
  store volatile ptr %66, ptr %116, align 4
  %117 = load ptr, ptr %2, align 8
  %118 = getelementptr inbounds %struct.drm_device, ptr %117, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.msm_drm_private, ptr %119, i32 0, i32 21
  %121 = tail call zeroext i1 @mutex_is_locked(ptr noundef %120) #12
  br i1 %121, label %126, label %122

122:                                              ; preds = %113
  %123 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_purgeable._rs, ptr noundef nonnull @__func__.mark_purgeable) #12
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125, !prof !8

125:                                              ; preds = %122
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #12
  br label %126

126:                                              ; preds = %125, %122, %113
  %127 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %130
  %135 = load i8, ptr %19, align 1
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_purgeable._rs.61, ptr noundef nonnull @__func__.mark_purgeable) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %163, label %141, !prof !8

141:                                              ; preds = %138
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 232, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #12
  br label %163

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %144 = load i32, ptr %143, align 8
  %145 = lshr i32 %144, 12
  %146 = getelementptr inbounds %struct.msm_drm_private, ptr %119, i32 0, i32 19
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, %145
  store i32 %148, ptr %146, align 4
  %149 = load i8, ptr %19, align 1
  %150 = or i8 %149, 1
  store i8 %150, ptr %19, align 1
  br label %163

151:                                              ; preds = %65
  %152 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = tail call i32 @___ratelimit(ptr noundef nonnull @update_inactive._rs.58, ptr noundef nonnull @__func__.update_inactive) #12
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158, !prof !8

158:                                              ; preds = %155
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 837, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.59) #12
  br label %159

159:                                              ; preds = %158, %155, %151, %73, %65
  %160 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18
  %161 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18, i32 1
  %162 = load ptr, ptr %161, align 4
  store ptr %66, ptr %161, align 4
  store ptr %160, ptr %66, align 4
  store ptr %162, ptr %67, align 4
  store volatile ptr %66, ptr %162, align 4
  br label %163

163:                                              ; preds = %159, %142, %141, %138, %130, %126, %104, %103, %95, %91, %87
  tail call void @mutex_unlock(ptr noundef %18) #12
  br label %164

164:                                              ; preds = %163, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_put_pages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #12
  %5 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_put_pages._rs, ptr noundef nonnull @__func__.msm_gem_put_pages) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #12
  br label %13

13:                                               ; preds = %12, %9, %1
  tail call fastcc void @update_inactive(ptr noundef %0)
  %14 = load ptr, ptr %2, align 8
  tail call void @ww_mutex_unlock(ptr noundef %14) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @msm_gem_mmap_offset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #12
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #12
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @___ratelimit(ptr noundef nonnull @mmap_offset._rs, ptr noundef nonnull @__func__.mmap_offset) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef %0) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.50) #12
  br label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = shl i64 %21, 12
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i64 [ 0, %16 ], [ %22, %19 ]
  %25 = load ptr, ptr %2, align 8
  tail call void @ww_mutex_unlock(ptr noundef %25) #12
  ret i64 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_and_pin_iova_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @ww_mutex_lock(ptr noundef %7, ptr noundef null) #12
  %9 = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %10 = load ptr, ptr %6, align 8
  tail call void @ww_mutex_unlock(ptr noundef %10) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !14
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call zeroext i1 @mutex_is_locked(ptr noundef %8) #12
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @___ratelimit(ptr noundef nonnull @get_and_pin_iova_range_locked._rs, ptr noundef nonnull @__func__.get_and_pin_iova_range_locked) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %14

14:                                               ; preds = %13, %10, %5
  %15 = call fastcc i32 @get_iova_locked(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i64 noundef %3, i64 noundef %4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %84

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 2
  %21 = lshr i32 %19, 24
  %22 = and i32 %21, 32
  %23 = or i32 %22, %20
  %24 = lshr i32 %19, 17
  %25 = and i32 %24, 4
  %26 = or i32 %23, %25
  %27 = xor i32 %26, 3
  %28 = load ptr, ptr %7, align 8
  %29 = tail call zeroext i1 @mutex_is_locked(ptr noundef %28) #12
  br i1 %29, label %34, label %30

30:                                               ; preds = %17
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_pin_iova._rs, ptr noundef nonnull @__func__.msm_gem_pin_iova) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !8

33:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %34

34:                                               ; preds = %33, %30, %17
  %35 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_pin_iova._rs.51, ptr noundef nonnull @__func__.msm_gem_pin_iova) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %84, label %41, !prof !8

41:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %84

42:                                               ; preds = %34
  %43 = load ptr, ptr %7, align 8
  %44 = tail call zeroext i1 @mutex_is_locked(ptr noundef %43) #12
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !8

48:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %49

49:                                               ; preds = %48, %45, %42
  %50 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  br label %51

51:                                               ; preds = %55, %49
  %52 = phi ptr [ %50, %49 ], [ %53, %55 ]
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %50
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %53, i32 -4
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, %1
  br i1 %58, label %59, label %51

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %53, i32 -124
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %51
  %63 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_pin_iova._rs.52, ptr noundef nonnull @__func__.msm_gem_pin_iova) #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %84, label %65, !prof !8

65:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #12
  br label %84

66:                                               ; preds = %59
  %67 = tail call fastcc ptr @get_pages(ptr noundef %0) #12
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 12
  %75 = tail call i32 @msm_gem_map_vma(ptr noundef %1, ptr noundef nonnull %60, i32 noundef %27, ptr noundef %71, i32 noundef %74) #12
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  %81 = load i64, ptr %6, align 8
  store i64 %81, ptr %2, align 8
  br label %84

82:                                               ; preds = %66
  %83 = ptrtoint ptr %67 to i32
  br label %84

84:                                               ; preds = %82, %77, %69, %65, %62, %41, %38, %14
  %85 = phi i32 [ 0, %77 ], [ %83, %82 ], [ -22, %62 ], [ -16, %38 ], [ %75, %69 ], [ -22, %65 ], [ -16, %41 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_and_pin_iova_locked(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 0, i64 noundef -1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #12
  %7 = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 0, i64 noundef -1) #12
  %8 = load ptr, ptr %4, align 8
  tail call void @ww_mutex_unlock(ptr noundef %8) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_iova(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #12
  %7 = tail call fastcc i32 @get_iova_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 0, i64 noundef -1)
  %8 = load ptr, ptr %4, align 8
  tail call void @ww_mutex_unlock(ptr noundef %8) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_iova_locked(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #12
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @___ratelimit(ptr noundef nonnull @get_iova_locked._rs, ptr noundef nonnull @__func__.get_iova_locked) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 386, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %13

13:                                               ; preds = %12, %9, %5
  %14 = load ptr, ptr %6, align 8
  %15 = tail call zeroext i1 @mutex_is_locked(ptr noundef %14) #12
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !8

19:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %20

20:                                               ; preds = %19, %16, %13
  %21 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  br label %22

22:                                               ; preds = %26, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 -4
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %22

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %24, i32 -124
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %30, %22
  %34 = load ptr, ptr %6, align 8
  %35 = tail call zeroext i1 @mutex_is_locked(ptr noundef %34) #12
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @___ratelimit(ptr noundef nonnull @add_vma._rs, ptr noundef nonnull @__func__.add_vma) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %40

40:                                               ; preds = %39, %36, %33
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 144) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.msm_gem_vma, ptr %42, i32 0, i32 2
  store ptr %1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.msm_gem_vma, ptr %42, i32 0, i32 3
  %47 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10, i32 1
  %48 = load ptr, ptr %47, align 4
  store ptr %46, ptr %47, align 4
  store ptr %21, ptr %46, align 4
  %49 = getelementptr inbounds %struct.msm_gem_vma, ptr %42, i32 0, i32 3, i32 1
  store ptr %48, ptr %49, align 8
  store volatile ptr %46, ptr %48, align 4
  %50 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %40
  %52 = phi ptr [ %42, %44 ], [ inttoptr (i32 -12 to ptr), %40 ]
  %53 = ptrtoint ptr %52 to i32
  br label %68

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 12
  %58 = tail call i32 @msm_gem_init_vma(ptr noundef %1, ptr noundef nonnull %42, i32 noundef %57, i64 noundef %3, i64 noundef %4) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %49, align 8
  %62 = load ptr, ptr %46, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %49, align 8
  tail call void @kfree(ptr noundef nonnull %42) #12
  br label %68

64:                                               ; preds = %54, %30
  %65 = phi ptr [ %31, %30 ], [ %42, %54 ]
  %66 = getelementptr inbounds %struct.msm_gem_vma, ptr %65, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %2, align 8
  br label %68

68:                                               ; preds = %64, %60, %51
  %69 = phi i32 [ 0, %64 ], [ %53, %51 ], [ %58, %60 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @msm_gem_iova(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @ww_mutex_lock(ptr noundef %4, ptr noundef null) #12
  %6 = load ptr, ptr %3, align 8
  %7 = tail call zeroext i1 @mutex_is_locked(ptr noundef %6) #12
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  br label %14

14:                                               ; preds = %20, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %20 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8
  tail call void @ww_mutex_unlock(ptr noundef %19) #12
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %16, i32 -4
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %14

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %16, i32 -124
  %26 = load ptr, ptr %3, align 8
  tail call void @ww_mutex_unlock(ptr noundef %26) #12
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %18
  %29 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_iova._rs, ptr noundef nonnull @__func__.msm_gem_iova) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !8

31:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 524, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #12
  br label %35

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %16, i32 -12
  %34 = load i64, ptr %33, align 8
  br label %35

35:                                               ; preds = %32, %31, %28
  %36 = phi i64 [ %34, %32 ], [ 0, %31 ], [ 0, %28 ]
  ret i64 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_unpin_iova_locked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i1 @mutex_is_locked(ptr noundef %4) #12
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_unpin_iova_locked._rs, ptr noundef nonnull @__func__.msm_gem_unpin_iova_locked) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = load ptr, ptr %3, align 8
  %12 = tail call zeroext i1 @mutex_is_locked(ptr noundef %11) #12
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %17

17:                                               ; preds = %16, %13, %10
  %18 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -4
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %21, i32 -124
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %19
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_unpin_iova_locked._rs.6, ptr noundef nonnull @__func__.msm_gem_unpin_iova_locked) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33, !prof !8

33:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 542, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #12
  br label %44

34:                                               ; preds = %27
  tail call void @msm_gem_unmap_vma(ptr noundef %1, ptr noundef nonnull %28) #12
  %35 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_unpin_iova_locked._rs.7, ptr noundef nonnull @__func__.msm_gem_unpin_iova_locked) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !8

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #12
  br label %43

43:                                               ; preds = %42, %39, %34
  tail call fastcc void @update_inactive(ptr noundef %0)
  br label %44

44:                                               ; preds = %43, %33, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unmap_vma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_unpin_iova(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @ww_mutex_lock(ptr noundef %4, ptr noundef null) #12
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %0, ptr noundef %1)
  %6 = load ptr, ptr %3, align 8
  tail call void @ww_mutex_unlock(ptr noundef %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 7
  %9 = sdiv i32 %8, 8
  %10 = add i32 %5, 31
  %11 = and i32 %10, -32
  %12 = mul i32 %9, %11
  %13 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %2, align 8
  %15 = mul i32 %12, %14
  %16 = add i32 %15, 4095
  %17 = and i32 %16, -4096
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  store i64 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 4
  %21 = tail call i32 @msm_gem_new_handle(ptr noundef %1, ptr noundef %0, i32 noundef %17, i32 noundef 131073, ptr noundef %20, ptr noundef nonnull @.str.8)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_new_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @msm_gem_new(ptr noundef %0, i32 noundef %2, i32 noundef %3)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %25

11:                                               ; preds = %6
  %12 = icmp eq ptr %5, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %5)
  br label %14

14:                                               ; preds = %13, %11
  %15 = tail call i32 @drm_gem_handle_create(ptr noundef %1, ptr noundef %7, ptr noundef %4) #12
  %16 = icmp eq ptr %7, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #12, !srcloc !16
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #12, !srcloc !17
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #12
  br label %25

24:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #12
  br label %25

25:                                               ; preds = %24, %23, %21, %14, %9
  %26 = phi i32 [ %10, %9 ], [ %15, %14 ], [ %15, %21 ], [ %15, %23 ], [ %15, %24 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_dumb_map_offset(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @drm_gem_object_lookup(ptr noundef %0, i32 noundef %2) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @msm_gem_mmap_offset(ptr noundef nonnull %5)
  store i64 %8, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #12, !srcloc !16
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #12, !srcloc !17
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #12
  br label %16

15:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #12
  br label %16

16:                                               ; preds = %15, %14, %12, %4
  %17 = phi i32 [ -2, %4 ], [ 0, %12 ], [ 0, %14 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_vaddr_locked(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_vaddr(ptr noundef %0, i32 noundef 0)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_vaddr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i1 @mutex_is_locked(ptr noundef %4) #12
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @___ratelimit(ptr noundef nonnull @get_vaddr._rs, ptr noundef nonnull @__func__.get_vaddr) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = tail call i32 @___ratelimit(ptr noundef nonnull @get_vaddr._rs.53, ptr noundef nonnull @__func__.get_vaddr) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 605, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.54) #12
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %15, align 4
  %29 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.55, i32 noundef %29, i32 noundef %1) #12
  br label %61

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 4
  %32 = load i8, ptr %31, align 2
  %33 = add i8 %32, 1
  store i8 %33, ptr %31, align 2
  %34 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @get_pages(ptr noundef %0)
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 12
  %44 = load i32, ptr @pgprot_kernel, align 4
  %45 = or i32 %44, 512
  %46 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 393216
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %45, -61
  %51 = or i32 %50, 4
  %52 = select i1 %49, i32 %45, i32 %51
  %53 = tail call ptr @vmap(ptr noundef %38, i32 noundef %43, i32 noundef 4, i32 noundef %52) #12
  store ptr %53, ptr %34, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %40
  tail call fastcc void @update_inactive(ptr noundef %0)
  %56 = load ptr, ptr %34, align 8
  br label %61

57:                                               ; preds = %40, %37
  %58 = phi ptr [ inttoptr (i32 -12 to ptr), %40 ], [ %38, %37 ]
  %59 = load i8, ptr %31, align 2
  %60 = add i8 %59, -1
  store i8 %60, ptr %31, align 2
  br label %61

61:                                               ; preds = %57, %55, %30, %23, %10
  %62 = phi ptr [ inttoptr (i32 -16 to ptr), %23 ], [ %58, %57 ], [ inttoptr (i32 -19 to ptr), %10 ], [ %56, %55 ], [ %35, %30 ]
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_vaddr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #12
  %5 = tail call fastcc ptr @get_vaddr(ptr noundef %0, i32 noundef 0) #12
  %6 = load ptr, ptr %2, align 8
  tail call void @ww_mutex_unlock(ptr noundef %6) #12
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_vaddr_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_vaddr(ptr noundef %0, i32 noundef 2)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_put_vaddr_locked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_put_vaddr_locked._rs, ptr noundef nonnull @__func__.msm_gem_put_vaddr_locked) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 673, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %9

9:                                                ; preds = %8, %5, %1
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_put_vaddr_locked._rs.9, ptr noundef nonnull @__func__.msm_gem_put_vaddr_locked) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 674, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #12
  br label %17

17:                                               ; preds = %16, %13, %9
  %18 = load i8, ptr %10, align 2
  %19 = add i8 %18, -1
  store i8 %19, ptr %10, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_put_vaddr(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #12
  tail call void @msm_gem_put_vaddr_locked(ptr noundef %0)
  %5 = load ptr, ptr %2, align 8
  tail call void @ww_mutex_unlock(ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_madvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @ww_mutex_lock(ptr noundef %4, ptr noundef null) #12
  %6 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i8
  store i8 %10, ptr %6, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i8 [ %10, %9 ], [ 2, %2 ]
  %13 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call fastcc void @update_inactive(ptr noundef %0)
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %3, align 8
  tail call void @ww_mutex_unlock(ptr noundef %18) #12
  %19 = icmp ne i8 %12, 2
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_purge(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #12
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_purge._rs, ptr noundef nonnull @__func__.msm_gem_purge) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 716, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %19, %15, %11
  %28 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_purge._rs.11, ptr noundef nonnull @__func__.msm_gem_purge) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #12
  br label %31

31:                                               ; preds = %30, %27, %23
  tail call fastcc void @put_iova_spaces(ptr noundef %0, i1 noundef zeroext true)
  tail call void @msm_gem_vunmap(ptr noundef %0)
  %32 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 12
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = shl i64 %42, 12
  %44 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 12
  %48 = zext i32 %47 to i64
  tail call void @unmap_mapping_range(ptr noundef %35, i64 noundef %43, i64 noundef %48, i32 noundef 1) #12
  br label %49

49:                                               ; preds = %40, %31
  tail call fastcc void @put_pages(ptr noundef %0)
  %50 = load ptr, ptr %4, align 8
  %51 = tail call zeroext i1 @mutex_is_locked(ptr noundef %50) #12
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_vmas._rs, ptr noundef nonnull @__func__.put_iova_vmas) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55, !prof !8

55:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %56

56:                                               ; preds = %55, %52, %49
  %57 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %71, label %60

60:                                               ; preds = %69, %56
  %61 = phi ptr [ %63, %69 ], [ %58, %56 ]
  %62 = getelementptr i8, ptr %61, i32 -124
  %63 = load ptr, ptr %61, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %61, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %63, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %61, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  tail call void @kfree(ptr noundef nonnull %62) #12
  br label %69

69:                                               ; preds = %65, %60
  %70 = icmp eq ptr %63, %57
  br i1 %70, label %71, label %60

71:                                               ; preds = %69, %56
  store i8 2, ptr %12, align 4
  tail call fastcc void @update_inactive(ptr noundef %0)
  tail call void @drm_gem_free_mmap_offset(ptr noundef %0) #12
  %72 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.file, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  tail call void @shmem_truncate_range(ptr noundef %75, i64 noundef 0, i64 noundef -1) #12
  %76 = load ptr, ptr %72, align 4
  %77 = getelementptr inbounds %struct.file, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.inode, ptr %78, i32 0, i32 9
  %80 = load ptr, ptr %79, align 8
  %81 = tail call i32 @invalidate_mapping_pages(ptr noundef %80, i32 noundef 0, i32 noundef -1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_iova_spaces(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i1 @mutex_is_locked(ptr noundef %4) #12
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_spaces._rs, ptr noundef nonnull @__func__.put_iova_spaces) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %26, label %14

14:                                               ; preds = %23, %10
  %15 = phi ptr [ %24, %23 ], [ %12, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -124
  %17 = getelementptr i8, ptr %15, i32 -4
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  tail call void @msm_gem_purge_vma(ptr noundef nonnull %18, ptr noundef %16) #12
  br i1 %1, label %21, label %23

21:                                               ; preds = %20
  %22 = load ptr, ptr %17, align 8
  tail call void @msm_gem_close_vma(ptr noundef %22, ptr noundef %16) #12
  br label %23

23:                                               ; preds = %21, %20, %14
  %24 = load ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, %11
  br i1 %25, label %26, label %14

26:                                               ; preds = %23, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_vunmap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_vunmap._rs, ptr noundef nonnull @__func__.msm_gem_vunmap) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 773, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %9

9:                                                ; preds = %8, %5, %1
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8
  %15 = tail call zeroext i1 @mutex_is_locked(ptr noundef %14) #12
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @___ratelimit(ptr noundef nonnull @is_vunmapable._rs, ptr noundef nonnull @__func__.is_vunmapable) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !8

19:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #12
  br label %20

20:                                               ; preds = %19, %16, %13
  %21 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 4
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %10, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %20
  %28 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_vunmap._rs.19, ptr noundef nonnull @__func__.msm_gem_vunmap) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !8

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #12
  br label %32

31:                                               ; preds = %24
  tail call void @vunmap(ptr noundef nonnull %25) #12
  store ptr null, ptr %10, align 8
  br label %32

32:                                               ; preds = %31, %30, %27, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_pages(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 393216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %18, ptr noundef %19, i32 noundef %21, i32 noundef 0, i32 noundef 0) #12
  %22 = load ptr, ptr %6, align 4
  br label %23

23:                                               ; preds = %14, %9
  %24 = phi ptr [ %22, %14 ], [ %7, %9 ]
  tail call void @sg_free_table(ptr noundef %24) #12
  %25 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %25) #12
  store ptr null, ptr %6, align 4
  br label %26

26:                                               ; preds = %23, %5
  %27 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 8
  tail call void @drm_gem_put_pages(ptr noundef %0, ptr noundef %31, i1 noundef zeroext true, i1 noundef zeroext false) #12
  br label %42

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 35, i32 3
  tail call void @_raw_spin_lock(ptr noundef %37) #12
  %38 = load ptr, ptr %27, align 4
  tail call void @drm_mm_remove_node(ptr noundef %38) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %39 = load i16, ptr %37, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %41 = load ptr, ptr %2, align 8
  tail call void @kvfree(ptr noundef %41) #12
  br label %42

42:                                               ; preds = %32, %30
  store ptr null, ptr %2, align 8
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_free_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_truncate_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_evict(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #12
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs, ptr noundef nonnull @__func__.msm_gem_evict) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 754, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %15, %11
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs.13, ptr noundef nonnull @__func__.msm_gem_evict) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !8

26:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 755, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #12
  br label %27

27:                                               ; preds = %26, %23, %19
  %28 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs.15, ptr noundef nonnull @__func__.msm_gem_evict) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !8

35:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #12
  br label %36

36:                                               ; preds = %35, %32, %27
  %37 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 13
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs.17, ptr noundef nonnull @__func__.msm_gem_evict) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !8

43:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 757, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #12
  br label %44

44:                                               ; preds = %43, %40, %36
  %45 = load ptr, ptr %4, align 8
  %46 = tail call zeroext i1 @mutex_is_locked(ptr noundef %45) #12
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_spaces._rs, ptr noundef nonnull @__func__.put_iova_spaces) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !8

50:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %51

51:                                               ; preds = %50, %47, %44
  %52 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %65, label %55

55:                                               ; preds = %62, %51
  %56 = phi ptr [ %63, %62 ], [ %53, %51 ]
  %57 = getelementptr i8, ptr %56, i32 -4
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %56, i32 -124
  tail call void @msm_gem_purge_vma(ptr noundef nonnull %58, ptr noundef %61) #12
  br label %62

62:                                               ; preds = %60, %55
  %63 = load ptr, ptr %56, align 4
  %64 = icmp eq ptr %63, %52
  br i1 %64, label %65, label %55

65:                                               ; preds = %62, %51
  %66 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 12
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 12
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 1
  %76 = load i64, ptr %75, align 8
  %77 = shl i64 %76, 12
  %78 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 2
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 12
  %82 = zext i32 %81 to i64
  tail call void @unmap_mapping_range(ptr noundef %69, i64 noundef %77, i64 noundef %82, i32 noundef 1) #12
  br label %83

83:                                               ; preds = %74, %65
  tail call fastcc void @put_pages(ptr noundef %0)
  tail call fastcc void @update_inactive(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_active_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call zeroext i1 @mutex_is_locked(ptr noundef %8) #12
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_get._rs, ptr noundef nonnull @__func__.msm_gem_active_get) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 788, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %14

14:                                               ; preds = %13, %10, %2
  %15 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_get._rs.21, ptr noundef nonnull @__func__.msm_gem_active_get) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 789, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %22

22:                                               ; preds = %21, %18, %14
  %23 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_get._rs.22, ptr noundef nonnull @__func__.msm_gem_active_get) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 790, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #12
  br label %31

31:                                               ; preds = %30, %27, %22
  %32 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 13
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %37) #12
  %38 = load i8, ptr %23, align 1
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.msm_drm_private, ptr %44, i32 0, i32 21
  %46 = tail call zeroext i1 @mutex_is_locked(ptr noundef %45) #12
  br i1 %46, label %48, label %47, !prof !8

47:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 281, i32 noundef 9, ptr noundef null) #12
  br label %48

48:                                               ; preds = %47, %41
  %49 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i8, ptr %23, align 1
  %62 = and i8 %61, 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65, !prof !13

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %77

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 12
  %69 = getelementptr inbounds %struct.msm_drm_private, ptr %44, i32 0, i32 20
  %70 = load i32, ptr %69, align 8
  %71 = sub i32 %70, %68
  store i32 %71, ptr %69, align 8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74, !prof !13

73:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 290, i32 noundef 9, ptr noundef null) #12
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i8, ptr %23, align 1
  %76 = and i8 %75, -3
  store i8 %76, ptr %23, align 1
  br label %77

77:                                               ; preds = %74, %64, %56, %52, %48, %36
  %78 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.msm_gpu, ptr %1, i32 0, i32 16
  %80 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 6, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %78, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 4
  store volatile ptr %82, ptr %81, align 4
  %84 = getelementptr inbounds %struct.msm_gpu, ptr %1, i32 0, i32 16, i32 1
  %85 = load ptr, ptr %84, align 4
  store ptr %78, ptr %84, align 4
  store ptr %79, ptr %78, align 4
  store ptr %85, ptr %80, align 4
  store volatile ptr %78, ptr %85, align 4
  tail call void @mutex_unlock(ptr noundef %37) #12
  br label %86

86:                                               ; preds = %77, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_active_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_put._rs, ptr noundef nonnull @__func__.msm_gem_active_put) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 806, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %9

9:                                                ; preds = %8, %5, %1
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call fastcc void @update_inactive(ptr noundef %0)
  br label %15

15:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_cpu_prep(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = tail call i64 @ktime_get() #12
  %8 = load i64, ptr %2, align 8
  %9 = icmp slt i64 %8, %7
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = sub i64 %8, %7
  %12 = tail call i64 @llvm.abs.i64(i64 %11, i1 false) #12
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %12) #15, !srcloc !19
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %12, i64 %13, i32 0) #15, !srcloc !20
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = icmp slt i64 %11, 0
  %17 = lshr i64 %15, 23
  %18 = sub nsw i64 0, %17
  %19 = select i1 %16, i64 %18, i64 %17
  br label %20

20:                                               ; preds = %10, %6
  %21 = phi i64 [ %19, %10 ], [ 0, %6 ]
  %22 = tail call i64 @llvm.smax.i64(i64 %21, i64 0) #12
  %23 = tail call i64 @llvm.umin.i64(i64 %22, i64 2147483647) #12
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %20, %3
  %26 = phi i32 [ %24, %20 ], [ 0, %3 ]
  %27 = and i32 %1, 2
  %28 = icmp ne i32 %27, 0
  %29 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @dma_resv_wait_timeout(ptr noundef %30, i1 noundef zeroext %28, i1 noundef zeroext true, i32 noundef %26) #12
  %32 = icmp eq i32 %31, 0
  %33 = icmp eq i32 %26, 0
  %34 = select i1 %33, i32 -16, i32 -110
  %35 = tail call i32 @llvm.smin.i32(i32 %31, i32 0)
  %36 = select i1 %32, i32 %34, i32 %35
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @msm_gem_cpu_fini(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_describe(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 4294967295
  %9 = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #12
  %10 = load i32, ptr %2, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %2, align 4
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.anon.99, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = tail call zeroext i1 @mutex_is_locked(ptr noundef %17) #12
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = tail call i32 @___ratelimit(ptr noundef nonnull @is_active._rs, ptr noundef nonnull @__func__.is_active) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #12
  br label %23

23:                                               ; preds = %22, %19, %3
  %24 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = load i32, ptr %12, align 8
  %32 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %27, %23
  %36 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = load i32, ptr %12, align 8
  %44 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 2, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %39, %35
  %48 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 2
  %49 = load i8, ptr %48, align 4
  switch i8 %49, label %66 [
    i8 2, label %50
    i8 1, label %55
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 4, i32 1
  br label %60

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.msm_gem_stats, ptr %2, i32 0, i32 3, i32 1
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi ptr [ %59, %55 ], [ %54, %50 ]
  %62 = phi ptr [ @.str.25, %55 ], [ @.str.24, %50 ]
  %63 = load i32, ptr %12, align 8
  %64 = load i32, ptr %61, align 4
  %65 = add i32 %64, %63
  store i32 %65, ptr %61, align 4
  br label %66

66:                                               ; preds = %60, %47
  %67 = phi ptr [ @.str.26, %47 ], [ %62, %60 ]
  %68 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 1
  %69 = load i32, ptr %68, align 8
  %70 = load ptr, ptr %4, align 8
  %71 = tail call zeroext i1 @mutex_is_locked(ptr noundef %70) #12
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = tail call i32 @___ratelimit(ptr noundef nonnull @is_active._rs, ptr noundef nonnull @__func__.is_active) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75, !prof !8

75:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #12
  br label %76

76:                                               ; preds = %75, %72, %66
  %77 = load i32, ptr %24, align 8
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 73, i32 65
  %80 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = load volatile i32, ptr %0, align 4
  %83 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %84 = load ptr, ptr %83, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %69, i32 noundef %79, i32 noundef %81, i32 noundef %82, i64 noundef %8, ptr noundef %84) #12
  %85 = load i32, ptr %12, align 8
  %86 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %85, ptr noundef nonnull %67, ptr noundef %86) #12
  %87 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %128, label %90

90:                                               ; preds = %76
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.29) #12
  %91 = load ptr, ptr %87, align 4
  %92 = icmp eq ptr %91, %87
  br i1 %92, label %127, label %93

93:                                               ; preds = %110, %90
  %94 = phi ptr [ %125, %110 ], [ %91, %90 ]
  %95 = getelementptr i8, ptr %94, i32 -4
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.msm_gem_address_space, ptr %96, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = tail call ptr @get_pid_task(ptr noundef %100, i32 noundef 0) #12
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 85
  %105 = tail call noalias ptr @kstrdup(ptr noundef %104, i32 noundef 3264) #12
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi ptr [ %105, %103 ], [ null, %98 ]
  %108 = load ptr, ptr %96, align 8
  %109 = load ptr, ptr %95, align 8
  br label %110

110:                                              ; preds = %106, %93
  %111 = phi ptr [ %109, %106 ], [ null, %93 ]
  %112 = phi ptr [ %108, %106 ], [ null, %93 ]
  %113 = phi ptr [ %107, %106 ], [ null, %93 ]
  %114 = icmp eq ptr %113, null
  %115 = select i1 %114, ptr @.str.26, ptr @.str.31
  %116 = select i1 %114, ptr @.str.26, ptr %113
  %117 = getelementptr i8, ptr %94, i32 -12
  %118 = load i64, ptr %117, align 8
  %119 = getelementptr i8, ptr %94, i32 8
  %120 = load i8, ptr %119, align 4, !range !21
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, ptr @.str.33, ptr @.str.32
  %123 = getelementptr i8, ptr %94, i32 12
  %124 = load i32, ptr %123, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef %112, ptr noundef nonnull %115, ptr noundef %116, ptr noundef %111, i64 noundef %118, ptr noundef nonnull %122, i32 noundef %124) #12
  tail call void @kfree(ptr noundef %113) #12
  %125 = load ptr, ptr %94, align 4
  %126 = icmp eq ptr %125, %87
  br i1 %126, label %127, label %93

127:                                              ; preds = %110, %90
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.34) #12
  br label %128

128:                                              ; preds = %127, %76
  tail call void @dma_resv_describe(ptr noundef %5, ptr noundef %1) #12
  %129 = load ptr, ptr %4, align 8
  tail call void @ww_mutex_unlock(ptr noundef %129) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_describe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_describe_objects(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.msm_gem_stats, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.35) #12
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %31, label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -216
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.36) #12
  call void @msm_gem_describe(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %3)
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.anon.99, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 2, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 3, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.msm_gem_stats, ptr %3, i32 0, i32 4, i32 1
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %11, %2
  %32 = phi i32 [ %30, %11 ], [ 0, %2 ]
  %33 = phi i32 [ %28, %11 ], [ 0, %2 ]
  %34 = phi i32 [ %26, %11 ], [ 0, %2 ]
  %35 = phi i32 [ %24, %11 ], [ 0, %2 ]
  %36 = phi i32 [ %22, %11 ], [ 0, %2 ]
  %37 = phi i32 [ %20, %11 ], [ 0, %2 ]
  %38 = phi i32 [ %18, %11 ], [ 0, %2 ]
  %39 = phi i32 [ %16, %11 ], [ 0, %2 ]
  %40 = phi i32 [ %14, %11 ], [ 0, %2 ]
  %41 = phi i32 [ %12, %11 ], [ 0, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %41, i32 noundef %40) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %39, i32 noundef %38) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %37, i32 noundef %36) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %35, i32 noundef %34) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %33, i32 noundef %32) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_free_object(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %6) #12
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call fastcc void @mark_unpurgeable(ptr noundef %0)
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 6, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @mutex_unlock(ptr noundef %12) #12
  %24 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @ww_mutex_lock(ptr noundef %25, ptr noundef null) #12
  %27 = load ptr, ptr %24, align 8
  %28 = tail call zeroext i1 @mutex_is_locked(ptr noundef %27) #12
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = tail call i32 @___ratelimit(ptr noundef nonnull @is_active._rs, ptr noundef nonnull @__func__.is_active) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !8

32:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #12
  br label %33

33:                                               ; preds = %32, %29, %18
  %34 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 13
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_free_object._rs, ptr noundef nonnull @__func__.msm_gem_free_object) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !8

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 996, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.42) #12
  br label %41

41:                                               ; preds = %40, %37, %33
  tail call fastcc void @put_iova_spaces(ptr noundef %0, i1 noundef zeroext true)
  %42 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %81, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 9
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_free_object._rs.43, ptr noundef nonnull @__func__.msm_gem_free_object) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !8

52:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.44) #12
  br label %53

53:                                               ; preds = %52, %49, %45
  %54 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 7
  %55 = load ptr, ptr %54, align 8
  tail call void @kvfree(ptr noundef %55) #12
  %56 = load ptr, ptr %24, align 8
  %57 = tail call zeroext i1 @mutex_is_locked(ptr noundef %56) #12
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_vmas._rs, ptr noundef nonnull @__func__.put_iova_vmas) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !8

61:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %62

62:                                               ; preds = %61, %58, %53
  %63 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %77, label %66

66:                                               ; preds = %75, %62
  %67 = phi ptr [ %69, %75 ], [ %64, %62 ]
  %68 = getelementptr i8, ptr %67, i32 -124
  %69 = load ptr, ptr %67, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %67, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  store volatile ptr %69, ptr %73, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %67, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %72, align 4
  tail call void @kfree(ptr noundef nonnull %68) #12
  br label %75

75:                                               ; preds = %71, %66
  %76 = icmp eq ptr %69, %63
  br i1 %76, label %77, label %66

77:                                               ; preds = %75, %62
  %78 = load ptr, ptr %24, align 8
  tail call void @ww_mutex_unlock(ptr noundef %78) #12
  %79 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %0, ptr noundef %80) #12
  br label %105

81:                                               ; preds = %41
  tail call void @msm_gem_vunmap(ptr noundef %0)
  tail call fastcc void @put_pages(ptr noundef %0)
  %82 = load ptr, ptr %24, align 8
  %83 = tail call zeroext i1 @mutex_is_locked(ptr noundef %82) #12
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_vmas._rs, ptr noundef nonnull @__func__.put_iova_vmas) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !8

87:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %88

88:                                               ; preds = %87, %84, %81
  %89 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %103, label %92

92:                                               ; preds = %101, %88
  %93 = phi ptr [ %95, %101 ], [ %90, %88 ]
  %94 = getelementptr i8, ptr %93, i32 -124
  %95 = load ptr, ptr %93, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr i8, ptr %93, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %99, ptr %100, align 4
  store volatile ptr %95, ptr %99, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %93, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %98, align 4
  tail call void @kfree(ptr noundef nonnull %94) #12
  br label %101

101:                                              ; preds = %97, %92
  %102 = icmp eq ptr %95, %89
  br i1 %102, label %103, label %92

103:                                              ; preds = %101, %88
  %104 = load ptr, ptr %24, align 8
  tail call void @ww_mutex_unlock(ptr noundef %104) #12
  br label %105

105:                                              ; preds = %103, %77
  tail call void @drm_gem_object_release(ptr noundef %0) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mark_unpurgeable(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 21
  %7 = tail call zeroext i1 @mutex_is_locked(ptr noundef %6) #12
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_unpurgeable._rs, ptr noundef nonnull @__func__.mark_unpurgeable) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #12
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_unpurgeable._rs.62, ptr noundef nonnull @__func__.mark_unpurgeable) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28, !prof !8

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 248, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.63) #12
  br label %44

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 12
  %33 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 19
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %34, %32
  store i32 %35, ptr %33, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_unpurgeable._rs.64, ptr noundef nonnull @__func__.mark_unpurgeable) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !8

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.65) #12
  br label %41

41:                                               ; preds = %40, %37, %29
  %42 = load i8, ptr %21, align 1
  %43 = and i8 %42, -2
  store i8 %43, ptr %21, align 1
  br label %44

44:                                               ; preds = %41, %28, %25, %16, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_new(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, 4095
  %7 = and i32 %6, -4096
  %8 = tail call zeroext i1 @msm_use_mmu(ptr noundef %0) #12
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = and i32 %2, 268435457
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 35
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  br label %24

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 35
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_new._rs, ptr noundef nonnull @__func__.msm_gem_new) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %135, label %23, !prof !8

23:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1132, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.45) #12
  br label %135

24:                                               ; preds = %16, %12, %9
  %25 = phi i1 [ true, %16 ], [ false, %9 ], [ %15, %12 ]
  %26 = icmp eq i32 %7, 0
  br i1 %26, label %135, label %27

27:                                               ; preds = %24
  %28 = and i32 %2, 983040
  %29 = add nsw i32 %28, -65536
  %30 = lshr exact i32 %29, 16
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %37 [
    i16 3, label %40
    i16 0, label %40
    i16 1, label %40
    i16 7, label %32
  ]

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.msm_drm_private, ptr %33, i32 0, i32 9
  %35 = load i8, ptr %34, align 1, !range !21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %39, i32 noundef 1, ptr noundef nonnull @.str.66, i32 noundef %28) #12
  br label %135

40:                                               ; preds = %32, %27, %27, %27
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 296) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %135, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 1
  store i32 %2, ptr %45, align 8
  %46 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 2
  store i8 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 5
  store volatile ptr %47, ptr %47, align 8
  %48 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 5, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 10
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 10, i32 1
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.drm_gem_object, ptr %42, i32 0, i32 11
  store ptr @msm_gem_object_funcs, ptr %51, align 8
  br i1 %25, label %52, label %104

52:                                               ; preds = %44
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef nonnull %42, i32 noundef %7) #12
  %53 = getelementptr inbounds %struct.drm_gem_object, ptr %42, i32 0, i32 9
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 @ww_mutex_lock(ptr noundef %54, ptr noundef null) #12
  %56 = load ptr, ptr %53, align 8
  %57 = tail call zeroext i1 @mutex_is_locked(ptr noundef %56) #12
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = tail call i32 @___ratelimit(ptr noundef nonnull @add_vma._rs, ptr noundef nonnull @__func__.add_vma) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !8

61:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  br label %62

62:                                               ; preds = %61, %58, %52
  %63 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 144) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load ptr, ptr %53, align 8
  tail call void @ww_mutex_unlock(ptr noundef %67) #12
  br label %75

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.msm_gem_vma, ptr %64, i32 0, i32 2
  store ptr null, ptr %69, align 8
  %70 = getelementptr inbounds %struct.msm_gem_vma, ptr %64, i32 0, i32 3
  %71 = load ptr, ptr %50, align 8
  store ptr %70, ptr %50, align 8
  store ptr %49, ptr %70, align 4
  %72 = getelementptr inbounds %struct.msm_gem_vma, ptr %64, i32 0, i32 3, i32 1
  store ptr %71, ptr %72, align 8
  store volatile ptr %70, ptr %71, align 4
  %73 = load ptr, ptr %53, align 8
  tail call void @ww_mutex_unlock(ptr noundef %73) #12
  %74 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %66
  %76 = phi ptr [ inttoptr (i32 -12 to ptr), %66 ], [ %64, %68 ]
  %77 = ptrtoint ptr %76 to i32
  br label %124

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 11
  store ptr %64, ptr %79, align 4
  %80 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 6
  store volatile ptr %80, ptr %80, align 8
  %81 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 6, i32 1
  store ptr %80, ptr %81, align 4
  %82 = load ptr, ptr %53, align 8
  %83 = tail call i32 @ww_mutex_lock(ptr noundef %82, ptr noundef null) #12
  %84 = tail call fastcc ptr @get_pages(ptr noundef nonnull %42)
  %85 = load ptr, ptr %53, align 8
  tail call void @ww_mutex_unlock(ptr noundef %85) #12
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = ptrtoint ptr %84 to i32
  br label %124

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.drm_gem_object, ptr %42, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %79, align 4
  %95 = getelementptr inbounds %struct.drm_mm_node, ptr %94, i32 0, i32 1
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 %97, 12
  %99 = getelementptr inbounds %struct.msm_drm_private, ptr %93, i32 0, i32 35, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %98, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.msm_gem_vma, ptr %64, i32 0, i32 1
  store i64 %102, ptr %103, align 8
  br label %113

104:                                              ; preds = %44
  %105 = tail call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef nonnull %42, i32 noundef %7) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.drm_gem_object, ptr %42, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.file, ptr %109, i32 0, i32 17
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.address_space, ptr %111, i32 0, i32 3
  store i32 1051842, ptr %112, align 4
  br label %113

113:                                              ; preds = %107, %89
  %114 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %114) #12
  %115 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 6
  %116 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18
  %117 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18, i32 1
  %118 = load ptr, ptr %117, align 4
  store ptr %115, ptr %117, align 4
  store ptr %116, ptr %115, align 8
  %119 = getelementptr inbounds %struct.msm_gem_object, ptr %42, i32 0, i32 6, i32 1
  store ptr %118, ptr %119, align 4
  store volatile ptr %115, ptr %118, align 4
  tail call void @mutex_unlock(ptr noundef %114) #12
  %120 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %120) #12
  %121 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 14
  %122 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 14, i32 1
  %123 = load ptr, ptr %122, align 4
  store ptr %47, ptr %122, align 4
  store ptr %121, ptr %47, align 8
  store ptr %123, ptr %48, align 4
  store volatile ptr %47, ptr %123, align 4
  tail call void @mutex_unlock(ptr noundef %120) #12
  br label %135

124:                                              ; preds = %104, %87, %75
  %125 = phi i32 [ %105, %104 ], [ %88, %87 ], [ %77, %75 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %42) #12, !srcloc !16
  %126 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %42, ptr nonnull %42, i32 1, ptr nonnull elementtype(i32) %42) #12, !srcloc !17
  %127 = extractvalue { i32, i32, i32 } %126, 0
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = icmp sgt i32 %127, 0
  br i1 %130, label %133, label %131, !prof !8

131:                                              ; preds = %129
  tail call void @refcount_warn_saturate(ptr noundef nonnull %42, i32 noundef 3) #12
  br label %133

132:                                              ; preds = %124
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %42) #12
  br label %133

133:                                              ; preds = %132, %131, %129
  %134 = inttoptr i32 %125 to ptr
  br label %135

135:                                              ; preds = %133, %113, %40, %37, %24, %23, %20
  %136 = phi ptr [ %134, %133 ], [ %42, %113 ], [ inttoptr (i32 -22 to ptr), %20 ], [ inttoptr (i32 -22 to ptr), %23 ], [ inttoptr (i32 -22 to ptr), %24 ], [ inttoptr (i32 -12 to ptr), %40 ], [ inttoptr (i32 -22 to ptr), %37 ]
  ret ptr %136
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_object_set_name(ptr nocapture noundef %0, ptr noundef readonly %1, ...) local_unnamed_addr #6 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %6 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %3, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = call i32 @vsnprintf(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %1, [1 x i32] %8)
  call void @llvm.va_end(ptr nonnull %3)
  br label %10

10:                                               ; preds = %5, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_use_mmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_import(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @msm_use_mmu(ptr noundef %0) #12
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #12
  br label %62

10:                                               ; preds = %3
  %11 = load i32, ptr %1, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 296) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 1
  store i32 131072, ptr %16, align 8
  %17 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 2
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 5
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 5, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 10
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 10, i32 1
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, ptr %13, i32 0, i32 11
  store ptr @msm_gem_object_funcs, ptr %22, align 8
  %23 = add i32 %11, 4095
  %24 = and i32 %23, -4096
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %24) #12
  %25 = lshr i32 %23, 12
  %26 = getelementptr inbounds %struct.drm_gem_object, ptr %13, i32 0, i32 9
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @ww_mutex_lock(ptr noundef %27, ptr noundef null) #12
  %29 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 8
  store ptr %2, ptr %29, align 4
  %30 = shl nuw nsw i32 %25, 2
  %31 = tail call noalias ptr @kvmalloc_node(i32 noundef %30, i32 noundef 3264, i32 noundef -1) #13
  %32 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 7
  store ptr %31, ptr %32, align 8
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load ptr, ptr %26, align 8
  tail call void @ww_mutex_unlock(ptr noundef %35) #12
  br label %53

36:                                               ; preds = %15
  %37 = tail call i32 @drm_prime_sg_to_page_array(ptr noundef %2, ptr noundef nonnull %31, i32 noundef %25) #12
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %26, align 8
  tail call void @ww_mutex_unlock(ptr noundef %39) #12
  br i1 %38, label %42, label %40

40:                                               ; preds = %36
  %41 = inttoptr i32 %37 to ptr
  br label %53

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %43) #12
  %44 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 6
  %45 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18
  %46 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18, i32 1
  %47 = load ptr, ptr %46, align 4
  store ptr %44, ptr %46, align 4
  store ptr %45, ptr %44, align 8
  %48 = getelementptr inbounds %struct.msm_gem_object, ptr %13, i32 0, i32 6, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %44, ptr %47, align 4
  tail call void @mutex_unlock(ptr noundef %43) #12
  %49 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %49) #12
  %50 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 14
  %51 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 14, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %18, ptr %51, align 4
  store ptr %50, ptr %18, align 8
  store ptr %52, ptr %19, align 4
  store volatile ptr %18, ptr %52, align 4
  tail call void @mutex_unlock(ptr noundef %49) #12
  br label %62

53:                                               ; preds = %40, %34
  %54 = phi ptr [ %41, %40 ], [ inttoptr (i32 -12 to ptr), %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #12, !srcloc !16
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #12, !srcloc !17
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %62, label %60, !prof !8

60:                                               ; preds = %58
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #12
  br label %62

61:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %13) #12
  br label %62

62:                                               ; preds = %61, %60, %58, %42, %10, %7
  %63 = phi ptr [ %13, %42 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %10 ], [ %54, %58 ], [ %54, %60 ], [ %54, %61 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_page_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_kernel_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call ptr @msm_gem_new(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %5, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @ww_mutex_lock(ptr noundef %13, ptr noundef null) #12
  %15 = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %7, ptr noundef %3, ptr noundef nonnull %5, i64 noundef 0, i64 noundef -1) #12
  %16 = load ptr, ptr %12, align 8
  tail call void @ww_mutex_unlock(ptr noundef %16) #12
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %11, %9
  %19 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @ww_mutex_lock(ptr noundef %20, ptr noundef null) #12
  %22 = tail call fastcc ptr @get_vaddr(ptr noundef %7, i32 noundef 0) #12
  %23 = load ptr, ptr %19, align 8
  tail call void @ww_mutex_unlock(ptr noundef %23) #12
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load ptr, ptr %19, align 8
  %27 = tail call i32 @ww_mutex_lock(ptr noundef %26, ptr noundef null) #12
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %7, ptr noundef %3) #12
  %28 = load ptr, ptr %19, align 8
  tail call void @ww_mutex_unlock(ptr noundef %28) #12
  %29 = ptrtoint ptr %22 to i32
  br label %33

30:                                               ; preds = %18
  %31 = icmp eq ptr %4, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %30
  store ptr %7, ptr %4, align 4
  br label %46

33:                                               ; preds = %25, %11
  %34 = phi i32 [ %15, %11 ], [ %29, %25 ]
  %35 = icmp eq ptr %7, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #12, !srcloc !16
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #12, !srcloc !17
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !8

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #12
  br label %44

43:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #12
  br label %44

44:                                               ; preds = %43, %42, %40, %33
  %45 = inttoptr i32 %34 to ptr
  br label %46

46:                                               ; preds = %44, %32, %30, %6
  %47 = phi ptr [ %45, %44 ], [ %22, %32 ], [ %22, %30 ], [ %7, %6 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_kernel_put(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @ww_mutex_lock(ptr noundef %8, ptr noundef null) #12
  tail call void @msm_gem_put_vaddr_locked(ptr noundef nonnull %0) #12
  %10 = load ptr, ptr %7, align 8
  tail call void @ww_mutex_unlock(ptr noundef %10) #12
  %11 = load ptr, ptr %7, align 8
  %12 = tail call i32 @ww_mutex_lock(ptr noundef %11, ptr noundef null) #12
  tail call void @msm_gem_unpin_iova_locked(ptr noundef nonnull %0, ptr noundef %1) #12
  %13 = load ptr, ptr %7, align 8
  tail call void @ww_mutex_unlock(ptr noundef %13) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #12, !srcloc !16
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #12, !srcloc !17
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #12
  br label %21

20:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %0) #12
  br label %21

21:                                               ; preds = %20, %19, %17, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_map_vma(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_init_vma(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_purge_vma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_close_vma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_prime_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_prime_unpin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_prime_get_sg_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_prime_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_prime_vunmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gem_object_mmap(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 335822848
  store i32 %5, ptr %3, align 4
  %6 = tail call i32 @vm_get_page_prot(i32 noundef %5) #12
  %7 = getelementptr inbounds %struct.msm_gem_object, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 393216
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %6, -61
  %12 = or i32 %11, 4
  %13 = select i1 %10, i32 %6, i32 %12
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %13, ptr %14, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gem_fault(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %6, ptr noundef null) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.msm_gem_object, ptr %4, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_fault._rs, ptr noundef nonnull @__func__.msm_gem_fault) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %42, label %16, !prof !8

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %42

17:                                               ; preds = %9
  %18 = tail call fastcc ptr @get_pages(ptr noundef %4)
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, inttoptr (i32 -12 to ptr)
  %22 = select i1 %21, i32 1, i32 2
  br label %42

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.anon.24, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %2, align 4
  %27 = sub i32 %25, %26
  %28 = lshr i32 %27, 12
  %29 = getelementptr ptr, ptr %18, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %30 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = ashr exact i32 %34, 5
  %36 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = or i64 %38, 2305843009213693952
  %40 = insertvalue [1 x i64] poison, i64 %39, 0
  %41 = tail call i32 @vmf_insert_mixed(ptr noundef %2, i32 noundef %25, [1 x i64] %40) #12
  br label %42

42:                                               ; preds = %23, %20, %16, %13
  %43 = phi i32 [ 2, %13 ], [ 2, %16 ], [ %22, %20 ], [ %41, %23 ]
  %44 = load ptr, ptr %5, align 8
  tail call void @ww_mutex_unlock(ptr noundef %44) #12
  br label %45

45:                                               ; preds = %42, %1
  %46 = phi i32 [ 256, %1 ], [ %43, %42 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmf_insert_mixed(ptr noundef, i32 noundef, [1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

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
!9 = !{i64 2149271146}
!10 = !{i64 2149266970}
!11 = !{i64 2149267045, i64 2149267072, i64 2149267119, i64 2149267141, i64 2149267169, i64 2149267189}
!12 = !{i64 2149294149}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{i64 2148318066}
!16 = !{i64 651558, i64 2148153124, i64 2148153150, i64 2148153197, i64 2148153219, i64 2148153247, i64 2148153267}
!17 = !{i64 2148220201, i64 2148220233, i64 2148220262, i64 2148220296, i64 2148220327, i64 2148220350}
!18 = !{i64 2149345061}
!19 = !{i64 1210080, i64 1210107}
!20 = !{i64 1210775, i64 1210802, i64 1210835, i64 1210856, i64 1210883, i64 1210909}
!21 = !{i8 0, i8 2}
