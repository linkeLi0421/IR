; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a2xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a2xx_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_gpu_perfcntr = type { i32, i32, i32, ptr }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
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
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.93 = type { i8, i64 }
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
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.84], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.84 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
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
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"no a2xx device\0A\00", align 1
@perfcntrs = internal constant [0 x %struct.msm_gpu_perfcntr] zeroinitializer, align 4
@a200_registers = internal constant [201 x i32] [i32 0, i32 2, i32 4, i32 11, i32 59, i32 61, i32 64, i32 68, i32 70, i32 71, i32 448, i32 449, i32 451, i32 456, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 499, i32 502, i32 503, i32 508, i32 511, i32 913, i32 914, i32 923, i32 926, i32 946, i32 949, i32 951, i32 951, i32 1016, i32 1019, i32 1088, i32 1088, i32 1091, i32 1092, i32 1099, i32 1099, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1115, i32 1151, i32 1151, i32 1400, i32 1415, i32 1481, i32 1481, i32 1488, i32 1488, i32 1537, i32 1540, i32 1542, i32 1545, i32 1547, i32 1550, i32 1555, i32 1556, i32 2601, i32 2603, i32 2607, i32 2609, i32 2624, i32 2627, i32 2629, i32 2629, i32 2638, i32 2639, i32 3116, i32 3116, i32 3120, i32 3120, i32 3128, i32 3132, i32 3136, i32 3136, i32 3140, i32 3140, i32 3200, i32 3206, i32 3208, i32 3220, i32 3225, i32 3226, i32 3236, i32 3237, i32 3328, i32 3331, i32 3334, i32 3334, i32 3336, i32 3339, i32 3380, i32 3381, i32 3502, i32 3521, i32 3528, i32 3540, i32 3544, i32 3545, i32 3584, i32 3584, i32 3586, i32 3588, i32 3607, i32 3614, i32 3776, i32 3785, i32 3787, i32 3788, i32 3792, i32 3792, i32 3796, i32 3799, i32 3808, i32 3810, i32 3841, i32 3842, i32 3852, i32 3852, i32 3854, i32 3858, i32 3878, i32 3882, i32 3884, i32 3884, i32 8192, i32 8194, i32 8198, i32 8207, i32 8320, i32 8322, i32 8448, i32 8457, i32 8460, i32 8468, i32 8576, i32 8580, i32 8693, i32 8695, i32 8704, i32 8712, i32 8832, i32 8835, i32 8851, i32 8852, i32 8960, i32 8968, i32 8978, i32 8978, i32 8982, i32 8989, i32 8996, i32 8998, i32 9088, i32 9091, i32 9216, i32 9218, i32 9222, i32 9231, i32 9344, i32 9346, i32 9472, i32 9481, i32 9484, i32 9492, i32 9600, i32 9604, i32 9717, i32 9719, i32 9728, i32 9736, i32 9856, i32 9859, i32 9875, i32 9876, i32 9984, i32 9992, i32 10002, i32 10002, i32 10006, i32 10013, i32 10020, i32 10022, i32 10112, i32 10115, i32 16384, i32 16387, i32 18432, i32 18437, i32 18688, i32 18688, i32 18696, i32 18696, i32 -1], align 4
@a225_registers = internal constant [219 x i32] [i32 0, i32 2, i32 4, i32 11, i32 59, i32 61, i32 64, i32 68, i32 70, i32 71, i32 316, i32 316, i32 320, i32 335, i32 448, i32 449, i32 451, i32 456, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 499, i32 502, i32 503, i32 508, i32 511, i32 913, i32 914, i32 923, i32 926, i32 946, i32 949, i32 951, i32 951, i32 1016, i32 1019, i32 1088, i32 1088, i32 1091, i32 1092, i32 1099, i32 1099, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1115, i32 1151, i32 1151, i32 1400, i32 1415, i32 1481, i32 1481, i32 1488, i32 1488, i32 1537, i32 1540, i32 1542, i32 1545, i32 1547, i32 1550, i32 1555, i32 1556, i32 2601, i32 2603, i32 2607, i32 2609, i32 2624, i32 2624, i32 2626, i32 2627, i32 2629, i32 2629, i32 2638, i32 2639, i32 3073, i32 3101, i32 3120, i32 3120, i32 3128, i32 3129, i32 3132, i32 3132, i32 3200, i32 3201, i32 3208, i32 3219, i32 3328, i32 3331, i32 3333, i32 3334, i32 3336, i32 3339, i32 3380, i32 3381, i32 3502, i32 3521, i32 3528, i32 3540, i32 3544, i32 3545, i32 3584, i32 3584, i32 3586, i32 3588, i32 3607, i32 3614, i32 3776, i32 3785, i32 3787, i32 3788, i32 3792, i32 3792, i32 3796, i32 3799, i32 3808, i32 3810, i32 3841, i32 3842, i32 8192, i32 8207, i32 8320, i32 8322, i32 8448, i32 8457, i32 8460, i32 8468, i32 8576, i32 8580, i32 8693, i32 8695, i32 8704, i32 8706, i32 8708, i32 8710, i32 8712, i32 8720, i32 8736, i32 8738, i32 8832, i32 8834, i32 8852, i32 8852, i32 8855, i32 8855, i32 8960, i32 8970, i32 8978, i32 8978, i32 8981, i32 8982, i32 8984, i32 8989, i32 8996, i32 8998, i32 9024, i32 9047, i32 9056, i32 9056, i32 9088, i32 9091, i32 9216, i32 9231, i32 9344, i32 9346, i32 9472, i32 9481, i32 9484, i32 9492, i32 9600, i32 9604, i32 9717, i32 9719, i32 9728, i32 9730, i32 9732, i32 9734, i32 9736, i32 9744, i32 9760, i32 9762, i32 9856, i32 9858, i32 9876, i32 9876, i32 9879, i32 9879, i32 9984, i32 9994, i32 10002, i32 10002, i32 10005, i32 10006, i32 10008, i32 10013, i32 10020, i32 10022, i32 10048, i32 10071, i32 10080, i32 10080, i32 10112, i32 10115, i32 16384, i32 16387, i32 18432, i32 18438, i32 18440, i32 18440, i32 18688, i32 18688, i32 18696, i32 18696, i32 -1], align 4
@a220_registers = internal constant [205 x i32] [i32 0, i32 2, i32 4, i32 11, i32 59, i32 61, i32 64, i32 68, i32 70, i32 71, i32 448, i32 449, i32 451, i32 456, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 499, i32 502, i32 503, i32 508, i32 511, i32 913, i32 914, i32 923, i32 926, i32 946, i32 949, i32 951, i32 951, i32 1016, i32 1019, i32 1088, i32 1088, i32 1091, i32 1092, i32 1099, i32 1099, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1115, i32 1151, i32 1151, i32 1400, i32 1415, i32 1481, i32 1481, i32 1488, i32 1488, i32 1537, i32 1540, i32 1542, i32 1545, i32 1547, i32 1550, i32 1555, i32 1556, i32 2601, i32 2603, i32 2607, i32 2609, i32 2624, i32 2624, i32 2626, i32 2627, i32 2629, i32 2629, i32 2638, i32 2639, i32 3120, i32 3120, i32 3128, i32 3129, i32 3132, i32 3132, i32 3200, i32 3201, i32 3208, i32 3219, i32 3328, i32 3331, i32 3333, i32 3334, i32 3336, i32 3339, i32 3380, i32 3381, i32 3502, i32 3521, i32 3528, i32 3540, i32 3544, i32 3545, i32 3584, i32 3584, i32 3586, i32 3588, i32 3607, i32 3614, i32 3776, i32 3785, i32 3787, i32 3788, i32 3792, i32 3792, i32 3796, i32 3799, i32 3808, i32 3810, i32 3841, i32 3842, i32 8192, i32 8194, i32 8198, i32 8207, i32 8320, i32 8322, i32 8448, i32 8450, i32 8452, i32 8457, i32 8460, i32 8468, i32 8576, i32 8580, i32 8693, i32 8695, i32 8704, i32 8706, i32 8708, i32 8708, i32 8712, i32 8712, i32 8832, i32 8834, i32 8852, i32 8852, i32 8960, i32 8968, i32 8969, i32 8970, i32 8978, i32 8978, i32 8982, i32 8982, i32 8984, i32 8989, i32 8996, i32 8998, i32 9088, i32 9091, i32 9216, i32 9218, i32 9222, i32 9231, i32 9344, i32 9346, i32 9472, i32 9474, i32 9476, i32 9481, i32 9484, i32 9492, i32 9600, i32 9604, i32 9717, i32 9719, i32 9728, i32 9730, i32 9732, i32 9734, i32 9736, i32 9736, i32 9856, i32 9858, i32 9876, i32 9876, i32 9984, i32 9992, i32 10002, i32 10002, i32 10006, i32 10006, i32 10008, i32 10013, i32 10020, i32 10022, i32 10112, i32 10115, i32 16384, i32 16387, i32 18432, i32 18437, i32 18688, i32 18688, i32 18696, i32 18696, i32 -1], align 4
@funcs = internal constant %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a2xx_hw_init, ptr @msm_gpu_pm_suspend, ptr @msm_gpu_pm_resume, ptr @a2xx_submit, ptr null, ptr @a2xx_irq, ptr @adreno_active_ring, ptr @a2xx_recover, ptr @a2xx_destroy, ptr @adreno_show, ptr null, ptr null, ptr @a2xx_gpu_state_get, ptr @adreno_gpu_state_put, ptr null, ptr null, ptr @a2xx_create_address_space, ptr null, ptr @a2xx_get_rptr }, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"No memory protection without MMU\0A\00", align 1
@allow_vram_carveout = external dso_local local_unnamed_addr global i8, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"loading PM4 ucode version: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"loading PFP ucode version: %x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: timeout waiting for GPU to idle!\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"MH_INT: %08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"MMU_PAGE_FAULT: %08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"CP_INT: %08X\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"RBBM_INT: %08X\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", align 1
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"status:   %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @a2xx_gpu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #5
  br label %42

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 672) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 11
  store ptr @perfcntrs, ptr %15, align 4
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 12
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.adreno_gpu, ptr %12, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 210
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.adreno_gpu, ptr %12, i32 0, i32 6
  store ptr @a200_registers, ptr %21, align 4
  br label %27

22:                                               ; preds = %14
  %23 = icmp eq i32 %18, 225
  %24 = getelementptr inbounds %struct.adreno_gpu, ptr %12, i32 0, i32 6
  br i1 %23, label %25, label %26

25:                                               ; preds = %22
  store ptr @a225_registers, ptr %24, align 4
  br label %27

26:                                               ; preds = %22
  store ptr @a220_registers, ptr %24, align 4
  br label %27

27:                                               ; preds = %26, %25, %20
  %28 = tail call i32 @adreno_gpu_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull @funcs, i32 noundef 1) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 24
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1) #5
  %37 = load i8, ptr @allow_vram_carveout, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %27
  %40 = phi i32 [ %28, %27 ], [ -6, %34 ]
  %41 = load ptr, ptr %12, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %41) #7
  tail call void @adreno_gpu_cleanup(ptr noundef nonnull %12) #7
  tail call void @kfree(ptr noundef nonnull %12) #7
  br label %42

42:                                               ; preds = %39, %10, %7
  %43 = phi i32 [ %40, %39 ], [ -12, %10 ], [ -6, %7 ]
  %44 = inttoptr i32 %43 to ptr
  br label %45

45:                                               ; preds = %42, %34, %30
  %46 = phi ptr [ %44, %42 ], [ %12, %34 ], [ %12, %30 ]
  ret ptr %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a2xx_destroy(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %2) #7
  tail call void @adreno_gpu_cleanup(ptr noundef %0) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a2xx_hw_init(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.msm_gem_address_space, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @msm_gpummu_params(ptr noundef %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %8 = load ptr, ptr %0, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 2008
  call void @msm_writel(i32 noundef 268435456, ptr noundef %11) #7
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr i8, ptr %12, i32 3696
  call void @msm_writel(i32 noundef -2, ptr noundef %13) #7
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr i8, ptr %14, i32 3700
  call void @msm_writel(i32 noundef -1, ptr noundef %15) #7
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr i8, ptr %16, i32 240
  call void @msm_writel(i32 noundef -1, ptr noundef %17) #7
  call void @msleep(i32 noundef 30) #7
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr i8, ptr %18, i32 240
  call void @msm_writel(i32 noundef 0, ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 225
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr i8, ptr %24, i32 13316
  call void @msm_writel(i32 noundef 402653184, ptr noundef %25) #7
  br label %26

26:                                               ; preds = %23, %1
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr i8, ptr %27, i32 236
  call void @msm_writel(i32 noundef 17474, ptr noundef %28) #7
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr i8, ptr %29, i32 280
  call void @msm_writel(i32 noundef 0, ptr noundef %30) #7
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr i8, ptr %31, i32 284
  call void @msm_writel(i32 noundef -4096, ptr noundef %32) #7
  %33 = load ptr, ptr %9, align 8
  %34 = getelementptr i8, ptr %33, i32 256
  call void @msm_writel(i32 noundef 22369617, ptr noundef %34) #7
  %35 = load ptr, ptr %9, align 8
  %36 = getelementptr i8, ptr %35, i32 260
  call void @msm_writel(i32 noundef 16781311, ptr noundef %36) #7
  %37 = load i32, ptr %2, align 4
  %38 = load ptr, ptr %9, align 8
  %39 = getelementptr i8, ptr %38, i32 264
  call void @msm_writel(i32 noundef %37, ptr noundef %39) #7
  %40 = load i32, ptr %3, align 4
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr i8, ptr %41, i32 272
  call void @msm_writel(i32 noundef %40, ptr noundef %42) #7
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr i8, ptr %43, i32 276
  call void @msm_writel(i32 noundef 3, ptr noundef %44) #7
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr i8, ptr %45, i32 10496
  call void @msm_writel(i32 noundef 130606480, ptr noundef %46) #7
  %47 = load i32, ptr %20, align 4
  %48 = icmp ult i32 %47, 210
  br i1 %48, label %52, label %49

49:                                               ; preds = %26
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr i8, ptr %50, i32 10576
  call void @msm_writel(i32 noundef 208647, ptr noundef %51) #7
  br label %52

52:                                               ; preds = %49, %26
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr i8, ptr %53, i32 34780
  call void @msm_writel(i32 noundef 0, ptr noundef %54) #7
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr i8, ptr %55, i32 34776
  call void @msm_writel(i32 noundef 0, ptr noundef %56) #7
  %57 = load ptr, ptr %9, align 8
  %58 = getelementptr i8, ptr %57, i32 3696
  call void @msm_writel(i32 noundef 0, ptr noundef %58) #7
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr i8, ptr %59, i32 3700
  call void @msm_writel(i32 noundef 0, ptr noundef %60) #7
  %61 = load ptr, ptr %9, align 8
  %62 = getelementptr i8, ptr %61, i32 3692
  call void @msm_writel(i32 noundef 524288, ptr noundef %62) #7
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr i8, ptr %63, i32 3792
  call void @msm_writel(i32 noundef 1, ptr noundef %64) #7
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr i8, ptr %65, i32 1992
  call void @msm_writel(i32 noundef -813694976, ptr noundef %66) #7
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr i8, ptr %67, i32 13520
  call void @msm_writel(i32 noundef 0, ptr noundef %68) #7
  %69 = load ptr, ptr %9, align 8
  %70 = getelementptr i8, ptr %69, i32 10504
  call void @msm_writel(i32 noundef 7, ptr noundef %70) #7
  %71 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 3
  %72 = load i32, ptr %71, align 8
  switch i32 %72, label %73 [
    i32 131072, label %76
    i32 262144, label %74
    i32 524288, label %75
  ]

73:                                               ; preds = %52
  br label %76

74:                                               ; preds = %52
  br label %76

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75, %74, %73, %52
  %77 = phi i32 [ 3, %52 ], [ 6, %73 ], [ 4, %74 ], [ 5, %75 ]
  %78 = load ptr, ptr %9, align 8
  %79 = getelementptr i8, ptr %78, i32 15368
  call void @msm_writel(i32 noundef %77, ptr noundef %79) #7
  %80 = call i32 @adreno_hw_init(ptr noundef %0) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %348

82:                                               ; preds = %76
  %83 = load ptr, ptr %9, align 8
  %84 = getelementptr i8, ptr %83, i32 1796
  call void @msm_writel(i32 noundef 134218252, ptr noundef %84) #7
  %85 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.msm_ringbuffer, ptr %86, i32 0, i32 10
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load ptr, ptr %9, align 8
  %91 = getelementptr i8, ptr %90, i32 1792
  call void @msm_writel(i32 noundef %89, ptr noundef %91) #7
  %92 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 8
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.firmware, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %93, align 4
  %97 = getelementptr i32, ptr %95, i32 1
  %98 = load i32, ptr %97, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %98) #7
  %99 = load ptr, ptr %9, align 8
  %100 = getelementptr i8, ptr %99, i32 2032
  call void @msm_writel(i32 noundef 33554432, ptr noundef %100) #7
  %101 = load ptr, ptr %9, align 8
  %102 = getelementptr i8, ptr %101, i32 2016
  call void @msm_writel(i32 noundef 0, ptr noundef %102) #7
  %103 = icmp ugt i32 %96, 7
  br i1 %103, label %104, label %114

104:                                              ; preds = %82
  %105 = lshr i32 %96, 2
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i32 [ %112, %106 ], [ 1, %104 ]
  %108 = getelementptr i32, ptr %95, i32 %107
  %109 = load i32, ptr %108, align 4
  %110 = load ptr, ptr %9, align 8
  %111 = getelementptr i8, ptr %110, i32 2024
  call void @msm_writel(i32 noundef %109, ptr noundef %111) #7
  %112 = add nuw nsw i32 %107, 1
  %113 = icmp eq i32 %112, %105
  br i1 %113, label %114, label %106

114:                                              ; preds = %106, %82
  %115 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.firmware, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %116, align 4
  %120 = getelementptr i32, ptr %118, i32 5
  %121 = load i32, ptr %120, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %121) #7
  %122 = load ptr, ptr %9, align 8
  %123 = getelementptr i8, ptr %122, i32 768
  call void @msm_writel(i32 noundef 0, ptr noundef %123) #7
  %124 = icmp ugt i32 %119, 7
  br i1 %124, label %125, label %135

125:                                              ; preds = %114
  %126 = lshr i32 %119, 2
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi i32 [ %133, %127 ], [ 1, %125 ]
  %129 = getelementptr i32, ptr %118, i32 %128
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %9, align 8
  %132 = getelementptr i8, ptr %131, i32 772
  call void @msm_writel(i32 noundef %130, ptr noundef %132) #7
  %133 = add nuw nsw i32 %128, 1
  %134 = icmp eq i32 %133, %126
  br i1 %134, label %135, label %127

135:                                              ; preds = %127, %114
  %136 = load ptr, ptr %9, align 8
  %137 = getelementptr i8, ptr %136, i32 1876
  call void @msm_writel(i32 noundef 788484, ptr noundef %137) #7
  %138 = load ptr, ptr %9, align 8
  %139 = getelementptr i8, ptr %138, i32 2008
  call void @msm_writel(i32 noundef 0, ptr noundef %139) #7
  %140 = load ptr, ptr %85, align 4
  call void @adreno_wait_ring(ptr noundef %140, i32 noundef 19) #7
  %141 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 6
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 4
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  br label %149

149:                                              ; preds = %146, %135
  %150 = phi ptr [ %148, %146 ], [ %142, %135 ]
  %151 = getelementptr i32, ptr %150, i32 1
  store ptr %151, ptr %141, align 8
  store i32 -1072609280, ptr %150, align 4
  %152 = load ptr, ptr %141, align 8
  %153 = load ptr, ptr %143, align 8
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %149
  %159 = phi ptr [ %157, %155 ], [ %152, %149 ]
  %160 = getelementptr i32, ptr %159, i32 1
  store ptr %160, ptr %141, align 8
  store i32 1023, ptr %159, align 4
  %161 = load ptr, ptr %141, align 8
  %162 = load ptr, ptr %143, align 8
  %163 = icmp eq ptr %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  br label %167

167:                                              ; preds = %164, %158
  %168 = phi ptr [ %166, %164 ], [ %161, %158 ]
  %169 = getelementptr i32, ptr %168, i32 1
  store ptr %169, ptr %141, align 8
  store i32 0, ptr %168, align 4
  %170 = load ptr, ptr %141, align 8
  %171 = load ptr, ptr %143, align 8
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %175 = load ptr, ptr %174, align 4
  br label %176

176:                                              ; preds = %173, %167
  %177 = phi ptr [ %175, %173 ], [ %170, %167 ]
  %178 = getelementptr i32, ptr %177, i32 1
  store ptr %178, ptr %141, align 8
  store i32 0, ptr %177, align 4
  %179 = load ptr, ptr %141, align 8
  %180 = load ptr, ptr %143, align 8
  %181 = icmp eq ptr %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %184 = load ptr, ptr %183, align 4
  br label %185

185:                                              ; preds = %182, %176
  %186 = phi ptr [ %184, %182 ], [ %179, %176 ]
  %187 = getelementptr i32, ptr %186, i32 1
  store ptr %187, ptr %141, align 8
  store i32 0, ptr %186, align 4
  %188 = load ptr, ptr %141, align 8
  %189 = load ptr, ptr %143, align 8
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  br label %194

194:                                              ; preds = %191, %185
  %195 = phi ptr [ %193, %191 ], [ %188, %185 ]
  %196 = getelementptr i32, ptr %195, i32 1
  store ptr %196, ptr %141, align 8
  store i32 128, ptr %195, align 4
  %197 = load ptr, ptr %141, align 8
  %198 = load ptr, ptr %143, align 8
  %199 = icmp eq ptr %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %202 = load ptr, ptr %201, align 4
  br label %203

203:                                              ; preds = %200, %194
  %204 = phi ptr [ %202, %200 ], [ %197, %194 ]
  %205 = getelementptr i32, ptr %204, i32 1
  store ptr %205, ptr %141, align 8
  store i32 256, ptr %204, align 4
  %206 = load ptr, ptr %141, align 8
  %207 = load ptr, ptr %143, align 8
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %211 = load ptr, ptr %210, align 4
  br label %212

212:                                              ; preds = %209, %203
  %213 = phi ptr [ %211, %209 ], [ %206, %203 ]
  %214 = getelementptr i32, ptr %213, i32 1
  store ptr %214, ptr %141, align 8
  store i32 384, ptr %213, align 4
  %215 = load ptr, ptr %141, align 8
  %216 = load ptr, ptr %143, align 8
  %217 = icmp eq ptr %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  br label %221

221:                                              ; preds = %218, %212
  %222 = phi ptr [ %220, %218 ], [ %215, %212 ]
  %223 = getelementptr i32, ptr %222, i32 1
  store ptr %223, ptr %141, align 8
  store i32 512, ptr %222, align 4
  %224 = load ptr, ptr %141, align 8
  %225 = load ptr, ptr %143, align 8
  %226 = icmp eq ptr %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  br label %230

230:                                              ; preds = %227, %221
  %231 = phi ptr [ %229, %227 ], [ %224, %221 ]
  %232 = getelementptr i32, ptr %231, i32 1
  store ptr %232, ptr %141, align 8
  store i32 640, ptr %231, align 4
  %233 = load ptr, ptr %141, align 8
  %234 = load ptr, ptr %143, align 8
  %235 = icmp eq ptr %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %238 = load ptr, ptr %237, align 4
  br label %239

239:                                              ; preds = %236, %230
  %240 = phi ptr [ %238, %236 ], [ %233, %230 ]
  %241 = getelementptr i32, ptr %240, i32 1
  store ptr %241, ptr %141, align 8
  store i32 768, ptr %240, align 4
  %242 = load ptr, ptr %141, align 8
  %243 = load ptr, ptr %143, align 8
  %244 = icmp eq ptr %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %247 = load ptr, ptr %246, align 4
  br label %248

248:                                              ; preds = %245, %239
  %249 = phi ptr [ %247, %245 ], [ %242, %239 ]
  %250 = getelementptr i32, ptr %249, i32 1
  store ptr %250, ptr %141, align 8
  store i32 896, ptr %249, align 4
  %251 = load ptr, ptr %141, align 8
  %252 = load ptr, ptr %143, align 8
  %253 = icmp eq ptr %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %256 = load ptr, ptr %255, align 4
  br label %257

257:                                              ; preds = %254, %248
  %258 = phi ptr [ %256, %254 ], [ %251, %248 ]
  %259 = getelementptr i32, ptr %258, i32 1
  store ptr %259, ptr %141, align 8
  store i32 -2147483264, ptr %258, align 4
  %260 = load ptr, ptr %141, align 8
  %261 = load ptr, ptr %143, align 8
  %262 = icmp eq ptr %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %265 = load ptr, ptr %264, align 4
  br label %266

266:                                              ; preds = %263, %257
  %267 = phi ptr [ %265, %263 ], [ %260, %257 ]
  %268 = getelementptr i32, ptr %267, i32 1
  store ptr %268, ptr %141, align 8
  store i32 1, ptr %267, align 4
  %269 = load ptr, ptr %141, align 8
  %270 = load ptr, ptr %143, align 8
  %271 = icmp eq ptr %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %274 = load ptr, ptr %273, align 4
  br label %275

275:                                              ; preds = %272, %266
  %276 = phi ptr [ %274, %272 ], [ %269, %266 ]
  %277 = getelementptr i32, ptr %276, i32 1
  store ptr %277, ptr %141, align 8
  store i32 0, ptr %276, align 4
  %278 = load ptr, ptr %141, align 8
  %279 = load ptr, ptr %143, align 8
  %280 = icmp eq ptr %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %283 = load ptr, ptr %282, align 4
  br label %284

284:                                              ; preds = %281, %275
  %285 = phi ptr [ %283, %281 ], [ %278, %275 ]
  %286 = getelementptr i32, ptr %285, i32 1
  store ptr %286, ptr %141, align 8
  store i32 0, ptr %285, align 4
  %287 = load ptr, ptr %141, align 8
  %288 = load ptr, ptr %143, align 8
  %289 = icmp eq ptr %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %292 = load ptr, ptr %291, align 4
  br label %293

293:                                              ; preds = %290, %284
  %294 = phi ptr [ %292, %290 ], [ %287, %284 ]
  %295 = getelementptr i32, ptr %294, i32 1
  store ptr %295, ptr %141, align 8
  store i32 536871410, ptr %294, align 4
  %296 = load ptr, ptr %141, align 8
  %297 = load ptr, ptr %143, align 8
  %298 = icmp eq ptr %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %301 = load ptr, ptr %300, align 4
  br label %302

302:                                              ; preds = %299, %293
  %303 = phi ptr [ %301, %299 ], [ %296, %293 ]
  %304 = getelementptr i32, ptr %303, i32 1
  store ptr %304, ptr %141, align 8
  store i32 0, ptr %303, align 4
  %305 = load ptr, ptr %141, align 8
  %306 = load ptr, ptr %143, align 8
  %307 = icmp eq ptr %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %310 = load ptr, ptr %309, align 4
  br label %311

311:                                              ; preds = %308, %302
  %312 = phi ptr [ %310, %308 ], [ %305, %302 ]
  %313 = getelementptr i32, ptr %312, i32 1
  store ptr %313, ptr %141, align 8
  store i32 0, ptr %312, align 4
  call void @adreno_wait_ring(ptr noundef %140, i32 noundef 2) #7
  %314 = load ptr, ptr %141, align 8
  %315 = load ptr, ptr %143, align 8
  %316 = icmp eq ptr %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %319 = load ptr, ptr %318, align 4
  br label %320

320:                                              ; preds = %317, %311
  %321 = phi ptr [ %319, %317 ], [ %314, %311 ]
  %322 = getelementptr i32, ptr %321, i32 1
  store ptr %322, ptr %141, align 8
  store i32 -1073717504, ptr %321, align 4
  %323 = load ptr, ptr %141, align 8
  %324 = load ptr, ptr %143, align 8
  %325 = icmp eq ptr %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.msm_ringbuffer, ptr %140, i32 0, i32 3
  %328 = load ptr, ptr %327, align 4
  br label %329

329:                                              ; preds = %326, %320
  %330 = phi ptr [ %328, %326 ], [ %323, %320 ]
  %331 = getelementptr i32, ptr %330, i32 1
  store ptr %331, ptr %141, align 8
  store i32 1, ptr %330, align 4
  call void @adreno_flush(ptr noundef %0, ptr noundef %140, i32 noundef 453) #7
  %332 = load ptr, ptr %85, align 4
  %333 = call zeroext i1 @adreno_idle(ptr noundef %0, ptr noundef %332) #7
  br i1 %333, label %334, label %348

334:                                              ; preds = %329
  %335 = load volatile i32, ptr @jiffies, align 64
  %336 = sub i32 -100, %335
  br label %337

337:                                              ; preds = %342, %334
  %338 = load ptr, ptr %9, align 8
  %339 = getelementptr i8, ptr %338, i32 5952
  %340 = call i32 @msm_readl(ptr noundef %339) #7
  %341 = icmp sgt i32 %340, -1
  br i1 %341, label %348, label %342

342:                                              ; preds = %337
  %343 = load volatile i32, ptr @jiffies, align 64
  %344 = add i32 %336, %343
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %337, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr %0, align 8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef %347) #7
  br label %348

348:                                              ; preds = %346, %337, %329, %76
  %349 = phi i32 [ %80, %76 ], [ -22, %346 ], [ -22, %329 ], [ 0, %337 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %349
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a2xx_submit(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %74, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 21
  %10 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 11
  %12 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 6
  %13 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  br label %15

15:                                               ; preds = %70, %8
  %16 = phi i32 [ %6, %8 ], [ %71, %70 ]
  %17 = phi i32 [ 0, %8 ], [ %72, %70 ]
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr %struct.anon.81, ptr %18, i32 %17
  %20 = load i32, ptr %19, align 8
  switch i32 %20, label %70 [
    i32 1, label %29
    i32 3, label %21
  ]

21:                                               ; preds = %15
  %22 = load i32, ptr %10, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.msm_file_private, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %22, %27
  br i1 %28, label %70, label %29

29:                                               ; preds = %21, %15
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 3) #7
  %30 = load ptr, ptr %12, align 8
  %31 = load ptr, ptr %13, align 8
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr %14, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %30, %29 ]
  %37 = getelementptr i32, ptr %36, i32 1
  store ptr %37, ptr %12, align 8
  store i32 -1073662208, ptr %36, align 4
  %38 = load ptr, ptr %9, align 8
  %39 = getelementptr %struct.anon.81, ptr %38, i32 %17, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr %12, align 8
  %43 = load ptr, ptr %13, align 8
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load ptr, ptr %14, align 4
  br label %47

47:                                               ; preds = %45, %35
  %48 = phi ptr [ %46, %45 ], [ %42, %35 ]
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %12, align 8
  store i32 %41, ptr %48, align 4
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr %struct.anon.81, ptr %50, i32 %17, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %12, align 8
  %54 = load ptr, ptr %13, align 8
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load ptr, ptr %14, align 4
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi ptr [ %57, %56 ], [ %53, %47 ]
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %12, align 8
  store i32 %52, ptr %59, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 1) #7
  %61 = load ptr, ptr %12, align 8
  %62 = load ptr, ptr %13, align 8
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load ptr, ptr %14, align 4
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi ptr [ %65, %64 ], [ %61, %58 ]
  %68 = getelementptr i32, ptr %67, i32 1
  store ptr %68, ptr %12, align 8
  store i32 -2147483648, ptr %67, align 4
  %69 = load i32, ptr %5, align 4
  br label %70

70:                                               ; preds = %66, %21, %15
  %71 = phi i32 [ %69, %66 ], [ %16, %15 ], [ %16, %21 ]
  %72 = add nuw i32 %17, 1
  %73 = icmp ult i32 %72, %71
  br i1 %73, label %15, label %74

74:                                               ; preds = %70, %2
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #7
  %75 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 6
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 4
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = phi ptr [ %82, %80 ], [ %76, %74 ]
  %85 = getelementptr i32, ptr %84, i32 1
  store ptr %85, ptr %75, align 8
  store i32 1402, ptr %84, align 4
  %86 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %87 = load i32, ptr %86, align 8
  %88 = load ptr, ptr %75, align 8
  %89 = load ptr, ptr %77, align 8
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %83
  %95 = phi ptr [ %93, %91 ], [ %88, %83 ]
  %96 = getelementptr i32, ptr %95, i32 1
  store ptr %96, ptr %75, align 8
  store i32 %87, ptr %95, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #7
  %97 = load ptr, ptr %75, align 8
  %98 = load ptr, ptr %77, align 8
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi ptr [ %102, %100 ], [ %97, %94 ]
  %105 = getelementptr i32, ptr %104, i32 1
  store ptr %105, ptr %75, align 8
  store i32 -1073732096, ptr %104, align 4
  %106 = load ptr, ptr %75, align 8
  %107 = load ptr, ptr %77, align 8
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %103
  %113 = phi ptr [ %111, %109 ], [ %106, %103 ]
  %114 = getelementptr i32, ptr %113, i32 1
  store ptr %114, ptr %75, align 8
  store i32 0, ptr %113, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 4) #7
  %115 = load ptr, ptr %75, align 8
  %116 = load ptr, ptr %77, align 8
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi ptr [ %120, %118 ], [ %115, %112 ]
  %123 = getelementptr i32, ptr %122, i32 1
  store ptr %123, ptr %75, align 8
  store i32 -1073592832, ptr %122, align 4
  %124 = load ptr, ptr %75, align 8
  %125 = load ptr, ptr %77, align 8
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi ptr [ %129, %127 ], [ %124, %121 ]
  %132 = getelementptr i32, ptr %131, i32 1
  store ptr %132, ptr %75, align 8
  store i32 4, ptr %131, align 4
  %133 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 14
  %134 = load i64, ptr %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = add i32 %135, 4
  %137 = load ptr, ptr %75, align 8
  %138 = load ptr, ptr %77, align 8
  %139 = icmp eq ptr %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  br label %143

143:                                              ; preds = %140, %130
  %144 = phi ptr [ %142, %140 ], [ %137, %130 ]
  %145 = getelementptr i32, ptr %144, i32 1
  store ptr %145, ptr %75, align 8
  store i32 %136, ptr %144, align 4
  %146 = load i32, ptr %86, align 8
  %147 = load ptr, ptr %75, align 8
  %148 = load ptr, ptr %77, align 8
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %143
  %154 = phi ptr [ %152, %150 ], [ %147, %143 ]
  %155 = getelementptr i32, ptr %154, i32 1
  store ptr %155, ptr %75, align 8
  store i32 %146, ptr %154, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #7
  %156 = load ptr, ptr %75, align 8
  %157 = load ptr, ptr %77, align 8
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  br label %162

162:                                              ; preds = %159, %153
  %163 = phi ptr [ %161, %159 ], [ %156, %153 ]
  %164 = getelementptr i32, ptr %163, i32 1
  store ptr %164, ptr %75, align 8
  store i32 -1073725440, ptr %163, align 4
  %165 = load ptr, ptr %75, align 8
  %166 = load ptr, ptr %77, align 8
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  br label %171

171:                                              ; preds = %168, %162
  %172 = phi ptr [ %170, %168 ], [ %165, %162 ]
  %173 = getelementptr i32, ptr %172, i32 1
  store ptr %173, ptr %75, align 8
  store i32 -2147483648, ptr %172, align 4
  tail call void @adreno_flush(ptr noundef %0, ptr noundef %4, i32 noundef 453) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a2xx_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 3804
  %5 = tail call i32 @msm_readl(ptr noundef %4) #7
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 10508
  %11 = tail call i32 @msm_readl(ptr noundef %10) #7
  %12 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %11) #5
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 268
  %21 = tail call i32 @msm_readl(ptr noundef %20) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %21) #5
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 10512
  tail call void @msm_writel(i32 noundef %11, ptr noundef %23) #7
  br label %24

24:                                               ; preds = %8, %1
  %25 = and i32 %5, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr i8, ptr %28, i32 1996
  %30 = tail call i32 @msm_readl(ptr noundef %29) #7
  %31 = and i32 %30, 2147483647
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef %30) #5
  br label %38

38:                                               ; preds = %33, %27
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr i8, ptr %39, i32 2000
  tail call void @msm_writel(i32 noundef %30, ptr noundef %40) #7
  br label %41

41:                                               ; preds = %38, %24
  %42 = icmp sgt i32 %5, -1
  br i1 %42, label %53, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr i8, ptr %44, i32 3796
  %46 = tail call i32 @msm_readl(ptr noundef %45) #7
  %47 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.9, i32 noundef %46) #5
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr i8, ptr %51, i32 3800
  tail call void @msm_writel(i32 noundef %46, ptr noundef %52) #7
  br label %53

53:                                               ; preds = %43, %41
  tail call void @msm_gpu_retire(ptr noundef %0) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_active_ring(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a2xx_recover(ptr noundef %0) #0 {
  tail call void @adreno_dump_info(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 5600
  %5 = tail call i32 @msm_readl(ptr noundef %4) #7
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %5) #5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 5604
  %9 = tail call i32 @msm_readl(ptr noundef %8) #7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef %9) #5
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 5608
  %13 = tail call i32 @msm_readl(ptr noundef %12) #7
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef %13) #5
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 5612
  %17 = tail call i32 @msm_readl(ptr noundef %16) #7
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 3, i32 noundef %17) #5
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 5616
  %21 = tail call i32 @msm_readl(ptr noundef %20) #7
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4, i32 noundef %21) #5
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 5620
  %25 = tail call i32 @msm_readl(ptr noundef %24) #7
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef %25) #5
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr i8, ptr %27, i32 5624
  %29 = tail call i32 @msm_readl(ptr noundef %28) #7
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef %29) #5
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i8, ptr %31, i32 5628
  %33 = tail call i32 @msm_readl(ptr noundef %32) #7
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 7, i32 noundef %33) #5
  %35 = load i8, ptr @hang_debug, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %1
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr i8, ptr %38, i32 5952
  %40 = tail call i32 @msm_readl(ptr noundef %39) #7
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %40) #5
  tail call void @adreno_dump(ptr noundef %0) #7
  br label %42

42:                                               ; preds = %37, %1
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 240
  tail call void @msm_writel(i32 noundef 1, ptr noundef %44) #7
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 240
  %47 = tail call i32 @msm_readl(ptr noundef %46) #7
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr i8, ptr %48, i32 240
  tail call void @msm_writel(i32 noundef 0, ptr noundef %49) #7
  tail call void @adreno_recover(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @a2xx_gpu_state_get(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 240) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @adreno_gpu_state_get(ptr noundef %0, ptr noundef nonnull %3) #7
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 5952
  %10 = tail call i32 @msm_readl(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.msm_gpu_state, ptr %3, i32 0, i32 5
  store i32 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_put(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @a2xx_create_address_space(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = tail call ptr @msm_gpummu_new(ptr noundef %3, ptr noundef %0) #7
  %5 = tail call ptr @msm_gem_address_space_create(ptr noundef %4, ptr noundef nonnull @.str.12, i64 noundef 16777216, i64 noundef 268369920) #7
  %6 = icmp ule ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %4) #7
  br label %13

13:                                               ; preds = %9, %2
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a2xx_get_rptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1808
  %6 = tail call i32 @msm_readl(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  store volatile i32 %6, ptr %8, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load volatile i32, ptr %9, align 8
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpummu_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_recover(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gpummu_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
!9 = !{!"auto-init"}
