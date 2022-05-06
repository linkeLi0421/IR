; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a5xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adreno_five_hwcg_regs = type { i32, i32 }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.97 = type { i32, i32, i32 }
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.93 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
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
%struct.anon.81 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.a5xx_gpu_state = type { %struct.msm_gpu_state, ptr }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.84], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.84 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.a5xx_crashdumper = type { ptr, ptr, i64 }

@a50x_hwcg = internal unnamed_addr constant [38 x %struct.adreno_five_hwcg_regs] [%struct.adreno_five_hwcg_regs { i32 104, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 108, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 112, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 116, i32 128 }, %struct.adreno_five_hwcg_regs { i32 74, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 78, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 82, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 176, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 180, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 184, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 164, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 168, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 172, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 91, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 92, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 93, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 90, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 94, i32 16777204 }, %struct.adreno_five_hwcg_regs { i32 95, i32 2 }, %struct.adreno_five_hwcg_regs { i32 120, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 124, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 130, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 138, i32 89268770 }, %struct.adreno_five_hwcg_regs { i32 139, i32 5264725 }, %struct.adreno_five_hwcg_regs { i32 134, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 128, i32 121913412 }, %struct.adreno_five_hwcg_regs { i32 140, i32 2 }, %struct.adreno_five_hwcg_regs { i32 129, i32 65553 }, %struct.adreno_five_hwcg_regs { i32 99, i32 69345826 }, %struct.adreno_five_hwcg_regs { i32 96, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 145, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 100, i32 0 }, %struct.adreno_five_hwcg_regs { i32 98, i32 68173828 }, %struct.adreno_five_hwcg_regs { i32 144, i32 0 }, %struct.adreno_five_hwcg_regs { i32 102, i32 0 }, %struct.adreno_five_hwcg_regs { i32 101, i32 16384 }, %struct.adreno_five_hwcg_regs { i32 97, i32 512 }, %struct.adreno_five_hwcg_regs { i32 146, i32 8738 }], align 4
@a512_hwcg = internal unnamed_addr constant [56 x %struct.adreno_five_hwcg_regs] [%struct.adreno_five_hwcg_regs { i32 104, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 105, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 108, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 109, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 112, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 113, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 116, i32 128 }, %struct.adreno_five_hwcg_regs { i32 117, i32 128 }, %struct.adreno_five_hwcg_regs { i32 74, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 75, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 78, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 79, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 82, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 83, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 176, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 177, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 180, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 181, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 184, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 185, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 164, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 165, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 168, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 169, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 172, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 173, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 90, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 91, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 92, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 93, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 94, i32 4473924 }, %struct.adreno_five_hwcg_regs { i32 95, i32 2 }, %struct.adreno_five_hwcg_regs { i32 120, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 121, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 124, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 125, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 130, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 131, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 138, i32 89268770 }, %struct.adreno_five_hwcg_regs { i32 139, i32 5264725 }, %struct.adreno_five_hwcg_regs { i32 134, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 135, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 128, i32 121913412 }, %struct.adreno_five_hwcg_regs { i32 140, i32 2 }, %struct.adreno_five_hwcg_regs { i32 141, i32 2 }, %struct.adreno_five_hwcg_regs { i32 129, i32 65553 }, %struct.adreno_five_hwcg_regs { i32 99, i32 69345826 }, %struct.adreno_five_hwcg_regs { i32 96, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 145, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 100, i32 0 }, %struct.adreno_five_hwcg_regs { i32 98, i32 68173828 }, %struct.adreno_five_hwcg_regs { i32 144, i32 0 }, %struct.adreno_five_hwcg_regs { i32 102, i32 0 }, %struct.adreno_five_hwcg_regs { i32 101, i32 16384 }, %struct.adreno_five_hwcg_regs { i32 97, i32 512 }, %struct.adreno_five_hwcg_regs { i32 146, i32 8738 }], align 4
@a5xx_hwcg = internal unnamed_addr constant [92 x %struct.adreno_five_hwcg_regs] [%struct.adreno_five_hwcg_regs { i32 104, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 105, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 106, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 107, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 108, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 109, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 110, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 111, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 112, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 113, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 114, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 115, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 116, i32 128 }, %struct.adreno_five_hwcg_regs { i32 117, i32 128 }, %struct.adreno_five_hwcg_regs { i32 118, i32 128 }, %struct.adreno_five_hwcg_regs { i32 119, i32 128 }, %struct.adreno_five_hwcg_regs { i32 74, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 75, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 76, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 77, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 78, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 79, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 80, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 81, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 82, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 83, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 84, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 85, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 176, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 177, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 178, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 179, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 180, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 181, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 182, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 183, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 184, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 185, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 186, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 187, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 164, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 165, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 166, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 167, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 168, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 169, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 170, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 171, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 172, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 173, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 174, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 175, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 90, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 91, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 92, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 93, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 94, i32 4473924 }, %struct.adreno_five_hwcg_regs { i32 95, i32 2 }, %struct.adreno_five_hwcg_regs { i32 120, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 121, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 122, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 123, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 124, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 125, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 126, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 127, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 130, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 131, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 132, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 133, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 138, i32 89268770 }, %struct.adreno_five_hwcg_regs { i32 139, i32 5264725 }, %struct.adreno_five_hwcg_regs { i32 134, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 135, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 136, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 137, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 128, i32 121913412 }, %struct.adreno_five_hwcg_regs { i32 140, i32 2 }, %struct.adreno_five_hwcg_regs { i32 141, i32 2 }, %struct.adreno_five_hwcg_regs { i32 142, i32 2 }, %struct.adreno_five_hwcg_regs { i32 143, i32 2 }, %struct.adreno_five_hwcg_regs { i32 129, i32 65553 }, %struct.adreno_five_hwcg_regs { i32 99, i32 69345826 }, %struct.adreno_five_hwcg_regs { i32 96, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 145, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 100, i32 0 }, %struct.adreno_five_hwcg_regs { i32 98, i32 68173828 }, %struct.adreno_five_hwcg_regs { i32 144, i32 0 }, %struct.adreno_five_hwcg_regs { i32 102, i32 0 }, %struct.adreno_five_hwcg_regs { i32 101, i32 16384 }, %struct.adreno_five_hwcg_regs { i32 97, i32 512 }, %struct.adreno_five_hwcg_regs { i32 146, i32 8738 }], align 4
@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/msm/adreno/a5xx_gpu.c\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Tried to idle a non-current ringbuffer\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [82 x i8] c"%s: %ps: timeout waiting for GPU to idle: status %8.8X irq %8.8X rptr/wptr %d/%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"*ERROR* No A5XX device is defined\0A\00", align 1
@a5xx_registers = internal constant [219 x i32] [i32 0, i32 2, i32 4, i32 32, i32 34, i32 38, i32 41, i32 43, i32 46, i32 53, i32 56, i32 66, i32 68, i32 68, i32 71, i32 149, i32 151, i32 187, i32 928, i32 1124, i32 1129, i32 1135, i32 1234, i32 1235, i32 1248, i32 1331, i32 1344, i32 1365, i32 2048, i32 2074, i32 2079, i32 2113, i32 2144, i32 2144, i32 2176, i32 2208, i32 2816, i32 2834, i32 2837, i32 2856, i32 2936, i32 2943, i32 2992, i32 3005, i32 3008, i32 3014, i32 3024, i32 3155, i32 3168, i32 3169, i32 3200, i32 3202, i32 3204, i32 3205, i32 3216, i32 3224, i32 3232, i32 3232, i32 3248, i32 3250, i32 8576, i32 8581, i32 9600, i32 9605, i32 3265, i32 3265, i32 3268, i32 3271, i32 3276, i32 3276, i32 3280, i32 3288, i32 3296, i32 3301, i32 3304, i32 3304, i32 3308, i32 3313, i32 3323, i32 3342, i32 8448, i32 8478, i32 8512, i32 8517, i32 9472, i32 9502, i32 9536, i32 9541, i32 3344, i32 3351, i32 3360, i32 3363, i32 3376, i32 3376, i32 8384, i32 8384, i32 9408, i32 9408, i32 3648, i32 3651, i32 3658, i32 3658, i32 3664, i32 3671, i32 3680, i32 3708, i32 3712, i32 3726, i32 3728, i32 3734, i32 3744, i32 3752, i32 3760, i32 3762, i32 57664, i32 57671, i32 57680, i32 57735, i32 57760, i32 57769, i32 57776, i32 57782, i32 57792, i32 57799, i32 57808, i32 57809, i32 57856, i32 57857, i32 57872, i32 57884, i32 57920, i32 57960, i32 57344, i32 57350, i32 57360, i32 57498, i32 57504, i32 57508, i32 57514, i32 57579, i32 57600, i32 57605, i32 58240, i32 58255, i32 58288, i32 58288, i32 58368, i32 58373, i32 58376, i32 58601, i32 58608, i32 58608, i32 57984, i32 57984, i32 57986, i32 58019, i32 58021, i32 58050, i32 59712, i32 59719, i32 59728, i32 59783, i32 59808, i32 59817, i32 59824, i32 59830, i32 59840, i32 59847, i32 59856, i32 59857, i32 59904, i32 59905, i32 59920, i32 59932, i32 59968, i32 60008, i32 59392, i32 59398, i32 59408, i32 59546, i32 59552, i32 59556, i32 59562, i32 59627, i32 59648, i32 59653, i32 60288, i32 60303, i32 60336, i32 60336, i32 60416, i32 60421, i32 60424, i32 60649, i32 60656, i32 60656, i32 60032, i32 60032, i32 60034, i32 60067, i32 60069, i32 60098, i32 43008, i32 43008, i32 43040, i32 43048, i32 43072, i32 43133, i32 43136, i32 43149, i32 43152, i32 43171, i32 43216, i32 43224, i32 43232, i32 43253, i32 44128, i32 44128, i32 -1], align 4
@funcs = internal constant %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a5xx_hw_init, ptr @a5xx_pm_suspend, ptr @a5xx_pm_resume, ptr @a5xx_submit, ptr null, ptr @a5xx_irq, ptr @a5xx_active_ring, ptr @a5xx_recover, ptr @a5xx_destroy, ptr @a5xx_show, ptr @a5xx_debugfs_init, ptr @a5xx_gpu_busy, ptr @a5xx_gpu_state_get, ptr @a5xx_gpu_state_put, ptr null, ptr null, ptr @adreno_iommu_create_address_space, ptr null, ptr @a5xx_get_rptr }, ptr @a5xx_get_timestamp }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"speed_bin\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"shadow\00", align 1
@a5xx_hw_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Zap shader not enabled - using SECVID_TRUST_CNTL instead\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"*ERROR* could not allocate PM4: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pm4fw\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"*ERROR* could not allocate PFP: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pfpfw\00", align 1
@a5xx_zap_shader_init.loaded = internal unnamed_addr global i8 0, align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"%s: zap-shader resume failed: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"%s: timeout waiting for RBCCU GDSC enable: %X\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"%s: timeout waiting for SP GDSC enable\0A\00", align 1
@a5xx_rbbm_err_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a5xx_rbbm_err_irq = private unnamed_addr constant [18 x i8] c"a5xx_rbbm_err_irq\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"RBBM | AHB bus error | %s | addr=0x%X | ports=0x%X:0x%X\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@a5xx_rbbm_err_irq._rs.18 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"RBBM | AHB transfer timeout\0A\00", align 1
@a5xx_rbbm_err_irq._rs.20 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [38 x i8] c"RBBM | ME master split | status=0x%X\0A\00", align 1
@a5xx_rbbm_err_irq._rs.22 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"RBBM | PFP master split | status=0x%X\0A\00", align 1
@a5xx_rbbm_err_irq._rs.24 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.25 = private unnamed_addr constant [39 x i8] c"RBBM | ETS master split | status=0x%X\0A\00", align 1
@a5xx_rbbm_err_irq._rs.26 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"RBBM | ATB ASYNC overflow\0A\00", align 1
@a5xx_rbbm_err_irq._rs.28 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.29 = private unnamed_addr constant [25 x i8] c"RBBM | ATB bus overflow\0A\00", align 1
@a5xx_cp_err_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a5xx_cp_err_irq = private unnamed_addr constant [16 x i8] c"a5xx_cp_err_irq\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"CP | opcode error | possible opcode=0x%8.8X\0A\00", align 1
@a5xx_cp_err_irq._rs.31 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [32 x i8] c"CP | HW fault | status=0x%8.8X\0A\00", align 1
@a5xx_cp_err_irq._rs.33 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.34 = private unnamed_addr constant [16 x i8] c"CP | DMA error\0A\00", align 1
@a5xx_cp_err_irq._rs.35 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.36 = private unnamed_addr constant [64 x i8] c"CP | protected mode error | %s | addr=0x%8.8X | status=0x%8.8X\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"timestamp lo\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"timestamp hi\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"pfp read\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"pfp write\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"me read\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"me write\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"crashdump read\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"crashdump write\00", align 1
@__const.a5xx_cp_err_irq.access = private unnamed_addr constant [16 x ptr] [ptr @.str.37, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.42, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr null, ptr null], align 4
@a5xx_cp_err_irq._rs.47 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.48 = private unnamed_addr constant [62 x i8] c"CP | AHB error | addr=%X access=%s error=%d | status=0x%8.8X\0A\00", align 1
@.str.49 = private unnamed_addr constant [104 x i8] c"*ERROR* gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\0A\00", align 1
@a5xx_uche_err_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a5xx_uche_err_irq = private unnamed_addr constant [18 x i8] c"a5xx_uche_err_irq\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"UCHE | Out of bounds access | addr=0x%llX\0A\00", align 1
@a5xx_gpmu_err_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a5xx_gpmu_err_irq = private unnamed_addr constant [18 x i8] c"a5xx_gpmu_err_irq\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"GPMU | voltage droop\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", align 1
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"status:   %08x\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"registers-hlsq:\0A\00", align 1
@a5xx_hlsq_aperture_regs = internal unnamed_addr constant [15 x %struct.anon.97] [%struct.anon.97 { i32 53, i32 3584, i32 50 }, %struct.anon.97 { i32 49, i32 8320, i32 1 }, %struct.anon.97 { i32 51, i32 9344, i32 1 }, %struct.anon.97 { i32 50, i32 59264, i32 98 }, %struct.anon.97 { i32 52, i32 61312, i32 98 }, %struct.anon.97 { i32 63, i32 3776, i32 64 }, %struct.anon.97 { i32 61, i32 8256, i32 1 }, %struct.anon.97 { i32 59, i32 9280, i32 1 }, %struct.anon.97 { i32 62, i32 58752, i32 368 }, %struct.anon.97 { i32 60, i32 60800, i32 368 }, %struct.anon.97 { i32 58, i32 3840, i32 28 }, %struct.anon.97 { i32 56, i32 8192, i32 10 }, %struct.anon.97 { i32 54, i32 9216, i32 10 }, %struct.anon.97 { i32 57, i32 59136, i32 128 }, %struct.anon.97 { i32 55, i32 61184, i32 128 }], align 4
@.str.56 = private unnamed_addr constant [39 x i8] c"  - { offset: 0x%04x, value: 0x%08x }\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"crashdump\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@a5xx_fault_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a5xx_fault_handler = private unnamed_addr constant [19 x i8] c"a5xx_fault_handler\00", align 1
@.str.59 = private unnamed_addr constant [53 x i8] c"\014*** gpu fault: iova=%08lx, flags=%d (%u,%u,%u,%u)\0A\00", align 1
@switch.table.a5xx_hw_init = private unnamed_addr constant [7 x i32] [i32 1074266112, i32 -1071644672, i32 1074266112, i32 -2146435072, i32 -2146435072, i32 -1071644672, i32 -2146435072], align 4
@switch.table.a5xx_pm_suspend = private unnamed_addr constant [5 x i32] [i32 7, i32 15, i32 7, i32 15, i32 7], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_flush(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  br i1 %2, label %4, label %52

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 20
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 3) #10
  %9 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi ptr [ %16, %14 ], [ %10, %8 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %9, align 8
  store i32 1885470722, ptr %18, align 4
  %20 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 18
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 2
  %25 = trunc i64 %21 to i32
  %26 = add i32 %24, %25
  %27 = load ptr, ptr %9, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi ptr [ %32, %30 ], [ %27, %17 ]
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %9, align 8
  store i32 %26, ptr %34, align 4
  %36 = load i64, ptr %20, align 8
  %37 = load i32, ptr %22, align 4
  %38 = shl i32 %37, 2
  %39 = zext i32 %38 to i64
  %40 = add i64 %36, %39
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = load ptr, ptr %9, align 8
  %44 = load ptr, ptr %11, align 8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %33
  %50 = phi ptr [ %48, %46 ], [ %43, %33 ]
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %9, align 8
  store i32 %42, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %4, %3
  %53 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 16
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #10
  %55 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 5
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = ptrtoint ptr %56 to i32
  %61 = ptrtoint ptr %59 to i32
  %62 = sub i32 %60, %61
  %63 = ashr exact i32 %62, 2
  %64 = srem i32 %63, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %65 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, %1
  br i1 %67, label %68, label %77

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 15
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, -3
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr i8, ptr %75, i32 8220
  tail call void @msm_writel(i32 noundef %64, ptr noundef %76) #10
  br label %77

77:                                               ; preds = %73, %68, %52
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_set_hwcg(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %5 [
    i32 506, label %10
    i32 508, label %10
    i32 509, label %9
  ]

5:                                                ; preds = %2
  %6 = icmp eq i32 %4, 512
  %7 = select i1 %6, ptr @a512_hwcg, ptr @a5xx_hwcg
  %8 = select i1 %6, i32 56, i32 92
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %5, %2, %2
  %11 = phi ptr [ @a50x_hwcg, %2 ], [ %7, %5 ], [ @a50x_hwcg, %2 ], [ @a512_hwcg, %9 ]
  %12 = phi i32 [ 38, %2 ], [ %8, %5 ], [ 38, %2 ], [ 56, %9 ]
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %14

14:                                               ; preds = %21, %10
  %15 = phi i32 [ 0, %10 ], [ %26, %21 ]
  %16 = getelementptr %struct.adreno_five_hwcg_regs, ptr %11, i32 %15
  %17 = load i32, ptr %16, align 4
  br i1 %1, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr %struct.adreno_five_hwcg_regs, ptr %11, i32 %15, i32 1
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %20, %18 ], [ 0, %14 ]
  %23 = load ptr, ptr %13, align 8
  %24 = shl i32 %17, 2
  %25 = getelementptr i8, ptr %23, i32 %24
  tail call void @msm_writel(i32 noundef %22, ptr noundef %25) #10
  %26 = add nuw nsw i32 %15, 1
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %14

28:                                               ; preds = %21
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 540
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = select i1 %1, i32 1904, i32 0
  %33 = load ptr, ptr %13, align 8
  %34 = getelementptr i8, ptr %33, i32 804
  tail call void @msm_writel(i32 noundef %32, ptr noundef %34) #10
  %35 = select i1 %1, i32 4, i32 0
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr i8, ptr %36, i32 808
  tail call void @msm_writel(i32 noundef %35, ptr noundef %37) #10
  br label %38

38:                                               ; preds = %31, %28
  %39 = select i1 %1, i32 -1431787008, i32 0
  %40 = load ptr, ptr %13, align 8
  %41 = getelementptr i8, ptr %40, i32 412
  tail call void @msm_writel(i32 noundef %39, ptr noundef %41) #10
  %42 = select i1 %1, i32 386, i32 384
  %43 = load ptr, ptr %13, align 8
  %44 = getelementptr i8, ptr %43, i32 5324
  tail call void @msm_writel(i32 noundef %42, ptr noundef %44) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @a5xx_idle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1082, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %43

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @adreno_idle(ptr noundef %0, ptr noundef %1) #10
  br i1 %8, label %9, label %43

9:                                                ; preds = %7
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %12 = sub i32 -100, %10
  br label %13

13:                                               ; preds = %24, %9
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr i8, ptr %14, i32 5076
  %16 = tail call i32 @msm_readl(ptr noundef %15) #10
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr i8, ptr %19, i32 4996
  %21 = tail call i32 @msm_readl(ptr noundef %20) #10
  %22 = and i32 %21, 8388608
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %18, %13
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = add i32 %12, %25
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %13, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8
  %30 = tail call ptr @llvm.returnaddress(i32 0)
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr i8, ptr %31, i32 5076
  %33 = tail call i32 @msm_readl(ptr noundef %32) #10
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr i8, ptr %34, i32 4996
  %36 = tail call i32 @msm_readl(ptr noundef %35) #10
  %37 = load ptr, ptr %11, align 8
  %38 = getelementptr i8, ptr %37, i32 8216
  %39 = tail call i32 @msm_readl(ptr noundef %38) #10
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr i8, ptr %40, i32 8220
  %42 = tail call i32 @msm_readl(ptr noundef %41) #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef %29, ptr noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42) #10
  br label %43

43:                                               ; preds = %28, %18, %7, %6
  %44 = phi i1 [ false, %6 ], [ false, %28 ], [ false, %7 ], [ true, %18 ]
  ret i1 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @a5xx_gpu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %45

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 856) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.adreno_gpu, ptr %13, i32 0, i32 6
  store ptr @a5xx_registers, ptr %16, align 4
  %17 = getelementptr inbounds %struct.a5xx_gpu, ptr %13, i32 0, i32 8
  store i32 5111834, ptr %17, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 128, ptr %2, align 4
  %19 = tail call ptr @nvmem_cell_get(ptr noundef %18, ptr noundef nonnull @.str.5) #10
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @nvmem_cell_read(ptr noundef %19, ptr noundef null) #10
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %22, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  store i32 %27, ptr %2, align 4
  tail call void @kfree(ptr noundef %22) #10
  br label %28

28:                                               ; preds = %24, %21
  tail call void @nvmem_cell_put(ptr noundef %19) #10
  br label %29

29:                                               ; preds = %28, %15
  %30 = call i32 @devm_pm_opp_set_supported_hw(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %31 = call i32 @adreno_gpu_init(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull @funcs, i32 noundef 4) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  call void @a5xx_destroy(ptr noundef nonnull %13)
  %34 = inttoptr i32 %31 to ptr
  br label %45

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.msm_gpu, ptr %13, i32 0, i32 24
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.msm_gem_address_space, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.msm_mmu, ptr %41, i32 0, i32 3
  store ptr %13, ptr %42, align 4
  %43 = getelementptr inbounds %struct.msm_mmu, ptr %41, i32 0, i32 2
  store ptr @a5xx_fault_handler, ptr %43, align 4
  br label %44

44:                                               ; preds = %39, %35
  call void @a5xx_preempt_init(ptr noundef nonnull %13) #10
  br label %45

45:                                               ; preds = %44, %33, %11, %8
  %46 = phi ptr [ %34, %33 ], [ %13, %44 ], [ inttoptr (i32 -6 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %11 ]
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a5xx_destroy(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.58, ptr noundef %2) #10
  tail call void @a5xx_preempt_fini(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %4, ptr noundef %8) #10
  %9 = load ptr, ptr %3, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #10, !srcloc !11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #10, !srcloc !12
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %19, label %17, !prof !13

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #10
  br label %19

18:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #10, !callees !15
  br label %19

19:                                               ; preds = %18, %17, %15, %6, %1
  %20 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %25 = load ptr, ptr %24, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %21, ptr noundef %25) #10
  %26 = load ptr, ptr %20, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #10, !srcloc !11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #10, !srcloc !12
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34, !prof !13

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef 3) #10
  br label %36

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %26) #10, !callees !15
  br label %36

36:                                               ; preds = %35, %34, %32, %23, %19
  %37 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %42 = load ptr, ptr %41, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %38, ptr noundef %42) #10
  %43 = load ptr, ptr %37, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %43) #10, !srcloc !11
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #10, !srcloc !12
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %53, label %51, !prof !13

51:                                               ; preds = %49
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef 3) #10
  br label %53

52:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %43) #10, !callees !15
  br label %53

53:                                               ; preds = %52, %51, %49, %40, %36
  %54 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 17
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %59 = load ptr, ptr %58, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %55, ptr noundef %59) #10
  %60 = load ptr, ptr %54, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %60) #10, !srcloc !11
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %60, ptr nonnull %60, i32 1, ptr nonnull elementtype(i32) %60) #10, !srcloc !12
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !13

68:                                               ; preds = %66
  tail call void @refcount_warn_saturate(ptr noundef nonnull %60, i32 noundef 3) #10
  br label %70

69:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %60) #10, !callees !15
  br label %70

70:                                               ; preds = %69, %68, %66, %57, %53
  tail call void @adreno_gpu_cleanup(ptr noundef %0) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_fault_handler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_fault_handler._rs, ptr noundef nonnull @__func__.a5xx_fault_handler) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 11760
  %11 = tail call i32 @msm_readl(ptr noundef %10) #10
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr i8, ptr %12, i32 11764
  %14 = tail call i32 @msm_readl(ptr noundef %13) #10
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr i8, ptr %15, i32 11768
  %17 = tail call i32 @msm_readl(ptr noundef %16) #10
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr i8, ptr %18, i32 11772
  %20 = tail call i32 @msm_readl(ptr noundef %19) #10
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %1, i32 noundef %2, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20) #12
  br label %22

22:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_hw_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 49444
  tail call void @msm_writel(i32 noundef 3, ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %10 [
    i32 509, label %7
    i32 512, label %7
    i32 540, label %7
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 49320
  tail call void @msm_writel(i32 noundef 9, ptr noundef %9) #10
  br label %10

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 4540
  tail call void @msm_writel(i32 noundef -1, ptr noundef %12) #10
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i8, ptr %13, i32 588
  tail call void @msm_writel(i32 noundef 1, ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.adreno_info, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %10
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 624
  tail call void @msm_writel(i32 noundef -268435456, ptr noundef %23) #10
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr i8, ptr %24, i32 628
  tail call void @msm_writel(i32 noundef -1, ptr noundef %25) #10
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr i8, ptr %26, i32 632
  tail call void @msm_writel(i32 noundef -1, ptr noundef %27) #10
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr i8, ptr %28, i32 636
  tail call void @msm_writel(i32 noundef -1, ptr noundef %29) #10
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 640
  tail call void @msm_writel(i32 noundef -1, ptr noundef %31) #10
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr i8, ptr %32, i32 644
  tail call void @msm_writel(i32 noundef -1, ptr noundef %33) #10
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr i8, ptr %34, i32 648
  tail call void @msm_writel(i32 noundef -1, ptr noundef %35) #10
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr i8, ptr %36, i32 652
  tail call void @msm_writel(i32 noundef -1, ptr noundef %37) #10
  br label %38

38:                                               ; preds = %21, %10
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr i8, ptr %39, i32 188
  tail call void @msm_writel(i32 noundef 1073807359, ptr noundef %40) #10
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr i8, ptr %41, i32 4496
  tail call void @msm_writel(i32 noundef 1, ptr noundef %42) #10
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 11968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %44) #10
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 4524
  tail call void @msm_writel(i32 noundef 6, ptr noundef %46) #10
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr i8, ptr %47, i32 14936
  tail call void @msm_writel(i32 noundef 2, ptr noundef %48) #10
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr i8, ptr %49, i32 14884
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %50) #10
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr i8, ptr %51, i32 14888
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %52) #10
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr i8, ptr %53, i32 14876
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %54) #10
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr i8, ptr %55, i32 14880
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %56) #10
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr i8, ptr %57, i32 14892
  tail call void @msm_writel(i32 noundef 1048576, ptr noundef %58) #10
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr i8, ptr %59, i32 14896
  tail call void @msm_writel(i32 noundef 0, ptr noundef %60) #10
  %61 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 3
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, 1048575
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr i8, ptr %64, i32 14900
  tail call void @msm_writel(i32 noundef %63, ptr noundef %65) #10
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr i8, ptr %66, i32 14904
  tail call void @msm_writel(i32 noundef 0, ptr noundef %67) #10
  %68 = load i32, ptr %5, align 4
  switch i32 %68, label %79 [
    i32 506, label %69
    i32 508, label %69
    i32 510, label %69
  ]

69:                                               ; preds = %38, %38, %38
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr i8, ptr %70, i32 8340
  tail call void @msm_writel(i32 noundef 32, ptr noundef %71) #10
  %72 = load i32, ptr %5, align 4
  %73 = add i32 %72, -506
  %74 = and i32 %73, -3
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 1024, i32 32
  %77 = load ptr, ptr %2, align 8
  %78 = getelementptr i8, ptr %77, i32 8344
  tail call void @msm_writel(i32 noundef %76, ptr noundef %78) #10
  br label %87

79:                                               ; preds = %38
  %80 = load ptr, ptr %2, align 8
  %81 = getelementptr i8, ptr %80, i32 8340
  tail call void @msm_writel(i32 noundef 64, ptr noundef %81) #10
  %82 = load i32, ptr %5, align 4
  %83 = icmp eq i32 %82, 530
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr i8, ptr %84, i32 8344
  %86 = select i1 %83, i32 64, i32 1024
  tail call void @msm_writel(i32 noundef %86, ptr noundef %85) #10
  br label %87

87:                                               ; preds = %79, %69
  %88 = phi i32 [ -2147483552, %79 ], [ 1073741872, %69 ]
  %89 = phi i32 [ 1075845910, %79 ], [ 537922826, %69 ]
  %90 = load ptr, ptr %2, align 8
  %91 = getelementptr i8, ptr %90, i32 8320
  tail call void @msm_writel(i32 noundef %88, ptr noundef %91) #10
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr i8, ptr %92, i32 8316
  tail call void @msm_writel(i32 noundef %89, ptr noundef %93) #10
  %94 = load i32, ptr %5, align 4
  %95 = add i32 %94, -506
  %96 = icmp ult i32 %95, 7
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = getelementptr inbounds [7 x i32], ptr @switch.table.a5xx_hw_init, i32 0, i32 %95
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %87
  %101 = phi i32 [ %99, %97 ], [ -1071644672, %87 ]
  %102 = load ptr, ptr %2, align 8
  %103 = getelementptr i8, ptr %102, i32 13312
  tail call void @msm_writel(i32 noundef %101, ptr noundef %103) #10
  %104 = load ptr, ptr %15, align 4
  %105 = getelementptr inbounds %struct.adreno_info, ptr %104, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = load ptr, ptr %2, align 8
  %111 = getelementptr i8, ptr %110, i32 13312
  tail call void @msm_rmw(ptr noundef %111, i32 noundef 0, i32 noundef 256) #10
  br label %112

112:                                              ; preds = %109, %100
  %113 = load i32, ptr %5, align 4
  switch i32 %113, label %117 [
    i32 506, label %114
    i32 508, label %114
    i32 509, label %114
    i32 512, label %114
  ]

114:                                              ; preds = %112, %112, %112, %112
  %115 = load ptr, ptr %2, align 8
  %116 = getelementptr i8, ptr %115, i32 13072
  tail call void @msm_rmw(ptr noundef %116, i32 noundef 0, i32 noundef 512) #10
  br label %117

117:                                              ; preds = %114, %112
  %118 = load ptr, ptr %2, align 8
  %119 = getelementptr i8, ptr %118, i32 14852
  tail call void @msm_writel(i32 noundef 536870912, ptr noundef %119) #10
  %120 = load ptr, ptr %2, align 8
  %121 = getelementptr i8, ptr %120, i32 8396
  tail call void @msm_writel(i32 noundef 33554432, ptr noundef %121) #10
  %122 = load ptr, ptr %2, align 8
  %123 = getelementptr i8, ptr %122, i32 592
  tail call void @msm_writel(i32 noundef -1493172225, ptr noundef %123) #10
  %124 = load i32, ptr %5, align 4
  %125 = icmp eq i32 %124, 510
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load ptr, ptr %2, align 8
  %128 = getelementptr i8, ptr %127, i32 13072
  tail call void @msm_rmw(ptr noundef %128, i32 noundef 2048, i32 noundef 0) #10
  br label %129

129:                                              ; preds = %126, %117
  tail call void @a5xx_set_hwcg(ptr noundef %0, i1 noundef zeroext true)
  %130 = load ptr, ptr %2, align 8
  %131 = getelementptr i8, ptr %130, i32 596
  tail call void @msm_writel(i32 noundef 63, ptr noundef %131) #10
  %132 = load i32, ptr %5, align 4
  %133 = icmp eq i32 %132, 540
  %134 = select i1 %133, i32 2, i32 1
  %135 = shl nuw nsw i32 %134, 7
  %136 = load ptr, ptr %2, align 8
  %137 = getelementptr i8, ptr %136, i32 15368
  tail call void @msm_writel(i32 noundef %135, ptr noundef %137) #10
  %138 = shl nuw nsw i32 %134, 1
  %139 = load ptr, ptr %2, align 8
  %140 = getelementptr i8, ptr %139, i32 13080
  tail call void @msm_writel(i32 noundef %138, ptr noundef %140) #10
  %141 = load i32, ptr %5, align 4
  switch i32 %141, label %145 [
    i32 509, label %142
    i32 512, label %142
    i32 540, label %142
  ]

142:                                              ; preds = %129, %129, %129
  %143 = load ptr, ptr %2, align 8
  %144 = getelementptr i8, ptr %143, i32 14908
  tail call void @msm_writel(i32 noundef %134, ptr noundef %144) #10
  br label %145

145:                                              ; preds = %142, %129
  %146 = load ptr, ptr %2, align 8
  %147 = getelementptr i8, ptr %146, i32 14720
  tail call void @msm_rmw(ptr noundef %147, i32 noundef 0, i32 noundef 1024) #10
  %148 = load ptr, ptr %2, align 8
  %149 = getelementptr i8, ptr %148, i32 8832
  tail call void @msm_writel(i32 noundef 7, ptr noundef %149) #10
  %150 = load ptr, ptr %2, align 8
  %151 = getelementptr i8, ptr %150, i32 8704
  tail call void @msm_writel(i32 noundef 1644167184, ptr noundef %151) #10
  %152 = load ptr, ptr %2, align 8
  %153 = getelementptr i8, ptr %152, i32 8708
  tail call void @msm_writel(i32 noundef 1660944416, ptr noundef %153) #10
  %154 = load ptr, ptr %2, align 8
  %155 = getelementptr i8, ptr %154, i32 8712
  tail call void @msm_writel(i32 noundef 1677721664, ptr noundef %155) #10
  %156 = load ptr, ptr %2, align 8
  %157 = getelementptr i8, ptr %156, i32 8716
  tail call void @msm_writel(i32 noundef 1694498944, ptr noundef %157) #10
  %158 = load ptr, ptr %2, align 8
  %159 = getelementptr i8, ptr %158, i32 8720
  tail call void @msm_writel(i32 noundef 1711276288, ptr noundef %159) #10
  %160 = load ptr, ptr %2, align 8
  %161 = getelementptr i8, ptr %160, i32 8724
  tail call void @msm_writel(i32 noundef 1711276544, ptr noundef %161) #10
  %162 = load ptr, ptr %2, align 8
  %163 = getelementptr i8, ptr %162, i32 8728
  tail call void @msm_writel(i32 noundef 1677975552, ptr noundef %163) #10
  %164 = load ptr, ptr %2, align 8
  %165 = getelementptr i8, ptr %164, i32 8732
  tail call void @msm_writel(i32 noundef 1627639808, ptr noundef %165) #10
  %166 = load ptr, ptr %2, align 8
  %167 = getelementptr i8, ptr %166, i32 8736
  tail call void @msm_writel(i32 noundef 1711284224, ptr noundef %167) #10
  %168 = load ptr, ptr %2, align 8
  %169 = getelementptr i8, ptr %168, i32 8740
  tail call void @msm_writel(i32 noundef 1660952832, ptr noundef %169) #10
  %170 = load ptr, ptr %2, align 8
  %171 = getelementptr i8, ptr %170, i32 8744
  tail call void @msm_writel(i32 noundef 1694507520, ptr noundef %171) #10
  %172 = load ptr, ptr %2, align 8
  %173 = getelementptr i8, ptr %172, i32 8748
  tail call void @msm_writel(i32 noundef 1610623616, ptr noundef %173) #10
  %174 = load ptr, ptr %2, align 8
  %175 = getelementptr i8, ptr %174, i32 8752
  tail call void @msm_writel(i32 noundef 1610625792, ptr noundef %175) #10
  %176 = load ptr, ptr %2, align 8
  %177 = getelementptr i8, ptr %176, i32 8756
  tail call void @msm_writel(i32 noundef 1627403200, ptr noundef %177) #10
  %178 = load ptr, ptr %2, align 8
  %179 = getelementptr i8, ptr %178, i32 8760
  tail call void @msm_writel(i32 noundef 1660959136, ptr noundef %179) #10
  %180 = load ptr, ptr %2, align 8
  %181 = getelementptr i8, ptr %180, i32 8764
  tail call void @msm_writel(i32 noundef 1677736384, ptr noundef %181) #10
  %182 = load ptr, ptr %2, align 8
  %183 = getelementptr i8, ptr %182, i32 8768
  tail call void @msm_writel(i32 noundef 1677736448, ptr noundef %183) #10
  %184 = load ptr, ptr %2, align 8
  %185 = getelementptr i8, ptr %184, i32 8772
  tail call void @msm_writel(i32 noundef 1862533120, ptr noundef %185) #10
  %186 = load ptr, ptr %2, align 8
  %187 = getelementptr i8, ptr %186, i32 253964
  tail call void @msm_writel(i32 noundef 0, ptr noundef %187) #10
  %188 = load ptr, ptr %2, align 8
  %189 = getelementptr i8, ptr %188, i32 253952
  tail call void @msm_writel(i32 noundef 0, ptr noundef %189) #10
  %190 = load ptr, ptr %2, align 8
  %191 = getelementptr i8, ptr %190, i32 253956
  tail call void @msm_writel(i32 noundef 0, ptr noundef %191) #10
  %192 = load ptr, ptr %2, align 8
  %193 = getelementptr i8, ptr %192, i32 253960
  tail call void @msm_writel(i32 noundef 0, ptr noundef %193) #10
  %194 = load ptr, ptr %2, align 8
  %195 = getelementptr i8, ptr %194, i32 8576
  tail call void @msm_writel(i32 noundef 1, ptr noundef %195) #10
  %196 = load ptr, ptr %2, align 8
  %197 = getelementptr i8, ptr %196, i32 12036
  tail call void @msm_writel(i32 noundef 1, ptr noundef %197) #10
  %198 = load ptr, ptr %2, align 8
  %199 = getelementptr i8, ptr %198, i32 12804
  tail call void @msm_writel(i32 noundef 1, ptr noundef %199) #10
  %200 = load ptr, ptr %2, align 8
  %201 = getelementptr i8, ptr %200, i32 13076
  tail call void @msm_writel(i32 noundef 1, ptr noundef %201) #10
  %202 = load ptr, ptr %2, align 8
  %203 = getelementptr i8, ptr %202, i32 13316
  tail call void @msm_writel(i32 noundef 1, ptr noundef %203) #10
  %204 = load ptr, ptr %2, align 8
  %205 = getelementptr i8, ptr %204, i32 14356
  tail call void @msm_writel(i32 noundef 1, ptr noundef %205) #10
  %206 = load ptr, ptr %2, align 8
  %207 = getelementptr i8, ptr %206, i32 14596
  tail call void @msm_writel(i32 noundef 1, ptr noundef %207) #10
  %208 = load ptr, ptr %2, align 8
  %209 = getelementptr i8, ptr %208, i32 14724
  tail call void @msm_writel(i32 noundef 1, ptr noundef %209) #10
  %210 = load ptr, ptr %2, align 8
  %211 = getelementptr i8, ptr %210, i32 14848
  tail call void @msm_writel(i32 noundef 1, ptr noundef %211) #10
  %212 = load ptr, ptr %2, align 8
  %213 = getelementptr i8, ptr %212, i32 15108
  tail call void @msm_writel(i32 noundef 1, ptr noundef %213) #10
  %214 = load ptr, ptr %2, align 8
  %215 = getelementptr i8, ptr %214, i32 15364
  tail call void @msm_writel(i32 noundef 1, ptr noundef %215) #10
  %216 = load ptr, ptr %2, align 8
  %217 = getelementptr i8, ptr %216, i32 254016
  tail call void @msm_writel(i32 noundef 1, ptr noundef %217) #10
  %218 = load ptr, ptr %15, align 4
  %219 = getelementptr inbounds %struct.adreno_info, ptr %218, i32 0, i32 5
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, 3
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %145
  %224 = load ptr, ptr %2, align 8
  %225 = getelementptr i8, ptr %224, i32 14720
  tail call void @msm_rmw(ptr noundef %225, i32 noundef 0, i32 noundef 8388608) #10
  %226 = load ptr, ptr %2, align 8
  %227 = getelementptr i8, ptr %226, i32 14352
  tail call void @msm_rmw(ptr noundef %227, i32 noundef 262144, i32 noundef 0) #10
  br label %228

228:                                              ; preds = %223, %145
  %229 = tail call i32 @adreno_hw_init(ptr noundef %0) #10
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %547

231:                                              ; preds = %228
  %232 = load i32, ptr %5, align 4
  switch i32 %232, label %234 [
    i32 530, label %233
    i32 540, label %233
  ]

233:                                              ; preds = %231, %231
  tail call void @a5xx_gpmu_ucode_init(ptr noundef %0) #10
  br label %234

234:                                              ; preds = %233, %231
  %235 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 1
  %236 = load ptr, ptr %235, align 8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 8
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 2
  %242 = tail call ptr @adreno_fw_create_bo(ptr noundef %0, ptr noundef %240, ptr noundef %241) #10
  store ptr %242, ptr %235, align 8
  %243 = icmp ugt ptr %242, inttoptr (i32 -4096 to ptr)
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = ptrtoint ptr %242 to i32
  store ptr null, ptr %235, align 8
  %246 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.drm_device, ptr %247, i32 0, i32 2
  %249 = load ptr, ptr %248, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %249, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef %245) #10
  br label %547

250:                                              ; preds = %238
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %242, ptr noundef nonnull @.str.9) #10
  br label %251

251:                                              ; preds = %250, %234
  %252 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 3
  %253 = load ptr, ptr %252, align 8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %283

255:                                              ; preds = %251
  %256 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 4
  %259 = tail call ptr @adreno_fw_create_bo(ptr noundef %0, ptr noundef %257, ptr noundef %258) #10
  store ptr %259, ptr %252, align 8
  %260 = icmp ugt ptr %259, inttoptr (i32 -4096 to ptr)
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = ptrtoint ptr %259 to i32
  store ptr null, ptr %252, align 8
  %263 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.drm_device, ptr %264, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %266, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %262) #10
  br label %547

267:                                              ; preds = %255
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %259, ptr noundef nonnull @.str.11) #10
  %268 = load ptr, ptr %252, align 8
  %269 = tail call ptr @msm_gem_get_vaddr(ptr noundef %268) #10
  %270 = icmp ugt ptr %269, inttoptr (i32 -4096 to ptr)
  br i1 %270, label %283, label %271

271:                                              ; preds = %267
  %272 = load i32, ptr %269, align 4
  %273 = and i32 %272, 15
  %274 = icmp eq i32 %273, 10
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = getelementptr i32, ptr %269, i32 2
  %277 = load i32, ptr %276, align 4
  %278 = and i32 %277, 15
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 20
  store i8 1, ptr %281, align 4
  br label %282

282:                                              ; preds = %280, %275, %271
  tail call void @msm_gem_put_vaddr(ptr noundef %268) #10
  br label %283

283:                                              ; preds = %282, %267, %251
  %284 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 2
  %285 = load i64, ptr %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = load ptr, ptr %2, align 8
  %288 = getelementptr i8, ptr %287, i32 8416
  tail call void @msm_writel(i32 noundef %286, ptr noundef %288) #10
  %289 = lshr i64 %285, 32
  %290 = trunc i64 %289 to i32
  %291 = load ptr, ptr %2, align 8
  %292 = getelementptr i8, ptr %291, i32 8420
  tail call void @msm_writel(i32 noundef %290, ptr noundef %292) #10
  %293 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 4
  %294 = load i64, ptr %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = load ptr, ptr %2, align 8
  %297 = getelementptr i8, ptr %296, i32 8404
  tail call void @msm_writel(i32 noundef %295, ptr noundef %297) #10
  %298 = lshr i64 %294, 32
  %299 = trunc i64 %298 to i32
  %300 = load ptr, ptr %2, align 8
  %301 = getelementptr i8, ptr %300, i32 8408
  tail call void @msm_writel(i32 noundef %299, ptr noundef %301) #10
  %302 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.msm_ringbuffer, ptr %303, i32 0, i32 10
  %305 = load i64, ptr %304, align 8
  %306 = trunc i64 %305 to i32
  %307 = load ptr, ptr %2, align 8
  %308 = getelementptr i8, ptr %307, i32 8192
  tail call void @msm_writel(i32 noundef %306, ptr noundef %308) #10
  %309 = lshr i64 %305, 32
  %310 = trunc i64 %309 to i32
  %311 = load ptr, ptr %2, align 8
  %312 = getelementptr i8, ptr %311, i32 8196
  tail call void @msm_writel(i32 noundef %310, ptr noundef %312) #10
  %313 = load ptr, ptr %2, align 8
  %314 = getelementptr i8, ptr %313, i32 8200
  tail call void @msm_writel(i32 noundef 134218252, ptr noundef %314) #10
  %315 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 20
  %316 = load i8, ptr %315, align 4, !range !8
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %354, label %318

318:                                              ; preds = %283
  %319 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 17
  %320 = load ptr, ptr %319, align 8
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %338

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %326 = load i32, ptr %325, align 4
  %327 = shl i32 %326, 2
  %328 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %329 = load ptr, ptr %328, align 8
  %330 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 18
  %331 = tail call ptr @msm_gem_kernel_new(ptr noundef %324, i32 noundef %327, i32 noundef 537001984, ptr noundef %329, ptr noundef %319, ptr noundef %330) #10
  %332 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 19
  store ptr %331, ptr %332, align 8
  %333 = icmp ugt ptr %331, inttoptr (i32 -4096 to ptr)
  br i1 %333, label %334, label %336

334:                                              ; preds = %322
  %335 = ptrtoint ptr %331 to i32
  br label %547

336:                                              ; preds = %322
  %337 = load ptr, ptr %319, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %337, ptr noundef nonnull @.str.6) #10
  br label %338

338:                                              ; preds = %336, %318
  %339 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 18
  %340 = load i64, ptr %339, align 8
  %341 = load ptr, ptr %302, align 4
  %342 = getelementptr inbounds %struct.msm_ringbuffer, ptr %341, i32 0, i32 1
  %343 = load i32, ptr %342, align 4
  %344 = shl i32 %343, 2
  %345 = zext i32 %344 to i64
  %346 = add i64 %340, %345
  %347 = trunc i64 %346 to i32
  %348 = load ptr, ptr %2, align 8
  %349 = getelementptr i8, ptr %348, i32 8208
  tail call void @msm_writel(i32 noundef %347, ptr noundef %349) #10
  %350 = lshr i64 %346, 32
  %351 = trunc i64 %350 to i32
  %352 = load ptr, ptr %2, align 8
  %353 = getelementptr i8, ptr %352, i32 8212
  tail call void @msm_writel(i32 noundef %351, ptr noundef %353) #10
  br label %359

354:                                              ; preds = %283
  %355 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %356 = load i32, ptr %355, align 4
  %357 = icmp sgt i32 %356, 1
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  tail call void @a5xx_preempt_fini(ptr noundef %0) #10
  store i32 1, ptr %355, align 4
  br label %359

359:                                              ; preds = %358, %354, %338
  tail call void @a5xx_preempt_hw_init(ptr noundef %0) #10
  %360 = load ptr, ptr %2, align 8
  %361 = getelementptr i8, ptr %360, i32 224
  tail call void @msm_writel(i32 noundef 294650750, ptr noundef %361) #10
  %362 = load ptr, ptr %2, align 8
  %363 = getelementptr i8, ptr %362, i32 8392
  tail call void @msm_writel(i32 noundef 0, ptr noundef %363) #10
  %364 = load ptr, ptr %302, align 4
  tail call void @adreno_wait_ring(ptr noundef %364, i32 noundef 9) #10
  %365 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 6
  %366 = load ptr, ptr %365, align 8
  %367 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 4
  %368 = load ptr, ptr %367, align 8
  %369 = icmp eq ptr %366, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %359
  %371 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %372 = load ptr, ptr %371, align 4
  br label %373

373:                                              ; preds = %370, %359
  %374 = phi ptr [ %372, %370 ], [ %366, %359 ]
  %375 = getelementptr i32, ptr %374, i32 1
  store ptr %375, ptr %365, align 8
  store i32 1892155400, ptr %374, align 4
  %376 = load ptr, ptr %365, align 8
  %377 = load ptr, ptr %367, align 8
  %378 = icmp eq ptr %376, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %381 = load ptr, ptr %380, align 4
  br label %382

382:                                              ; preds = %379, %373
  %383 = phi ptr [ %381, %379 ], [ %376, %373 ]
  %384 = getelementptr i32, ptr %383, i32 1
  store ptr %384, ptr %365, align 8
  store i32 47, ptr %383, align 4
  %385 = load ptr, ptr %365, align 8
  %386 = load ptr, ptr %367, align 8
  %387 = icmp eq ptr %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %390 = load ptr, ptr %389, align 4
  br label %391

391:                                              ; preds = %388, %382
  %392 = phi ptr [ %390, %388 ], [ %385, %382 ]
  %393 = getelementptr i32, ptr %392, i32 1
  store ptr %393, ptr %365, align 8
  store i32 3, ptr %392, align 4
  %394 = load ptr, ptr %365, align 8
  %395 = load ptr, ptr %367, align 8
  %396 = icmp eq ptr %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %391
  %398 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %399 = load ptr, ptr %398, align 4
  br label %400

400:                                              ; preds = %397, %391
  %401 = phi ptr [ %399, %397 ], [ %394, %391 ]
  %402 = getelementptr i32, ptr %401, i32 1
  store ptr %402, ptr %365, align 8
  store i32 536870912, ptr %401, align 4
  %403 = load ptr, ptr %365, align 8
  %404 = load ptr, ptr %367, align 8
  %405 = icmp eq ptr %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %408 = load ptr, ptr %407, align 4
  br label %409

409:                                              ; preds = %406, %400
  %410 = phi ptr [ %408, %406 ], [ %403, %400 ]
  %411 = getelementptr i32, ptr %410, i32 1
  store ptr %411, ptr %365, align 8
  store i32 0, ptr %410, align 4
  %412 = load ptr, ptr %365, align 8
  %413 = load ptr, ptr %367, align 8
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %417 = load ptr, ptr %416, align 4
  br label %418

418:                                              ; preds = %415, %409
  %419 = phi ptr [ %417, %415 ], [ %412, %409 ]
  %420 = getelementptr i32, ptr %419, i32 1
  store ptr %420, ptr %365, align 8
  store i32 0, ptr %419, align 4
  %421 = load i32, ptr %5, align 4
  switch i32 %421, label %442 [
    i32 506, label %422
    i32 530, label %422
    i32 510, label %432
  ]

422:                                              ; preds = %418, %418
  %423 = load ptr, ptr %365, align 8
  %424 = load ptr, ptr %367, align 8
  %425 = icmp eq ptr %423, %424
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %428 = load ptr, ptr %427, align 4
  br label %429

429:                                              ; preds = %426, %422
  %430 = phi ptr [ %428, %426 ], [ %423, %422 ]
  %431 = getelementptr i32, ptr %430, i32 1
  store ptr %431, ptr %365, align 8
  store i32 11, ptr %430, align 4
  br label %452

432:                                              ; preds = %418
  %433 = load ptr, ptr %365, align 8
  %434 = load ptr, ptr %367, align 8
  %435 = icmp eq ptr %433, %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %438 = load ptr, ptr %437, align 4
  br label %439

439:                                              ; preds = %436, %432
  %440 = phi ptr [ %438, %436 ], [ %433, %432 ]
  %441 = getelementptr i32, ptr %440, i32 1
  store ptr %441, ptr %365, align 8
  store i32 1, ptr %440, align 4
  br label %452

442:                                              ; preds = %418
  %443 = load ptr, ptr %365, align 8
  %444 = load ptr, ptr %367, align 8
  %445 = icmp eq ptr %443, %444
  br i1 %445, label %446, label %449

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %448 = load ptr, ptr %447, align 4
  br label %449

449:                                              ; preds = %446, %442
  %450 = phi ptr [ %448, %446 ], [ %443, %442 ]
  %451 = getelementptr i32, ptr %450, i32 1
  store ptr %451, ptr %365, align 8
  store i32 0, ptr %450, align 4
  br label %452

452:                                              ; preds = %449, %439, %429
  %453 = load ptr, ptr %365, align 8
  %454 = load ptr, ptr %367, align 8
  %455 = icmp eq ptr %453, %454
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %458 = load ptr, ptr %457, align 4
  br label %459

459:                                              ; preds = %456, %452
  %460 = phi ptr [ %458, %456 ], [ %453, %452 ]
  %461 = getelementptr i32, ptr %460, i32 1
  store ptr %461, ptr %365, align 8
  store i32 0, ptr %460, align 4
  %462 = load ptr, ptr %365, align 8
  %463 = load ptr, ptr %367, align 8
  %464 = icmp eq ptr %462, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.msm_ringbuffer, ptr %364, i32 0, i32 3
  %467 = load ptr, ptr %466, align 4
  br label %468

468:                                              ; preds = %465, %459
  %469 = phi ptr [ %467, %465 ], [ %462, %459 ]
  %470 = getelementptr i32, ptr %469, i32 1
  store ptr %470, ptr %365, align 8
  store i32 0, ptr %469, align 4
  tail call void @a5xx_flush(ptr noundef %0, ptr noundef %364, i1 noundef zeroext true) #10
  %471 = tail call zeroext i1 @a5xx_idle(ptr noundef %0, ptr noundef %364) #10
  br i1 %471, label %472, label %547

472:                                              ; preds = %468
  %473 = tail call i32 @a5xx_power_init(ptr noundef %0) #10
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %547

475:                                              ; preds = %472
  %476 = load i32, ptr %5, align 4
  %477 = icmp eq i32 %476, 530
  br i1 %477, label %478, label %506

478:                                              ; preds = %475
  %479 = load ptr, ptr %302, align 4
  tail call void @adreno_wait_ring(ptr noundef %479, i32 noundef 2) #10
  %480 = getelementptr inbounds %struct.msm_ringbuffer, ptr %479, i32 0, i32 6
  %481 = load ptr, ptr %480, align 8
  %482 = getelementptr inbounds %struct.msm_ringbuffer, ptr %479, i32 0, i32 4
  %483 = load ptr, ptr %482, align 8
  %484 = icmp eq ptr %481, %483
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = getelementptr inbounds %struct.msm_ringbuffer, ptr %479, i32 0, i32 3
  %487 = load ptr, ptr %486, align 4
  br label %488

488:                                              ; preds = %485, %478
  %489 = phi ptr [ %487, %485 ], [ %481, %478 ]
  %490 = getelementptr i32, ptr %489, i32 1
  store ptr %490, ptr %480, align 8
  store i32 1883635713, ptr %489, align 4
  %491 = load ptr, ptr %302, align 4
  %492 = getelementptr inbounds %struct.msm_ringbuffer, ptr %491, i32 0, i32 6
  %493 = load ptr, ptr %492, align 8
  %494 = getelementptr inbounds %struct.msm_ringbuffer, ptr %491, i32 0, i32 4
  %495 = load ptr, ptr %494, align 8
  %496 = icmp eq ptr %493, %495
  br i1 %496, label %497, label %500

497:                                              ; preds = %488
  %498 = getelementptr inbounds %struct.msm_ringbuffer, ptr %491, i32 0, i32 3
  %499 = load ptr, ptr %498, align 4
  br label %500

500:                                              ; preds = %497, %488
  %501 = phi ptr [ %499, %497 ], [ %493, %488 ]
  %502 = getelementptr i32, ptr %501, i32 1
  store ptr %502, ptr %492, align 8
  store i32 16, ptr %501, align 4
  %503 = load ptr, ptr %302, align 4
  tail call void @a5xx_flush(ptr noundef %0, ptr noundef %503, i1 noundef zeroext true)
  %504 = load ptr, ptr %302, align 4
  %505 = tail call zeroext i1 @a5xx_idle(ptr noundef %0, ptr noundef %504)
  br i1 %505, label %506, label %547

506:                                              ; preds = %500, %475
  %507 = tail call fastcc i32 @a5xx_zap_shader_init(ptr noundef %0)
  switch i32 %507, label %547 [
    i32 0, label %508
    i32 -19, label %536
  ]

508:                                              ; preds = %506
  %509 = load ptr, ptr %302, align 4
  tail call void @adreno_wait_ring(ptr noundef %509, i32 noundef 2) #10
  %510 = getelementptr inbounds %struct.msm_ringbuffer, ptr %509, i32 0, i32 6
  %511 = load ptr, ptr %510, align 8
  %512 = getelementptr inbounds %struct.msm_ringbuffer, ptr %509, i32 0, i32 4
  %513 = load ptr, ptr %512, align 8
  %514 = icmp eq ptr %511, %513
  br i1 %514, label %515, label %518

515:                                              ; preds = %508
  %516 = getelementptr inbounds %struct.msm_ringbuffer, ptr %509, i32 0, i32 3
  %517 = load ptr, ptr %516, align 4
  br label %518

518:                                              ; preds = %515, %508
  %519 = phi ptr [ %517, %515 ], [ %511, %508 ]
  %520 = getelementptr i32, ptr %519, i32 1
  store ptr %520, ptr %510, align 8
  store i32 1894121473, ptr %519, align 4
  %521 = load ptr, ptr %302, align 4
  %522 = getelementptr inbounds %struct.msm_ringbuffer, ptr %521, i32 0, i32 6
  %523 = load ptr, ptr %522, align 8
  %524 = getelementptr inbounds %struct.msm_ringbuffer, ptr %521, i32 0, i32 4
  %525 = load ptr, ptr %524, align 8
  %526 = icmp eq ptr %523, %525
  br i1 %526, label %527, label %530

527:                                              ; preds = %518
  %528 = getelementptr inbounds %struct.msm_ringbuffer, ptr %521, i32 0, i32 3
  %529 = load ptr, ptr %528, align 4
  br label %530

530:                                              ; preds = %527, %518
  %531 = phi ptr [ %529, %527 ], [ %523, %518 ]
  %532 = getelementptr i32, ptr %531, i32 1
  store ptr %532, ptr %522, align 8
  store i32 0, ptr %531, align 4
  %533 = load ptr, ptr %302, align 4
  tail call void @a5xx_flush(ptr noundef %0, ptr noundef %533, i1 noundef zeroext true)
  %534 = load ptr, ptr %302, align 4
  %535 = tail call zeroext i1 @a5xx_idle(ptr noundef %0, ptr noundef %534)
  br i1 %535, label %546, label %547

536:                                              ; preds = %506
  %537 = load i1, ptr @a5xx_hw_init.__print_once, align 1
  br i1 %537, label %543, label %538

538:                                              ; preds = %536
  store i1 true, ptr @a5xx_hw_init.__print_once, align 1
  %539 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr inbounds %struct.drm_device, ptr %540, i32 0, i32 2
  %542 = load ptr, ptr %541, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %542, ptr noundef nonnull @.str.7) #12
  br label %543

543:                                              ; preds = %538, %536
  %544 = load ptr, ptr %2, align 8
  %545 = getelementptr i8, ptr %544, i32 249856
  tail call void @msm_writel(i32 noundef 0, ptr noundef %545) #10
  br label %546

546:                                              ; preds = %543, %530
  tail call fastcc void @a5xx_preempt_start(ptr noundef %0)
  br label %547

547:                                              ; preds = %546, %530, %506, %500, %472, %468, %334, %261, %244, %228
  %548 = phi i32 [ 0, %546 ], [ %335, %334 ], [ %229, %228 ], [ -22, %468 ], [ %473, %472 ], [ -22, %500 ], [ -22, %530 ], [ %507, %506 ], [ %262, %261 ], [ %245, %244 ]
  ret i32 %548
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_pm_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -506
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [5 x i32], ptr @switch.table.a5xx_pm_suspend, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 15, %1 ], [ %8, %6 ]
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 49664
  tail call void @msm_writel(i32 noundef %10, ptr noundef %13) #10
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 -100, %14
  br label %16

16:                                               ; preds = %22, %9
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr i8, ptr %17, i32 49668
  %19 = tail call i32 @msm_readl(ptr noundef %18) #10
  %20 = and i32 %19, %10
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = add i32 %15, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %16, label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr i8, ptr %27, i32 49664
  tail call void @msm_writel(i32 noundef 0, ptr noundef %28) #10
  %29 = load i32, ptr %2, align 4
  switch i32 %29, label %35 [
    i32 510, label %30
    i32 530, label %30
  ]

30:                                               ; preds = %26, %26
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr i8, ptr %31, i32 276
  tail call void @msm_writel(i32 noundef 3932160, ptr noundef %32) #10
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr i8, ptr %33, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %34) #10
  br label %35

35:                                               ; preds = %30, %26
  %36 = tail call i32 @msm_gpu_pm_suspend(ptr noundef %0) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 20
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 19
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ 0, %46 ], [ %52, %48 ]
  %50 = load ptr, ptr %47, align 8
  %51 = getelementptr i32, ptr %50, i32 %49
  store i32 0, ptr %51, align 4
  %52 = add nuw nsw i32 %49, 1
  %53 = load i32, ptr %43, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %48, label %55

55:                                               ; preds = %48, %42, %38, %35
  %56 = phi i32 [ %36, %35 ], [ 0, %38 ], [ 0, %42 ], [ 0, %48 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_pm_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @msm_gpu_pm_resume(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %50

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %7 [
    i32 530, label %13
    i32 540, label %13
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 412
  tail call void @msm_writel(i32 noundef 85, ptr noundef %10) #10
  tail call void @a5xx_set_hwcg(ptr noundef %0, i1 noundef zeroext true)
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr i8, ptr %11, i32 412
  tail call void @msm_rmw(ptr noundef %12, i32 noundef 255, i32 noundef 0) #10
  br label %50

13:                                               ; preds = %4, %4
  %14 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 172572
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %16) #10
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 644244) #10
  br label %18

18:                                               ; preds = %26, %13
  %19 = phi i32 [ 19, %13 ], [ %27, %26 ]
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #10
  %21 = load ptr, ptr %14, align 8
  %22 = getelementptr i8, ptr %21, i32 172596
  %23 = tail call i32 @msm_readl(ptr noundef %22) #10
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !17
  %27 = add nsw i32 %19, -1
  %28 = icmp eq i32 %19, 0
  br i1 %28, label %29, label %18

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8
  %31 = load ptr, ptr %14, align 8
  %32 = getelementptr i8, ptr %31, i32 172596
  %33 = tail call i32 @msm_readl(ptr noundef %32) #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, ptr noundef %30, i32 noundef %33) #10
  br label %50

34:                                               ; preds = %18
  %35 = load ptr, ptr %14, align 8
  %36 = getelementptr i8, ptr %35, i32 172548
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %36) #10
  br label %37

37:                                               ; preds = %45, %34
  %38 = phi i32 [ 19, %34 ], [ %46, %45 ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #10
  %40 = load ptr, ptr %14, align 8
  %41 = getelementptr i8, ptr %40, i32 172588
  %42 = tail call i32 @msm_readl(ptr noundef %41) #10
  %43 = and i32 %42, 1048576
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !17
  %46 = add nsw i32 %38, -1
  %47 = icmp eq i32 %38, 0
  br i1 %47, label %48, label %37

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, ptr noundef %49) #10
  br label %50

50:                                               ; preds = %48, %37, %29, %7, %1
  %51 = phi i32 [ -110, %29 ], [ 0, %7 ], [ %2, %1 ], [ -110, %48 ], [ 0, %37 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a5xx_submit(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #10
  %5 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %12, %10 ], [ %6, %2 ]
  %15 = getelementptr i32, ptr %14, i32 1
  store ptr %15, ptr %5, align 8
  store i32 1894318081, ptr %14, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %7, align 8
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %16, %13 ]
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %5, align 8
  store i32 2, ptr %23, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #10
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %30, %28 ], [ %25, %22 ]
  %33 = getelementptr i32, ptr %32, i32 1
  store ptr %33, ptr %5, align 8
  store i32 1893662721, ptr %32, align 4
  %34 = load ptr, ptr %5, align 8
  %35 = load ptr, ptr %7, align 8
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi ptr [ %39, %37 ], [ %34, %31 ]
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %5, align 8
  store i32 0, ptr %41, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 3) #10
  %43 = load ptr, ptr %5, align 8
  %44 = load ptr, ptr %7, align 8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi ptr [ %48, %46 ], [ %43, %40 ]
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %5, align 8
  store i32 1208499714, ptr %50, align 4
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.msm_ringbuffer, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 14, i32 %54
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %7, align 8
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %49
  %65 = phi ptr [ %63, %61 ], [ %58, %49 ]
  %66 = getelementptr i32, ptr %65, i32 1
  store ptr %66, ptr %5, align 8
  store i32 %57, ptr %65, align 4
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.msm_ringbuffer, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 14, i32 %69
  %71 = load i64, ptr %70, align 8
  %72 = lshr i64 %71, 32
  %73 = trunc i64 %72 to i32
  %74 = load ptr, ptr %5, align 8
  %75 = load ptr, ptr %7, align 8
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %64
  %81 = phi ptr [ %79, %77 ], [ %74, %64 ]
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %5, align 8
  store i32 %73, ptr %81, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #10
  %83 = load ptr, ptr %5, align 8
  %84 = load ptr, ptr %7, align 8
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi ptr [ %88, %86 ], [ %83, %80 ]
  %91 = getelementptr i32, ptr %90, i32 1
  store ptr %91, ptr %5, align 8
  store i32 1893662721, ptr %90, align 4
  %92 = load ptr, ptr %5, align 8
  %93 = load ptr, ptr %7, align 8
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi ptr [ %97, %95 ], [ %92, %89 ]
  %100 = getelementptr i32, ptr %99, i32 1
  store ptr %100, ptr %5, align 8
  store i32 1, ptr %99, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #10
  %101 = load ptr, ptr %5, align 8
  %102 = load ptr, ptr %7, align 8
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = phi ptr [ %106, %104 ], [ %101, %98 ]
  %109 = getelementptr i32, ptr %108, i32 1
  store ptr %109, ptr %5, align 8
  store i32 1894318081, ptr %108, align 4
  %110 = load ptr, ptr %5, align 8
  %111 = load ptr, ptr %7, align 8
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %107
  %117 = phi ptr [ %115, %113 ], [ %110, %107 ]
  %118 = getelementptr i32, ptr %117, i32 1
  store ptr %118, ptr %5, align 8
  store i32 2, ptr %117, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #10
  %119 = load ptr, ptr %5, align 8
  %120 = load ptr, ptr %7, align 8
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi ptr [ %124, %122 ], [ %119, %116 ]
  %127 = getelementptr i32, ptr %126, i32 1
  store ptr %127, ptr %5, align 8
  store i32 1880883201, ptr %126, align 4
  %128 = load ptr, ptr %5, align 8
  %129 = load ptr, ptr %7, align 8
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = phi ptr [ %133, %131 ], [ %128, %125 ]
  %136 = getelementptr i32, ptr %135, i32 1
  store ptr %136, ptr %5, align 8
  store i32 2, ptr %135, align 4
  %137 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 18
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %256, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 21
  %142 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 15
  %143 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 11
  %144 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %145 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 20
  %146 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 18
  %147 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 1
  br label %148

148:                                              ; preds = %252, %140
  %149 = phi i32 [ 0, %140 ], [ %209, %252 ]
  %150 = phi i32 [ 0, %140 ], [ %253, %252 ]
  %151 = load ptr, ptr %141, align 8
  %152 = getelementptr %struct.anon.81, ptr %151, i32 %150
  %153 = load i32, ptr %152, align 8
  switch i32 %153, label %208 [
    i32 1, label %162
    i32 3, label %154
  ]

154:                                              ; preds = %148
  %155 = load i32, ptr %142, align 8
  %156 = load ptr, ptr %143, align 8
  %157 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %156, i32 0, i32 5
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.msm_file_private, ptr %158, i32 0, i32 5
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %155, %160
  br i1 %161, label %208, label %162

162:                                              ; preds = %154, %148
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 4) #10
  %163 = load ptr, ptr %5, align 8
  %164 = load ptr, ptr %7, align 8
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load ptr, ptr %144, align 4
  br label %168

168:                                              ; preds = %166, %162
  %169 = phi ptr [ %167, %166 ], [ %163, %162 ]
  %170 = getelementptr i32, ptr %169, i32 1
  store ptr %170, ptr %5, align 8
  store i32 1891598339, ptr %169, align 4
  %171 = load ptr, ptr %141, align 8
  %172 = getelementptr %struct.anon.81, ptr %171, i32 %150, i32 2
  %173 = load i64, ptr %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load ptr, ptr %5, align 8
  %176 = load ptr, ptr %7, align 8
  %177 = icmp eq ptr %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = load ptr, ptr %144, align 4
  br label %180

180:                                              ; preds = %178, %168
  %181 = phi ptr [ %179, %178 ], [ %175, %168 ]
  %182 = getelementptr i32, ptr %181, i32 1
  store ptr %182, ptr %5, align 8
  store i32 %174, ptr %181, align 4
  %183 = load ptr, ptr %141, align 8
  %184 = getelementptr %struct.anon.81, ptr %183, i32 %150, i32 2
  %185 = load i64, ptr %184, align 8
  %186 = lshr i64 %185, 32
  %187 = trunc i64 %186 to i32
  %188 = load ptr, ptr %5, align 8
  %189 = load ptr, ptr %7, align 8
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %180
  %192 = load ptr, ptr %144, align 4
  br label %193

193:                                              ; preds = %191, %180
  %194 = phi ptr [ %192, %191 ], [ %188, %180 ]
  %195 = getelementptr i32, ptr %194, i32 1
  store ptr %195, ptr %5, align 8
  store i32 %187, ptr %194, align 4
  %196 = load ptr, ptr %141, align 8
  %197 = getelementptr %struct.anon.81, ptr %196, i32 %150, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = load ptr, ptr %5, align 8
  %200 = load ptr, ptr %7, align 8
  %201 = icmp eq ptr %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = load ptr, ptr %144, align 4
  br label %204

204:                                              ; preds = %202, %193
  %205 = phi ptr [ %203, %202 ], [ %199, %193 ]
  %206 = getelementptr i32, ptr %205, i32 1
  store ptr %206, ptr %5, align 8
  store i32 %198, ptr %205, align 4
  %207 = add i32 %149, 1
  br label %208

208:                                              ; preds = %204, %154, %148
  %209 = phi i32 [ %149, %148 ], [ %149, %154 ], [ %207, %204 ]
  %210 = and i32 %209, 31
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %252

212:                                              ; preds = %208
  %213 = load i8, ptr %145, align 4, !range !8
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %252, label %215

215:                                              ; preds = %212
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 3) #10
  %216 = load ptr, ptr %5, align 8
  %217 = load ptr, ptr %7, align 8
  %218 = icmp eq ptr %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load ptr, ptr %144, align 4
  br label %221

221:                                              ; preds = %219, %215
  %222 = phi ptr [ %220, %219 ], [ %216, %215 ]
  %223 = getelementptr i32, ptr %222, i32 1
  store ptr %223, ptr %5, align 8
  store i32 1885470722, ptr %222, align 4
  %224 = load i64, ptr %146, align 8
  %225 = load i32, ptr %147, align 4
  %226 = shl i32 %225, 2
  %227 = trunc i64 %224 to i32
  %228 = add i32 %226, %227
  %229 = load ptr, ptr %5, align 8
  %230 = load ptr, ptr %7, align 8
  %231 = icmp eq ptr %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %221
  %233 = load ptr, ptr %144, align 4
  br label %234

234:                                              ; preds = %232, %221
  %235 = phi ptr [ %233, %232 ], [ %229, %221 ]
  %236 = getelementptr i32, ptr %235, i32 1
  store ptr %236, ptr %5, align 8
  store i32 %228, ptr %235, align 4
  %237 = load i64, ptr %146, align 8
  %238 = load i32, ptr %147, align 4
  %239 = shl i32 %238, 2
  %240 = zext i32 %239 to i64
  %241 = add i64 %237, %240
  %242 = lshr i64 %241, 32
  %243 = trunc i64 %242 to i32
  %244 = load ptr, ptr %5, align 8
  %245 = load ptr, ptr %7, align 8
  %246 = icmp eq ptr %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %234
  %248 = load ptr, ptr %144, align 4
  br label %249

249:                                              ; preds = %247, %234
  %250 = phi ptr [ %248, %247 ], [ %244, %234 ]
  %251 = getelementptr i32, ptr %250, i32 1
  store ptr %251, ptr %5, align 8
  store i32 %243, ptr %250, align 4
  br label %252

252:                                              ; preds = %249, %212, %208
  %253 = add nuw i32 %150, 1
  %254 = load i32, ptr %137, align 4
  %255 = icmp ult i32 %253, %254
  br i1 %255, label %148, label %256

256:                                              ; preds = %252, %134
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 6) #10
  %257 = load ptr, ptr %5, align 8
  %258 = load ptr, ptr %7, align 8
  %259 = icmp eq ptr %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %262 = load ptr, ptr %261, align 4
  br label %263

263:                                              ; preds = %260, %256
  %264 = phi ptr [ %262, %260 ], [ %257, %256 ]
  %265 = getelementptr i32, ptr %264, i32 1
  store ptr %265, ptr %5, align 8
  store i32 1894547461, ptr %264, align 4
  %266 = load ptr, ptr %5, align 8
  %267 = load ptr, ptr %7, align 8
  %268 = icmp eq ptr %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %271 = load ptr, ptr %270, align 4
  br label %272

272:                                              ; preds = %269, %263
  %273 = phi ptr [ %271, %269 ], [ %266, %263 ]
  %274 = getelementptr i32, ptr %273, i32 1
  store ptr %274, ptr %5, align 8
  store i32 0, ptr %273, align 4
  %275 = load ptr, ptr %5, align 8
  %276 = load ptr, ptr %7, align 8
  %277 = icmp eq ptr %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %280 = load ptr, ptr %279, align 4
  br label %281

281:                                              ; preds = %278, %272
  %282 = phi ptr [ %280, %278 ], [ %275, %272 ]
  %283 = getelementptr i32, ptr %282, i32 1
  store ptr %283, ptr %5, align 8
  store i32 0, ptr %282, align 4
  %284 = load ptr, ptr %5, align 8
  %285 = load ptr, ptr %7, align 8
  %286 = icmp eq ptr %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %289 = load ptr, ptr %288, align 4
  br label %290

290:                                              ; preds = %287, %281
  %291 = phi ptr [ %289, %287 ], [ %284, %281 ]
  %292 = getelementptr i32, ptr %291, i32 1
  store ptr %292, ptr %5, align 8
  store i32 0, ptr %291, align 4
  %293 = load ptr, ptr %5, align 8
  %294 = load ptr, ptr %7, align 8
  %295 = icmp eq ptr %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %298 = load ptr, ptr %297, align 4
  br label %299

299:                                              ; preds = %296, %290
  %300 = phi ptr [ %298, %296 ], [ %293, %290 ]
  %301 = getelementptr i32, ptr %300, i32 1
  store ptr %301, ptr %5, align 8
  store i32 0, ptr %300, align 4
  %302 = load ptr, ptr %5, align 8
  %303 = load ptr, ptr %7, align 8
  %304 = icmp eq ptr %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %307 = load ptr, ptr %306, align 4
  br label %308

308:                                              ; preds = %305, %299
  %309 = phi ptr [ %307, %305 ], [ %302, %299 ]
  %310 = getelementptr i32, ptr %309, i32 1
  store ptr %310, ptr %5, align 8
  store i32 0, ptr %309, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #10
  %311 = load ptr, ptr %5, align 8
  %312 = load ptr, ptr %7, align 8
  %313 = icmp eq ptr %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %316 = load ptr, ptr %315, align 4
  br label %317

317:                                              ; preds = %314, %308
  %318 = phi ptr [ %316, %314 ], [ %311, %308 ]
  %319 = getelementptr i32, ptr %318, i32 1
  store ptr %319, ptr %5, align 8
  store i32 1880883201, ptr %318, align 4
  %320 = load ptr, ptr %5, align 8
  %321 = load ptr, ptr %7, align 8
  %322 = icmp eq ptr %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %317
  %324 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %325 = load ptr, ptr %324, align 4
  br label %326

326:                                              ; preds = %323, %317
  %327 = phi ptr [ %325, %323 ], [ %320, %317 ]
  %328 = getelementptr i32, ptr %327, i32 1
  store ptr %328, ptr %5, align 8
  store i32 1, ptr %327, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #10
  %329 = load ptr, ptr %5, align 8
  %330 = load ptr, ptr %7, align 8
  %331 = icmp eq ptr %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  %333 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %334 = load ptr, ptr %333, align 4
  br label %335

335:                                              ; preds = %332, %326
  %336 = phi ptr [ %334, %332 ], [ %329, %326 ]
  %337 = getelementptr i32, ptr %336, i32 1
  store ptr %337, ptr %5, align 8
  store i32 1208711681, ptr %336, align 4
  %338 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %339 = load i32, ptr %338, align 8
  %340 = load ptr, ptr %5, align 8
  %341 = load ptr, ptr %7, align 8
  %342 = icmp eq ptr %340, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %345 = load ptr, ptr %344, align 4
  br label %346

346:                                              ; preds = %343, %335
  %347 = phi ptr [ %345, %343 ], [ %340, %335 ]
  %348 = getelementptr i32, ptr %347, i32 1
  store ptr %348, ptr %5, align 8
  store i32 %339, ptr %347, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 5) #10
  %349 = load ptr, ptr %5, align 8
  %350 = load ptr, ptr %7, align 8
  %351 = icmp eq ptr %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %354 = load ptr, ptr %353, align 4
  br label %355

355:                                              ; preds = %352, %346
  %356 = phi ptr [ %354, %352 ], [ %349, %346 ]
  %357 = getelementptr i32, ptr %356, i32 1
  store ptr %357, ptr %5, align 8
  store i32 1883635716, ptr %356, align 4
  %358 = load ptr, ptr %5, align 8
  %359 = load ptr, ptr %7, align 8
  %360 = icmp eq ptr %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %363 = load ptr, ptr %362, align 4
  br label %364

364:                                              ; preds = %361, %355
  %365 = phi ptr [ %363, %361 ], [ %358, %355 ]
  %366 = getelementptr i32, ptr %365, i32 1
  store ptr %366, ptr %5, align 8
  store i32 -2147483644, ptr %365, align 4
  %367 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 14
  %368 = load i64, ptr %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = add i32 %369, 4
  %371 = load ptr, ptr %5, align 8
  %372 = load ptr, ptr %7, align 8
  %373 = icmp eq ptr %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %364
  %375 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %376 = load ptr, ptr %375, align 4
  br label %377

377:                                              ; preds = %374, %364
  %378 = phi ptr [ %376, %374 ], [ %371, %364 ]
  %379 = getelementptr i32, ptr %378, i32 1
  store ptr %379, ptr %5, align 8
  store i32 %370, ptr %378, align 4
  %380 = load i64, ptr %367, align 8
  %381 = add i64 %380, 4
  %382 = lshr i64 %381, 32
  %383 = trunc i64 %382 to i32
  %384 = load ptr, ptr %5, align 8
  %385 = load ptr, ptr %7, align 8
  %386 = icmp eq ptr %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %377
  %388 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %389 = load ptr, ptr %388, align 4
  br label %390

390:                                              ; preds = %387, %377
  %391 = phi ptr [ %389, %387 ], [ %384, %377 ]
  %392 = getelementptr i32, ptr %391, i32 1
  store ptr %392, ptr %5, align 8
  store i32 %383, ptr %391, align 4
  %393 = load i32, ptr %338, align 8
  %394 = load ptr, ptr %5, align 8
  %395 = load ptr, ptr %7, align 8
  %396 = icmp eq ptr %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %399 = load ptr, ptr %398, align 4
  br label %400

400:                                              ; preds = %397, %390
  %401 = phi ptr [ %399, %397 ], [ %394, %390 ]
  %402 = getelementptr i32, ptr %401, i32 1
  store ptr %402, ptr %5, align 8
  store i32 %393, ptr %401, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 5) #10
  %403 = load ptr, ptr %5, align 8
  %404 = load ptr, ptr %7, align 8
  %405 = icmp eq ptr %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %408 = load ptr, ptr %407, align 4
  br label %409

409:                                              ; preds = %406, %400
  %410 = phi ptr [ %408, %406 ], [ %403, %400 ]
  %411 = getelementptr i32, ptr %410, i32 1
  store ptr %411, ptr %5, align 8
  store i32 1886060548, ptr %410, align 4
  %412 = load ptr, ptr %5, align 8
  %413 = load ptr, ptr %7, align 8
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %417 = load ptr, ptr %416, align 4
  br label %418

418:                                              ; preds = %415, %409
  %419 = phi ptr [ %417, %415 ], [ %412, %409 ]
  %420 = getelementptr i32, ptr %419, i32 1
  store ptr %420, ptr %5, align 8
  store i32 0, ptr %419, align 4
  %421 = load ptr, ptr %5, align 8
  %422 = load ptr, ptr %7, align 8
  %423 = icmp eq ptr %421, %422
  br i1 %423, label %424, label %427

424:                                              ; preds = %418
  %425 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %426 = load ptr, ptr %425, align 4
  br label %427

427:                                              ; preds = %424, %418
  %428 = phi ptr [ %426, %424 ], [ %421, %418 ]
  %429 = getelementptr i32, ptr %428, i32 1
  store ptr %429, ptr %5, align 8
  store i32 0, ptr %428, align 4
  %430 = load ptr, ptr %5, align 8
  %431 = load ptr, ptr %7, align 8
  %432 = icmp eq ptr %430, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %427
  %434 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %435 = load ptr, ptr %434, align 4
  br label %436

436:                                              ; preds = %433, %427
  %437 = phi ptr [ %435, %433 ], [ %430, %427 ]
  %438 = getelementptr i32, ptr %437, i32 1
  store ptr %438, ptr %5, align 8
  store i32 1, ptr %437, align 4
  %439 = load ptr, ptr %5, align 8
  %440 = load ptr, ptr %7, align 8
  %441 = icmp eq ptr %439, %440
  br i1 %441, label %442, label %445

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %444 = load ptr, ptr %443, align 4
  br label %445

445:                                              ; preds = %442, %436
  %446 = phi ptr [ %444, %442 ], [ %439, %436 ]
  %447 = getelementptr i32, ptr %446, i32 1
  store ptr %447, ptr %5, align 8
  store i32 1, ptr %446, align 4
  %448 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 16
  %449 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %448) #10
  %450 = load ptr, ptr %5, align 8
  %451 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 5
  store ptr %450, ptr %451, align 4
  %452 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %453 = load ptr, ptr %452, align 4
  %454 = ptrtoint ptr %450 to i32
  %455 = ptrtoint ptr %453 to i32
  %456 = sub i32 %454, %455
  %457 = ashr exact i32 %456, 2
  %458 = srem i32 %457, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %448, i32 noundef %449) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %459 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  %460 = load ptr, ptr %459, align 8
  %461 = icmp eq ptr %460, %4
  br i1 %461, label %462, label %471

462:                                              ; preds = %445
  %463 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 15
  %464 = load volatile i32, ptr %463, align 4
  %465 = and i32 %464, -3
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %469 = load ptr, ptr %468, align 8
  %470 = getelementptr i8, ptr %469, i32 8220
  tail call void @msm_writel(i32 noundef %458, ptr noundef %470) #10
  br label %471

471:                                              ; preds = %467, %462, %445
  tail call void @a5xx_preempt_trigger(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 4996
  %9 = tail call i32 @msm_readl(ptr noundef %8) #10
  %10 = and i32 %9, -3
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 220
  tail call void @msm_writel(i32 noundef %10, ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 40
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = and i32 %9, 1048832
  %17 = select i1 %15, i32 %9, i32 %16
  %18 = and i32 %17, 126
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %116, label %20

20:                                               ; preds = %1
  %21 = and i32 %17, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr i8, ptr %24, i32 5072
  %26 = tail call i32 @msm_readl(ptr noundef %25) #10
  %27 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = and i32 %26, 268435456
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.17, ptr @.str.16
  %36 = lshr i32 %26, 2
  %37 = and i32 %36, 262143
  %38 = lshr i32 %26, 20
  %39 = and i32 %38, 3
  %40 = lshr i32 %26, 24
  %41 = and i32 %40, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.15, ptr noundef nonnull %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #12
  br label %42

42:                                               ; preds = %29, %23
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr i8, ptr %43, i32 600
  tail call void @msm_writel(i32 noundef 16, ptr noundef %44) #10
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr i8, ptr %45, i32 220
  tail call void @msm_writel(i32 noundef 2, ptr noundef %46) #10
  br label %47

47:                                               ; preds = %42, %20
  %48 = and i32 %17, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.18, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.19) #12
  br label %57

57:                                               ; preds = %53, %50, %47
  %58 = and i32 %17, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.20, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr i8, ptr %67, i32 5056
  %69 = tail call i32 @msm_readl(ptr noundef %68) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.21, i32 noundef %69) #12
  br label %70

70:                                               ; preds = %63, %60, %57
  %71 = and i32 %17, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.22, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %6, align 8
  %81 = getelementptr i8, ptr %80, i32 5060
  %82 = tail call i32 @msm_readl(ptr noundef %81) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.23, i32 noundef %82) #12
  br label %83

83:                                               ; preds = %76, %73, %70
  %84 = and i32 %17, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.24, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr inbounds %struct.drm_device, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr i8, ptr %93, i32 5068
  %95 = tail call i32 @msm_readl(ptr noundef %94) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.25, i32 noundef %95) #12
  br label %96

96:                                               ; preds = %89, %86, %83
  %97 = and i32 %17, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.26, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %2, align 4
  %104 = getelementptr inbounds %struct.drm_device, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.27) #12
  br label %106

106:                                              ; preds = %102, %99, %96
  %107 = and i32 %17, 4194304
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.28, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %2, align 4
  %114 = getelementptr inbounds %struct.drm_device, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.29) #12
  br label %116

116:                                              ; preds = %112, %109, %106, %1
  %117 = and i32 %17, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %200, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %6, align 8
  %121 = getelementptr i8, ptr %120, i32 11360
  %122 = tail call i32 @msm_readl(ptr noundef %121) #10
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %119
  %126 = load ptr, ptr %6, align 8
  %127 = getelementptr i8, ptr %126, i32 8224
  tail call void @msm_writel(i32 noundef 0, ptr noundef %127) #10
  %128 = load ptr, ptr %6, align 8
  %129 = getelementptr i8, ptr %128, i32 8228
  %130 = tail call i32 @msm_readl(ptr noundef %129) #10
  %131 = load ptr, ptr %6, align 8
  %132 = getelementptr i8, ptr %131, i32 8228
  %133 = tail call i32 @msm_readl(ptr noundef %132) #10
  %134 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %125
  %137 = load ptr, ptr %2, align 4
  %138 = getelementptr inbounds %struct.drm_device, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.30, i32 noundef %133) #12
  br label %140

140:                                              ; preds = %136, %125, %119
  %141 = and i32 %122, 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %140
  %144 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.31, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #10
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %2, align 4
  %148 = getelementptr inbounds %struct.drm_device, ptr %147, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %6, align 8
  %151 = getelementptr i8, ptr %150, i32 11368
  %152 = tail call i32 @msm_readl(ptr noundef %151) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.32, i32 noundef %152) #12
  br label %153

153:                                              ; preds = %146, %143, %140
  %154 = and i32 %122, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.33, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #10
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %2, align 4
  %161 = getelementptr inbounds %struct.drm_device, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.34) #12
  br label %163

163:                                              ; preds = %159, %156, %153
  %164 = and i32 %122, 16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %6, align 8
  %168 = getelementptr i8, ptr %167, i32 11376
  %169 = tail call i32 @msm_readl(ptr noundef %168) #10
  %170 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.35, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #10
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %2, align 4
  %174 = getelementptr inbounds %struct.drm_device, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = and i32 %169, 16777216
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, ptr @.str.17, ptr @.str.16
  %179 = lshr i32 %169, 2
  %180 = and i32 %179, 262143
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.36, ptr noundef nonnull %178, i32 noundef %180, i32 noundef %169) #12
  br label %181

181:                                              ; preds = %172, %166, %163
  %182 = and i32 %122, 32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %6, align 8
  %186 = getelementptr i8, ptr %185, i32 11372
  %187 = tail call i32 @msm_readl(ptr noundef %186) #10
  %188 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.47, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #10
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %184
  %191 = load ptr, ptr %2, align 4
  %192 = getelementptr inbounds %struct.drm_device, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 4
  %194 = and i32 %187, 1048575
  %195 = lshr i32 %187, 24
  %196 = and i32 %195, 15
  %197 = getelementptr [16 x ptr], ptr @__const.a5xx_cp_err_irq.access, i32 0, i32 %196
  %198 = load ptr, ptr %197, align 4
  %199 = and i32 %187, -2147483648
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.48, i32 noundef %194, ptr noundef %198, i32 noundef %199, i32 noundef %187) #12
  br label %200

200:                                              ; preds = %190, %184, %181, %116
  %201 = and i32 %17, 8388608
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %268, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %2, align 4
  %205 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %206, i32 0, i32 7
  %208 = load ptr, ptr %207, align 4
  %209 = tail call ptr %208(ptr noundef %0) #10
  %210 = load ptr, ptr %6, align 8
  %211 = getelementptr i8, ptr %210, i32 5312
  %212 = tail call i32 @msm_readl(ptr noundef %211) #10
  %213 = and i32 %212, 16777216
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %268

215:                                              ; preds = %203
  %216 = getelementptr inbounds %struct.drm_device, ptr %204, i32 0, i32 2
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %209, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.msm_ringbuffer, ptr %209, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.msm_ringbuffer, ptr %209, i32 0, i32 11
  %223 = load i32, ptr %222, align 8
  br label %224

224:                                              ; preds = %219, %215
  %225 = phi i32 [ %221, %219 ], [ -1, %215 ]
  %226 = phi i32 [ %223, %219 ], [ 0, %215 ]
  %227 = load ptr, ptr %6, align 8
  %228 = getelementptr i8, ptr %227, i32 5076
  %229 = tail call i32 @msm_readl(ptr noundef %228) #10
  %230 = load ptr, ptr %6, align 8
  %231 = getelementptr i8, ptr %230, i32 8216
  %232 = tail call i32 @msm_readl(ptr noundef %231) #10
  %233 = load ptr, ptr %6, align 8
  %234 = getelementptr i8, ptr %233, i32 8220
  %235 = tail call i32 @msm_readl(ptr noundef %234) #10
  %236 = load ptr, ptr %6, align 8
  %237 = getelementptr i8, ptr %236, i32 11388
  %238 = tail call i32 @msm_readl(ptr noundef %237) #10
  %239 = zext i32 %238 to i64
  %240 = load ptr, ptr %6, align 8
  %241 = getelementptr i8, ptr %240, i32 11392
  %242 = tail call i32 @msm_readl(ptr noundef %241) #10
  %243 = zext i32 %242 to i64
  %244 = shl nuw i64 %243, 32
  %245 = or i64 %244, %239
  %246 = load ptr, ptr %6, align 8
  %247 = getelementptr i8, ptr %246, i32 11396
  %248 = tail call i32 @msm_readl(ptr noundef %247) #10
  %249 = load ptr, ptr %6, align 8
  %250 = getelementptr i8, ptr %249, i32 11400
  %251 = tail call i32 @msm_readl(ptr noundef %250) #10
  %252 = zext i32 %251 to i64
  %253 = load ptr, ptr %6, align 8
  %254 = getelementptr i8, ptr %253, i32 11404
  %255 = tail call i32 @msm_readl(ptr noundef %254) #10
  %256 = zext i32 %255 to i64
  %257 = shl nuw i64 %256, 32
  %258 = or i64 %257, %252
  %259 = load ptr, ptr %6, align 8
  %260 = getelementptr i8, ptr %259, i32 11408
  %261 = tail call i32 @msm_readl(ptr noundef %260) #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %217, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49, i32 noundef %225, i32 noundef %226, i32 noundef %229, i32 noundef %232, i32 noundef %235, i64 noundef %245, i32 noundef %248, i64 noundef %258, i32 noundef %261) #10
  %262 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 33
  %263 = tail call i32 @del_timer(ptr noundef %262) #10
  %264 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 39
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 36
  %267 = tail call zeroext i1 @kthread_queue_work(ptr noundef %265, ptr noundef %266) #10
  br label %268

268:                                              ; preds = %224, %203, %200
  %269 = and i32 %17, 16777216
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %286, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %6, align 8
  %273 = getelementptr i8, ptr %272, i32 15048
  %274 = tail call i32 @msm_readl(ptr noundef %273) #10
  %275 = load ptr, ptr %6, align 8
  %276 = getelementptr i8, ptr %275, i32 15044
  %277 = tail call i32 @msm_readl(ptr noundef %276) #10
  %278 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_uche_err_irq._rs, ptr noundef nonnull @__func__.a5xx_uche_err_irq) #10
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %271
  %281 = or i32 %277, %274
  %282 = zext i32 %281 to i64
  %283 = load ptr, ptr %2, align 4
  %284 = getelementptr inbounds %struct.drm_device, ptr %283, i32 0, i32 2
  %285 = load ptr, ptr %284, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %285, ptr noundef nonnull @.str.50, i64 noundef %282) #12
  br label %286

286:                                              ; preds = %280, %271, %268
  %287 = and i32 %17, 268435456
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %286
  %290 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_gpmu_err_irq._rs, ptr noundef nonnull @__func__.a5xx_gpmu_err_irq) #10
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr %2, align 4
  %294 = getelementptr inbounds %struct.drm_device, ptr %293, i32 0, i32 2
  %295 = load ptr, ptr %294, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %295, ptr noundef nonnull @.str.51) #12
  br label %296

296:                                              ; preds = %292, %289, %286
  %297 = and i32 %17, 1048576
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  tail call void @a5xx_preempt_trigger(ptr noundef %0) #10
  tail call void @msm_gpu_retire(ptr noundef %0) #10
  br label %300

300:                                              ; preds = %299, %296
  %301 = and i32 %17, 256
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %300
  tail call void @a5xx_preempt_irq(ptr noundef %0) #10
  br label %304

304:                                              ; preds = %303, %300
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @a5xx_active_ring(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a5xx_recover(ptr noundef %0) #0 {
  tail call void @adreno_dump_info(ptr noundef %0) #10
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 11744
  %5 = tail call i32 @msm_readl(ptr noundef %4) #10
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %5) #12
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 11748
  %9 = tail call i32 @msm_readl(ptr noundef %8) #10
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef %9) #12
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 11752
  %13 = tail call i32 @msm_readl(ptr noundef %12) #10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 2, i32 noundef %13) #12
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 11756
  %17 = tail call i32 @msm_readl(ptr noundef %16) #10
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 3, i32 noundef %17) #12
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 11760
  %21 = tail call i32 @msm_readl(ptr noundef %20) #10
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 4, i32 noundef %21) #12
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 11764
  %25 = tail call i32 @msm_readl(ptr noundef %24) #10
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 5, i32 noundef %25) #12
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr i8, ptr %27, i32 11768
  %29 = tail call i32 @msm_readl(ptr noundef %28) #10
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 6, i32 noundef %29) #12
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i8, ptr %31, i32 11772
  %33 = tail call i32 @msm_readl(ptr noundef %32) #10
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 7, i32 noundef %33) #12
  %35 = load i8, ptr @hang_debug, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr i8, ptr %42, i32 5076
  %44 = tail call i32 @msm_readl(ptr noundef %43) #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %41, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %44) #10
  tail call void @adreno_dump(ptr noundef %0) #10
  br label %45

45:                                               ; preds = %37, %1
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr i8, ptr %46, i32 268
  tail call void @msm_writel(i32 noundef 1, ptr noundef %47) #10
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr i8, ptr %48, i32 268
  %50 = tail call i32 @msm_readl(ptr noundef %49) #10
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr i8, ptr %51, i32 268
  tail call void @msm_writel(i32 noundef 0, ptr noundef %52) #10
  tail call void @adreno_recover(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a5xx_show(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  tail call void @adreno_show(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #10
  %8 = getelementptr inbounds %struct.a5xx_gpu_state, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.55) #10
  br label %12

12:                                               ; preds = %34, %11
  %13 = phi i32 [ 0, %11 ], [ %35, %34 ]
  %14 = phi i32 [ 0, %11 ], [ %20, %34 ]
  %15 = getelementptr [15 x %struct.anon.97], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %13, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [15 x %struct.anon.97], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %13, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @llvm.umax.i32(i32 %16, i32 1)
  %20 = add i32 %14, %19
  br label %21

21:                                               ; preds = %30, %12
  %22 = phi i32 [ %32, %30 ], [ %18, %12 ]
  %23 = phi i32 [ %31, %30 ], [ %14, %12 ]
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr i32, ptr %24, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -559038737
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = shl i32 %22, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef %29, i32 noundef %26) #10
  br label %30

30:                                               ; preds = %28, %21
  %31 = add i32 %23, 1
  %32 = add i32 %22, 1
  %33 = icmp eq i32 %31, %20
  br i1 %33, label %34, label %21

34:                                               ; preds = %30
  %35 = add nuw nsw i32 %13, 1
  %36 = icmp eq i32 %35, 15
  br i1 %36, label %37, label %12

37:                                               ; preds = %34, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_debugfs_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_gpu_busy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @pm_runtime_get_if_active(ptr noundef %4, i1 noundef zeroext false) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 3776
  %11 = tail call i32 @msm_readl(ptr noundef %10) #10
  %12 = zext i32 %11 to i64
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr i8, ptr %13, i32 3780
  %15 = tail call i32 @msm_readl(ptr noundef %14) #10
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or i64 %17, %12
  %19 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = sub i64 %18, %20
  %22 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 30
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #10
  %25 = udiv i32 %24, 1000000
  %26 = icmp ult i64 %21, 4294967296
  br i1 %26, label %27, label %31, !prof !13

27:                                               ; preds = %7
  %28 = trunc i64 %21 to i32
  %29 = udiv i32 %28, %25
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %7
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %21) #13, !srcloc !18
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %30, %27 ], [ %33, %31 ]
  store i64 %18, ptr %19, align 8
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %38 = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #10
  %39 = icmp ugt i64 %35, 4294967295
  br i1 %39, label %40, label %41, !prof !19

40:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1683, i32 noundef 9, ptr noundef null) #10
  br label %43

41:                                               ; preds = %34
  %42 = trunc i64 %35 to i32
  br label %43

43:                                               ; preds = %41, %40, %1
  %44 = phi i32 [ -1, %40 ], [ %42, %41 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @a5xx_gpu_state_get(ptr noundef %0) #0 {
  %2 = alloca %struct.a5xx_crashdumper, align 8
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 248) #11
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 5312
  %8 = tail call i32 @msm_readl(ptr noundef %7) #10
  %9 = icmp eq ptr %4, null
  br i1 %9, label %112, label %10

10:                                               ; preds = %1
  %11 = and i32 %8, 16777216
  %12 = icmp eq i32 %11, 0
  tail call void @a5xx_set_hwcg(ptr noundef %0, i1 noundef zeroext false)
  %13 = tail call i32 @adreno_gpu_state_get(ptr noundef %0, ptr noundef nonnull %4) #10
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr i8, ptr %14, i32 5076
  %16 = tail call i32 @msm_readl(ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.msm_gpu_state, ptr %4, i32 0, i32 5
  store i32 %16, ptr %17, align 8
  br i1 %12, label %18, label %111

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #10
  %19 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.a5xx_crashdumper, ptr %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.a5xx_crashdumper, ptr %2, i32 0, i32 2
  %25 = call ptr @msm_gem_kernel_new(ptr noundef %20, i32 noundef 1048576, i32 noundef 131072, ptr noundef %22, ptr noundef %23, ptr noundef %24) #10
  store ptr %25, ptr %2, align 8
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %28, ptr noundef nonnull @.str.57) #10
  %29 = load ptr, ptr %2, align 8
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi ptr [ %29, %27 ], [ %25, %18 ]
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %110, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr %24, align 8
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 5416) #11
  %37 = getelementptr inbounds %struct.a5xx_gpu_state, ptr %4, i32 0, i32 1
  store ptr %36, ptr %37, align 8
  %38 = icmp eq ptr %36, null
  br i1 %38, label %110, label %39

39:                                               ; preds = %33
  %40 = trunc i64 %34 to i32
  %41 = add i32 %40, 262144
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i32 [ %60, %42 ], [ %41, %39 ]
  %44 = phi i32 [ %61, %42 ], [ 0, %39 ]
  %45 = phi ptr [ %58, %42 ], [ %31, %39 ]
  %46 = getelementptr [15 x %struct.anon.97], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %44
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr [15 x %struct.anon.97], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %44, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = zext i32 %47 to i64
  %51 = shl nuw nsw i64 %50, 8
  %52 = getelementptr i64, ptr %45, i32 1
  store i64 %51, ptr %45, align 8
  %53 = getelementptr i64, ptr %45, i32 2
  store i64 846676729947750401, ptr %52, align 8
  %54 = zext i32 %43 to i64
  %55 = getelementptr i64, ptr %45, i32 3
  store i64 %54, ptr %53, align 8
  %56 = zext i32 %49 to i64
  %57 = or i64 %56, 720575940379279360
  %58 = getelementptr i64, ptr %45, i32 4
  store i64 %57, ptr %55, align 8
  %59 = shl i32 %49, 2
  %60 = add i32 %59, %43
  %61 = add nuw nsw i32 %44, 1
  %62 = icmp eq i32 %61, 15
  br i1 %62, label %63, label %42

63:                                               ; preds = %42
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false) #10
  %64 = load ptr, ptr %2, align 8
  %65 = icmp eq ptr %64, null
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  %67 = or i1 %65, %66
  br i1 %67, label %101, label %68

68:                                               ; preds = %63
  %69 = load i64, ptr %24, align 8
  %70 = trunc i64 %69 to i32
  %71 = load ptr, ptr %5, align 8
  %72 = getelementptr i8, ptr %71, i32 8284
  call void @msm_writel(i32 noundef %70, ptr noundef %72) #10
  %73 = lshr i64 %69, 32
  %74 = trunc i64 %73 to i32
  %75 = load ptr, ptr %5, align 8
  %76 = getelementptr i8, ptr %75, i32 8288
  call void @msm_writel(i32 noundef %74, ptr noundef %76) #10
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr i8, ptr %77, i32 8292
  call void @msm_writel(i32 noundef 1, ptr noundef %78) #10
  %79 = call i64 @ktime_get() #10
  %80 = add i64 %79, 10000000
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr i8, ptr %81, i32 8292
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #10, !srcloc !20
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %89, %68
  %87 = call i64 @ktime_get() #10
  %88 = icmp sgt i64 %87, %80
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #10
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr i8, ptr %90, i32 8292
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #10, !srcloc !20
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %86, label %103

95:                                               ; preds = %86
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr i8, ptr %96, i32 8292
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #10, !srcloc !20
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95, %63
  %102 = load ptr, ptr %37, align 8
  call void @kfree(ptr noundef %102) #10
  br label %107

103:                                              ; preds = %95, %89, %68
  %104 = load ptr, ptr %37, align 8
  %105 = load ptr, ptr %2, align 8
  %106 = getelementptr i8, ptr %105, i32 262144
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5416) %104, ptr noundef align 1 dereferenceable(5416) %106, i32 5416, i1 false) #10
  br label %107

107:                                              ; preds = %103, %101
  %108 = load ptr, ptr %23, align 4
  %109 = load ptr, ptr %21, align 8
  call void @msm_gem_kernel_put(ptr noundef %108, ptr noundef %109) #10
  br label %110

110:                                              ; preds = %107, %33, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  br label %111

111:                                              ; preds = %110, %10
  call void @a5xx_set_hwcg(ptr noundef %0, i1 noundef zeroext true)
  br label %112

112:                                              ; preds = %111, %1
  %113 = phi ptr [ %4, %111 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_gpu_state_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #10, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !12
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %15, label %11, !prof !13

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #10
  br label %15

12:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %13 = getelementptr inbounds %struct.a5xx_gpu_state, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  tail call void @kfree(ptr noundef %14) #10
  tail call void @adreno_gpu_state_destroy(ptr noundef nonnull %0) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %15

15:                                               ; preds = %12, %11, %9, %1
  %16 = phi i32 [ 1, %1 ], [ 1, %12 ], [ 0, %9 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_iommu_create_address_space(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_get_rptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 20
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 4
  br label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 8216
  %17 = tail call i32 @msm_readl(ptr noundef %16) #10
  %18 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 13
  %19 = load ptr, ptr %18, align 8
  store volatile i32 %17, ptr %19, align 8
  br label %20

20:                                               ; preds = %13, %6
  %21 = phi i32 [ %12, %6 ], [ %17, %13 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a5xx_get_timestamp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4936
  %6 = tail call i32 @msm_readl(ptr noundef %5) #10
  %7 = zext i32 %6 to i64
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 4940
  %10 = tail call i32 @msm_readl(ptr noundef %9) #10
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %7
  store i64 %13, ptr %1, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_gpmu_ucode_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a5xx_power_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @a5xx_zap_shader_init(ptr noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr @a5xx_zap_shader_init.loaded, align 1, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 506
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @qcom_scm_set_remote_state(i32 noundef 0, i32 noundef 13) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, ptr noundef %12, i32 noundef %9) #10
  br label %17

13:                                               ; preds = %1
  %14 = tail call i32 @adreno_zap_shader_load(ptr noundef %0, i32 noundef 13) #10
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  store i8 %16, ptr @a5xx_zap_shader_init.loaded, align 1
  br label %17

17:                                               ; preds = %13, %11, %8, %4
  %18 = phi i32 [ %14, %13 ], [ 0, %4 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a5xx_preempt_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %207, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  tail call void @adreno_wait_ring(ptr noundef %7, i32 noundef 2) #10
  %8 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi ptr [ %15, %13 ], [ %9, %5 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %8, align 8
  store i32 1893662721, ptr %17, align 4
  %19 = load ptr, ptr %8, align 8
  %20 = load ptr, ptr %10, align 8
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi ptr [ %24, %22 ], [ %19, %16 ]
  %27 = getelementptr i32, ptr %26, i32 1
  store ptr %27, ptr %8, align 8
  store i32 0, ptr %26, align 4
  tail call void @adreno_wait_ring(ptr noundef %7, i32 noundef 3) #10
  %28 = load ptr, ptr %8, align 8
  %29 = load ptr, ptr %10, align 8
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %33, %31 ], [ %28, %25 ]
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %8, align 8
  store i32 1208499714, ptr %35, align 4
  %37 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 14, i32 %38
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %34
  %49 = phi ptr [ %47, %45 ], [ %42, %34 ]
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %8, align 8
  store i32 %41, ptr %49, align 4
  %51 = load i32, ptr %37, align 4
  %52 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 14, i32 %51
  %53 = load i64, ptr %52, align 8
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %8, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %48
  %63 = phi ptr [ %61, %59 ], [ %56, %48 ]
  %64 = getelementptr i32, ptr %63, i32 1
  store ptr %64, ptr %8, align 8
  store i32 %55, ptr %63, align 4
  tail call void @adreno_wait_ring(ptr noundef %7, i32 noundef 2) #10
  %65 = load ptr, ptr %8, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi ptr [ %70, %68 ], [ %65, %62 ]
  %73 = getelementptr i32, ptr %72, i32 1
  store ptr %73, ptr %8, align 8
  store i32 1893662721, ptr %72, align 4
  %74 = load ptr, ptr %8, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = phi ptr [ %79, %77 ], [ %74, %71 ]
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %8, align 8
  store i32 1, ptr %81, align 4
  tail call void @adreno_wait_ring(ptr noundef %7, i32 noundef 2) #10
  %83 = load ptr, ptr %8, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi ptr [ %88, %86 ], [ %83, %80 ]
  %91 = getelementptr i32, ptr %90, i32 1
  store ptr %91, ptr %8, align 8
  store i32 1894318081, ptr %90, align 4
  %92 = load ptr, ptr %8, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi ptr [ %97, %95 ], [ %92, %89 ]
  %100 = getelementptr i32, ptr %99, i32 1
  store ptr %100, ptr %8, align 8
  store i32 0, ptr %99, align 4
  tail call void @adreno_wait_ring(ptr noundef %7, i32 noundef 2) #10
  %101 = load ptr, ptr %8, align 8
  %102 = load ptr, ptr %10, align 8
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = phi ptr [ %106, %104 ], [ %101, %98 ]
  %109 = getelementptr i32, ptr %108, i32 1
  store ptr %109, ptr %8, align 8
  store i32 1894383617, ptr %108, align 4
  %110 = load ptr, ptr %8, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %107
  %117 = phi ptr [ %115, %113 ], [ %110, %107 ]
  %118 = getelementptr i32, ptr %117, i32 1
  store ptr %118, ptr %8, align 8
  store i32 1, ptr %117, align 4
  tail call void @adreno_wait_ring(ptr noundef %7, i32 noundef 2) #10
  %119 = load ptr, ptr %8, align 8
  %120 = load ptr, ptr %10, align 8
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi ptr [ %124, %122 ], [ %119, %116 ]
  %127 = getelementptr i32, ptr %126, i32 1
  store ptr %127, ptr %8, align 8
  store i32 1880883201, ptr %126, align 4
  %128 = load ptr, ptr %8, align 8
  %129 = load ptr, ptr %10, align 8
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = phi ptr [ %133, %131 ], [ %128, %125 ]
  %136 = getelementptr i32, ptr %135, i32 1
  store ptr %136, ptr %8, align 8
  store i32 1, ptr %135, align 4
  tail call void @adreno_wait_ring(ptr noundef %7, i32 noundef 5) #10
  %137 = load ptr, ptr %8, align 8
  %138 = load ptr, ptr %10, align 8
  %139 = icmp eq ptr %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  br label %143

143:                                              ; preds = %140, %134
  %144 = phi ptr [ %142, %140 ], [ %137, %134 ]
  %145 = getelementptr i32, ptr %144, i32 1
  store ptr %145, ptr %8, align 8
  store i32 1886060548, ptr %144, align 4
  %146 = load ptr, ptr %8, align 8
  %147 = load ptr, ptr %10, align 8
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %143
  %153 = phi ptr [ %151, %149 ], [ %146, %143 ]
  %154 = getelementptr i32, ptr %153, i32 1
  store ptr %154, ptr %8, align 8
  store i32 0, ptr %153, align 4
  %155 = load ptr, ptr %8, align 8
  %156 = load ptr, ptr %10, align 8
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %152
  %162 = phi ptr [ %160, %158 ], [ %155, %152 ]
  %163 = getelementptr i32, ptr %162, i32 1
  store ptr %163, ptr %8, align 8
  store i32 0, ptr %162, align 4
  %164 = load ptr, ptr %8, align 8
  %165 = load ptr, ptr %10, align 8
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  br label %170

170:                                              ; preds = %167, %161
  %171 = phi ptr [ %169, %167 ], [ %164, %161 ]
  %172 = getelementptr i32, ptr %171, i32 1
  store ptr %172, ptr %8, align 8
  store i32 1, ptr %171, align 4
  %173 = load ptr, ptr %8, align 8
  %174 = load ptr, ptr %10, align 8
  %175 = icmp eq ptr %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %170
  %180 = phi ptr [ %178, %176 ], [ %173, %170 ]
  %181 = getelementptr i32, ptr %180, i32 1
  store ptr %181, ptr %8, align 8
  store i32 1, ptr %180, align 4
  %182 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 16
  %183 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %182) #10
  %184 = load ptr, ptr %8, align 8
  %185 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 5
  store ptr %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.msm_ringbuffer, ptr %7, i32 0, i32 3
  %187 = load ptr, ptr %186, align 4
  %188 = ptrtoint ptr %184 to i32
  %189 = ptrtoint ptr %187 to i32
  %190 = sub i32 %188, %189
  %191 = ashr exact i32 %190, 2
  %192 = srem i32 %191, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %182, i32 noundef %183) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %193 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  %194 = load ptr, ptr %193, align 8
  %195 = icmp eq ptr %194, %7
  br i1 %195, label %196, label %205

196:                                              ; preds = %179
  %197 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 15
  %198 = load volatile i32, ptr %197, align 4
  %199 = and i32 %198, -3
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr i8, ptr %203, i32 8220
  tail call void @msm_writel(i32 noundef %192, ptr noundef %204) #10
  br label %205

205:                                              ; preds = %201, %196, %179
  %206 = tail call zeroext i1 @a5xx_idle(ptr noundef %0, ptr noundef %7)
  br label %207

207:                                              ; preds = %205, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_rmw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_fw_create_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_zap_shader_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_set_remote_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_recover(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_state_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2156180300}
!10 = !{i64 2148068618}
!11 = !{i64 464779, i64 2147954750, i64 2147954776, i64 2147954823, i64 2147954845, i64 2147954873, i64 2147954893}
!12 = !{i64 2147970777, i64 2147970809, i64 2147970838, i64 2147970872, i64 2147970903, i64 2147970926}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149367264}
!15 = distinct !{null, ptr @drm_gem_object_free}
!16 = !{i64 2156170342}
!17 = !{i64 2156170184}
!18 = !{i64 2148380142, i64 2148380422, i64 2148380756, i64 2148381090}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 5562667}
!21 = !{i64 2156250667}
!22 = !{i64 2156251061}
