; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a6xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adreno_reglist = type { i32, i32 }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.93 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.68, ptr }
%union.anon.68 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
%struct.a6xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, %struct.a6xx_gmu, ptr, i64, ptr, i8, ptr, ptr, ptr, i8 }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.adreno_smmu_fault_info = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.81 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }

@a630_hwcg = dso_local local_unnamed_addr constant [106 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 572662306 }, %struct.adreno_reglist { i32 177, i32 572662306 }, %struct.adreno_reglist { i32 178, i32 572662306 }, %struct.adreno_reglist { i32 179, i32 572662306 }, %struct.adreno_reglist { i32 180, i32 33694240 }, %struct.adreno_reglist { i32 181, i32 33694240 }, %struct.adreno_reglist { i32 182, i32 33694240 }, %struct.adreno_reglist { i32 183, i32 33694240 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 185, i32 128 }, %struct.adreno_reglist { i32 186, i32 128 }, %struct.adreno_reglist { i32 187, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 189, i32 62415 }, %struct.adreno_reglist { i32 190, i32 62415 }, %struct.adreno_reglist { i32 191, i32 62415 }, %struct.adreno_reglist { i32 192, i32 35791394 }, %struct.adreno_reglist { i32 193, i32 35791394 }, %struct.adreno_reglist { i32 194, i32 35791394 }, %struct.adreno_reglist { i32 195, i32 35791394 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 197, i32 572662306 }, %struct.adreno_reglist { i32 198, i32 572662306 }, %struct.adreno_reglist { i32 199, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 201, i32 572662306 }, %struct.adreno_reglist { i32 202, i32 572662306 }, %struct.adreno_reglist { i32 203, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 205, i32 139810 }, %struct.adreno_reglist { i32 206, i32 139810 }, %struct.adreno_reglist { i32 207, i32 139810 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 225, i32 2004318071 }, %struct.adreno_reglist { i32 226, i32 2004318071 }, %struct.adreno_reglist { i32 227, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 229, i32 2004318071 }, %struct.adreno_reglist { i32 230, i32 2004318071 }, %struct.adreno_reglist { i32 231, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 233, i32 2004318071 }, %struct.adreno_reglist { i32 234, i32 2004318071 }, %struct.adreno_reglist { i32 235, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 237, i32 489335 }, %struct.adreno_reglist { i32 238, i32 489335 }, %struct.adreno_reglist { i32 239, i32 489335 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 209, i32 286331153 }, %struct.adreno_reglist { i32 210, i32 286331153 }, %struct.adreno_reglist { i32 211, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 213, i32 286331153 }, %struct.adreno_reglist { i32 214, i32 286331153 }, %struct.adreno_reglist { i32 215, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 217, i32 286331153 }, %struct.adreno_reglist { i32 218, i32 286331153 }, %struct.adreno_reglist { i32 219, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 221, i32 69905 }, %struct.adreno_reglist { i32 222, i32 69905 }, %struct.adreno_reglist { i32 223, i32 69905 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 268, i32 572662306 }, %struct.adreno_reglist { i32 269, i32 572662306 }, %struct.adreno_reglist { i32 270, i32 2236962 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 241, i32 572662306 }, %struct.adreno_reglist { i32 242, i32 572662306 }, %struct.adreno_reglist { i32 243, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 8738 }, %struct.adreno_reglist { i32 245, i32 8738 }, %struct.adreno_reglist { i32 246, i32 8738 }, %struct.adreno_reglist { i32 247, i32 8738 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 249, i32 8736 }, %struct.adreno_reglist { i32 250, i32 8736 }, %struct.adreno_reglist { i32 251, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 257, i32 265984 }, %struct.adreno_reglist { i32 258, i32 265984 }, %struct.adreno_reglist { i32 259, i32 265984 }, %struct.adreno_reglist { i32 260, i32 84025378 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], align 4
@a640_hwcg = dso_local local_unnamed_addr constant [50 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 35791394 }, %struct.adreno_reglist { i32 180, i32 35791392 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 192, i32 35791394 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 16785954 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 260, i32 86122530 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 285, i32 0 }, %struct.adreno_reglist { i32 288, i32 546 }, %struct.adreno_reglist { i32 289, i32 273 }, %struct.adreno_reglist { i32 290, i32 0 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 1331, i32 386 }, %struct.adreno_reglist { i32 68, i32 0 }, %struct.adreno_reglist { i32 66, i32 0 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], align 4
@a650_hwcg = dso_local local_unnamed_addr constant [50 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 35791394 }, %struct.adreno_reglist { i32 180, i32 35791392 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 192, i32 35791394 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 16785954 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 260, i32 622993442 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 285, i32 0 }, %struct.adreno_reglist { i32 288, i32 546 }, %struct.adreno_reglist { i32 289, i32 273 }, %struct.adreno_reglist { i32 290, i32 1911 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 1331, i32 386 }, %struct.adreno_reglist { i32 68, i32 0 }, %struct.adreno_reglist { i32 66, i32 0 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], align 4
@a660_hwcg = dso_local local_unnamed_addr constant [50 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 35791394 }, %struct.adreno_reglist { i32 180, i32 35791392 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 192, i32 572662306 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 16785954 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 260, i32 622993442 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 285, i32 0 }, %struct.adreno_reglist { i32 288, i32 546 }, %struct.adreno_reglist { i32 289, i32 273 }, %struct.adreno_reglist { i32 290, i32 0 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 1331, i32 386 }, %struct.adreno_reglist { i32 68, i32 0 }, %struct.adreno_reglist { i32 66, i32 0 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], align 4
@funcs = internal constant %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a6xx_hw_init, ptr @a6xx_pm_suspend, ptr @a6xx_pm_resume, ptr @a6xx_submit, ptr null, ptr @a6xx_irq, ptr @a6xx_active_ring, ptr @a6xx_recover, ptr @a6xx_destroy, ptr @a6xx_show, ptr null, ptr @a6xx_gpu_busy, ptr @a6xx_gpu_state_get, ptr @a6xx_gpu_state_put, ptr @a6xx_gmu_get_freq, ptr @a6xx_gpu_set_freq, ptr @a6xx_create_address_space, ptr @a6xx_create_private_address_space, ptr @a6xx_get_rptr }, ptr @a6xx_get_timestamp }, align 4
@.str = private unnamed_addr constant [9 x i8] c"qcom,gmu\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"arm,mmu-500\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cx_mem\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gpu_cx\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"speed_bin\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"*ERROR* failed to read speed-bin (%d). Some OPPs may not be supported by hardware\00", align 1
@.str.8 = private unnamed_addr constant [86 x i8] c"*ERROR* missing support for speed-bin: %u. Some OPPs may not be supported by hardware\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"shadow\00", align 1
@hw_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Zap shader not enabled - using SECVID_TRUST_CNTL instead\0A\00", align 1
@a6xx_protect = internal unnamed_addr constant [32 x i32] [i32 335282176, i32 1312001, i32 198182155, i32 -2147482354, i32 -2147482352, i32 -2147482316, i32 -2113402880, i32 -2145384288, i32 -2138044245, i32 45615326, i32 -2127296256, i32 -1983379059, i32 -2147217920, i32 -2144334333, i32 -2096350208, i32 2147237060, i32 -2026076624, i32 -2147447296, i32 -2147447288, i32 -2139320752, i32 -2022926812, i32 -2147180944, i32 -2044944776, i32 -2026068432, i32 -2147439102, i32 -1933791664, i32 -2147437052, i32 -2147172862, i32 -545472992, i32 -1342377984, i32 2147286016, i32 -2147410944], align 4
@a650_protect = internal unnamed_addr constant [39 x i32] [i32 335282176, i32 1312001, i32 198182155, i32 -2147482354, i32 -2147482352, i32 -2147482316, i32 -2113402880, i32 -2145384288, i32 -2138044245, i32 45615326, i32 -2127296256, i32 -1983379059, i32 -2147217920, i32 -2144334333, i32 -2096350208, i32 2147237060, i32 -2026076624, i32 -2147447296, i32 -2147447288, i32 -2139320752, i32 -1979937152, i32 -2022926812, i32 -2142986656, i32 -2044944776, i32 -2026068432, i32 -2147439102, i32 -1933791664, i32 -2147437052, i32 -2145602040, i32 -2147172862, i32 -545472992, i32 -1342377984, i32 2147286016, i32 -162816, i32 -153600, i32 -1861356544, i32 32372804, i32 -2140276601, i32 -2147354432], align 4
@a660_protect = internal unnamed_addr constant [41 x i32] [i32 335282176, i32 1312001, i32 198182155, i32 -2147482354, i32 -2147482352, i32 -2147482316, i32 -2113402880, i32 -2145384288, i32 -2138044245, i32 45615326, i32 -2127296256, i32 -1983379059, i32 -2147217920, i32 -2144334333, i32 -2096350208, i32 2147237060, i32 -2026076624, i32 -2147447296, i32 -2147447288, i32 -2139320752, i32 -1979937152, i32 -2022926812, i32 -2142986656, i32 -2044944776, i32 -2026068432, i32 -2147439102, i32 -2068009392, i32 -2147437052, i32 -2145864184, i32 -2147172862, i32 -2055422432, i32 -1745039360, i32 -1342377984, i32 2147286016, i32 -162816, i32 -154624, i32 -1861356544, i32 32372804, i32 -2147354528, i32 -2140276601, i32 -2147354432], align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"*ERROR* Could not allocate SQE ucode: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"sqefw\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"a630_sqe.fw\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"*ERROR* a630 SQE ucode is too old. Have version %x need at least %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"a650_sqe.fw\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"*ERROR* a650 SQE ucode is too old. Have version %x need at least %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"a660_sqe.fw\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"*ERROR* unknown GPU, add it to a6xx_ucode_check_version()!!\0A\00", align 1
@a6xx_zap_shader_init.loaded = internal unnamed_addr global i8 0, align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.19 = private unnamed_addr constant [82 x i8] c"%s: %ps: timeout waiting for GPU to idle: status %8.8X irq %8.8X rptr/wptr %d/%d\0A\00", align 1
@__tracepoint_msm_gpu_suspend = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_msm_gpu_resume = external dso_local global %struct.tracepoint, align 4
@__tracepoint_msm_gpu_submit_flush = external dso_local global %struct.tracepoint, align 4
@a6xx_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a6xx_irq = private unnamed_addr constant [9 x i8] c"a6xx_irq\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"CP | AHB bus error\0A\00", align 1
@a6xx_irq._rs.22 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [27 x i8] c"RBBM | ATB ASYNC overflow\0A\00", align 1
@a6xx_irq._rs.24 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"RBBM | ATB bus overflow\0A\00", align 1
@a6xx_irq._rs.26 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.27 = private unnamed_addr constant [29 x i8] c"UCHE | Out of bounds access\0A\00", align 1
@.str.28 = private unnamed_addr constant [104 x i8] c"*ERROR* gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\0A\00", align 1
@a6xx_cp_hw_err_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a6xx_cp_hw_err_irq = private unnamed_addr constant [19 x i8] c"a6xx_cp_hw_err_irq\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"CP | opcode error | possible opcode=0x%8.8X\0A\00", align 1
@a6xx_cp_hw_err_irq._rs.30 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.31 = private unnamed_addr constant [26 x i8] c"CP ucode error interrupt\0A\00", align 1
@a6xx_cp_hw_err_irq._rs.32 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.33 = private unnamed_addr constant [32 x i8] c"CP | HW fault | status=0x%8.8X\0A\00", align 1
@a6xx_cp_hw_err_irq._rs.34 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.35 = private unnamed_addr constant [64 x i8] c"CP | protected mode error | %s | addr=0x%8.8X | status=0x%8.8X\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@a6xx_cp_hw_err_irq._rs.38 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.39 = private unnamed_addr constant [24 x i8] c"CP AHB error interrupt\0A\00", align 1
@a6xx_cp_hw_err_irq._rs.40 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.41 = private unnamed_addr constant [29 x i8] c"CP VSD decoder parity error\0A\00", align 1
@a6xx_cp_hw_err_irq._rs.42 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [30 x i8] c"CP illegal instruction error\0A\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", align 1
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"status:   %08x\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/msm/adreno/a6xx_gpu.c\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.48 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@a6xx_fault_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a6xx_fault_handler = private unnamed_addr constant [19 x i8] c"a6xx_fault_handler\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"\014*** gpu fault: iova=%.16lx flags=%d (%u,%u,%u,%u)\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"TRANSLATION\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"PERMISSION\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@a6xx_fault_handler._rs.54 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [83 x i8] c"\014*** gpu fault: ttbr0=%.16llx iova=%.16lx dir=%s type=%s source=%s (%u,%u,%u,%u)\0A\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"CCU\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"CDP Prefetch\00", align 1
@a6xx_uche_fault_block.uche_clients = internal unnamed_addr constant [7 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], align 4
@.str.59 = private unnamed_addr constant [4 x i8] c"VFD\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"VSC\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"VPC\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"HLSQ\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"LRZ\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"TP|VFD\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"UCHE\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @a6xx_gpu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1232) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %106, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.adreno_gpu, ptr %14, i32 0, i32 6
  store ptr null, ptr %17, align 4
  %18 = load i32, ptr %12, align 1
  %19 = insertvalue [1 x i32] undef, i32 %18, 0
  %20 = tail call ptr @adreno_info([1 x i32] %19) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.adreno_info, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %25 [
    i32 650, label %29
    i32 660, label %29
  ]

25:                                               ; preds = %22
  %26 = load i32, ptr %20, align 4
  %27 = insertvalue [1 x i32] undef, i32 %26, 0
  %28 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %27) #11
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %22, %22
  %30 = getelementptr inbounds %struct.msm_gpu, ptr %14, i32 0, i32 45
  store i8 1, ptr %30, align 1
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, ptr %23, align 4
  %33 = icmp eq i32 %32, 618
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.msm_gpu, ptr %14, i32 0, i32 44
  store i8 1, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %31, %16
  %37 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 25
  %38 = load ptr, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #11, !annotation !8
  %39 = call i32 @__of_parse_phandle_with_args(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #11
  %40 = icmp eq i32 %39, 0
  %41 = load ptr, ptr %5, align 4
  %42 = select i1 %40, ptr %41, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.a6xx_gpu, ptr %14, i32 0, i32 12
  store i8 0, ptr %45, align 4
  call void @of_node_put(ptr noundef %42) #11
  br label %51

46:                                               ; preds = %36
  %47 = call i32 @of_device_is_compatible(ptr noundef nonnull %42, ptr noundef nonnull @.str.2) #11
  %48 = icmp ne i32 %47, 0
  %49 = getelementptr inbounds %struct.a6xx_gpu, ptr %14, i32 0, i32 12
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 4
  call void @of_node_put(ptr noundef nonnull %42) #11
  br i1 %48, label %53, label %51

51:                                               ; preds = %46, %44
  %52 = call ptr @msm_ioremap(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  br label %53

53:                                               ; preds = %51, %46
  %54 = getelementptr inbounds %struct.a6xx_gpu, ptr %14, i32 0, i32 9
  %55 = getelementptr inbounds %struct.a6xx_gpu, ptr %14, i32 0, i32 10
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.a6xx_gpu, ptr %14, i32 0, i32 11
  store ptr null, ptr %56, align 8
  store ptr inttoptr (i32 -22 to ptr), ptr %54, align 8
  %57 = load i32, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 -1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %58 = call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #11
  switch i32 %58, label %60 [
    i32 -2, label %59
    i32 0, label %61
  ]

59:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %79

60:                                               ; preds = %53
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %58) #11
  br label %74

61:                                               ; preds = %53
  %62 = insertvalue [1 x i32] undef, i32 %57, 0
  %63 = load i32, ptr %4, align 4
  %64 = call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16252666], [1 x i32] %62) #11
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  switch i32 %63, label %68 [
    i32 0, label %69
    i32 169, label %66
    i32 174, label %67
  ]

66:                                               ; preds = %65
  br label %69

67:                                               ; preds = %65
  br label %69

68:                                               ; preds = %65, %61
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %63) #11
  br label %72

69:                                               ; preds = %67, %66, %65
  %70 = phi i32 [ %63, %65 ], [ 2, %67 ], [ 1, %66 ]
  %71 = shl nuw nsw i32 1, %70
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ -1, %68 ], [ %71, %69 ]
  store i32 %73, ptr %3, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = call i32 @devm_pm_opp_set_supported_hw(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  call void @a6xx_destroy(ptr noundef nonnull %14)
  %78 = inttoptr i32 %75 to ptr
  br label %106

79:                                               ; preds = %74, %59
  %80 = call i32 @adreno_gpu_init(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %14, ptr noundef nonnull @funcs, i32 noundef 1) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  call void @a6xx_destroy(ptr noundef nonnull %14)
  %83 = inttoptr i32 %80 to ptr
  br label %106

84:                                               ; preds = %79
  %85 = load ptr, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #11, !annotation !8
  %86 = call i32 @__of_parse_phandle_with_args(ptr noundef %85, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #11
  %87 = icmp ne i32 %86, 0
  %88 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  %89 = icmp eq ptr %88, null
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %91, label %92, !prof !9

91:                                               ; preds = %84
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a6xx_gpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1871, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

92:                                               ; preds = %84
  %93 = call i32 @a6xx_gmu_init(ptr noundef nonnull %14, ptr noundef nonnull %88) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  call void @a6xx_destroy(ptr noundef nonnull %14)
  %96 = inttoptr i32 %93 to ptr
  br label %106

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.msm_gpu, ptr %14, i32 0, i32 24
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.msm_gem_address_space, ptr %99, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.msm_mmu, ptr %103, i32 0, i32 3
  store ptr %14, ptr %104, align 4
  %105 = getelementptr inbounds %struct.msm_mmu, ptr %103, i32 0, i32 2
  store ptr @a6xx_fault_handler, ptr %105, align 4
  br label %106

106:                                              ; preds = %101, %97, %95, %82, %77, %1
  %107 = phi ptr [ %78, %77 ], [ %83, %82 ], [ %96, %95 ], [ %14, %101 ], [ %14, %97 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_info([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a6xx_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %3, ptr noundef %7) #11
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #11, !srcloc !12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #11, !srcloc !13
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %18, label %16, !prof !14

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef 3) #11
  br label %18

17:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %8) #11
  br label %18

18:                                               ; preds = %17, %16, %14, %5, %1
  %19 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %24 = load ptr, ptr %23, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %20, ptr noundef %24) #11
  %25 = load ptr, ptr %19, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #11, !srcloc !12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #11, !srcloc !13
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !14

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef 3) #11
  br label %35

34:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %25) #11
  br label %35

35:                                               ; preds = %34, %33, %31, %22, %18
  tail call void @a6xx_gmu_remove(ptr noundef %0) #11
  tail call void @adreno_gpu_cleanup(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_fault_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 43
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %35

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msm_gem_address_space, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %14) #11
  %18 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_fault_handler._rs, ptr noundef nonnull @__func__.a6xx_fault_handler) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %117, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i32 8732
  %24 = tail call i32 @msm_readl(ptr noundef %23) #11
  %25 = load ptr, ptr %21, align 8
  %26 = getelementptr i8, ptr %25, i32 8736
  %27 = tail call i32 @msm_readl(ptr noundef %26) #11
  %28 = load ptr, ptr %21, align 8
  %29 = getelementptr i8, ptr %28, i32 8740
  %30 = tail call i32 @msm_readl(ptr noundef %29) #11
  %31 = load ptr, ptr %21, align 8
  %32 = getelementptr i8, ptr %31, i32 8744
  %33 = tail call i32 @msm_readl(ptr noundef %32) #11
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %1, i32 noundef %2, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33) #12
  br label %117

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.msm_gem_address_space, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %39) #11
  br label %43

43:                                               ; preds = %35, %6
  %44 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %3, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = and i32 %45, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = and i32 %45, 16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, ptr @.str.49, ptr @.str.53
  br label %55

55:                                               ; preds = %51, %48, %43
  %56 = phi ptr [ @.str.51, %43 ], [ @.str.52, %48 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %3, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i8
  switch i8 %59, label %62 [
    i8 0, label %78
    i8 4, label %60
    i8 6, label %61
  ]

60:                                               ; preds = %55
  br label %78

61:                                               ; preds = %55
  br label %78

62:                                               ; preds = %55
  %63 = and i32 %58, 252
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr i8, ptr %67, i32 14436
  %69 = tail call i32 @msm_readl(ptr noundef %68) #11
  switch i8 %59, label %78 [
    i8 3, label %70
    i8 2, label %74
  ]

70:                                               ; preds = %65
  %71 = and i32 %69, 7
  %72 = getelementptr [7 x ptr], ptr @a6xx_uche_fault_block.uche_clients, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  br label %78

74:                                               ; preds = %65
  %75 = and i32 %69, 7
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, ptr @.str.66, ptr @.str.67
  br label %78

78:                                               ; preds = %74, %70, %65, %62, %61, %60, %55
  %79 = phi ptr [ @.str.57, %60 ], [ @.str.58, %61 ], [ @.str.56, %55 ], [ %73, %70 ], [ %77, %74 ], [ @.str.49, %62 ], [ @.str.68, %65 ]
  %80 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_fault_handler._rs.54, ptr noundef nonnull @__func__.a6xx_fault_handler) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %3, i32 0, i32 1
  %84 = load i64, ptr %83, align 8
  %85 = and i32 %2, 1
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, ptr @.str.36, ptr @.str.37
  %88 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr i8, ptr %89, i32 8732
  %91 = tail call i32 @msm_readl(ptr noundef %90) #11
  %92 = load ptr, ptr %88, align 8
  %93 = getelementptr i8, ptr %92, i32 8736
  %94 = tail call i32 @msm_readl(ptr noundef %93) #11
  %95 = load ptr, ptr %88, align 8
  %96 = getelementptr i8, ptr %95, i32 8740
  %97 = tail call i32 @msm_readl(ptr noundef %96) #11
  %98 = load ptr, ptr %88, align 8
  %99 = getelementptr i8, ptr %98, i32 8744
  %100 = tail call i32 @msm_readl(ptr noundef %99) #11
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i64 noundef %84, i32 noundef %1, ptr noundef nonnull %87, ptr noundef nonnull %56, ptr noundef %79, i32 noundef %91, i32 noundef %94, i32 noundef %97, i32 noundef %100) #12
  br label %102

102:                                              ; preds = %82, %78
  br i1 %9, label %103, label %117

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 33
  %105 = tail call i32 @del_timer(ptr noundef %104) #11
  %106 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %3, i32 0, i32 1
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 34
  store i64 %107, ptr %108, align 8
  %109 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 34, i32 1
  store i32 %1, ptr %109, align 8
  %110 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 34, i32 2
  store i32 %2, ptr %110, align 4
  %111 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 34, i32 3
  store ptr %56, ptr %111, align 8
  %112 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 34, i32 4
  store ptr %79, ptr %112, align 4
  %113 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 39
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 35
  %116 = tail call zeroext i1 @kthread_queue_work(ptr noundef %114, ptr noundef %115) #11
  br label %117

117:                                              ; preds = %103, %102, %20, %10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_variable_le_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_gmu_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_hw_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %4 = tail call i32 @a6xx_gmu_set_oob(ptr noundef %3, i32 noundef 1) #11
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 253964
  tail call void @msm_writel(i32 noundef 0, ptr noundef %7) #11
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr i8, ptr %8, i32 253952
  tail call void @msm_writel(i32 noundef 0, ptr noundef %9) #11
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr i8, ptr %10, i32 253956
  tail call void @msm_writel(i32 noundef 0, ptr noundef %11) #11
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr i8, ptr %12, i32 253960
  tail call void @msm_writel(i32 noundef 0, ptr noundef %13) #11
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr i8, ptr %14, i32 8456
  tail call void @msm_writel(i32 noundef 1, ptr noundef %15) #11
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr i8, ptr %16, i32 12292
  tail call void @msm_writel(i32 noundef 1, ptr noundef %17) #11
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr i8, ptr %18, i32 137220
  tail call void @msm_writel(i32 noundef 1, ptr noundef %19) #11
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr i8, ptr %20, i32 145428
  tail call void @msm_writel(i32 noundef 1, ptr noundef %21) #11
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr i8, ptr %22, i32 161796
  tail call void @msm_writel(i32 noundef 1, ptr noundef %23) #11
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr i8, ptr %24, i32 194580
  tail call void @msm_writel(i32 noundef 1, ptr noundef %25) #11
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr i8, ptr %26, i32 169988
  tail call void @msm_writel(i32 noundef 1, ptr noundef %27) #11
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr i8, ptr %28, i32 153604
  tail call void @msm_writel(i32 noundef 1, ptr noundef %29) #11
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr i8, ptr %30, i32 14336
  tail call void @msm_writel(i32 noundef 1, ptr noundef %31) #11
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr i8, ptr %32, i32 178180
  tail call void @msm_writel(i32 noundef 1, ptr noundef %33) #11
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr i8, ptr %34, i32 186372
  tail call void @msm_writel(i32 noundef 1, ptr noundef %35) #11
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr i8, ptr %36, i32 254016
  tail call void @msm_writel(i32 noundef 1, ptr noundef %37) #11
  %38 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.adreno_info, ptr %39, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %90, label %43

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 630
  %47 = select i1 %46, i32 -1968657918, i32 -1968657790
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr i8, ptr %48, i32 696
  %50 = tail call i32 @msm_readl(ptr noundef %49) #11
  %51 = icmp eq i32 %50, %47
  br i1 %51, label %90, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 512
  %56 = tail call i32 @msm_readl(ptr noundef %55) #11
  %57 = and i32 %56, -2
  %58 = load ptr, ptr %53, align 4
  %59 = getelementptr i8, ptr %58, i32 512
  tail call void @msm_writel(i32 noundef %57, ptr noundef %59) #11
  %60 = load ptr, ptr %38, align 4
  %61 = getelementptr inbounds %struct.adreno_info, ptr %60, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %65, %52
  %66 = phi i32 [ %79, %65 ], [ %63, %52 ]
  %67 = phi ptr [ %77, %65 ], [ %62, %52 ]
  %68 = phi i32 [ %74, %65 ], [ 0, %52 ]
  %69 = getelementptr %struct.adreno_reglist, ptr %67, i32 %68, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %5, align 8
  %72 = shl i32 %66, 2
  %73 = getelementptr i8, ptr %71, i32 %72
  tail call void @msm_writel(i32 noundef %70, ptr noundef %73) #11
  %74 = add i32 %68, 1
  %75 = load ptr, ptr %38, align 4
  %76 = getelementptr inbounds %struct.adreno_info, ptr %75, i32 0, i32 9
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr %struct.adreno_reglist, ptr %77, i32 %74
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %65

81:                                               ; preds = %65, %52
  %82 = load ptr, ptr %53, align 4
  %83 = getelementptr i8, ptr %82, i32 512
  %84 = tail call i32 @msm_readl(ptr noundef %83) #11
  %85 = or i32 %84, 1
  %86 = load ptr, ptr %53, align 4
  %87 = getelementptr i8, ptr %86, i32 512
  tail call void @msm_writel(i32 noundef %85, ptr noundef %87) #11
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr i8, ptr %88, i32 696
  tail call void @msm_writel(i32 noundef %47, ptr noundef %89) #11
  br label %90

90:                                               ; preds = %81, %43, %1
  %91 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  switch i32 %92, label %93 [
    i32 680, label %98
    i32 640, label %98
    i32 650, label %98
    i32 620, label %98
    i32 660, label %98
  ]

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %95 = load i32, ptr %94, align 8
  %96 = insertvalue [1 x i32] undef, i32 %95, 0
  %97 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %96) #11
  br i1 %97, label %98, label %109

98:                                               ; preds = %93, %90, %90, %90, %90, %90
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr i8, ptr %99, i32 61452
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %100) #11
  %101 = load ptr, ptr %5, align 8
  %102 = getelementptr i8, ptr %101, i32 61456
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %102) #11
  %103 = load ptr, ptr %5, align 8
  %104 = getelementptr i8, ptr %103, i32 61460
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %104) #11
  %105 = load ptr, ptr %5, align 8
  %106 = getelementptr i8, ptr %105, i32 61464
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %106) #11
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr i8, ptr %107, i32 61464
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %108) #11
  br label %109

109:                                              ; preds = %98, %93
  %110 = phi i32 [ 68, %98 ], [ 64, %93 ]
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr i8, ptr %111, i32 %110
  tail call void @msm_writel(i32 noundef 3, ptr noundef %112) #11
  %113 = load i32, ptr %91, align 4
  %114 = icmp eq i32 %113, 630
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr i8, ptr %116, i32 49320
  tail call void @msm_writel(i32 noundef 9, ptr noundef %117) #11
  br label %118

118:                                              ; preds = %115, %109
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr i8, ptr %119, i32 5164
  tail call void @msm_writel(i32 noundef -1, ptr noundef %120) #11
  %121 = load ptr, ptr %5, align 8
  %122 = getelementptr i8, ptr %121, i32 14356
  tail call void @msm_writel(i32 noundef -64, ptr noundef %122) #11
  %123 = load ptr, ptr %5, align 8
  %124 = getelementptr i8, ptr %123, i32 14360
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %124) #11
  %125 = load ptr, ptr %5, align 8
  %126 = getelementptr i8, ptr %125, i32 14372
  tail call void @msm_writel(i32 noundef -4096, ptr noundef %126) #11
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr i8, ptr %127, i32 14376
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %128) #11
  %129 = load ptr, ptr %5, align 8
  %130 = getelementptr i8, ptr %129, i32 14364
  tail call void @msm_writel(i32 noundef -4096, ptr noundef %130) #11
  %131 = load ptr, ptr %5, align 8
  %132 = getelementptr i8, ptr %131, i32 14368
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %132) #11
  %133 = load i32, ptr %91, align 4
  switch i32 %133, label %134 [
    i32 650, label %151
    i32 620, label %151
    i32 660, label %151
  ]

134:                                              ; preds = %118
  %135 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %136 = load i32, ptr %135, align 8
  %137 = insertvalue [1 x i32] undef, i32 %136, 0
  %138 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %137) #11
  br i1 %138, label %151, label %139

139:                                              ; preds = %134
  %140 = load ptr, ptr %5, align 8
  %141 = getelementptr i8, ptr %140, i32 14380
  tail call void @msm_writel(i32 noundef 1048576, ptr noundef %141) #11
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr i8, ptr %142, i32 14384
  tail call void @msm_writel(i32 noundef 0, ptr noundef %143) #11
  %144 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 3
  %145 = load i32, ptr %144, align 8
  %146 = add i32 %145, 1048575
  %147 = load ptr, ptr %5, align 8
  %148 = getelementptr i8, ptr %147, i32 14388
  tail call void @msm_writel(i32 noundef %146, ptr noundef %148) #11
  %149 = load ptr, ptr %5, align 8
  %150 = getelementptr i8, ptr %149, i32 14392
  tail call void @msm_writel(i32 noundef 0, ptr noundef %150) #11
  br label %151

151:                                              ; preds = %139, %134, %118, %118, %118
  %152 = load ptr, ptr %5, align 8
  %153 = getelementptr i8, ptr %152, i32 14432
  tail call void @msm_writel(i32 noundef 2052, ptr noundef %153) #11
  %154 = load ptr, ptr %5, align 8
  %155 = getelementptr i8, ptr %154, i32 14428
  tail call void @msm_writel(i32 noundef 4, ptr noundef %155) #11
  %156 = load i32, ptr %91, align 4
  switch i32 %156, label %157 [
    i32 680, label %163
    i32 640, label %163
    i32 650, label %163
    i32 620, label %163
    i32 660, label %163
  ]

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %159 = load i32, ptr %158, align 8
  %160 = insertvalue [1 x i32] undef, i32 %159, 0
  %161 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %160) #11
  %162 = select i1 %161, i32 33554752, i32 16777408
  br label %163

163:                                              ; preds = %157, %151, %151, %151, %151, %151
  %164 = phi i32 [ 33554752, %151 ], [ 33554752, %151 ], [ 33554752, %151 ], [ 33554752, %151 ], [ 33554752, %151 ], [ %162, %157 ]
  %165 = load ptr, ptr %5, align 8
  %166 = getelementptr i8, ptr %165, i32 8968
  tail call void @msm_writel(i32 noundef %164, ptr noundef %166) #11
  %167 = load ptr, ptr %5, align 8
  %168 = getelementptr i8, ptr %167, i32 8964
  tail call void @msm_writel(i32 noundef -2143275476, ptr noundef %168) #11
  %169 = load i32, ptr %91, align 4
  %170 = icmp eq i32 %169, 660
  br i1 %170, label %176, label %171

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %173 = load i32, ptr %172, align 8
  %174 = insertvalue [1 x i32] undef, i32 %173, 0
  %175 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %174) #11
  br i1 %175, label %176, label %179

176:                                              ; preds = %171, %163
  %177 = load ptr, ptr %5, align 8
  %178 = getelementptr i8, ptr %177, i32 11472
  tail call void @msm_writel(i32 noundef 32, ptr noundef %178) #11
  br label %179

179:                                              ; preds = %176, %171
  %180 = load ptr, ptr %5, align 8
  %181 = getelementptr i8, ptr %180, i32 8972
  tail call void @msm_writel(i32 noundef 128, ptr noundef %181) #11
  %182 = load i32, ptr %91, align 4
  switch i32 %182, label %183 [
    i32 650, label %195
    i32 660, label %195
    i32 680, label %188
    i32 640, label %188
  ]

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %185 = load i32, ptr %184, align 8
  %186 = insertvalue [1 x i32] undef, i32 %185, 0
  %187 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %186) #11
  br i1 %187, label %188, label %189

188:                                              ; preds = %183, %179, %179
  br label %195

189:                                              ; preds = %183
  %190 = load i32, ptr %91, align 4
  %191 = icmp eq i32 %190, 650
  %192 = icmp eq i32 %190, 660
  %193 = or i1 %191, %192
  %194 = select i1 %193, i32 3146240, i32 1572864
  br label %195

195:                                              ; preds = %189, %188, %179, %179
  %196 = phi i32 [ 2097664, %188 ], [ 3146240, %179 ], [ 3146240, %179 ], [ %194, %189 ]
  %197 = load ptr, ptr %5, align 8
  %198 = getelementptr i8, ptr %197, i32 161792
  tail call void @msm_writel(i32 noundef %196, ptr noundef %198) #11
  %199 = load ptr, ptr %5, align 8
  %200 = getelementptr i8, ptr %199, i32 9780
  tail call void @msm_writel(i32 noundef 1, ptr noundef %200) #11
  %201 = load ptr, ptr %5, align 8
  %202 = getelementptr i8, ptr %201, i32 5120
  tail call void @msm_writel(i32 noundef 1, ptr noundef %202) #11
  %203 = load ptr, ptr %5, align 8
  %204 = getelementptr i8, ptr %203, i32 9024
  tail call void @msm_writel(i32 noundef 0, ptr noundef %204) #11
  %205 = load i32, ptr %91, align 4
  switch i32 %205, label %206 [
    i32 618, label %241
    i32 650, label %212
  ]

206:                                              ; preds = %195
  %207 = icmp ne i32 %205, 640
  %208 = icmp ne i32 %205, 680
  %209 = and i1 %207, %208
  %210 = select i1 %209, i32 0, i32 16
  %211 = icmp eq i32 %205, 660
  br i1 %211, label %212, label %213

212:                                              ; preds = %206, %195
  br label %213

213:                                              ; preds = %212, %206
  %214 = phi i32 [ 3, %212 ], [ 2, %206 ]
  %215 = phi i32 [ 16, %212 ], [ %210, %206 ]
  %216 = phi i32 [ 2048, %212 ], [ 0, %206 ]
  %217 = phi i32 [ 32, %212 ], [ 0, %206 ]
  %218 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %219 = load i32, ptr %218, align 8
  %220 = insertvalue [1 x i32] undef, i32 %219, 0
  %221 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %220) #11
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %213
  %224 = phi i32 [ 1, %222 ], [ %214, %213 ]
  %225 = phi i32 [ 16, %222 ], [ %215, %213 ]
  %226 = phi i32 [ 2048, %222 ], [ %216, %213 ]
  %227 = phi i32 [ 32, %222 ], [ %217, %213 ]
  %228 = shl nuw nsw i32 %224, 1
  %229 = or i32 %228, %225
  %230 = or i32 %229, %226
  %231 = load ptr, ptr %5, align 8
  %232 = getelementptr i8, ptr %231, i32 145440
  tail call void @msm_writel(i32 noundef %230, ptr noundef %232) #11
  %233 = load ptr, ptr %5, align 8
  %234 = getelementptr i8, ptr %233, i32 186384
  tail call void @msm_writel(i32 noundef %228, ptr noundef %234) #11
  %235 = or i32 %227, %228
  %236 = load ptr, ptr %5, align 8
  %237 = getelementptr i8, ptr %236, i32 178184
  tail call void @msm_writel(i32 noundef %235, ptr noundef %237) #11
  %238 = shl nuw nsw i32 %224, 21
  %239 = load ptr, ptr %5, align 8
  %240 = getelementptr i8, ptr %239, i32 14340
  tail call void @msm_writel(i32 noundef %238, ptr noundef %240) #11
  br label %241

241:                                              ; preds = %223, %195
  %242 = load ptr, ptr %5, align 8
  %243 = getelementptr i8, ptr %242, i32 124
  tail call void @msm_writel(i32 noundef 1075838975, ptr noundef %243) #11
  %244 = load ptr, ptr %5, align 8
  %245 = getelementptr i8, ptr %244, i32 14436
  tail call void @msm_writel(i32 noundef 1, ptr noundef %245) #11
  %246 = load i32, ptr %91, align 4
  switch i32 %246, label %247 [
    i32 650, label %252
    i32 620, label %252
    i32 660, label %252
  ]

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %249 = load i32, ptr %248, align 8
  %250 = insertvalue [1 x i32] undef, i32 %249, 0
  %251 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %250) #11
  br i1 %251, label %252, label %263

252:                                              ; preds = %247, %241, %241, %241
  %253 = load ptr, ptr %5, align 8
  %254 = getelementptr i8, ptr %253, i32 186400
  tail call void @msm_writel(i32 noundef 0, ptr noundef %254) #11
  %255 = load ptr, ptr %5, align 8
  %256 = getelementptr i8, ptr %255, i32 186404
  tail call void @msm_writel(i32 noundef 1071669236, ptr noundef %256) #11
  %257 = load ptr, ptr %5, align 8
  %258 = getelementptr i8, ptr %257, i32 186408
  tail call void @msm_writel(i32 noundef 1067510766, ptr noundef %258) #11
  %259 = load ptr, ptr %5, align 8
  %260 = getelementptr i8, ptr %259, i32 186412
  tail call void @msm_writel(i32 noundef 1062310893, ptr noundef %260) #11
  %261 = load ptr, ptr %5, align 8
  %262 = getelementptr i8, ptr %261, i32 186416
  tail call void @msm_writel(i32 noundef 1057113072, ptr noundef %262) #11
  br label %263

263:                                              ; preds = %252, %247
  %264 = load i32, ptr %91, align 4
  switch i32 %264, label %265 [
    i32 650, label %271
    i32 660, label %270
  ]

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %267 = load i32, ptr %266, align 8
  %268 = insertvalue [1 x i32] undef, i32 %267, 0
  %269 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %268) #11
  br i1 %269, label %270, label %271

270:                                              ; preds = %265, %263
  br label %271

271:                                              ; preds = %270, %265, %263
  %272 = phi ptr [ @a660_protect, %270 ], [ @a6xx_protect, %265 ], [ @a650_protect, %263 ]
  %273 = phi i32 [ 40, %270 ], [ 31, %265 ], [ 38, %263 ]
  %274 = phi i32 [ 8700, %270 ], [ 8636, %265 ], [ 8700, %263 ]
  %275 = load ptr, ptr %5, align 8
  %276 = getelementptr i8, ptr %275, i32 8508
  tail call void @msm_writel(i32 noundef 11, ptr noundef %276) #11
  br label %277

277:                                              ; preds = %277, %271
  %278 = phi i32 [ 0, %271 ], [ %285, %277 ]
  %279 = getelementptr i32, ptr %272, i32 %278
  %280 = load i32, ptr %279, align 4
  %281 = load ptr, ptr %5, align 8
  %282 = shl i32 %278, 2
  %283 = add nuw nsw i32 %282, 8512
  %284 = getelementptr i8, ptr %281, i32 %283
  tail call void @msm_writel(i32 noundef %280, ptr noundef %284) #11
  %285 = add nuw nsw i32 %278, 1
  %286 = icmp eq i32 %285, %273
  br i1 %286, label %287, label %277

287:                                              ; preds = %277
  %288 = getelementptr i32, ptr %272, i32 %273
  %289 = load i32, ptr %288, align 4
  %290 = load ptr, ptr %5, align 8
  %291 = getelementptr i8, ptr %290, i32 %274
  tail call void @msm_writel(i32 noundef %289, ptr noundef %291) #11
  %292 = load i32, ptr %91, align 4
  %293 = icmp eq i32 %292, 660
  br i1 %293, label %299, label %294

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %296 = load i32, ptr %295, align 8
  %297 = insertvalue [1 x i32] undef, i32 %296, 0
  %298 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %297) #11
  br i1 %298, label %299, label %304

299:                                              ; preds = %294, %287
  %300 = load ptr, ptr %5, align 8
  %301 = getelementptr i8, ptr %300, i32 8452
  tail call void @msm_writel(i32 noundef 1, ptr noundef %301) #11
  %302 = load ptr, ptr %5, align 8
  %303 = getelementptr i8, ptr %302, i32 68
  tail call void @msm_writel(i32 noundef 0, ptr noundef %303) #11
  br label %304

304:                                              ; preds = %299, %294
  %305 = load i32, ptr %91, align 4
  %306 = icmp eq i32 %305, 660
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load ptr, ptr %5, align 8
  %309 = getelementptr i8, ptr %308, i32 14576
  tail call void @msm_writel(i32 noundef 420102, ptr noundef %309) #11
  br label %310

310:                                              ; preds = %307, %304
  %311 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 45
  %312 = load i8, ptr %311, align 1, !range !16
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = load ptr, ptr %5, align 8
  %316 = getelementptr i8, ptr %315, i32 8464
  tail call void @msm_writel(i32 noundef 110, ptr noundef %316) #11
  br label %317

317:                                              ; preds = %314, %310
  %318 = load ptr, ptr %5, align 8
  %319 = getelementptr i8, ptr %318, i32 224
  tail call void @msm_writel(i32 noundef 64021058, ptr noundef %319) #11
  %320 = tail call i32 @adreno_hw_init(ptr noundef %0) #11
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %604

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 1
  %324 = load ptr, ptr %323, align 8
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %395

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 8
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 2
  %330 = tail call ptr @adreno_fw_create_bo(ptr noundef %0, ptr noundef %328, ptr noundef %329) #11
  store ptr %330, ptr %323, align 8
  %331 = icmp ugt ptr %330, inttoptr (i32 -4096 to ptr)
  br i1 %331, label %423, label %332

332:                                              ; preds = %326
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %330, ptr noundef nonnull @.str.12) #11
  %333 = load ptr, ptr %323, align 8
  %334 = load ptr, ptr %38, align 4
  %335 = getelementptr inbounds %struct.adreno_info, ptr %334, i32 0, i32 3
  %336 = load ptr, ptr %335, align 4
  %337 = tail call ptr @msm_gem_get_vaddr(ptr noundef %333) #11
  %338 = icmp ugt ptr %337, inttoptr (i32 -4096 to ptr)
  br i1 %338, label %380, label %339

339:                                              ; preds = %332
  %340 = tail call i32 @strcmp(ptr noundef %336, ptr noundef nonnull dereferenceable(12) @.str.13) #11
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %360

342:                                              ; preds = %339
  %343 = load i32, ptr %337, align 4
  %344 = and i32 %343, 15
  %345 = icmp eq i32 %344, 10
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = getelementptr i32, ptr %337, i32 2
  %348 = load i32, ptr %347, align 4
  %349 = and i32 %348, 15
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %346, %342
  %352 = and i32 %343, 4095
  %353 = icmp ugt i32 %352, 399
  br i1 %353, label %354, label %356

354:                                              ; preds = %351, %346
  %355 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 8
  store i8 1, ptr %355, align 4
  br label %378

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %358 = load ptr, ptr %357, align 8
  %359 = getelementptr inbounds %struct.platform_device, ptr %358, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %359, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14, i32 noundef %352, i32 noundef 400) #11
  br label %379

360:                                              ; preds = %339
  %361 = tail call i32 @strcmp(ptr noundef %336, ptr noundef nonnull dereferenceable(12) @.str.15) #11
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %371

363:                                              ; preds = %360
  %364 = load i32, ptr %337, align 4
  %365 = and i32 %364, 4095
  %366 = icmp ugt i32 %365, 148
  br i1 %366, label %378, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %369 = load ptr, ptr %368, align 8
  %370 = getelementptr inbounds %struct.platform_device, ptr %369, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %370, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, i32 noundef %365, i32 noundef 149) #11
  br label %379

371:                                              ; preds = %360
  %372 = tail call i32 @strcmp(ptr noundef %336, ptr noundef nonnull dereferenceable(12) @.str.17) #11
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %376 = load ptr, ptr %375, align 8
  %377 = getelementptr inbounds %struct.platform_device, ptr %376, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %377, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.18) #11
  br label %379

378:                                              ; preds = %371, %363, %354
  tail call void @msm_gem_put_vaddr(ptr noundef %333) #11
  br label %395

379:                                              ; preds = %374, %367, %356
  tail call void @msm_gem_put_vaddr(ptr noundef %333) #11
  br label %380

380:                                              ; preds = %379, %332
  %381 = load ptr, ptr %323, align 8
  %382 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %383 = load ptr, ptr %382, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef %381, ptr noundef %383) #11
  %384 = load ptr, ptr %323, align 8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %394, label %386

386:                                              ; preds = %380
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %384) #11, !srcloc !12
  %387 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %384, ptr nonnull %384, i32 1, ptr nonnull elementtype(i32) %384) #11, !srcloc !13
  %388 = extractvalue { i32, i32, i32 } %387, 0
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %393, label %390

390:                                              ; preds = %386
  %391 = icmp sgt i32 %388, 0
  br i1 %391, label %394, label %392, !prof !14

392:                                              ; preds = %390
  tail call void @refcount_warn_saturate(ptr noundef nonnull %384, i32 noundef 3) #11
  br label %394

393:                                              ; preds = %386
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %384) #11
  br label %394

394:                                              ; preds = %393, %392, %390, %380
  store ptr null, ptr %323, align 8
  br label %604

395:                                              ; preds = %378, %322
  %396 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 2
  %397 = load i64, ptr %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = load ptr, ptr %5, align 8
  %400 = getelementptr i8, ptr %399, i32 8384
  tail call void @msm_writel(i32 noundef %398, ptr noundef %400) #11
  %401 = lshr i64 %397, 32
  %402 = trunc i64 %401 to i32
  %403 = load ptr, ptr %5, align 8
  %404 = getelementptr i8, ptr %403, i32 8388
  tail call void @msm_writel(i32 noundef %402, ptr noundef %404) #11
  %405 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %406 = load ptr, ptr %405, align 4
  %407 = getelementptr inbounds %struct.msm_ringbuffer, ptr %406, i32 0, i32 10
  %408 = load i64, ptr %407, align 8
  %409 = trunc i64 %408 to i32
  %410 = load ptr, ptr %5, align 8
  %411 = getelementptr i8, ptr %410, i32 8192
  tail call void @msm_writel(i32 noundef %409, ptr noundef %411) #11
  %412 = lshr i64 %408, 32
  %413 = trunc i64 %412 to i32
  %414 = load ptr, ptr %5, align 8
  %415 = getelementptr i8, ptr %414, i32 8196
  tail call void @msm_writel(i32 noundef %413, ptr noundef %415) #11
  %416 = load i8, ptr %311, align 1, !range !16
  %417 = icmp eq i8 %416, 0
  %418 = load ptr, ptr %5, align 8
  %419 = getelementptr i8, ptr %418, i32 8200
  %420 = select i1 %417, i32 134218252, i32 524
  tail call void @msm_writel(i32 noundef %420, ptr noundef %419) #11
  %421 = load i8, ptr %311, align 1, !range !16
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %428, label %432

423:                                              ; preds = %326
  %424 = ptrtoint ptr %330 to i32
  store ptr null, ptr %323, align 8
  %425 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %426 = load ptr, ptr %425, align 8
  %427 = getelementptr inbounds %struct.platform_device, ptr %426, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %427, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11, i32 noundef %424) #11
  br label %604

428:                                              ; preds = %395
  %429 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 8
  %430 = load i8, ptr %429, align 4, !range !16
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %468, label %432

432:                                              ; preds = %428, %395
  %433 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 5
  %434 = load ptr, ptr %433, align 8
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %452

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %440 = load i32, ptr %439, align 4
  %441 = shl i32 %440, 2
  %442 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %443 = load ptr, ptr %442, align 8
  %444 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 6
  %445 = tail call ptr @msm_gem_kernel_new(ptr noundef %438, i32 noundef %441, i32 noundef 537001984, ptr noundef %443, ptr noundef %433, ptr noundef %444) #11
  %446 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 7
  store ptr %445, ptr %446, align 8
  %447 = icmp ugt ptr %445, inttoptr (i32 -4096 to ptr)
  br i1 %447, label %448, label %450

448:                                              ; preds = %436
  %449 = ptrtoint ptr %445 to i32
  br label %610

450:                                              ; preds = %436
  %451 = load ptr, ptr %433, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %451, ptr noundef nonnull @.str.9) #11
  br label %452

452:                                              ; preds = %450, %432
  %453 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 6
  %454 = load i64, ptr %453, align 8
  %455 = load ptr, ptr %405, align 4
  %456 = getelementptr inbounds %struct.msm_ringbuffer, ptr %455, i32 0, i32 1
  %457 = load i32, ptr %456, align 4
  %458 = shl i32 %457, 2
  %459 = zext i32 %458 to i64
  %460 = add i64 %454, %459
  %461 = trunc i64 %460 to i32
  %462 = load ptr, ptr %5, align 8
  %463 = getelementptr i8, ptr %462, i32 8208
  tail call void @msm_writel(i32 noundef %461, ptr noundef %463) #11
  %464 = lshr i64 %460, 32
  %465 = trunc i64 %464 to i32
  %466 = load ptr, ptr %5, align 8
  %467 = getelementptr i8, ptr %466, i32 8212
  tail call void @msm_writel(i32 noundef %465, ptr noundef %467) #11
  br label %468

468:                                              ; preds = %452, %428
  %469 = load ptr, ptr %405, align 4
  %470 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 3
  store ptr %469, ptr %470, align 8
  %471 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 15
  store i32 0, ptr %471, align 8
  %472 = load ptr, ptr %5, align 8
  %473 = getelementptr i8, ptr %472, i32 8224
  tail call void @msm_writel(i32 noundef 1, ptr noundef %473) #11
  %474 = load ptr, ptr %405, align 4
  tail call void @adreno_wait_ring(ptr noundef %474, i32 noundef 9) #11
  %475 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 6
  %476 = load ptr, ptr %475, align 8
  %477 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 4
  %478 = load ptr, ptr %477, align 8
  %479 = icmp eq ptr %476, %478
  br i1 %479, label %480, label %483

480:                                              ; preds = %468
  %481 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %482 = load ptr, ptr %481, align 4
  br label %483

483:                                              ; preds = %480, %468
  %484 = phi ptr [ %482, %480 ], [ %476, %468 ]
  %485 = getelementptr i32, ptr %484, i32 1
  store ptr %485, ptr %475, align 8
  store i32 1892155400, ptr %484, align 4
  %486 = load ptr, ptr %475, align 8
  %487 = load ptr, ptr %477, align 8
  %488 = icmp eq ptr %486, %487
  br i1 %488, label %489, label %492

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %491 = load ptr, ptr %490, align 4
  br label %492

492:                                              ; preds = %489, %483
  %493 = phi ptr [ %491, %489 ], [ %486, %483 ]
  %494 = getelementptr i32, ptr %493, i32 1
  store ptr %494, ptr %475, align 8
  store i32 47, ptr %493, align 4
  %495 = load ptr, ptr %475, align 8
  %496 = load ptr, ptr %477, align 8
  %497 = icmp eq ptr %495, %496
  br i1 %497, label %498, label %501

498:                                              ; preds = %492
  %499 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %500 = load ptr, ptr %499, align 4
  br label %501

501:                                              ; preds = %498, %492
  %502 = phi ptr [ %500, %498 ], [ %495, %492 ]
  %503 = getelementptr i32, ptr %502, i32 1
  store ptr %503, ptr %475, align 8
  store i32 3, ptr %502, align 4
  %504 = load ptr, ptr %475, align 8
  %505 = load ptr, ptr %477, align 8
  %506 = icmp eq ptr %504, %505
  br i1 %506, label %507, label %510

507:                                              ; preds = %501
  %508 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %509 = load ptr, ptr %508, align 4
  br label %510

510:                                              ; preds = %507, %501
  %511 = phi ptr [ %509, %507 ], [ %504, %501 ]
  %512 = getelementptr i32, ptr %511, i32 1
  store ptr %512, ptr %475, align 8
  store i32 536870912, ptr %511, align 4
  %513 = load ptr, ptr %475, align 8
  %514 = load ptr, ptr %477, align 8
  %515 = icmp eq ptr %513, %514
  br i1 %515, label %516, label %519

516:                                              ; preds = %510
  %517 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %518 = load ptr, ptr %517, align 4
  br label %519

519:                                              ; preds = %516, %510
  %520 = phi ptr [ %518, %516 ], [ %513, %510 ]
  %521 = getelementptr i32, ptr %520, i32 1
  store ptr %521, ptr %475, align 8
  store i32 0, ptr %520, align 4
  %522 = load ptr, ptr %475, align 8
  %523 = load ptr, ptr %477, align 8
  %524 = icmp eq ptr %522, %523
  br i1 %524, label %525, label %528

525:                                              ; preds = %519
  %526 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %527 = load ptr, ptr %526, align 4
  br label %528

528:                                              ; preds = %525, %519
  %529 = phi ptr [ %527, %525 ], [ %522, %519 ]
  %530 = getelementptr i32, ptr %529, i32 1
  store ptr %530, ptr %475, align 8
  store i32 0, ptr %529, align 4
  %531 = load ptr, ptr %475, align 8
  %532 = load ptr, ptr %477, align 8
  %533 = icmp eq ptr %531, %532
  br i1 %533, label %534, label %537

534:                                              ; preds = %528
  %535 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %536 = load ptr, ptr %535, align 4
  br label %537

537:                                              ; preds = %534, %528
  %538 = phi ptr [ %536, %534 ], [ %531, %528 ]
  %539 = getelementptr i32, ptr %538, i32 1
  store ptr %539, ptr %475, align 8
  store i32 0, ptr %538, align 4
  %540 = load ptr, ptr %475, align 8
  %541 = load ptr, ptr %477, align 8
  %542 = icmp eq ptr %540, %541
  br i1 %542, label %543, label %546

543:                                              ; preds = %537
  %544 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %545 = load ptr, ptr %544, align 4
  br label %546

546:                                              ; preds = %543, %537
  %547 = phi ptr [ %545, %543 ], [ %540, %537 ]
  %548 = getelementptr i32, ptr %547, i32 1
  store ptr %548, ptr %475, align 8
  store i32 0, ptr %547, align 4
  %549 = load ptr, ptr %475, align 8
  %550 = load ptr, ptr %477, align 8
  %551 = icmp eq ptr %549, %550
  br i1 %551, label %552, label %555

552:                                              ; preds = %546
  %553 = getelementptr inbounds %struct.msm_ringbuffer, ptr %474, i32 0, i32 3
  %554 = load ptr, ptr %553, align 4
  br label %555

555:                                              ; preds = %552, %546
  %556 = phi ptr [ %554, %552 ], [ %549, %546 ]
  %557 = getelementptr i32, ptr %556, i32 1
  store ptr %557, ptr %475, align 8
  store i32 0, ptr %556, align 4
  tail call fastcc void @a6xx_flush(ptr noundef %0, ptr noundef %474) #11
  %558 = tail call fastcc zeroext i1 @a6xx_idle(ptr noundef %0, ptr noundef %474) #11
  br i1 %558, label %559, label %604

559:                                              ; preds = %555
  %560 = load i8, ptr @a6xx_zap_shader_init.loaded, align 1, !range !16
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %562, label %566

562:                                              ; preds = %559
  %563 = tail call i32 @adreno_zap_shader_load(ptr noundef %0, i32 noundef 13) #11
  %564 = icmp eq i32 %563, 0
  %565 = zext i1 %564 to i8
  store i8 %565, ptr @a6xx_zap_shader_init.loaded, align 1
  switch i32 %563, label %610 [
    i32 0, label %566
    i32 -19, label %594
  ]

566:                                              ; preds = %562, %559
  %567 = load ptr, ptr %405, align 4
  tail call void @adreno_wait_ring(ptr noundef %567, i32 noundef 2) #11
  %568 = getelementptr inbounds %struct.msm_ringbuffer, ptr %567, i32 0, i32 6
  %569 = load ptr, ptr %568, align 8
  %570 = getelementptr inbounds %struct.msm_ringbuffer, ptr %567, i32 0, i32 4
  %571 = load ptr, ptr %570, align 8
  %572 = icmp eq ptr %569, %571
  br i1 %572, label %573, label %576

573:                                              ; preds = %566
  %574 = getelementptr inbounds %struct.msm_ringbuffer, ptr %567, i32 0, i32 3
  %575 = load ptr, ptr %574, align 4
  br label %576

576:                                              ; preds = %573, %566
  %577 = phi ptr [ %575, %573 ], [ %569, %566 ]
  %578 = getelementptr i32, ptr %577, i32 1
  store ptr %578, ptr %568, align 8
  store i32 1894121473, ptr %577, align 4
  %579 = load ptr, ptr %405, align 4
  %580 = getelementptr inbounds %struct.msm_ringbuffer, ptr %579, i32 0, i32 6
  %581 = load ptr, ptr %580, align 8
  %582 = getelementptr inbounds %struct.msm_ringbuffer, ptr %579, i32 0, i32 4
  %583 = load ptr, ptr %582, align 8
  %584 = icmp eq ptr %581, %583
  br i1 %584, label %585, label %588

585:                                              ; preds = %576
  %586 = getelementptr inbounds %struct.msm_ringbuffer, ptr %579, i32 0, i32 3
  %587 = load ptr, ptr %586, align 4
  br label %588

588:                                              ; preds = %585, %576
  %589 = phi ptr [ %587, %585 ], [ %581, %576 ]
  %590 = getelementptr i32, ptr %589, i32 1
  store ptr %590, ptr %580, align 8
  store i32 0, ptr %589, align 4
  %591 = load ptr, ptr %405, align 4
  tail call fastcc void @a6xx_flush(ptr noundef %0, ptr noundef %591) #11
  %592 = load ptr, ptr %405, align 4
  %593 = tail call fastcc zeroext i1 @a6xx_idle(ptr noundef %0, ptr noundef %592) #11
  br i1 %593, label %604, label %610

594:                                              ; preds = %562
  %595 = load i1, ptr @hw_init.__print_once, align 1
  br i1 %595, label %601, label %596

596:                                              ; preds = %594
  store i1 true, ptr @hw_init.__print_once, align 1
  %597 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %598 = load ptr, ptr %597, align 4
  %599 = getelementptr inbounds %struct.drm_device, ptr %598, i32 0, i32 2
  %600 = load ptr, ptr %599, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %600, ptr noundef nonnull @.str.10) #12
  br label %601

601:                                              ; preds = %596, %594
  %602 = load ptr, ptr %5, align 8
  %603 = getelementptr i8, ptr %602, i32 249856
  tail call void @msm_writel(i32 noundef 0, ptr noundef %603) #11
  br label %604

604:                                              ; preds = %601, %588, %555, %423, %394, %317
  %605 = phi i32 [ %320, %317 ], [ %424, %423 ], [ -22, %555 ], [ 0, %601 ], [ 0, %588 ], [ -1, %394 ]
  tail call void @a6xx_gmu_clear_oob(ptr noundef %3, i32 noundef 1) #11
  %606 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 30
  %607 = load i8, ptr %606, align 2, !range !16
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %610, label %609

609:                                              ; preds = %604
  tail call void @a6xx_gmu_clear_oob(ptr noundef %3, i32 noundef 0) #11
  br label %610

610:                                              ; preds = %609, %604, %588, %562, %448
  %611 = phi i32 [ %449, %448 ], [ -22, %588 ], [ %563, %562 ], [ %605, %609 ], [ %605, %604 ]
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret i32 %611
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_pm_suspend(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %16 = tail call i32 @__traceiter_msm_gpu_suspend(ptr noundef null, i32 noundef 0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  br label %17

17:                                               ; preds = %15, %4, %1
  tail call void @msm_devfreq_suspend(ptr noundef %0) #11
  %18 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  tail call void @mutex_lock(ptr noundef %18) #11
  %19 = tail call i32 @a6xx_gmu_stop(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %18) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 7
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 0, %29 ], [ %35, %31 ]
  %33 = load ptr, ptr %30, align 8
  %34 = getelementptr i32, ptr %33, i32 %32
  store i32 0, ptr %34, align 4
  %35 = add nuw nsw i32 %32, 1
  %36 = load i32, ptr %26, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %31, label %38

38:                                               ; preds = %31, %25, %21
  %39 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 42
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %38, %17
  %43 = phi i32 [ 0, %38 ], [ %19, %17 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_pm_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 20
  store i8 1, ptr %2, align 8
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %17 = tail call i32 @__traceiter_msm_gpu_resume(ptr noundef null, i32 noundef 0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  tail call void @mutex_lock(ptr noundef %19) #11
  %20 = tail call i32 @a6xx_gmu_resume(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %19) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @msm_devfreq_resume(ptr noundef %0) #11
  br label %23

23:                                               ; preds = %22, %18
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a6xx_submit(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 14
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, 2056
  %16 = getelementptr inbounds %struct.msm_file_private, ptr %12, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %148, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.msm_file_private, ptr %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.msm_gem_address_space, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @msm_iommu_pagetable_params(ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %148

28:                                               ; preds = %21
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 5) #11
  %29 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 4
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %36, %34 ], [ %30, %28 ]
  %39 = getelementptr i32, ptr %38, i32 1
  store ptr %39, ptr %29, align 8
  store i32 1892876292, ptr %38, align 4
  %40 = load i32, ptr %3, align 4
  %41 = load ptr, ptr %29, align 8
  %42 = load ptr, ptr %31, align 8
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi ptr [ %46, %44 ], [ %41, %37 ]
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %29, align 8
  store i32 %40, ptr %48, align 4
  %50 = load i32, ptr %4, align 4
  %51 = shl i32 %50, 16
  %52 = load ptr, ptr %29, align 8
  %53 = load ptr, ptr %31, align 8
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = phi ptr [ %57, %55 ], [ %52, %47 ]
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %29, align 8
  store i32 %51, ptr %59, align 4
  %61 = load ptr, ptr %29, align 8
  %62 = load ptr, ptr %31, align 8
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi ptr [ %66, %64 ], [ %61, %58 ]
  %69 = getelementptr i32, ptr %68, i32 1
  store ptr %69, ptr %29, align 8
  store i32 0, ptr %68, align 4
  %70 = load ptr, ptr %29, align 8
  %71 = load ptr, ptr %31, align 8
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = phi ptr [ %75, %73 ], [ %70, %67 ]
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %29, align 8
  store i32 0, ptr %77, align 4
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 5) #11
  %79 = load ptr, ptr %29, align 8
  %80 = load ptr, ptr %31, align 8
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi ptr [ %84, %82 ], [ %79, %76 ]
  %87 = getelementptr i32, ptr %86, i32 1
  store ptr %87, ptr %29, align 8
  store i32 1883045892, ptr %86, align 4
  %88 = trunc i64 %15 to i32
  %89 = load ptr, ptr %29, align 8
  %90 = load ptr, ptr %31, align 8
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = phi ptr [ %94, %92 ], [ %89, %85 ]
  %97 = getelementptr i32, ptr %96, i32 1
  store ptr %97, ptr %29, align 8
  store i32 %88, ptr %96, align 4
  %98 = lshr i64 %15, 32
  %99 = trunc i64 %98 to i32
  %100 = load ptr, ptr %29, align 8
  %101 = load ptr, ptr %31, align 8
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  br label %106

106:                                              ; preds = %103, %95
  %107 = phi ptr [ %105, %103 ], [ %100, %95 ]
  %108 = getelementptr i32, ptr %107, i32 1
  store ptr %108, ptr %29, align 8
  store i32 %99, ptr %107, align 4
  %109 = load i32, ptr %3, align 4
  %110 = load ptr, ptr %29, align 8
  %111 = load ptr, ptr %31, align 8
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %106
  %117 = phi ptr [ %115, %113 ], [ %110, %106 ]
  %118 = getelementptr i32, ptr %117, i32 1
  store ptr %118, ptr %29, align 8
  store i32 %109, ptr %117, align 4
  %119 = load i32, ptr %4, align 4
  %120 = shl i32 %119, 16
  %121 = load ptr, ptr %29, align 8
  %122 = load ptr, ptr %31, align 8
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %116
  %128 = phi ptr [ %126, %124 ], [ %121, %116 ]
  %129 = getelementptr i32, ptr %128, i32 1
  store ptr %129, ptr %29, align 8
  store i32 %120, ptr %128, align 4
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 2) #11
  %130 = load ptr, ptr %29, align 8
  %131 = load ptr, ptr %31, align 8
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi ptr [ %135, %133 ], [ %130, %127 ]
  %138 = getelementptr i32, ptr %137, i32 1
  store ptr %138, ptr %29, align 8
  store i32 1883635713, ptr %137, align 4
  %139 = load ptr, ptr %29, align 8
  %140 = load ptr, ptr %31, align 8
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %136
  %146 = phi ptr [ %144, %142 ], [ %139, %136 ]
  %147 = getelementptr i32, ptr %146, i32 1
  store ptr %147, ptr %29, align 8
  store i32 49, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %21, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %149 = load i64, ptr %13, align 8
  %150 = shl i32 %6, 5
  %151 = and i32 %150, 2016
  %152 = zext i32 %151 to i64
  %153 = or i64 %152, 8
  %154 = add i64 %153, %149
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 4) #11
  %155 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 6
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 4
  %158 = load ptr, ptr %157, align 8
  %159 = icmp eq ptr %156, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  br label %163

163:                                              ; preds = %160, %148
  %164 = phi ptr [ %162, %160 ], [ %156, %148 ]
  %165 = getelementptr i32, ptr %164, i32 1
  store ptr %165, ptr %155, align 8
  store i32 1883144195, ptr %164, align 4
  %166 = load ptr, ptr %155, align 8
  %167 = load ptr, ptr %157, align 8
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  br label %172

172:                                              ; preds = %169, %163
  %173 = phi ptr [ %171, %169 ], [ %166, %163 ]
  %174 = getelementptr i32, ptr %173, i32 1
  store ptr %174, ptr %155, align 8
  store i32 1074267136, ptr %173, align 4
  %175 = trunc i64 %154 to i32
  %176 = load ptr, ptr %155, align 8
  %177 = load ptr, ptr %157, align 8
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  br label %182

182:                                              ; preds = %179, %172
  %183 = phi ptr [ %181, %179 ], [ %176, %172 ]
  %184 = getelementptr i32, ptr %183, i32 1
  store ptr %184, ptr %155, align 8
  store i32 %175, ptr %183, align 4
  %185 = load ptr, ptr %155, align 8
  %186 = load ptr, ptr %157, align 8
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  br label %191

191:                                              ; preds = %188, %182
  %192 = phi ptr [ %190, %188 ], [ %185, %182 ]
  %193 = lshr i64 %154, 32
  %194 = trunc i64 %193 to i32
  %195 = getelementptr i32, ptr %192, i32 1
  store ptr %195, ptr %155, align 8
  store i32 %194, ptr %192, align 4
  %196 = load i64, ptr %13, align 8
  %197 = or i64 %152, 24
  %198 = add i64 %197, %196
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 4) #11
  %199 = load ptr, ptr %155, align 8
  %200 = load ptr, ptr %157, align 8
  %201 = icmp eq ptr %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  br label %205

205:                                              ; preds = %202, %191
  %206 = phi ptr [ %204, %202 ], [ %199, %191 ]
  %207 = getelementptr i32, ptr %206, i32 1
  store ptr %207, ptr %155, align 8
  store i32 1883144195, ptr %206, align 4
  %208 = load ptr, ptr %155, align 8
  %209 = load ptr, ptr %157, align 8
  %210 = icmp eq ptr %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %213 = load ptr, ptr %212, align 4
  br label %214

214:                                              ; preds = %211, %205
  %215 = phi ptr [ %213, %211 ], [ %208, %205 ]
  %216 = getelementptr i32, ptr %215, i32 1
  store ptr %216, ptr %155, align 8
  store i32 1074268544, ptr %215, align 4
  %217 = trunc i64 %198 to i32
  %218 = load ptr, ptr %155, align 8
  %219 = load ptr, ptr %157, align 8
  %220 = icmp eq ptr %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  br label %224

224:                                              ; preds = %221, %214
  %225 = phi ptr [ %223, %221 ], [ %218, %214 ]
  %226 = getelementptr i32, ptr %225, i32 1
  store ptr %226, ptr %155, align 8
  store i32 %217, ptr %225, align 4
  %227 = load ptr, ptr %155, align 8
  %228 = load ptr, ptr %157, align 8
  %229 = icmp eq ptr %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  br label %233

233:                                              ; preds = %230, %224
  %234 = phi ptr [ %232, %230 ], [ %227, %224 ]
  %235 = lshr i64 %198, 32
  %236 = trunc i64 %235 to i32
  %237 = getelementptr i32, ptr %234, i32 1
  store ptr %237, ptr %155, align 8
  store i32 %236, ptr %234, align 4
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 2) #11
  %238 = load ptr, ptr %155, align 8
  %239 = load ptr, ptr %157, align 8
  %240 = icmp eq ptr %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  br label %244

244:                                              ; preds = %241, %233
  %245 = phi ptr [ %243, %241 ], [ %238, %233 ]
  %246 = getelementptr i32, ptr %245, i32 1
  store ptr %246, ptr %155, align 8
  store i32 1883635713, ptr %245, align 4
  %247 = load ptr, ptr %155, align 8
  %248 = load ptr, ptr %157, align 8
  %249 = icmp eq ptr %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %252 = load ptr, ptr %251, align 4
  br label %253

253:                                              ; preds = %250, %244
  %254 = phi ptr [ %252, %250 ], [ %247, %244 ]
  %255 = getelementptr i32, ptr %254, i32 1
  store ptr %255, ptr %155, align 8
  store i32 24, ptr %254, align 4
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 2) #11
  %256 = load ptr, ptr %155, align 8
  %257 = load ptr, ptr %157, align 8
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %261 = load ptr, ptr %260, align 4
  br label %262

262:                                              ; preds = %259, %253
  %263 = phi ptr [ %261, %259 ], [ %256, %253 ]
  %264 = getelementptr i32, ptr %263, i32 1
  store ptr %264, ptr %155, align 8
  store i32 1883635713, ptr %263, align 4
  %265 = load ptr, ptr %155, align 8
  %266 = load ptr, ptr %157, align 8
  %267 = icmp eq ptr %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %270 = load ptr, ptr %269, align 4
  br label %271

271:                                              ; preds = %268, %262
  %272 = phi ptr [ %270, %268 ], [ %265, %262 ]
  %273 = getelementptr i32, ptr %272, i32 1
  store ptr %273, ptr %155, align 8
  store i32 25, ptr %272, align 4
  %274 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 18
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %395, label %277

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 21
  %279 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %280 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 8
  %281 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 45
  %282 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 1
  br label %284

284:                                              ; preds = %391, %277
  %285 = phi i32 [ 0, %277 ], [ %345, %391 ]
  %286 = phi i32 [ 0, %277 ], [ %392, %391 ]
  %287 = load ptr, ptr %278, align 8
  %288 = getelementptr %struct.anon.81, ptr %287, i32 %286
  %289 = load i32, ptr %288, align 8
  switch i32 %289, label %344 [
    i32 1, label %298
    i32 3, label %290
  ]

290:                                              ; preds = %284
  %291 = load i32, ptr %18, align 8
  %292 = load ptr, ptr %9, align 8
  %293 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %292, i32 0, i32 5
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.msm_file_private, ptr %294, i32 0, i32 5
  %296 = load i32, ptr %295, align 4
  %297 = icmp eq i32 %291, %296
  br i1 %297, label %344, label %298

298:                                              ; preds = %290, %284
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 4) #11
  %299 = load ptr, ptr %155, align 8
  %300 = load ptr, ptr %157, align 8
  %301 = icmp eq ptr %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = load ptr, ptr %279, align 4
  br label %304

304:                                              ; preds = %302, %298
  %305 = phi ptr [ %303, %302 ], [ %299, %298 ]
  %306 = getelementptr i32, ptr %305, i32 1
  store ptr %306, ptr %155, align 8
  store i32 1891598339, ptr %305, align 4
  %307 = load ptr, ptr %278, align 8
  %308 = getelementptr %struct.anon.81, ptr %307, i32 %286, i32 2
  %309 = load i64, ptr %308, align 8
  %310 = trunc i64 %309 to i32
  %311 = load ptr, ptr %155, align 8
  %312 = load ptr, ptr %157, align 8
  %313 = icmp eq ptr %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %304
  %315 = load ptr, ptr %279, align 4
  br label %316

316:                                              ; preds = %314, %304
  %317 = phi ptr [ %315, %314 ], [ %311, %304 ]
  %318 = getelementptr i32, ptr %317, i32 1
  store ptr %318, ptr %155, align 8
  store i32 %310, ptr %317, align 4
  %319 = load ptr, ptr %278, align 8
  %320 = getelementptr %struct.anon.81, ptr %319, i32 %286, i32 2
  %321 = load i64, ptr %320, align 8
  %322 = lshr i64 %321, 32
  %323 = trunc i64 %322 to i32
  %324 = load ptr, ptr %155, align 8
  %325 = load ptr, ptr %157, align 8
  %326 = icmp eq ptr %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %316
  %328 = load ptr, ptr %279, align 4
  br label %329

329:                                              ; preds = %327, %316
  %330 = phi ptr [ %328, %327 ], [ %324, %316 ]
  %331 = getelementptr i32, ptr %330, i32 1
  store ptr %331, ptr %155, align 8
  store i32 %323, ptr %330, align 4
  %332 = load ptr, ptr %278, align 8
  %333 = getelementptr %struct.anon.81, ptr %332, i32 %286, i32 1
  %334 = load i32, ptr %333, align 4
  %335 = load ptr, ptr %155, align 8
  %336 = load ptr, ptr %157, align 8
  %337 = icmp eq ptr %335, %336
  br i1 %337, label %338, label %340

338:                                              ; preds = %329
  %339 = load ptr, ptr %279, align 4
  br label %340

340:                                              ; preds = %338, %329
  %341 = phi ptr [ %339, %338 ], [ %335, %329 ]
  %342 = getelementptr i32, ptr %341, i32 1
  store ptr %342, ptr %155, align 8
  store i32 %334, ptr %341, align 4
  %343 = add i32 %285, 1
  br label %344

344:                                              ; preds = %340, %290, %284
  %345 = phi i32 [ %285, %284 ], [ %285, %290 ], [ %343, %340 ]
  %346 = and i32 %345, 31
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %391

348:                                              ; preds = %344
  %349 = load i8, ptr %280, align 4, !range !16
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %391, label %351

351:                                              ; preds = %348
  %352 = load i8, ptr %281, align 1, !range !16
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %391

354:                                              ; preds = %351
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 3) #11
  %355 = load ptr, ptr %155, align 8
  %356 = load ptr, ptr %157, align 8
  %357 = icmp eq ptr %355, %356
  br i1 %357, label %358, label %360

358:                                              ; preds = %354
  %359 = load ptr, ptr %279, align 4
  br label %360

360:                                              ; preds = %358, %354
  %361 = phi ptr [ %359, %358 ], [ %355, %354 ]
  %362 = getelementptr i32, ptr %361, i32 1
  store ptr %362, ptr %155, align 8
  store i32 1885470722, ptr %361, align 4
  %363 = load i64, ptr %282, align 8
  %364 = load i32, ptr %283, align 4
  %365 = shl i32 %364, 2
  %366 = trunc i64 %363 to i32
  %367 = add i32 %365, %366
  %368 = load ptr, ptr %155, align 8
  %369 = load ptr, ptr %157, align 8
  %370 = icmp eq ptr %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %360
  %372 = load ptr, ptr %279, align 4
  br label %373

373:                                              ; preds = %371, %360
  %374 = phi ptr [ %372, %371 ], [ %368, %360 ]
  %375 = getelementptr i32, ptr %374, i32 1
  store ptr %375, ptr %155, align 8
  store i32 %367, ptr %374, align 4
  %376 = load i64, ptr %282, align 8
  %377 = load i32, ptr %283, align 4
  %378 = shl i32 %377, 2
  %379 = zext i32 %378 to i64
  %380 = add i64 %376, %379
  %381 = lshr i64 %380, 32
  %382 = trunc i64 %381 to i32
  %383 = load ptr, ptr %155, align 8
  %384 = load ptr, ptr %157, align 8
  %385 = icmp eq ptr %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %373
  %387 = load ptr, ptr %279, align 4
  br label %388

388:                                              ; preds = %386, %373
  %389 = phi ptr [ %387, %386 ], [ %383, %373 ]
  %390 = getelementptr i32, ptr %389, i32 1
  store ptr %390, ptr %155, align 8
  store i32 %382, ptr %389, align 4
  br label %391

391:                                              ; preds = %388, %351, %348, %344
  %392 = add nuw i32 %286, 1
  %393 = load i32, ptr %274, align 4
  %394 = icmp ult i32 %392, %393
  br i1 %394, label %284, label %395

395:                                              ; preds = %391, %271
  %396 = load i64, ptr %13, align 8
  %397 = or i64 %152, 16
  %398 = add i64 %397, %396
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 4) #11
  %399 = load ptr, ptr %155, align 8
  %400 = load ptr, ptr %157, align 8
  %401 = icmp eq ptr %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %404 = load ptr, ptr %403, align 4
  br label %405

405:                                              ; preds = %402, %395
  %406 = phi ptr [ %404, %402 ], [ %399, %395 ]
  %407 = getelementptr i32, ptr %406, i32 1
  store ptr %407, ptr %155, align 8
  store i32 1883144195, ptr %406, align 4
  %408 = load ptr, ptr %155, align 8
  %409 = load ptr, ptr %157, align 8
  %410 = icmp eq ptr %408, %409
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %413 = load ptr, ptr %412, align 4
  br label %414

414:                                              ; preds = %411, %405
  %415 = phi ptr [ %413, %411 ], [ %408, %405 ]
  %416 = getelementptr i32, ptr %415, i32 1
  store ptr %416, ptr %155, align 8
  store i32 1074267136, ptr %415, align 4
  %417 = trunc i64 %398 to i32
  %418 = load ptr, ptr %155, align 8
  %419 = load ptr, ptr %157, align 8
  %420 = icmp eq ptr %418, %419
  br i1 %420, label %421, label %424

421:                                              ; preds = %414
  %422 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %423 = load ptr, ptr %422, align 4
  br label %424

424:                                              ; preds = %421, %414
  %425 = phi ptr [ %423, %421 ], [ %418, %414 ]
  %426 = getelementptr i32, ptr %425, i32 1
  store ptr %426, ptr %155, align 8
  store i32 %417, ptr %425, align 4
  %427 = load ptr, ptr %155, align 8
  %428 = load ptr, ptr %157, align 8
  %429 = icmp eq ptr %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %424
  %431 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %432 = load ptr, ptr %431, align 4
  br label %433

433:                                              ; preds = %430, %424
  %434 = phi ptr [ %432, %430 ], [ %427, %424 ]
  %435 = lshr i64 %398, 32
  %436 = trunc i64 %435 to i32
  %437 = getelementptr i32, ptr %434, i32 1
  store ptr %437, ptr %155, align 8
  store i32 %436, ptr %434, align 4
  %438 = load i64, ptr %13, align 8
  %439 = add nuw nsw i64 %152, 32
  %440 = add i64 %439, %438
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 4) #11
  %441 = load ptr, ptr %155, align 8
  %442 = load ptr, ptr %157, align 8
  %443 = icmp eq ptr %441, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %433
  %445 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %446 = load ptr, ptr %445, align 4
  br label %447

447:                                              ; preds = %444, %433
  %448 = phi ptr [ %446, %444 ], [ %441, %433 ]
  %449 = getelementptr i32, ptr %448, i32 1
  store ptr %449, ptr %155, align 8
  store i32 1883144195, ptr %448, align 4
  %450 = load ptr, ptr %155, align 8
  %451 = load ptr, ptr %157, align 8
  %452 = icmp eq ptr %450, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %455 = load ptr, ptr %454, align 4
  br label %456

456:                                              ; preds = %453, %447
  %457 = phi ptr [ %455, %453 ], [ %450, %447 ]
  %458 = getelementptr i32, ptr %457, i32 1
  store ptr %458, ptr %155, align 8
  store i32 1074268544, ptr %457, align 4
  %459 = trunc i64 %440 to i32
  %460 = load ptr, ptr %155, align 8
  %461 = load ptr, ptr %157, align 8
  %462 = icmp eq ptr %460, %461
  br i1 %462, label %463, label %466

463:                                              ; preds = %456
  %464 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %465 = load ptr, ptr %464, align 4
  br label %466

466:                                              ; preds = %463, %456
  %467 = phi ptr [ %465, %463 ], [ %460, %456 ]
  %468 = getelementptr i32, ptr %467, i32 1
  store ptr %468, ptr %155, align 8
  store i32 %459, ptr %467, align 4
  %469 = load ptr, ptr %155, align 8
  %470 = load ptr, ptr %157, align 8
  %471 = icmp eq ptr %469, %470
  br i1 %471, label %472, label %475

472:                                              ; preds = %466
  %473 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %474 = load ptr, ptr %473, align 4
  br label %475

475:                                              ; preds = %472, %466
  %476 = phi ptr [ %474, %472 ], [ %469, %466 ]
  %477 = lshr i64 %440, 32
  %478 = trunc i64 %477 to i32
  %479 = getelementptr i32, ptr %476, i32 1
  store ptr %479, ptr %155, align 8
  store i32 %478, ptr %476, align 4
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 2) #11
  %480 = load ptr, ptr %155, align 8
  %481 = load ptr, ptr %157, align 8
  %482 = icmp eq ptr %480, %481
  br i1 %482, label %483, label %486

483:                                              ; preds = %475
  %484 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %485 = load ptr, ptr %484, align 4
  br label %486

486:                                              ; preds = %483, %475
  %487 = phi ptr [ %485, %483 ], [ %480, %475 ]
  %488 = getelementptr i32, ptr %487, i32 1
  store ptr %488, ptr %155, align 8
  store i32 1208517889, ptr %487, align 4
  %489 = load i32, ptr %5, align 8
  %490 = load ptr, ptr %155, align 8
  %491 = load ptr, ptr %157, align 8
  %492 = icmp eq ptr %490, %491
  br i1 %492, label %493, label %496

493:                                              ; preds = %486
  %494 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %495 = load ptr, ptr %494, align 4
  br label %496

496:                                              ; preds = %493, %486
  %497 = phi ptr [ %495, %493 ], [ %490, %486 ]
  %498 = getelementptr i32, ptr %497, i32 1
  store ptr %498, ptr %155, align 8
  store i32 %489, ptr %497, align 4
  call void @adreno_wait_ring(ptr noundef %8, i32 noundef 5) #11
  %499 = load ptr, ptr %155, align 8
  %500 = load ptr, ptr %157, align 8
  %501 = icmp eq ptr %499, %500
  br i1 %501, label %502, label %505

502:                                              ; preds = %496
  %503 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %504 = load ptr, ptr %503, align 4
  br label %505

505:                                              ; preds = %502, %496
  %506 = phi ptr [ %504, %502 ], [ %499, %496 ]
  %507 = getelementptr i32, ptr %506, i32 1
  store ptr %507, ptr %155, align 8
  store i32 1883635716, ptr %506, align 4
  %508 = load ptr, ptr %155, align 8
  %509 = load ptr, ptr %157, align 8
  %510 = icmp eq ptr %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %505
  %512 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %513 = load ptr, ptr %512, align 4
  br label %514

514:                                              ; preds = %511, %505
  %515 = phi ptr [ %513, %511 ], [ %508, %505 ]
  %516 = getelementptr i32, ptr %515, i32 1
  store ptr %516, ptr %155, align 8
  store i32 -2147483644, ptr %515, align 4
  %517 = load i64, ptr %13, align 8
  %518 = trunc i64 %517 to i32
  %519 = add i32 %518, 4
  %520 = load ptr, ptr %155, align 8
  %521 = load ptr, ptr %157, align 8
  %522 = icmp eq ptr %520, %521
  br i1 %522, label %523, label %526

523:                                              ; preds = %514
  %524 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %525 = load ptr, ptr %524, align 4
  br label %526

526:                                              ; preds = %523, %514
  %527 = phi ptr [ %525, %523 ], [ %520, %514 ]
  %528 = getelementptr i32, ptr %527, i32 1
  store ptr %528, ptr %155, align 8
  store i32 %519, ptr %527, align 4
  %529 = load i64, ptr %13, align 8
  %530 = add i64 %529, 4
  %531 = lshr i64 %530, 32
  %532 = trunc i64 %531 to i32
  %533 = load ptr, ptr %155, align 8
  %534 = load ptr, ptr %157, align 8
  %535 = icmp eq ptr %533, %534
  br i1 %535, label %536, label %539

536:                                              ; preds = %526
  %537 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %538 = load ptr, ptr %537, align 4
  br label %539

539:                                              ; preds = %536, %526
  %540 = phi ptr [ %538, %536 ], [ %533, %526 ]
  %541 = getelementptr i32, ptr %540, i32 1
  store ptr %541, ptr %155, align 8
  store i32 %532, ptr %540, align 4
  %542 = load i32, ptr %5, align 8
  %543 = load ptr, ptr %155, align 8
  %544 = load ptr, ptr %157, align 8
  %545 = icmp eq ptr %543, %544
  br i1 %545, label %546, label %549

546:                                              ; preds = %539
  %547 = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %548 = load ptr, ptr %547, align 4
  br label %549

549:                                              ; preds = %546, %539
  %550 = phi ptr [ %548, %546 ], [ %543, %539 ]
  %551 = getelementptr i32, ptr %550, i32 1
  store ptr %551, ptr %155, align 8
  store i32 %542, ptr %550, align 4
  %552 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %553 = load ptr, ptr %552, align 8
  %554 = getelementptr i8, ptr %553, i32 9728
  %555 = call i32 @msm_readl(ptr noundef %554) #11
  %556 = zext i32 %555 to i64
  %557 = load ptr, ptr %552, align 8
  %558 = getelementptr i8, ptr %557, i32 9732
  %559 = call i32 @msm_readl(ptr noundef %558) #11
  %560 = zext i32 %559 to i64
  %561 = shl nuw i64 %560, 32
  %562 = or i64 %561, %556
  %563 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_flush, i32 0, i32 1), align 4
  %564 = icmp sgt i32 %563, 0
  br i1 %564, label %565, label %578

565:                                              ; preds = %549
  %566 = tail call ptr @llvm.thread.pointer() #11
  %567 = getelementptr inbounds %struct.thread_info, ptr %566, i32 0, i32 2
  %568 = load i32, ptr %567, align 8
  %569 = lshr i32 %568, 5
  %570 = getelementptr i32, ptr @__cpu_online_mask, i32 %569
  %571 = load volatile i32, ptr %570, align 4
  %572 = and i32 %568, 31
  %573 = shl nuw i32 1, %572
  %574 = and i32 %573, %571
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %578, label %576

576:                                              ; preds = %565
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %577 = call i32 @__traceiter_msm_gpu_submit_flush(ptr noundef null, ptr noundef %1, i64 noundef %562) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %578

578:                                              ; preds = %576, %565, %549
  call fastcc void @a6xx_flush(ptr noundef %0, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 2052
  %9 = tail call i32 @msm_readl(ptr noundef %8) #11
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr i8, ptr %10, i32 220
  tail call void @msm_writel(i32 noundef %9, ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 40
  %13 = load i8, ptr %12, align 4, !range !16
  %14 = icmp eq i8 %13, 0
  %15 = and i32 %9, 1048576
  %16 = select i1 %14, i32 %9, i32 %15
  %17 = and i32 %16, 8388608
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %0) #11
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr i8, ptr %25, i32 2124
  %27 = tail call i32 @msm_readl(ptr noundef %26) #11
  %28 = and i32 %27, 16777216
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 82700
  tail call void @msm_writel(i32 noundef 1, ptr noundef %33) #11
  %34 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %37 = icmp eq ptr %24, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 11
  %42 = load i32, ptr %41, align 8
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i32 [ %40, %38 ], [ -1, %30 ]
  %45 = phi i32 [ %42, %38 ], [ 0, %30 ]
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr i8, ptr %46, i32 2112
  %48 = tail call i32 @msm_readl(ptr noundef %47) #11
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr i8, ptr %49, i32 8216
  %51 = tail call i32 @msm_readl(ptr noundef %50) #11
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr i8, ptr %52, i32 8220
  %54 = tail call i32 @msm_readl(ptr noundef %53) #11
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr i8, ptr %55, i32 9376
  %57 = tail call i32 @msm_readl(ptr noundef %56) #11
  %58 = zext i32 %57 to i64
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr i8, ptr %59, i32 9380
  %61 = tail call i32 @msm_readl(ptr noundef %60) #11
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = or i64 %63, %58
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr i8, ptr %65, i32 9384
  %67 = tail call i32 @msm_readl(ptr noundef %66) #11
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr i8, ptr %68, i32 9388
  %70 = tail call i32 @msm_readl(ptr noundef %69) #11
  %71 = zext i32 %70 to i64
  %72 = load ptr, ptr %6, align 8
  %73 = getelementptr i8, ptr %72, i32 9392
  %74 = tail call i32 @msm_readl(ptr noundef %73) #11
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = or i64 %76, %71
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr i8, ptr %78, i32 9396
  %80 = tail call i32 @msm_readl(ptr noundef %79) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28, i32 noundef %44, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54, i64 noundef %64, i32 noundef %67, i64 noundef %77, i32 noundef %80) #11
  %81 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 33
  %82 = tail call i32 @del_timer(ptr noundef %81) #11
  %83 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 39
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 36
  %86 = tail call zeroext i1 @kthread_queue_work(ptr noundef %84, ptr noundef %85) #11
  br label %87

87:                                               ; preds = %43, %19, %1
  %88 = and i32 %16, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs, ptr noundef nonnull @__func__.a6xx_irq) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.21) #12
  br label %97

97:                                               ; preds = %93, %90, %87
  %98 = and i32 %16, 512
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %188, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %6, align 8
  %102 = getelementptr i8, ptr %101, i32 8332
  %103 = tail call i32 @msm_readl(ptr noundef %102) #11
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr i8, ptr %107, i32 9248
  tail call void @msm_writel(i32 noundef 1, ptr noundef %108) #11
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr i8, ptr %109, i32 9252
  %111 = tail call i32 @msm_readl(ptr noundef %110) #11
  %112 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.29, i32 noundef %111) #12
  br label %118

118:                                              ; preds = %114, %106, %100
  %119 = and i32 %103, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.30, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #11
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.platform_device, ptr %126, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.31) #12
  br label %128

128:                                              ; preds = %124, %121, %118
  %129 = and i32 %103, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.32, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.platform_device, ptr %136, i32 0, i32 3
  %138 = load ptr, ptr %6, align 8
  %139 = getelementptr i8, ptr %138, i32 8324
  %140 = tail call i32 @msm_readl(ptr noundef %139) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.33, i32 noundef %140) #12
  br label %141

141:                                              ; preds = %134, %131, %128
  %142 = and i32 %103, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %6, align 8
  %146 = getelementptr i8, ptr %145, i32 8336
  %147 = tail call i32 @msm_readl(ptr noundef %146) #11
  %148 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.34, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #11
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.platform_device, ptr %152, i32 0, i32 3
  %154 = and i32 %147, 1048576
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, ptr @.str.37, ptr @.str.36
  %157 = and i32 %147, 262143
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.35, ptr noundef nonnull %156, i32 noundef %157, i32 noundef %147) #12
  br label %158

158:                                              ; preds = %150, %144, %141
  %159 = and i32 %103, 32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.38, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #11
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr inbounds %struct.platform_device, ptr %166, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.39) #12
  br label %168

168:                                              ; preds = %164, %161, %158
  %169 = and i32 %103, 64
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %168
  %172 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.40, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #11
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds %struct.platform_device, ptr %176, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.41) #12
  br label %178

178:                                              ; preds = %174, %171, %168
  %179 = and i32 %103, 128
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %178
  %182 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.42, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #11
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds %struct.platform_device, ptr %186, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.43) #12
  br label %188

188:                                              ; preds = %184, %181, %178, %97
  %189 = and i32 %16, 64
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %188
  %192 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs.22, ptr noundef nonnull @__func__.a6xx_irq) #11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.platform_device, ptr %196, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.23) #12
  br label %198

198:                                              ; preds = %194, %191, %188
  %199 = and i32 %16, 4194304
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %198
  %202 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs.24, ptr noundef nonnull @__func__.a6xx_irq) #11
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %206 = load ptr, ptr %205, align 8
  %207 = getelementptr inbounds %struct.platform_device, ptr %206, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.25) #12
  br label %208

208:                                              ; preds = %204, %201, %198
  %209 = and i32 %16, 16777216
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %208
  %212 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs.26, ptr noundef nonnull @__func__.a6xx_irq) #11
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %216 = load ptr, ptr %215, align 8
  %217 = getelementptr inbounds %struct.platform_device, ptr %216, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.27) #12
  br label %218

218:                                              ; preds = %214, %211, %208
  %219 = icmp eq i32 %15, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %218
  tail call void @msm_gpu_retire(ptr noundef %0) #11
  br label %221

221:                                              ; preds = %220, %218
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @a6xx_active_ring(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a6xx_recover(ptr noundef %0) #0 {
  tail call void @adreno_dump_info(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 8716
  %8 = tail call i32 @msm_readl(ptr noundef %7) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef %8) #11
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr i8, ptr %11, i32 8720
  %13 = tail call i32 @msm_readl(ptr noundef %12) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef %13) #11
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 8724
  %18 = tail call i32 @msm_readl(ptr noundef %17) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 2, i32 noundef %18) #11
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr i8, ptr %21, i32 8728
  %23 = tail call i32 @msm_readl(ptr noundef %22) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 3, i32 noundef %23) #11
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr i8, ptr %26, i32 8732
  %28 = tail call i32 @msm_readl(ptr noundef %27) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef %28) #11
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr i8, ptr %31, i32 8736
  %33 = tail call i32 @msm_readl(ptr noundef %32) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %30, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 5, i32 noundef %33) #11
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr i8, ptr %36, i32 8740
  %38 = tail call i32 @msm_readl(ptr noundef %37) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 6, i32 noundef %38) #11
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr i8, ptr %41, i32 8744
  %43 = tail call i32 @msm_readl(ptr noundef %42) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 7, i32 noundef %43) #11
  %44 = load i8, ptr @hang_debug, align 1, !range !16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %1
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr i8, ptr %49, i32 2112
  %51 = tail call i32 @msm_readl(ptr noundef %50) #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %48, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.46, i32 noundef %51) #11
  tail call void @adreno_dump(ptr noundef %0) #11
  br label %52

52:                                               ; preds = %46, %1
  %53 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 82700
  tail call void @msm_writel(i32 noundef 0, ptr noundef %55) #11
  %56 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %0) #11
  %61 = load ptr, ptr %56, align 4
  %62 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %0) #11
  %65 = tail call i32 @msm_gpu_hw_init(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_gpu_busy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_get_if_active(ptr noundef %3, i1 noundef zeroext false) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 82192
  %10 = tail call i32 @msm_readl(ptr noundef %9) #11
  %11 = zext i32 %10 to i64
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 82196
  %14 = tail call i32 @msm_readl(ptr noundef %13) #11
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = sub i64 %17, %19
  %21 = mul i64 %20, 10
  %22 = lshr i64 %21, 6
  %23 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %22, i64 6148914691236517205) #13, !srcloc !23
  %24 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %22, i64 %23) #13, !srcloc !24
  store i64 %17, ptr %18, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 5) #11
  %27 = icmp ugt i64 %24, 4294967295
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 1642, i32 noundef 9, ptr noundef null) #11
  br label %31

29:                                               ; preds = %6
  %30 = trunc i64 %24 to i32
  br label %31

31:                                               ; preds = %29, %28, %1
  %32 = phi i32 [ -1, %28 ], [ %30, %29 ], [ 0, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a6xx_gpu_state_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gpu_state_put(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_get_freq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a6xx_gpu_set_freq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  tail call void @mutex_lock(ptr noundef %3) #11
  tail call void @a6xx_gmu_set_freq(ptr noundef %0, ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @a6xx_create_address_space(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @adreno_set_llc_attributes(ptr noundef nonnull %3) #11
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %14 = tail call ptr @msm_iommu_new(ptr noundef %13, ptr noundef nonnull %3) #11
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @iommu_domain_free(ptr noundef nonnull %3) #11
  br label %33

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.iommu_domain, ptr %3, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 16777216)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iommu_domain, ptr %3, i32 0, i32 5, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = sub nsw i64 1, %21
  %26 = add nsw i64 %25, %24
  %27 = tail call ptr @msm_gem_address_space_create(ptr noundef %14, ptr noundef nonnull @.str.48, i64 noundef %21, i64 noundef %26) #11
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %14) #11
  br label %33

33:                                               ; preds = %29, %17, %16, %2
  %34 = phi ptr [ %14, %16 ], [ null, %2 ], [ %27, %29 ], [ %27, %17 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @a6xx_create_private_address_space(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_gem_address_space, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @msm_iommu_pagetable_create(ptr noundef %5) #11
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @msm_gem_address_space_create(ptr noundef %6, ptr noundef nonnull @.str.48, i64 noundef 4294967296, i64 noundef 8589934591) #11
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %6, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_get_rptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 45
  %4 = load i8, ptr %3, align 1, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i32, ptr %12, i32 %14
  %16 = load i32, ptr %15, align 4
  br label %24

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 8216
  %21 = tail call i32 @msm_readl(ptr noundef %20) #11
  %22 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 13
  %23 = load ptr, ptr %22, align 8
  store volatile i32 %21, ptr %23, align 8
  br label %24

24:                                               ; preds = %17, %10
  %25 = phi i32 [ %16, %10 ], [ %21, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_get_timestamp(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = tail call i32 @a6xx_gmu_set_oob(ptr noundef %3, i32 noundef 3) #11
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 9728
  %9 = tail call i32 @msm_readl(ptr noundef %8) #11
  %10 = zext i32 %9 to i64
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 9732
  %13 = tail call i32 @msm_readl(ptr noundef %12) #11
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %10
  store i64 %16, ptr %1, align 8
  tail call void @a6xx_gmu_clear_oob(ptr noundef %3, i32 noundef 3) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_set_oob(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_flush(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 8
  %4 = load i8, ptr %3, align 4, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 45
  %8 = load i8, ptr %7, align 1, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 3) #11
  %11 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %12, %10 ]
  %21 = getelementptr i32, ptr %20, i32 1
  store ptr %21, ptr %11, align 8
  store i32 1885470722, ptr %20, align 4
  %22 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 6
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 2
  %27 = trunc i64 %23 to i32
  %28 = add i32 %26, %27
  %29 = load ptr, ptr %11, align 8
  %30 = load ptr, ptr %13, align 8
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %19
  %36 = phi ptr [ %34, %32 ], [ %29, %19 ]
  %37 = getelementptr i32, ptr %36, i32 1
  store ptr %37, ptr %11, align 8
  store i32 %28, ptr %36, align 4
  %38 = load i64, ptr %22, align 8
  %39 = load i32, ptr %24, align 4
  %40 = shl i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = add i64 %38, %41
  %43 = lshr i64 %42, 32
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %11, align 8
  %46 = load ptr, ptr %13, align 8
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = phi ptr [ %50, %48 ], [ %45, %35 ]
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %11, align 8
  store i32 %44, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %6, %2
  %55 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 16
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #11
  %57 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 5
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = ptrtoint ptr %58 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  %65 = ashr exact i32 %64, 2
  %66 = srem i32 %65, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %56) #11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %67 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr i8, ptr %68, i32 8220
  tail call void @msm_writel(i32 noundef %66, ptr noundef %69) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @a6xx_idle(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i1 @adreno_idle(ptr noundef %0, ptr noundef %1) #11
  br i1 %3, label %4, label %41

4:                                                ; preds = %2
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %8 = sub i32 -100, %5
  br label %9

9:                                                ; preds = %22, %4
  %10 = tail call zeroext i1 @a6xx_gmu_isidle(ptr noundef %6) #11
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr i8, ptr %12, i32 2112
  %14 = tail call i32 @msm_readl(ptr noundef %13) #11
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr i8, ptr %17, i32 2052
  %19 = tail call i32 @msm_readl(ptr noundef %18) #11
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %16, %11, %9
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = add i32 %8, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %9, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8
  %28 = tail call ptr @llvm.returnaddress(i32 0)
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr i8, ptr %29, i32 2112
  %31 = tail call i32 @msm_readl(ptr noundef %30) #11
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr i8, ptr %32, i32 2052
  %34 = tail call i32 @msm_readl(ptr noundef %33) #11
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr i8, ptr %35, i32 8216
  %37 = tail call i32 @msm_readl(ptr noundef %36) #11
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr i8, ptr %38, i32 8220
  %40 = tail call i32 @msm_readl(ptr noundef %39) #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef %27, ptr noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %40) #11
  br label %41

41:                                               ; preds = %26, %16, %2
  %42 = phi i1 [ false, %26 ], [ false, %2 ], [ true, %16 ]
  ret i1 %42
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_gmu_clear_oob(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_fw_create_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_zap_shader_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a6xx_gmu_isidle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_iommu_pagetable_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_submit_flush(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_gmu_set_freq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_set_llc_attributes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_pagetable_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156801557, i64 2156802060, i64 2156801594, i64 2156801650, i64 2156801684, i64 2156801708, i64 2156801749, i64 2156801770, i64 2156801798, i64 2156801832}
!11 = !{i64 2148326095}
!12 = !{i64 723029, i64 2148213000, i64 2148213026, i64 2148213073, i64 2148213095, i64 2148213123, i64 2148213143}
!13 = !{i64 2148228230, i64 2148228262, i64 2148228291, i64 2148228325, i64 2148228356, i64 2148228379}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148959621}
!16 = !{i8 0, i8 2}
!17 = !{i64 2155802463}
!18 = !{i64 2155802615}
!19 = !{i64 2155814897}
!20 = !{i64 2155815047}
!21 = !{i64 2155703852}
!22 = !{i64 2155704030}
!23 = !{i64 588151, i64 588178}
!24 = !{i64 588491, i64 588518, i64 588552, i64 588573}
!25 = !{i64 2156649650}
