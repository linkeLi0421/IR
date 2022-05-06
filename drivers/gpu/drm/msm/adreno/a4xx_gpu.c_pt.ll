; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a4xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a4xx_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.a4xx_gpu = type { %struct.adreno_gpu, %struct.adreno_ocmem }
%struct.adreno_ocmem = type { ptr, i32, ptr }
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

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"*ERROR* no a4xx device\0A\00", align 1
@funcs = internal constant %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a4xx_hw_init, ptr @a4xx_pm_suspend, ptr @a4xx_pm_resume, ptr @a4xx_submit, ptr null, ptr @a4xx_irq, ptr @adreno_active_ring, ptr @a4xx_recover, ptr @a4xx_destroy, ptr @adreno_show, ptr null, ptr null, ptr @a4xx_gpu_state_get, ptr @adreno_gpu_state_put, ptr null, ptr null, ptr @adreno_iommu_create_address_space, ptr null, ptr @a4xx_get_rptr }, ptr @a4xx_get_timestamp }, align 4
@a405_registers = internal constant [165 x i32] [i32 0, i32 2, i32 4, i32 33, i32 35, i32 36, i32 38, i32 38, i32 40, i32 43, i32 46, i32 52, i32 55, i32 68, i32 71, i32 102, i32 104, i32 149, i32 156, i32 368, i32 372, i32 431, i32 512, i32 563, i32 576, i32 592, i32 1216, i32 1245, i32 1280, i32 1291, i32 1400, i32 1423, i32 3072, i32 3075, i32 3080, i32 3137, i32 3152, i32 3153, i32 3200, i32 3201, i32 3208, i32 3215, i32 3264, i32 3264, i32 3268, i32 3282, i32 3328, i32 3340, i32 3344, i32 3351, i32 3360, i32 3363, i32 3648, i32 3658, i32 3680, i32 3681, i32 3683, i32 3688, i32 3712, i32 3716, i32 3720, i32 3733, i32 8192, i32 8196, i32 8200, i32 8295, i32 8304, i32 8312, i32 8315, i32 8558, i32 8640, i32 8646, i32 8656, i32 8656, i32 8665, i32 8665, i32 8677, i32 8679, i32 8704, i32 8708, i32 8712, i32 8873, i32 9216, i32 9220, i32 9224, i32 9319, i32 9328, i32 9336, i32 9339, i32 9582, i32 9664, i32 9670, i32 9680, i32 9680, i32 9689, i32 9689, i32 9701, i32 9703, i32 9728, i32 9732, i32 9736, i32 9897, i32 12288, i32 12295, i32 12332, i32 12332, i32 12336, i32 12336, i32 12340, i32 12342, i32 12344, i32 12344, i32 12348, i32 12349, i32 12352, i32 12352, i32 12361, i32 12361, i32 12376, i32 12376, i32 12379, i32 12385, i32 12388, i32 12392, i32 12396, i32 12397, i32 12416, i32 12424, i32 12427, i32 12428, i32 12432, i32 12436, i32 12440, i32 12440, i32 12444, i32 12444, i32 12480, i32 12480, i32 12488, i32 12488, i32 12496, i32 12496, i32 12504, i32 12504, i32 12512, i32 12512, i32 12544, i32 12544, i32 12552, i32 12552, i32 12560, i32 12560, i32 12568, i32 12568, i32 12576, i32 12576, i32 12580, i32 12581, i32 12585, i32 12585, i32 13324, i32 13324, i32 13328, i32 13328, i32 -1], align 4
@a4xx_registers = internal constant [431 x i32] [i32 0, i32 2, i32 4, i32 33, i32 35, i32 36, i32 38, i32 38, i32 40, i32 43, i32 46, i32 52, i32 55, i32 68, i32 71, i32 102, i32 104, i32 149, i32 156, i32 368, i32 372, i32 431, i32 512, i32 563, i32 576, i32 592, i32 1216, i32 1245, i32 1280, i32 1291, i32 1400, i32 1423, i32 3072, i32 3075, i32 3080, i32 3137, i32 3152, i32 3153, i32 3200, i32 3201, i32 3208, i32 3215, i32 3264, i32 3264, i32 3268, i32 3282, i32 3328, i32 3340, i32 3344, i32 3351, i32 3360, i32 3363, i32 3648, i32 3658, i32 3680, i32 3681, i32 3683, i32 3688, i32 3712, i32 3716, i32 3720, i32 3733, i32 4096, i32 4096, i32 4098, i32 4098, i32 4100, i32 4100, i32 4104, i32 4106, i32 4108, i32 4109, i32 4111, i32 4112, i32 4114, i32 4118, i32 4132, i32 4132, i32 4135, i32 4135, i32 4352, i32 4352, i32 4354, i32 4354, i32 4356, i32 4356, i32 4368, i32 4368, i32 4370, i32 4374, i32 4388, i32 4388, i32 4864, i32 4864, i32 4992, i32 4992, i32 8192, i32 8196, i32 8200, i32 8295, i32 8304, i32 8312, i32 8315, i32 8558, i32 8640, i32 8646, i32 8656, i32 8656, i32 8665, i32 8665, i32 8677, i32 8679, i32 8704, i32 8708, i32 8712, i32 8873, i32 9216, i32 9220, i32 9224, i32 9319, i32 9328, i32 9336, i32 9339, i32 9582, i32 9664, i32 9670, i32 9680, i32 9680, i32 9689, i32 9689, i32 9701, i32 9703, i32 9728, i32 9732, i32 9736, i32 9897, i32 11264, i32 11265, i32 11280, i32 11280, i32 11282, i32 11286, i32 11293, i32 11296, i32 11304, i32 11304, i32 11312, i32 11312, i32 11314, i32 11318, i32 11328, i32 11328, i32 11344, i32 11344, i32 11346, i32 11350, i32 11392, i32 11392, i32 11412, i32 11413, i32 12288, i32 12295, i32 12300, i32 12308, i32 12312, i32 12317, i32 12320, i32 12322, i32 12324, i32 12326, i32 12328, i32 12330, i32 12332, i32 12333, i32 12336, i32 12337, i32 12340, i32 12342, i32 12344, i32 12344, i32 12348, i32 12349, i32 12352, i32 12352, i32 12361, i32 12361, i32 12376, i32 12376, i32 12379, i32 12385, i32 12388, i32 12392, i32 12396, i32 12397, i32 12416, i32 12424, i32 12427, i32 12428, i32 12432, i32 12436, i32 12440, i32 12440, i32 12444, i32 12444, i32 12480, i32 12480, i32 12488, i32 12488, i32 12496, i32 12496, i32 12504, i32 12504, i32 12512, i32 12512, i32 12544, i32 12544, i32 12552, i32 12552, i32 12560, i32 12560, i32 12568, i32 12568, i32 12576, i32 12576, i32 12580, i32 12581, i32 12585, i32 12585, i32 12593, i32 12593, i32 13068, i32 13068, i32 13072, i32 13072, i32 13312, i32 13313, i32 13328, i32 13328, i32 13330, i32 13334, i32 13341, i32 13344, i32 13352, i32 13352, i32 13360, i32 13360, i32 13362, i32 13366, i32 13376, i32 13376, i32 13392, i32 13392, i32 13394, i32 13398, i32 13440, i32 13440, i32 13460, i32 13461, i32 16384, i32 16384, i32 16386, i32 16386, i32 16388, i32 16388, i32 16392, i32 16394, i32 16396, i32 16397, i32 16399, i32 16402, i32 16404, i32 16406, i32 16413, i32 16413, i32 16416, i32 16423, i32 16480, i32 16482, i32 16896, i32 16896, i32 17152, i32 17152, i32 17408, i32 17408, i32 17664, i32 17664, i32 18432, i32 18434, i32 18447, i32 18447, i32 18449, i32 18449, i32 18451, i32 18451, i32 18453, i32 18454, i32 18475, i32 18475, i32 18519, i32 18519, i32 18563, i32 18563, i32 18607, i32 18607, i32 18629, i32 18629, i32 18661, i32 18661, i32 18693, i32 18693, i32 18725, i32 18725, i32 18757, i32 18757, i32 18768, i32 18768, i32 18779, i32 18779, i32 18816, i32 18830, i32 19200, i32 19200, i32 19456, i32 19456, i32 19712, i32 19712, i32 19968, i32 19968, i32 20096, i32 20096, i32 20224, i32 20224, i32 20232, i32 20232, i32 20240, i32 20240, i32 20248, i32 20248, i32 20256, i32 20256, i32 20272, i32 20272, i32 20320, i32 20320, i32 20352, i32 20353, i32 20360, i32 20361, i32 20462, i32 20462, i32 20467, i32 20467, i32 24576, i32 24577, i32 24584, i32 24591, i32 24596, i32 24598, i32 24600, i32 24603, i32 25085, i32 25085, i32 25148, i32 25148, i32 25472, i32 25472, i32 25504, i32 25504, i32 25536, i32 25537, i32 25544, i32 25545, i32 25552, i32 25556, i32 25558, i32 25558, i32 25582, i32 25582, i32 25600, i32 25601, i32 25608, i32 25615, i32 25620, i32 25622, i32 25624, i32 25627, i32 26109, i32 26109, i32 26172, i32 26172, i32 26496, i32 26496, i32 26528, i32 26528, i32 26560, i32 26561, i32 26568, i32 26569, i32 26576, i32 26580, i32 26582, i32 26582, i32 26606, i32 26606, i32 26624, i32 26625, i32 26632, i32 26639, i32 26644, i32 26646, i32 26648, i32 26651, i32 27133, i32 27133, i32 27196, i32 27196, i32 27520, i32 27520, i32 27552, i32 27552, i32 27584, i32 27585, i32 27592, i32 27593, i32 27600, i32 27604, i32 27606, i32 27606, i32 27630, i32 27630, i32 -1], align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"*ERROR* No memory protection without IOMMU\0A\00", align 1
@allow_vram_carveout = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"gfx-mem\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ocmem\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"loading PM4 ucode version: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"loading PFP ucode version: %u\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [38 x i8] c"%s: timeout waiting for GPU to idle!\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: Int status %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"CP | Protected mode error| %s | addr=%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", align 1
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"status:   %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @a4xx_gpu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  br label %65

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 680) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 11
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 12
  store i32 0, ptr %16, align 8
  %17 = tail call i32 @adreno_gpu_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull @funcs, i32 noundef 1) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.adreno_gpu, ptr %12, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 405
  %23 = select i1 %22, ptr @a405_registers, ptr @a4xx_registers
  %24 = getelementptr inbounds %struct.adreno_gpu, ptr %12, i32 0, i32 6
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.a4xx_gpu, ptr %12, i32 0, i32 1
  %28 = tail call i32 @adreno_gpu_ocmem_init(ptr noundef %26, ptr noundef nonnull %12, ptr noundef %27) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 24
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4
  %36 = load i8, ptr @allow_vram_carveout, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %40 = tail call ptr @devm_of_icc_get(ptr noundef %39, ptr noundef nonnull @.str.3) #4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = ptrtoint ptr %40 to i32
  br label %61

44:                                               ; preds = %38
  %45 = tail call ptr @devm_of_icc_get(ptr noundef %39, ptr noundef nonnull @.str.4) #4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = ptrtoint ptr %45 to i32
  %49 = icmp eq ptr %45, inttoptr (i32 -61 to ptr)
  br i1 %49, label %50, label %61

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %45, %44 ], [ null, %47 ]
  %52 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 32
  %53 = load i32, ptr %52, align 8
  %54 = udiv i32 %53, 1000
  %55 = shl nuw nsw i32 %54, 3
  %56 = tail call i32 @icc_set_bw(ptr noundef %40, i32 noundef 0, i32 noundef %55) #4
  %57 = load i32, ptr %52, align 8
  %58 = udiv i32 %57, 1000
  %59 = shl nuw nsw i32 %58, 3
  %60 = tail call i32 @icc_set_bw(ptr noundef %51, i32 noundef 0, i32 noundef %59) #4
  br label %68

61:                                               ; preds = %47, %42, %34, %19, %14
  %62 = phi i32 [ -6, %34 ], [ %48, %47 ], [ %43, %42 ], [ %28, %19 ], [ %17, %14 ]
  %63 = load ptr, ptr %12, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef %63) #4
  tail call void @adreno_gpu_cleanup(ptr noundef nonnull %12) #4
  %64 = getelementptr inbounds %struct.a4xx_gpu, ptr %12, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %64) #4
  tail call void @kfree(ptr noundef nonnull %12) #4
  br label %65

65:                                               ; preds = %61, %10, %7
  %66 = phi i32 [ %62, %61 ], [ -6, %7 ], [ -12, %10 ]
  %67 = inttoptr i32 %66 to ptr
  br label %68

68:                                               ; preds = %65, %50
  %69 = phi ptr [ %67, %65 ], [ %12, %50 ]
  ret ptr %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_ocmem_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a4xx_destroy(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef %2) #4
  tail call void @adreno_gpu_cleanup(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.a4xx_gpu, ptr %0, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %3) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a4xx_hw_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %34 [
    i32 405, label %4
    i32 420, label %6
    i32 430, label %22
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 49264
  tail call void @msm_writel(i32 noundef 65567, ptr noundef %9) #4
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr i8, ptr %10, i32 49268
  tail call void @msm_writel(i32 noundef 164, ptr noundef %11) #4
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr i8, ptr %12, i32 49320
  tail call void @msm_writel(i32 noundef 1, ptr noundef %13) #4
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr i8, ptr %14, i32 49328
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %15) #4
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr i8, ptr %16, i32 49332
  tail call void @msm_writel(i32 noundef 24, ptr noundef %17) #4
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr i8, ptr %18, i32 49344
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %19) #4
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr i8, ptr %20, i32 49348
  tail call void @msm_writel(i32 noundef 24, ptr noundef %21) #4
  br label %35

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %24, i32 49320
  tail call void @msm_writel(i32 noundef 1, ptr noundef %25) #4
  %26 = load ptr, ptr %23, align 8
  %27 = getelementptr i8, ptr %26, i32 49328
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %27) #4
  %28 = load ptr, ptr %23, align 8
  %29 = getelementptr i8, ptr %28, i32 49332
  tail call void @msm_writel(i32 noundef 24, ptr noundef %29) #4
  %30 = load ptr, ptr %23, align 8
  %31 = getelementptr i8, ptr %30, i32 49344
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %31) #4
  %32 = load ptr, ptr %23, align 8
  %33 = getelementptr i8, ptr %32, i32 49348
  tail call void @msm_writel(i32 noundef 24, ptr noundef %33) #4
  br label %35

34:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a4xx_gpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

35:                                               ; preds = %22, %6, %4
  %36 = phi ptr [ %7, %6 ], [ %23, %22 ], [ %5, %4 ]
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 49444
  tail call void @msm_writel(i32 noundef 3, ptr noundef %38) #4
  %39 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr i8, ptr %40, i32 1512
  tail call void @msm_writel(i32 noundef -1, ptr noundef %41) #4
  %42 = load ptr, ptr %39, align 8
  %43 = getelementptr i8, ptr %42, i32 132
  tail call void @msm_writel(i32 noundef 16, ptr noundef %43) #4
  %44 = load ptr, ptr %39, align 8
  %45 = getelementptr i8, ptr %44, i32 172
  tail call void @msm_writel(i32 noundef 16, ptr noundef %45) #4
  %46 = load i32, ptr %2, align 4
  %47 = icmp eq i32 %46, 430
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load ptr, ptr %39, align 8
  %50 = getelementptr i8, ptr %49, i32 1760
  tail call void @msm_writel(i32 noundef 48, ptr noundef %50) #4
  br label %51

51:                                               ; preds = %48, %35
  %52 = load ptr, ptr %39, align 8
  %53 = getelementptr i8, ptr %52, i32 140
  tail call void @msm_writel(i32 noundef 1, ptr noundef %53) #4
  %54 = load ptr, ptr %39, align 8
  %55 = getelementptr i8, ptr %54, i32 144
  tail call void @msm_writel(i32 noundef -1493172225, ptr noundef %55) #4
  %56 = load ptr, ptr %39, align 8
  %57 = getelementptr i8, ptr %56, i32 248
  tail call void @msm_writel(i32 noundef 48, ptr noundef %57) #4
  %58 = load ptr, ptr %39, align 8
  %59 = getelementptr i8, ptr %58, i32 188
  tail call void @msm_writel(i32 noundef 1073807359, ptr noundef %59) #4
  %60 = getelementptr inbounds %struct.a4xx_gpu, ptr %0, i32 0, i32 1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 14
  %63 = load ptr, ptr %39, align 8
  %64 = getelementptr i8, ptr %63, i32 13056
  tail call void @msm_writel(i32 noundef %62, ptr noundef %64) #4
  %65 = load ptr, ptr %39, align 8
  %66 = getelementptr i8, ptr %65, i32 1472
  tail call void @msm_writel(i32 noundef 1, ptr noundef %66) #4
  %67 = load ptr, ptr %39, align 8
  %68 = getelementptr i8, ptr %67, i32 5120
  tail call void @msm_writel(i32 noundef 0, ptr noundef %68) #4
  %69 = load i32, ptr %2, align 4
  %70 = icmp eq i32 %69, 430
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load ptr, ptr %39, align 8
  %73 = getelementptr i8, ptr %72, i32 14896
  tail call void @msm_writel(i32 noundef 7, ptr noundef %73) #4
  br label %74

74:                                               ; preds = %71, %51
  %75 = load ptr, ptr %39, align 8
  %76 = getelementptr i8, ptr %75, i32 14860
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %76) #4
  %77 = load ptr, ptr %39, align 8
  %78 = getelementptr i8, ptr %77, i32 14864
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %78) #4
  %79 = load i32, ptr %2, align 4
  %80 = icmp eq i32 %79, 420
  %81 = select i1 %80, i32 570425344, i32 33554432
  %82 = load ptr, ptr %39, align 8
  %83 = getelementptr i8, ptr %82, i32 2232
  tail call void @msm_writel(i32 noundef %81, ptr noundef %83) #4
  %84 = load i32, ptr %2, align 4
  %85 = icmp eq i32 %84, 420
  br i1 %85, label %91, label %86

86:                                               ; preds = %74
  %87 = load ptr, ptr %39, align 8
  %88 = getelementptr i8, ptr %87, i32 612
  tail call void @msm_writel(i32 noundef 1089, ptr noundef %88) #4
  %89 = load ptr, ptr %39, align 8
  %90 = getelementptr i8, ptr %89, i32 616
  tail call void @msm_writel(i32 noundef 1089, ptr noundef %90) #4
  br label %91

91:                                               ; preds = %86, %74
  %92 = load ptr, ptr %39, align 8
  %93 = getelementptr i8, ptr %92, i32 16
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %93) #4
  %94 = load ptr, ptr %39, align 8
  %95 = getelementptr i8, ptr %94, i32 20
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %95) #4
  %96 = load ptr, ptr %39, align 8
  %97 = getelementptr i8, ptr %96, i32 24
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %97) #4
  %98 = load ptr, ptr %39, align 8
  %99 = getelementptr i8, ptr %98, i32 28
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %99) #4
  %100 = load ptr, ptr %39, align 8
  %101 = getelementptr i8, ptr %100, i32 32
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %101) #4
  %102 = load ptr, ptr %39, align 8
  %103 = getelementptr i8, ptr %102, i32 36
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %103) #4
  %104 = load ptr, ptr %39, align 8
  %105 = getelementptr i8, ptr %104, i32 40
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %105) #4
  %106 = load ptr, ptr %39, align 8
  %107 = getelementptr i8, ptr %106, i32 44
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %107) #4
  %108 = load ptr, ptr %39, align 8
  %109 = getelementptr i8, ptr %108, i32 48
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %109) #4
  %110 = load ptr, ptr %39, align 8
  %111 = getelementptr i8, ptr %110, i32 52
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %111) #4
  %112 = load ptr, ptr %39, align 8
  %113 = getelementptr i8, ptr %112, i32 56
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %113) #4
  %114 = load ptr, ptr %39, align 8
  %115 = getelementptr i8, ptr %114, i32 60
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %115) #4
  %116 = load ptr, ptr %39, align 8
  %117 = getelementptr i8, ptr %116, i32 64
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %117) #4
  %118 = load ptr, ptr %39, align 8
  %119 = getelementptr i8, ptr %118, i32 68
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %119) #4
  %120 = load ptr, ptr %39, align 8
  %121 = getelementptr i8, ptr %120, i32 72
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %121) #4
  %122 = load ptr, ptr %39, align 8
  %123 = getelementptr i8, ptr %122, i32 76
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %123) #4
  %124 = load ptr, ptr %39, align 8
  %125 = getelementptr i8, ptr %124, i32 416
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %125) #4
  %126 = load ptr, ptr %39, align 8
  %127 = getelementptr i8, ptr %126, i32 420
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %127) #4
  %128 = load ptr, ptr %39, align 8
  %129 = getelementptr i8, ptr %128, i32 424
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %129) #4
  %130 = load ptr, ptr %39, align 8
  %131 = getelementptr i8, ptr %130, i32 428
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %131) #4
  %132 = load ptr, ptr %39, align 8
  %133 = getelementptr i8, ptr %132, i32 432
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %133) #4
  %134 = load ptr, ptr %39, align 8
  %135 = getelementptr i8, ptr %134, i32 436
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %135) #4
  %136 = load ptr, ptr %39, align 8
  %137 = getelementptr i8, ptr %136, i32 440
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %137) #4
  %138 = load ptr, ptr %39, align 8
  %139 = getelementptr i8, ptr %138, i32 444
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %139) #4
  %140 = load ptr, ptr %39, align 8
  %141 = getelementptr i8, ptr %140, i32 448
  tail call void @msm_writel(i32 noundef 260, ptr noundef %141) #4
  %142 = load ptr, ptr %39, align 8
  %143 = getelementptr i8, ptr %142, i32 452
  tail call void @msm_writel(i32 noundef 260, ptr noundef %143) #4
  %144 = load ptr, ptr %39, align 8
  %145 = getelementptr i8, ptr %144, i32 456
  tail call void @msm_writel(i32 noundef 260, ptr noundef %145) #4
  %146 = load ptr, ptr %39, align 8
  %147 = getelementptr i8, ptr %146, i32 460
  tail call void @msm_writel(i32 noundef 260, ptr noundef %147) #4
  %148 = load ptr, ptr %39, align 8
  %149 = getelementptr i8, ptr %148, i32 464
  tail call void @msm_writel(i32 noundef 129, ptr noundef %149) #4
  %150 = load ptr, ptr %39, align 8
  %151 = getelementptr i8, ptr %150, i32 468
  tail call void @msm_writel(i32 noundef 129, ptr noundef %151) #4
  %152 = load ptr, ptr %39, align 8
  %153 = getelementptr i8, ptr %152, i32 472
  tail call void @msm_writel(i32 noundef 129, ptr noundef %153) #4
  %154 = load ptr, ptr %39, align 8
  %155 = getelementptr i8, ptr %154, i32 476
  tail call void @msm_writel(i32 noundef 129, ptr noundef %155) #4
  %156 = load ptr, ptr %39, align 8
  %157 = getelementptr i8, ptr %156, i32 80
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %157) #4
  %158 = load ptr, ptr %39, align 8
  %159 = getelementptr i8, ptr %158, i32 84
  tail call void @msm_writel(i32 noundef 35791394, ptr noundef %159) #4
  %160 = load ptr, ptr %39, align 8
  %161 = getelementptr i8, ptr %160, i32 88
  tail call void @msm_writel(i32 noundef 0, ptr noundef %161) #4
  %162 = load ptr, ptr %39, align 8
  %163 = getelementptr i8, ptr %162, i32 92
  tail call void @msm_writel(i32 noundef 0, ptr noundef %163) #4
  %164 = load ptr, ptr %39, align 8
  %165 = getelementptr i8, ptr %164, i32 96
  tail call void @msm_writel(i32 noundef 17476, ptr noundef %165) #4
  %166 = load ptr, ptr %39, align 8
  %167 = getelementptr i8, ptr %166, i32 100
  tail call void @msm_writel(i32 noundef 4370, ptr noundef %167) #4
  %168 = load ptr, ptr %39, align 8
  %169 = getelementptr i8, ptr %168, i32 480
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %169) #4
  %170 = load ptr, ptr %39, align 8
  %171 = getelementptr i8, ptr %170, i32 484
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %171) #4
  %172 = load ptr, ptr %39, align 8
  %173 = getelementptr i8, ptr %172, i32 488
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %173) #4
  %174 = load ptr, ptr %39, align 8
  %175 = getelementptr i8, ptr %174, i32 492
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %175) #4
  %176 = load i32, ptr %2, align 4
  %177 = icmp eq i32 %176, 420
  %178 = load ptr, ptr %39, align 8
  %179 = getelementptr i8, ptr %178, i32 496
  %180 = select i1 %177, i32 8224, i32 139296
  tail call void @msm_writel(i32 noundef %180, ptr noundef %179) #4
  %181 = load i32, ptr %2, align 4
  %182 = icmp eq i32 %181, 420
  %183 = select i1 %182, i32 8224, i32 139296
  %184 = load ptr, ptr %39, align 8
  %185 = getelementptr i8, ptr %184, i32 500
  tail call void @msm_writel(i32 noundef %183, ptr noundef %185) #4
  %186 = load i32, ptr %2, align 4
  %187 = icmp eq i32 %186, 420
  %188 = select i1 %187, i32 8224, i32 139296
  %189 = load ptr, ptr %39, align 8
  %190 = getelementptr i8, ptr %189, i32 504
  tail call void @msm_writel(i32 noundef %188, ptr noundef %190) #4
  %191 = load i32, ptr %2, align 4
  %192 = icmp eq i32 %191, 420
  %193 = select i1 %192, i32 8224, i32 139296
  %194 = load ptr, ptr %39, align 8
  %195 = getelementptr i8, ptr %194, i32 508
  tail call void @msm_writel(i32 noundef %193, ptr noundef %195) #4
  %196 = load i32, ptr %2, align 4
  %197 = icmp eq i32 %196, 405
  br i1 %197, label %223, label %198

198:                                              ; preds = %91
  %199 = load ptr, ptr %39, align 8
  %200 = getelementptr i8, ptr %199, i32 520
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %200) #4
  %201 = load ptr, ptr %39, align 8
  %202 = getelementptr i8, ptr %201, i32 524
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %202) #4
  %203 = load ptr, ptr %39, align 8
  %204 = getelementptr i8, ptr %203, i32 528
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %204) #4
  %205 = load ptr, ptr %39, align 8
  %206 = getelementptr i8, ptr %205, i32 532
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %206) #4
  %207 = load ptr, ptr %39, align 8
  %208 = getelementptr i8, ptr %207, i32 536
  tail call void @msm_writel(i32 noundef 0, ptr noundef %208) #4
  %209 = load ptr, ptr %39, align 8
  %210 = getelementptr i8, ptr %209, i32 540
  tail call void @msm_writel(i32 noundef 0, ptr noundef %210) #4
  %211 = load ptr, ptr %39, align 8
  %212 = getelementptr i8, ptr %211, i32 544
  tail call void @msm_writel(i32 noundef 0, ptr noundef %212) #4
  %213 = load ptr, ptr %39, align 8
  %214 = getelementptr i8, ptr %213, i32 548
  tail call void @msm_writel(i32 noundef 0, ptr noundef %214) #4
  %215 = load ptr, ptr %39, align 8
  %216 = getelementptr i8, ptr %215, i32 568
  tail call void @msm_writel(i32 noundef 1, ptr noundef %216) #4
  %217 = load ptr, ptr %39, align 8
  %218 = getelementptr i8, ptr %217, i32 572
  tail call void @msm_writel(i32 noundef 1, ptr noundef %218) #4
  %219 = load ptr, ptr %39, align 8
  %220 = getelementptr i8, ptr %219, i32 576
  tail call void @msm_writel(i32 noundef 1, ptr noundef %220) #4
  %221 = load ptr, ptr %39, align 8
  %222 = getelementptr i8, ptr %221, i32 580
  tail call void @msm_writel(i32 noundef 1, ptr noundef %222) #4
  br label %223

223:                                              ; preds = %198, %91
  %224 = load ptr, ptr %39, align 8
  %225 = getelementptr i8, ptr %224, i32 104
  tail call void @msm_writel(i32 noundef 35791394, ptr noundef %225) #4
  %226 = load ptr, ptr %39, align 8
  %227 = getelementptr i8, ptr %226, i32 112
  tail call void @msm_writel(i32 noundef 68157700, ptr noundef %227) #4
  %228 = load ptr, ptr %39, align 8
  %229 = getelementptr i8, ptr %228, i32 108
  tail call void @msm_writel(i32 noundef 139810, ptr noundef %229) #4
  %230 = load ptr, ptr %39, align 8
  %231 = getelementptr i8, ptr %230, i32 516
  tail call void @msm_writel(i32 noundef 34, ptr noundef %231) #4
  %232 = load ptr, ptr %39, align 8
  %233 = getelementptr i8, ptr %232, i32 512
  tail call void @msm_writel(i32 noundef 271, ptr noundef %233) #4
  %234 = load ptr, ptr %39, align 8
  %235 = getelementptr i8, ptr %234, i32 564
  tail call void @msm_writel(i32 noundef 34, ptr noundef %235) #4
  %236 = load ptr, ptr %39, align 8
  %237 = getelementptr i8, ptr %236, i32 116
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %237) #4
  %238 = load ptr, ptr %39, align 8
  %239 = getelementptr i8, ptr %238, i32 120
  tail call void @msm_writel(i32 noundef 16644, ptr noundef %239) #4
  %240 = load ptr, ptr %39, align 8
  %241 = getelementptr i8, ptr %240, i32 124
  tail call void @msm_writel(i32 noundef 546, ptr noundef %241) #4
  %242 = load ptr, ptr %39, align 8
  %243 = getelementptr i8, ptr %242, i32 552
  tail call void @msm_writel(i32 noundef 0, ptr noundef %243) #4
  %244 = load ptr, ptr %39, align 8
  %245 = getelementptr i8, ptr %244, i32 556
  tail call void @msm_writel(i32 noundef 0, ptr noundef %245) #4
  %246 = load ptr, ptr %39, align 8
  %247 = getelementptr i8, ptr %246, i32 560
  tail call void @msm_writel(i32 noundef 2228224, ptr noundef %247) #4
  %248 = load i32, ptr %2, align 4
  %249 = icmp eq i32 %248, 430
  br i1 %249, label %250, label %254

250:                                              ; preds = %223
  %251 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %252 = load i8, ptr %251, align 1
  %253 = icmp ult i8 %252, 2
  br i1 %253, label %255, label %254

254:                                              ; preds = %250, %223
  br label %255

255:                                              ; preds = %254, %250
  %256 = phi i32 [ -1431655766, %254 ], [ 0, %250 ]
  %257 = load ptr, ptr %39, align 8
  %258 = getelementptr i8, ptr %257, i32 128
  tail call void @msm_writel(i32 noundef %256, ptr noundef %258) #4
  %259 = load ptr, ptr %39, align 8
  %260 = getelementptr i8, ptr %259, i32 264
  tail call void @msm_writel(i32 noundef 0, ptr noundef %260) #4
  %261 = load i32, ptr %2, align 4
  %262 = icmp eq i32 %261, 420
  br i1 %262, label %263, label %271

263:                                              ; preds = %255
  %264 = load ptr, ptr %39, align 8
  %265 = getelementptr i8, ptr %264, i32 560
  %266 = tail call i32 @msm_readl(ptr noundef %265) #4
  %267 = and i32 %266, -7340033
  %268 = or i32 %267, 2097152
  %269 = load ptr, ptr %39, align 8
  %270 = getelementptr i8, ptr %269, i32 560
  tail call void @msm_writel(i32 noundef %268, ptr noundef %270) #4
  br label %271

271:                                              ; preds = %263, %255
  %272 = load ptr, ptr %39, align 8
  %273 = getelementptr i8, ptr %272, i32 2368
  tail call void @msm_writel(i32 noundef 7, ptr noundef %273) #4
  %274 = load ptr, ptr %39, align 8
  %275 = getelementptr i8, ptr %274, i32 2304
  tail call void @msm_writel(i32 noundef 1644167184, ptr noundef %275) #4
  %276 = load ptr, ptr %39, align 8
  %277 = getelementptr i8, ptr %276, i32 2308
  tail call void @msm_writel(i32 noundef 1660944416, ptr noundef %277) #4
  %278 = load ptr, ptr %39, align 8
  %279 = getelementptr i8, ptr %278, i32 2312
  tail call void @msm_writel(i32 noundef 1677721664, ptr noundef %279) #4
  %280 = load ptr, ptr %39, align 8
  %281 = getelementptr i8, ptr %280, i32 2316
  tail call void @msm_writel(i32 noundef 1694498944, ptr noundef %281) #4
  %282 = load ptr, ptr %39, align 8
  %283 = getelementptr i8, ptr %282, i32 2320
  tail call void @msm_writel(i32 noundef 1711276288, ptr noundef %283) #4
  %284 = load ptr, ptr %39, align 8
  %285 = getelementptr i8, ptr %284, i32 2324
  tail call void @msm_writel(i32 noundef 1677722112, ptr noundef %285) #4
  %286 = load ptr, ptr %39, align 8
  %287 = getelementptr i8, ptr %286, i32 2328
  tail call void @msm_writel(i32 noundef 1728055296, ptr noundef %287) #4
  %288 = load ptr, ptr %39, align 8
  %289 = getelementptr i8, ptr %288, i32 2332
  tail call void @msm_writel(i32 noundef 1677727232, ptr noundef %289) #4
  %290 = load ptr, ptr %39, align 8
  %291 = getelementptr i8, ptr %290, i32 2336
  tail call void @msm_writel(i32 noundef 1610625792, ptr noundef %291) #4
  %292 = load ptr, ptr %39, align 8
  %293 = getelementptr i8, ptr %292, i32 2340
  tail call void @msm_writel(i32 noundef 1610627072, ptr noundef %293) #4
  %294 = load ptr, ptr %39, align 8
  %295 = getelementptr i8, ptr %294, i32 2344
  tail call void @msm_writel(i32 noundef 1627404672, ptr noundef %295) #4
  %296 = load ptr, ptr %39, align 8
  %297 = getelementptr i8, ptr %296, i32 2348
  tail call void @msm_writel(i32 noundef 1845559296, ptr noundef %297) #4
  %298 = load ptr, ptr %39, align 8
  %299 = getelementptr i8, ptr %298, i32 220
  tail call void @msm_writel(i32 noundef 36826914, ptr noundef %299) #4
  %300 = tail call i32 @adreno_hw_init(ptr noundef %0) #4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %535

302:                                              ; preds = %271
  %303 = load ptr, ptr %39, align 8
  %304 = getelementptr i8, ptr %303, i32 2052
  tail call void @msm_writel(i32 noundef 134218252, ptr noundef %304) #4
  %305 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.msm_ringbuffer, ptr %306, i32 0, i32 10
  %308 = load i64, ptr %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = load ptr, ptr %39, align 8
  %311 = getelementptr i8, ptr %310, i32 2048
  tail call void @msm_writel(i32 noundef %309, ptr noundef %311) #4
  %312 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 8
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.firmware, ptr %313, i32 0, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = load i32, ptr %313, align 4
  %317 = load i32, ptr %315, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %317) #4
  %318 = load ptr, ptr %39, align 8
  %319 = getelementptr i8, ptr %318, i32 2196
  tail call void @msm_writel(i32 noundef 0, ptr noundef %319) #4
  %320 = icmp ugt i32 %316, 7
  br i1 %320, label %321, label %331

321:                                              ; preds = %302
  %322 = lshr i32 %316, 2
  br label %323

323:                                              ; preds = %323, %321
  %324 = phi i32 [ %329, %323 ], [ 1, %321 ]
  %325 = getelementptr i32, ptr %315, i32 %324
  %326 = load i32, ptr %325, align 4
  %327 = load ptr, ptr %39, align 8
  %328 = getelementptr i8, ptr %327, i32 2204
  tail call void @msm_writel(i32 noundef %326, ptr noundef %328) #4
  %329 = add nuw nsw i32 %324, 1
  %330 = icmp eq i32 %329, %322
  br i1 %330, label %331, label %323

331:                                              ; preds = %323, %302
  %332 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.firmware, ptr %333, i32 0, i32 1
  %335 = load ptr, ptr %334, align 4
  %336 = load i32, ptr %333, align 4
  %337 = load i32, ptr %335, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %337) #4
  %338 = load ptr, ptr %39, align 8
  %339 = getelementptr i8, ptr %338, i32 2188
  tail call void @msm_writel(i32 noundef 0, ptr noundef %339) #4
  %340 = icmp ugt i32 %336, 7
  br i1 %340, label %341, label %351

341:                                              ; preds = %331
  %342 = lshr i32 %336, 2
  br label %343

343:                                              ; preds = %343, %341
  %344 = phi i32 [ %349, %343 ], [ 1, %341 ]
  %345 = getelementptr i32, ptr %335, i32 %344
  %346 = load i32, ptr %345, align 4
  %347 = load ptr, ptr %39, align 8
  %348 = getelementptr i8, ptr %347, i32 2192
  tail call void @msm_writel(i32 noundef %346, ptr noundef %348) #4
  %349 = add nuw nsw i32 %344, 1
  %350 = icmp eq i32 %349, %342
  br i1 %350, label %351, label %343

351:                                              ; preds = %343, %331
  %352 = load ptr, ptr %39, align 8
  %353 = getelementptr i8, ptr %352, i32 2228
  tail call void @msm_writel(i32 noundef 0, ptr noundef %353) #4
  %354 = load ptr, ptr %305, align 4
  tail call void @adreno_wait_ring(ptr noundef %354, i32 noundef 18) #4
  %355 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 6
  %356 = load ptr, ptr %355, align 8
  %357 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 4
  %358 = load ptr, ptr %357, align 8
  %359 = icmp eq ptr %356, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %351
  %361 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %362 = load ptr, ptr %361, align 4
  br label %363

363:                                              ; preds = %360, %351
  %364 = phi ptr [ %362, %360 ], [ %356, %351 ]
  %365 = getelementptr i32, ptr %364, i32 1
  store ptr %365, ptr %355, align 8
  store i32 -1072674816, ptr %364, align 4
  %366 = load ptr, ptr %355, align 8
  %367 = load ptr, ptr %357, align 8
  %368 = icmp eq ptr %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %363
  %370 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %371 = load ptr, ptr %370, align 4
  br label %372

372:                                              ; preds = %369, %363
  %373 = phi ptr [ %371, %369 ], [ %366, %363 ]
  %374 = getelementptr i32, ptr %373, i32 1
  store ptr %374, ptr %355, align 8
  store i32 1015, ptr %373, align 4
  %375 = load ptr, ptr %355, align 8
  %376 = load ptr, ptr %357, align 8
  %377 = icmp eq ptr %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %380 = load ptr, ptr %379, align 4
  br label %381

381:                                              ; preds = %378, %372
  %382 = phi ptr [ %380, %378 ], [ %375, %372 ]
  %383 = getelementptr i32, ptr %382, i32 1
  store ptr %383, ptr %355, align 8
  store i32 0, ptr %382, align 4
  %384 = load ptr, ptr %355, align 8
  %385 = load ptr, ptr %357, align 8
  %386 = icmp eq ptr %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %389 = load ptr, ptr %388, align 4
  br label %390

390:                                              ; preds = %387, %381
  %391 = phi ptr [ %389, %387 ], [ %384, %381 ]
  %392 = getelementptr i32, ptr %391, i32 1
  store ptr %392, ptr %355, align 8
  store i32 0, ptr %391, align 4
  %393 = load ptr, ptr %355, align 8
  %394 = load ptr, ptr %357, align 8
  %395 = icmp eq ptr %393, %394
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %398 = load ptr, ptr %397, align 4
  br label %399

399:                                              ; preds = %396, %390
  %400 = phi ptr [ %398, %396 ], [ %393, %390 ]
  %401 = getelementptr i32, ptr %400, i32 1
  store ptr %401, ptr %355, align 8
  store i32 0, ptr %400, align 4
  %402 = load ptr, ptr %355, align 8
  %403 = load ptr, ptr %357, align 8
  %404 = icmp eq ptr %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %407 = load ptr, ptr %406, align 4
  br label %408

408:                                              ; preds = %405, %399
  %409 = phi ptr [ %407, %405 ], [ %402, %399 ]
  %410 = getelementptr i32, ptr %409, i32 1
  store ptr %410, ptr %355, align 8
  store i32 128, ptr %409, align 4
  %411 = load ptr, ptr %355, align 8
  %412 = load ptr, ptr %357, align 8
  %413 = icmp eq ptr %411, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %408
  %415 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %416 = load ptr, ptr %415, align 4
  br label %417

417:                                              ; preds = %414, %408
  %418 = phi ptr [ %416, %414 ], [ %411, %408 ]
  %419 = getelementptr i32, ptr %418, i32 1
  store ptr %419, ptr %355, align 8
  store i32 256, ptr %418, align 4
  %420 = load ptr, ptr %355, align 8
  %421 = load ptr, ptr %357, align 8
  %422 = icmp eq ptr %420, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %425 = load ptr, ptr %424, align 4
  br label %426

426:                                              ; preds = %423, %417
  %427 = phi ptr [ %425, %423 ], [ %420, %417 ]
  %428 = getelementptr i32, ptr %427, i32 1
  store ptr %428, ptr %355, align 8
  store i32 384, ptr %427, align 4
  %429 = load ptr, ptr %355, align 8
  %430 = load ptr, ptr %357, align 8
  %431 = icmp eq ptr %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %434 = load ptr, ptr %433, align 4
  br label %435

435:                                              ; preds = %432, %426
  %436 = phi ptr [ %434, %432 ], [ %429, %426 ]
  %437 = getelementptr i32, ptr %436, i32 1
  store ptr %437, ptr %355, align 8
  store i32 26112, ptr %436, align 4
  %438 = load ptr, ptr %355, align 8
  %439 = load ptr, ptr %357, align 8
  %440 = icmp eq ptr %438, %439
  br i1 %440, label %441, label %444

441:                                              ; preds = %435
  %442 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %443 = load ptr, ptr %442, align 4
  br label %444

444:                                              ; preds = %441, %435
  %445 = phi ptr [ %443, %441 ], [ %438, %435 ]
  %446 = getelementptr i32, ptr %445, i32 1
  store ptr %446, ptr %355, align 8
  store i32 336, ptr %445, align 4
  %447 = load ptr, ptr %355, align 8
  %448 = load ptr, ptr %357, align 8
  %449 = icmp eq ptr %447, %448
  br i1 %449, label %450, label %453

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %452 = load ptr, ptr %451, align 4
  br label %453

453:                                              ; preds = %450, %444
  %454 = phi ptr [ %452, %450 ], [ %447, %444 ]
  %455 = getelementptr i32, ptr %454, i32 1
  store ptr %455, ptr %355, align 8
  store i32 334, ptr %454, align 4
  %456 = load ptr, ptr %355, align 8
  %457 = load ptr, ptr %357, align 8
  %458 = icmp eq ptr %456, %457
  br i1 %458, label %459, label %462

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %461 = load ptr, ptr %460, align 4
  br label %462

462:                                              ; preds = %459, %453
  %463 = phi ptr [ %461, %459 ], [ %456, %453 ]
  %464 = getelementptr i32, ptr %463, i32 1
  store ptr %464, ptr %355, align 8
  store i32 340, ptr %463, align 4
  %465 = load ptr, ptr %355, align 8
  %466 = load ptr, ptr %357, align 8
  %467 = icmp eq ptr %465, %466
  br i1 %467, label %468, label %471

468:                                              ; preds = %462
  %469 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %470 = load ptr, ptr %469, align 4
  br label %471

471:                                              ; preds = %468, %462
  %472 = phi ptr [ %470, %468 ], [ %465, %462 ]
  %473 = getelementptr i32, ptr %472, i32 1
  store ptr %473, ptr %355, align 8
  store i32 1, ptr %472, align 4
  %474 = load ptr, ptr %355, align 8
  %475 = load ptr, ptr %357, align 8
  %476 = icmp eq ptr %474, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %471
  %478 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %479 = load ptr, ptr %478, align 4
  br label %480

480:                                              ; preds = %477, %471
  %481 = phi ptr [ %479, %477 ], [ %474, %471 ]
  %482 = getelementptr i32, ptr %481, i32 1
  store ptr %482, ptr %355, align 8
  store i32 0, ptr %481, align 4
  %483 = load ptr, ptr %355, align 8
  %484 = load ptr, ptr %357, align 8
  %485 = icmp eq ptr %483, %484
  br i1 %485, label %486, label %489

486:                                              ; preds = %480
  %487 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %488 = load ptr, ptr %487, align 4
  br label %489

489:                                              ; preds = %486, %480
  %490 = phi ptr [ %488, %486 ], [ %483, %480 ]
  %491 = getelementptr i32, ptr %490, i32 1
  store ptr %491, ptr %355, align 8
  store i32 0, ptr %490, align 4
  %492 = load ptr, ptr %355, align 8
  %493 = load ptr, ptr %357, align 8
  %494 = icmp eq ptr %492, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %489
  %496 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %497 = load ptr, ptr %496, align 4
  br label %498

498:                                              ; preds = %495, %489
  %499 = phi ptr [ %497, %495 ], [ %492, %489 ]
  %500 = getelementptr i32, ptr %499, i32 1
  store ptr %500, ptr %355, align 8
  store i32 0, ptr %499, align 4
  %501 = load ptr, ptr %355, align 8
  %502 = load ptr, ptr %357, align 8
  %503 = icmp eq ptr %501, %502
  br i1 %503, label %504, label %507

504:                                              ; preds = %498
  %505 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %506 = load ptr, ptr %505, align 4
  br label %507

507:                                              ; preds = %504, %498
  %508 = phi ptr [ %506, %504 ], [ %501, %498 ]
  %509 = getelementptr i32, ptr %508, i32 1
  store ptr %509, ptr %355, align 8
  store i32 0, ptr %508, align 4
  %510 = load ptr, ptr %355, align 8
  %511 = load ptr, ptr %357, align 8
  %512 = icmp eq ptr %510, %511
  br i1 %512, label %513, label %516

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.msm_ringbuffer, ptr %354, i32 0, i32 3
  %515 = load ptr, ptr %514, align 4
  br label %516

516:                                              ; preds = %513, %507
  %517 = phi ptr [ %515, %513 ], [ %510, %507 ]
  %518 = getelementptr i32, ptr %517, i32 1
  store ptr %518, ptr %355, align 8
  store i32 0, ptr %517, align 4
  tail call void @adreno_flush(ptr noundef %0, ptr noundef %354, i32 noundef 517) #4
  %519 = load ptr, ptr %305, align 4
  %520 = tail call zeroext i1 @adreno_idle(ptr noundef %0, ptr noundef %519) #4
  br i1 %520, label %521, label %535

521:                                              ; preds = %516
  %522 = load volatile i32, ptr @jiffies, align 64
  %523 = sub i32 -100, %522
  br label %524

524:                                              ; preds = %529, %521
  %525 = load ptr, ptr %39, align 8
  %526 = getelementptr i8, ptr %525, i32 1604
  %527 = tail call i32 @msm_readl(ptr noundef %526) #4
  %528 = icmp sgt i32 %527, -1
  br i1 %528, label %535, label %529

529:                                              ; preds = %524
  %530 = load volatile i32, ptr @jiffies, align 64
  %531 = add i32 %523, %530
  %532 = icmp slt i32 %531, 0
  br i1 %532, label %524, label %533

533:                                              ; preds = %529
  %534 = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef %534) #4
  br label %535

535:                                              ; preds = %533, %524, %516, %271
  %536 = phi i32 [ %300, %271 ], [ -22, %533 ], [ -22, %516 ], [ 0, %524 ]
  ret i32 %536
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a4xx_pm_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @msm_gpu_pm_suspend(ptr noundef %0) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 430
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 608
  tail call void @msm_writel(i32 noundef 7831553, ptr noundef %11) #4
  br label %12

12:                                               ; preds = %8, %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a4xx_pm_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @msm_gpu_pm_resume(ptr noundef %0) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 430
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 608
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %11) #4
  br label %12

12:                                               ; preds = %12, %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #4
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr i8, ptr %14, i32 1728
  %16 = tail call i32 @msm_readl(ptr noundef %15) #4
  %17 = and i32 %16, 1048576
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %12, label %19

19:                                               ; preds = %12, %4, %1
  %20 = phi i32 [ %2, %1 ], [ 0, %4 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a4xx_submit(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 3) #4
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
  store i32 -1073660160, ptr %36, align 4
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
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 1) #4
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
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #4
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
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #4
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
  store i32 -1073723904, ptr %104, align 4
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
  store i32 7, ptr %113, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 2) #4
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
  store i32 -1073732096, ptr %122, align 4
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
  store i32 0, ptr %131, align 4
  tail call void @adreno_wait_ring(ptr noundef %4, i32 noundef 4) #4
  %133 = load ptr, ptr %75, align 8
  %134 = load ptr, ptr %77, align 8
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi ptr [ %138, %136 ], [ %133, %130 ]
  %141 = getelementptr i32, ptr %140, i32 1
  store ptr %141, ptr %75, align 8
  store i32 -1073592832, ptr %140, align 4
  %142 = load ptr, ptr %75, align 8
  %143 = load ptr, ptr %77, align 8
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %139
  %149 = phi ptr [ %147, %145 ], [ %142, %139 ]
  %150 = getelementptr i32, ptr %149, i32 1
  store ptr %150, ptr %75, align 8
  store i32 -2147483644, ptr %149, align 4
  %151 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 14
  %152 = load i64, ptr %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = add i32 %153, 4
  %155 = load ptr, ptr %75, align 8
  %156 = load ptr, ptr %77, align 8
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %148
  %162 = phi ptr [ %160, %158 ], [ %155, %148 ]
  %163 = getelementptr i32, ptr %162, i32 1
  store ptr %163, ptr %75, align 8
  store i32 %154, ptr %162, align 4
  %164 = load i32, ptr %86, align 8
  %165 = load ptr, ptr %75, align 8
  %166 = load ptr, ptr %77, align 8
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  br label %171

171:                                              ; preds = %168, %161
  %172 = phi ptr [ %170, %168 ], [ %165, %161 ]
  %173 = getelementptr i32, ptr %172, i32 1
  store ptr %173, ptr %75, align 8
  store i32 %164, ptr %172, align 4
  tail call void @adreno_flush(ptr noundef %0, ptr noundef %4, i32 noundef 517) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a4xx_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1524
  %5 = tail call i32 @msm_readl(ptr noundef %4) #4
  %6 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %6, i32 noundef %5) #4
  %7 = and i32 %5, 65536
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 4968
  %12 = tail call i32 @msm_readl(ptr noundef %11) #4
  %13 = and i32 %12, 16777216
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.11, ptr @.str.10
  %16 = lshr i32 %12, 2
  %17 = and i32 %16, 262143
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %15, i32 noundef %17) #6
  br label %19

19:                                               ; preds = %9, %1
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr i8, ptr %20, i32 216
  tail call void @msm_writel(i32 noundef %5, ptr noundef %21) #4
  tail call void @msm_gpu_retire(ptr noundef %0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_active_ring(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a4xx_recover(ptr noundef %0) #0 {
  tail call void @adreno_dump_info(ptr noundef %0) #4
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 5600
  %5 = tail call i32 @msm_readl(ptr noundef %4) #4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %5) #6
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 5604
  %9 = tail call i32 @msm_readl(ptr noundef %8) #4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %9) #6
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 5608
  %13 = tail call i32 @msm_readl(ptr noundef %12) #4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %13) #6
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 5612
  %17 = tail call i32 @msm_readl(ptr noundef %16) #4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 3, i32 noundef %17) #6
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 5616
  %21 = tail call i32 @msm_readl(ptr noundef %20) #4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %21) #6
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 5620
  %25 = tail call i32 @msm_readl(ptr noundef %24) #4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 5, i32 noundef %25) #6
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr i8, ptr %27, i32 5624
  %29 = tail call i32 @msm_readl(ptr noundef %28) #4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef %29) #6
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i8, ptr %31, i32 5628
  %33 = tail call i32 @msm_readl(ptr noundef %32) #4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 7, i32 noundef %33) #6
  %35 = load i8, ptr @hang_debug, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %1
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr i8, ptr %38, i32 1604
  %40 = tail call i32 @msm_readl(ptr noundef %39) #4
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %40) #6
  tail call void @adreno_dump(ptr noundef %0) #4
  br label %42

42:                                               ; preds = %37, %1
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 136
  tail call void @msm_writel(i32 noundef 1, ptr noundef %44) #4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 136
  %47 = tail call i32 @msm_readl(ptr noundef %46) #4
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr i8, ptr %48, i32 136
  tail call void @msm_writel(i32 noundef 0, ptr noundef %49) #4
  tail call void @adreno_recover(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @a4xx_gpu_state_get(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 240) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @adreno_gpu_state_get(ptr noundef %0, ptr noundef nonnull %3) #4
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 1604
  %10 = tail call i32 @msm_readl(ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.msm_gpu_state, ptr %3, i32 0, i32 5
  store i32 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_put(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_iommu_create_address_space(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a4xx_get_rptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 2064
  %6 = tail call i32 @msm_readl(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  store volatile i32 %6, ptr %8, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load volatile i32, ptr %9, align 8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a4xx_get_timestamp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 624
  %6 = tail call i32 @msm_readl(ptr noundef %5) #4
  %7 = zext i32 %6 to i64
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 628
  %10 = tail call i32 @msm_readl(ptr noundef %9) #4
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %7
  store i64 %13, ptr %1, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_recover(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_ocmem_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { cold nounwind }

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
!9 = !{i64 2156104901, i64 2156105403, i64 2156104938, i64 2156104994, i64 2156105028, i64 2156105052, i64 2156105093, i64 2156105114, i64 2156105142, i64 2156105176}
