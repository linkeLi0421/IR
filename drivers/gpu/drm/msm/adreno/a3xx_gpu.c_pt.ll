; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a3xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a3xx_gpu.c"
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
%struct.a3xx_gpu = type { %struct.adreno_gpu, %struct.adreno_ocmem }
%struct.adreno_ocmem = type { ptr, i32, ptr }
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
@.str.1 = private unnamed_addr constant [24 x i8] c"*ERROR* no a3xx device\0A\00", align 1
@perfcntrs = internal constant [2 x %struct.msm_gpu_perfcntr] [%struct.msm_gpu_perfcntr { i32 3786, i32 222, i32 29, ptr @.str.5 }, %struct.msm_gpu_perfcntr { i32 3787, i32 224, i32 14, ptr @.str.6 }], align 4
@a3xx_registers = internal constant [273 x i32] [i32 0, i32 2, i32 16, i32 18, i32 24, i32 24, i32 32, i32 39, i32 41, i32 43, i32 46, i32 51, i32 64, i32 66, i32 80, i32 92, i32 96, i32 108, i32 128, i32 130, i32 132, i32 136, i32 144, i32 229, i32 234, i32 237, i32 256, i32 256, i32 272, i32 291, i32 448, i32 449, i32 451, i32 453, i32 455, i32 455, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 497, i32 501, i32 501, i32 508, i32 511, i32 1088, i32 1088, i32 1091, i32 1091, i32 1093, i32 1093, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1135, i32 1148, i32 1148, i32 1151, i32 1151, i32 1400, i32 1407, i32 1536, i32 1538, i32 1541, i32 1543, i32 1546, i32 1550, i32 1554, i32 1556, i32 3073, i32 3074, i32 3078, i32 3101, i32 3133, i32 3135, i32 3144, i32 3147, i32 3200, i32 3200, i32 3208, i32 3211, i32 3232, i32 3255, i32 3264, i32 3265, i32 3270, i32 3271, i32 3300, i32 3301, i32 3584, i32 3589, i32 3596, i32 3596, i32 3618, i32 3619, i32 3649, i32 3653, i32 3684, i32 3685, i32 3712, i32 3714, i32 3716, i32 3721, i32 3744, i32 3745, i32 3748, i32 3751, i32 3780, i32 3787, i32 3808, i32 3808, i32 3840, i32 3841, i32 3843, i32 3849, i32 8256, i32 8256, i32 8260, i32 8260, i32 8264, i32 8269, i32 8296, i32 8297, i32 8300, i32 8301, i32 8304, i32 8304, i32 8306, i32 8306, i32 8308, i32 8309, i32 8313, i32 8314, i32 8384, i32 8403, i32 8420, i32 8431, i32 8448, i32 8457, i32 8460, i32 8460, i32 8462, i32 8462, i32 8464, i32 8465, i32 8468, i32 8469, i32 8676, i32 8676, i32 8682, i32 8682, i32 8684, i32 8685, i32 8688, i32 8688, i32 8704, i32 8722, i32 8724, i32 8727, i32 8730, i32 8730, i32 8768, i32 8830, i32 8832, i32 8843, i32 8896, i32 8896, i32 8900, i32 8910, i32 8912, i32 8920, i32 8927, i32 8934, i32 8936, i32 8937, i32 8940, i32 8940, i32 8944, i32 8951, i32 8959, i32 8959, i32 9024, i32 9027, i32 9280, i32 9280, i32 9284, i32 9284, i32 9288, i32 9293, i32 9320, i32 9321, i32 9324, i32 9325, i32 9328, i32 9328, i32 9330, i32 9330, i32 9332, i32 9333, i32 9337, i32 9338, i32 9408, i32 9427, i32 9444, i32 9455, i32 9472, i32 9481, i32 9484, i32 9484, i32 9486, i32 9486, i32 9488, i32 9489, i32 9492, i32 9493, i32 9700, i32 9700, i32 9706, i32 9706, i32 9708, i32 9709, i32 9712, i32 9712, i32 9728, i32 9746, i32 9748, i32 9751, i32 9754, i32 9754, i32 9792, i32 9854, i32 9856, i32 9867, i32 9920, i32 9920, i32 9924, i32 9934, i32 9936, i32 9944, i32 9951, i32 9958, i32 9960, i32 9961, i32 9964, i32 9964, i32 9968, i32 9975, i32 9983, i32 9983, i32 10048, i32 10051, i32 12300, i32 12302, i32 12316, i32 12317, i32 12330, i32 12330, i32 12332, i32 12333, i32 12336, i32 12337, i32 12340, i32 12342, i32 12348, i32 12348, i32 12382, i32 12383, i32 -1], align 4
@funcs = internal constant %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a3xx_hw_init, ptr @msm_gpu_pm_suspend, ptr @msm_gpu_pm_resume, ptr @a3xx_submit, ptr null, ptr @a3xx_irq, ptr @adreno_active_ring, ptr @a3xx_recover, ptr @a3xx_destroy, ptr @adreno_show, ptr null, ptr null, ptr @a3xx_gpu_state_get, ptr @adreno_gpu_state_put, ptr null, ptr null, ptr @adreno_iommu_create_address_space, ptr null, ptr @a3xx_get_rptr }, ptr null }, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"*ERROR* No memory protection without IOMMU\0A\00", align 1
@allow_vram_carveout = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"gfx-mem\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ocmem\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"ALUACTIVE\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ALUFULL\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"loading PM4 ucode version: %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"loading PFP ucode version: %x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [38 x i8] c"%s: timeout waiting for GPU to idle!\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", align 1
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"status:   %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @a3xx_gpu_init(ptr noundef %0) local_unnamed_addr #0 {
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
  br label %67

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 680) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %67, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 11
  store ptr @perfcntrs, ptr %15, align 4
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 12
  store i32 2, ptr %16, align 8
  %17 = getelementptr inbounds %struct.adreno_gpu, ptr %12, i32 0, i32 6
  store ptr @a3xx_registers, ptr %17, align 4
  %18 = tail call i32 @adreno_gpu_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull @funcs, i32 noundef 1) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.adreno_gpu, ptr %12, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 330
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.a3xx_gpu, ptr %12, i32 0, i32 1
  %29 = tail call i32 @adreno_gpu_ocmem_init(ptr noundef %27, ptr noundef nonnull %12, ptr noundef %28) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %24, %20
  %32 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 24
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4
  %38 = load i8, ptr @allow_vram_carveout, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %42 = tail call ptr @devm_of_icc_get(ptr noundef %41, ptr noundef nonnull @.str.3) #4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = ptrtoint ptr %42 to i32
  br label %63

46:                                               ; preds = %40
  %47 = tail call ptr @devm_of_icc_get(ptr noundef %41, ptr noundef nonnull @.str.4) #4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  %51 = icmp eq ptr %47, inttoptr (i32 -61 to ptr)
  br i1 %51, label %52, label %63

52:                                               ; preds = %49, %46
  %53 = phi ptr [ %47, %46 ], [ null, %49 ]
  %54 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 32
  %55 = load i32, ptr %54, align 8
  %56 = udiv i32 %55, 1000
  %57 = shl nuw nsw i32 %56, 3
  %58 = tail call i32 @icc_set_bw(ptr noundef %42, i32 noundef 0, i32 noundef %57) #4
  %59 = load i32, ptr %54, align 8
  %60 = udiv i32 %59, 1000
  %61 = shl nuw nsw i32 %60, 3
  %62 = tail call i32 @icc_set_bw(ptr noundef %53, i32 noundef 0, i32 noundef %61) #4
  br label %70

63:                                               ; preds = %49, %44, %35, %24, %14
  %64 = phi i32 [ -6, %35 ], [ %50, %49 ], [ %45, %44 ], [ %29, %24 ], [ %18, %14 ]
  %65 = load ptr, ptr %12, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %65) #4
  tail call void @adreno_gpu_cleanup(ptr noundef nonnull %12) #4
  %66 = getelementptr inbounds %struct.a3xx_gpu, ptr %12, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %66) #4
  tail call void @kfree(ptr noundef nonnull %12) #4
  br label %67

67:                                               ; preds = %63, %10, %7
  %68 = phi i32 [ %64, %63 ], [ -6, %7 ], [ -12, %10 ]
  %69 = inttoptr i32 %68 to ptr
  br label %70

70:                                               ; preds = %67, %52
  %71 = phi ptr [ %69, %67 ], [ %12, %52 ]
  ret ptr %71
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
define internal void @a3xx_destroy(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %2) #4
  tail call void @adreno_gpu_cleanup(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.a3xx_gpu, ptr %0, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %3) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a3xx_hw_init(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %81 [
    i32 305, label %5
    i32 307, label %23
    i32 320, label %25
    i32 330, label %47
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 49328
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %8) #4
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 49332
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %10) #4
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 49360
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %12) #4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr i8, ptr %13, i32 49364
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %14) #4
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr i8, ptr %15, i32 49368
  tail call void @msm_writel(i32 noundef 771, ptr noundef %16) #4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr i8, ptr %17, i32 49344
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %18) #4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr i8, ptr %19, i32 49348
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %20) #4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr i8, ptr %21, i32 49320
  tail call void @msm_writel(i32 noundef 255, ptr noundef %22) #4
  br label %82

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %82

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 49328
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %28) #4
  %29 = load ptr, ptr %26, align 8
  %30 = getelementptr i8, ptr %29, i32 49332
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %30) #4
  %31 = load ptr, ptr %26, align 8
  %32 = getelementptr i8, ptr %31, i32 49360
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %32) #4
  %33 = load ptr, ptr %26, align 8
  %34 = getelementptr i8, ptr %33, i32 49364
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %34) #4
  %35 = load ptr, ptr %26, align 8
  %36 = getelementptr i8, ptr %35, i32 49368
  tail call void @msm_writel(i32 noundef 771, ptr noundef %36) #4
  %37 = load ptr, ptr %26, align 8
  %38 = getelementptr i8, ptr %37, i32 49344
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %38) #4
  %39 = load ptr, ptr %26, align 8
  %40 = getelementptr i8, ptr %39, i32 49348
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %40) #4
  %41 = load ptr, ptr %26, align 8
  %42 = getelementptr i8, ptr %41, i32 49320
  tail call void @msm_writel(i32 noundef 255, ptr noundef %42) #4
  %43 = load ptr, ptr %26, align 8
  %44 = getelementptr i8, ptr %43, i32 49392
  tail call void @msm_writel(i32 noundef 48, ptr noundef %44) #4
  %45 = load ptr, ptr %26, align 8
  %46 = getelementptr i8, ptr %45, i32 49528
  tail call void @msm_writel(i32 noundef 60, ptr noundef %46) #4
  br label %82

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %52 = load ptr, ptr %51, align 8
  br i1 %50, label %57, label %53

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %52, i32 49264
  tail call void @msm_writel(i32 noundef 65599, ptr noundef %54) #4
  %55 = load ptr, ptr %51, align 8
  %56 = getelementptr i8, ptr %55, i32 49268
  tail call void @msm_writel(i32 noundef 164, ptr noundef %56) #4
  br label %82

57:                                               ; preds = %47
  %58 = getelementptr i8, ptr %52, i32 49328
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %58) #4
  %59 = load ptr, ptr %51, align 8
  %60 = getelementptr i8, ptr %59, i32 49332
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %60) #4
  %61 = load ptr, ptr %51, align 8
  %62 = getelementptr i8, ptr %61, i32 49360
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %62) #4
  %63 = load ptr, ptr %51, align 8
  %64 = getelementptr i8, ptr %63, i32 49364
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %64) #4
  %65 = load ptr, ptr %51, align 8
  %66 = getelementptr i8, ptr %65, i32 49368
  tail call void @msm_writel(i32 noundef 771, ptr noundef %66) #4
  %67 = load ptr, ptr %51, align 8
  %68 = getelementptr i8, ptr %67, i32 49344
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %68) #4
  %69 = load ptr, ptr %51, align 8
  %70 = getelementptr i8, ptr %69, i32 49348
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %70) #4
  %71 = load ptr, ptr %51, align 8
  %72 = getelementptr i8, ptr %71, i32 49320
  tail call void @msm_writel(i32 noundef 63, ptr noundef %72) #4
  %73 = load ptr, ptr %51, align 8
  %74 = getelementptr i8, ptr %73, i32 49392
  tail call void @msm_writel(i32 noundef 48, ptr noundef %74) #4
  %75 = load ptr, ptr %51, align 8
  %76 = getelementptr i8, ptr %75, i32 49444
  tail call void @msm_writel(i32 noundef 1, ptr noundef %76) #4
  %77 = load ptr, ptr %51, align 8
  %78 = getelementptr i8, ptr %77, i32 49528
  tail call void @msm_writel(i32 noundef 63, ptr noundef %78) #4
  %79 = load ptr, ptr %51, align 8
  %80 = getelementptr i8, ptr %79, i32 49532
  tail call void @msm_writel(i32 noundef 4128831, ptr noundef %80) #4
  br label %82

81:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a3xx_gpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

82:                                               ; preds = %57, %53, %25, %23, %5
  %83 = phi ptr [ %24, %23 ], [ %51, %53 ], [ %51, %57 ], [ %26, %25 ], [ %6, %5 ]
  %84 = phi i32 [ 49444, %23 ], [ 49320, %53 ], [ 49264, %57 ], [ 49532, %25 ], [ 49392, %5 ]
  %85 = phi i32 [ 3, %23 ], [ 63, %53 ], [ 65599, %57 ], [ 3932220, %25 ], [ 48, %5 ]
  %86 = phi i32 [ 49360, %23 ], [ 49368, %53 ], [ 49268, %57 ], [ 49264, %25 ], [ 49528, %5 ]
  %87 = phi i32 [ 10, %23 ], [ 771, %53 ], [ 164, %57 ], [ 255, %25 ], [ 60, %5 ]
  %88 = phi i32 [ 49364, %23 ], [ 49444, %53 ], [ 49156, %57 ], [ 49268, %25 ], [ 49532, %5 ]
  %89 = phi i32 [ 10, %23 ], [ 3, %53 ], [ 1, %57 ], [ 164, %25 ], [ 3932220, %5 ]
  %90 = load ptr, ptr %83, align 8
  %91 = getelementptr i8, ptr %90, i32 %84
  tail call void @msm_writel(i32 noundef %85, ptr noundef %91) #4
  %92 = load ptr, ptr %83, align 8
  %93 = getelementptr i8, ptr %92, i32 %86
  tail call void @msm_writel(i32 noundef %87, ptr noundef %93) #4
  %94 = load ptr, ptr %83, align 8
  %95 = getelementptr i8, ptr %94, i32 %88
  tail call void @msm_writel(i32 noundef %89, ptr noundef %95) #4
  %96 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr i8, ptr %97, i32 544
  tail call void @msm_writel(i32 noundef -1, ptr noundef %98) #4
  %99 = load ptr, ptr %96, align 8
  %100 = getelementptr i8, ptr %99, i32 72
  tail call void @msm_writel(i32 noundef 16, ptr noundef %100) #4
  %101 = load ptr, ptr %96, align 8
  %102 = getelementptr i8, ptr %101, i32 204
  tail call void @msm_writel(i32 noundef 16, ptr noundef %102) #4
  %103 = load ptr, ptr %96, align 8
  %104 = getelementptr i8, ptr %103, i32 128
  tail call void @msm_writel(i32 noundef 1, ptr noundef %104) #4
  %105 = load ptr, ptr %96, align 8
  %106 = getelementptr i8, ptr %105, i32 132
  tail call void @msm_writel(i32 noundef -1493172225, ptr noundef %106) #4
  %107 = load ptr, ptr %96, align 8
  %108 = getelementptr i8, ptr %107, i32 1024
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %108) #4
  %109 = load ptr, ptr %96, align 8
  %110 = getelementptr i8, ptr %109, i32 320
  tail call void @msm_writel(i32 noundef 69631, ptr noundef %110) #4
  %111 = load ptr, ptr %96, align 8
  %112 = getelementptr i8, ptr %111, i32 14856
  tail call void @msm_writel(i32 noundef 1, ptr noundef %112) #4
  %113 = load i32, ptr %3, align 4
  switch i32 %113, label %138 [
    i32 307, label %114
    i32 320, label %117
    i32 330, label %120
  ]

114:                                              ; preds = %82
  %115 = load ptr, ptr %96, align 8
  %116 = getelementptr i8, ptr %115, i32 64
  tail call void @msm_writel(i32 noundef -1431655766, ptr noundef %116) #4
  br label %128

117:                                              ; preds = %82
  %118 = load ptr, ptr %96, align 8
  %119 = getelementptr i8, ptr %118, i32 64
  tail call void @msm_writel(i32 noundef -1073741825, ptr noundef %119) #4
  br label %128

120:                                              ; preds = %82
  %121 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 0
  %124 = load ptr, ptr %96, align 8
  %125 = getelementptr i8, ptr %124, i32 64
  br i1 %123, label %127, label %126

126:                                              ; preds = %120
  tail call void @msm_writel(i32 noundef -1431655766, ptr noundef %125) #4
  br label %128

127:                                              ; preds = %120
  tail call void @msm_writel(i32 noundef -1073938433, ptr noundef %125) #4
  br label %128

128:                                              ; preds = %127, %126, %117, %114
  %129 = load i32, ptr %3, align 4
  %130 = icmp eq i32 %129, 330
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %133, 0
  %135 = load ptr, ptr %96, align 8
  %136 = getelementptr i8, ptr %135, i32 184
  %137 = select i1 %134, i32 0, i32 89216085
  tail call void @msm_writel(i32 noundef %137, ptr noundef %136) #4
  br label %138

138:                                              ; preds = %131, %128, %82
  %139 = getelementptr inbounds %struct.a3xx_gpu, ptr %0, i32 0, i32 1, i32 2
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.a3xx_gpu, ptr %0, i32 0, i32 1, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = lshr i32 %144, 14
  %146 = load ptr, ptr %96, align 8
  %147 = getelementptr i8, ptr %146, i32 13056
  tail call void @msm_writel(i32 noundef %145, ptr noundef %147) #4
  br label %148

148:                                              ; preds = %142, %138
  %149 = load ptr, ptr %96, align 8
  %150 = getelementptr i8, ptr %149, i32 512
  tail call void @msm_writel(i32 noundef 1, ptr noundef %150) #4
  %151 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 12
  %152 = load i32, ptr %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 11
  br label %156

156:                                              ; preds = %156, %154
  %157 = phi i32 [ 0, %154 ], [ %166, %156 ]
  %158 = load ptr, ptr %155, align 4
  %159 = getelementptr %struct.msm_gpu_perfcntr, ptr %158, i32 %157
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr %struct.msm_gpu_perfcntr, ptr %158, i32 %157, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = load ptr, ptr %96, align 8
  %164 = shl i32 %160, 2
  %165 = getelementptr i8, ptr %163, i32 %164
  tail call void @msm_writel(i32 noundef %162, ptr noundef %165) #4
  %166 = add nuw i32 %157, 1
  %167 = load i32, ptr %151, align 8
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %156, label %169

169:                                              ; preds = %156, %148
  %170 = load ptr, ptr %96, align 8
  %171 = getelementptr i8, ptr %170, i32 396
  tail call void @msm_writel(i32 noundef 36826914, ptr noundef %171) #4
  %172 = tail call i32 @adreno_hw_init(ptr noundef %0) #4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %446

174:                                              ; preds = %169
  %175 = load ptr, ptr %96, align 8
  %176 = getelementptr i8, ptr %175, i32 1796
  tail call void @msm_writel(i32 noundef 134218252, ptr noundef %176) #4
  %177 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.msm_ringbuffer, ptr %178, i32 0, i32 10
  %180 = load i64, ptr %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = load ptr, ptr %96, align 8
  %183 = getelementptr i8, ptr %182, i32 1792
  tail call void @msm_writel(i32 noundef %181, ptr noundef %183) #4
  %184 = load ptr, ptr %96, align 8
  %185 = getelementptr i8, ptr %184, i32 4472
  tail call void @msm_writel(i32 noundef 7, ptr noundef %185) #4
  %186 = load ptr, ptr %96, align 8
  %187 = getelementptr i8, ptr %186, i32 4480
  tail call void @msm_writel(i32 noundef 1660944448, ptr noundef %187) #4
  %188 = load ptr, ptr %96, align 8
  %189 = getelementptr i8, ptr %188, i32 4484
  tail call void @msm_writel(i32 noundef 1644167296, ptr noundef %189) #4
  %190 = load ptr, ptr %96, align 8
  %191 = getelementptr i8, ptr %190, i32 4488
  tail call void @msm_writel(i32 noundef 1610612940, ptr noundef %191) #4
  %192 = load ptr, ptr %96, align 8
  %193 = getelementptr i8, ptr %192, i32 4492
  tail call void @msm_writel(i32 noundef 1610613000, ptr noundef %193) #4
  %194 = load ptr, ptr %96, align 8
  %195 = getelementptr i8, ptr %194, i32 4496
  tail call void @msm_writel(i32 noundef 1677721920, ptr noundef %195) #4
  %196 = load ptr, ptr %96, align 8
  %197 = getelementptr i8, ptr %196, i32 4500
  tail call void @msm_writel(i32 noundef 1711277056, ptr noundef %197) #4
  %198 = load ptr, ptr %96, align 8
  %199 = getelementptr i8, ptr %198, i32 4504
  tail call void @msm_writel(i32 noundef 1694500608, ptr noundef %199) #4
  %200 = load ptr, ptr %96, align 8
  %201 = getelementptr i8, ptr %200, i32 4508
  tail call void @msm_writel(i32 noundef 1627391960, ptr noundef %201) #4
  %202 = load ptr, ptr %96, align 8
  %203 = getelementptr i8, ptr %202, i32 4512
  tail call void @msm_writel(i32 noundef 1644169184, ptr noundef %203) #4
  %204 = load ptr, ptr %96, align 8
  %205 = getelementptr i8, ptr %204, i32 4516
  tail call void @msm_writel(i32 noundef 1627394424, ptr noundef %205) #4
  %206 = load ptr, ptr %96, align 8
  %207 = getelementptr i8, ptr %206, i32 4520
  tail call void @msm_writel(i32 noundef 1677726080, ptr noundef %207) #4
  %208 = load ptr, ptr %96, align 8
  %209 = getelementptr i8, ptr %208, i32 4524
  tail call void @msm_writel(i32 noundef 1610625792, ptr noundef %209) #4
  %210 = load ptr, ptr %96, align 8
  %211 = getelementptr i8, ptr %210, i32 4528
  tail call void @msm_writel(i32 noundef 1795211264, ptr noundef %211) #4
  %212 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 8
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.firmware, ptr %213, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = load i32, ptr %213, align 4
  %217 = getelementptr i32, ptr %215, i32 1
  %218 = load i32, ptr %217, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %218) #4
  %219 = load ptr, ptr %96, align 8
  %220 = getelementptr i8, ptr %219, i32 2032
  tail call void @msm_writel(i32 noundef 167772160, ptr noundef %220) #4
  %221 = load ptr, ptr %96, align 8
  %222 = getelementptr i8, ptr %221, i32 2016
  tail call void @msm_writel(i32 noundef 0, ptr noundef %222) #4
  %223 = icmp ugt i32 %216, 7
  br i1 %223, label %224, label %234

224:                                              ; preds = %174
  %225 = lshr i32 %216, 2
  br label %226

226:                                              ; preds = %226, %224
  %227 = phi i32 [ %232, %226 ], [ 1, %224 ]
  %228 = getelementptr i32, ptr %215, i32 %227
  %229 = load i32, ptr %228, align 4
  %230 = load ptr, ptr %96, align 8
  %231 = getelementptr i8, ptr %230, i32 2024
  tail call void @msm_writel(i32 noundef %229, ptr noundef %231) #4
  %232 = add nuw nsw i32 %227, 1
  %233 = icmp eq i32 %232, %225
  br i1 %233, label %234, label %226

234:                                              ; preds = %226, %174
  %235 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.firmware, ptr %236, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  %239 = load i32, ptr %236, align 4
  %240 = getelementptr i32, ptr %238, i32 5
  %241 = load i32, ptr %240, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %241) #4
  %242 = load ptr, ptr %96, align 8
  %243 = getelementptr i8, ptr %242, i32 1828
  tail call void @msm_writel(i32 noundef 0, ptr noundef %243) #4
  %244 = icmp ugt i32 %239, 7
  br i1 %244, label %245, label %255

245:                                              ; preds = %234
  %246 = lshr i32 %239, 2
  br label %247

247:                                              ; preds = %247, %245
  %248 = phi i32 [ %253, %247 ], [ 1, %245 ]
  %249 = getelementptr i32, ptr %238, i32 %248
  %250 = load i32, ptr %249, align 4
  %251 = load ptr, ptr %96, align 8
  %252 = getelementptr i8, ptr %251, i32 1832
  tail call void @msm_writel(i32 noundef %250, ptr noundef %252) #4
  %253 = add nuw nsw i32 %248, 1
  %254 = icmp eq i32 %253, %246
  br i1 %254, label %255, label %247

255:                                              ; preds = %247, %234
  %256 = load i32, ptr %3, align 4
  switch i32 %256, label %262 [
    i32 305, label %258
    i32 307, label %258
    i32 320, label %258
    i32 330, label %257
  ]

257:                                              ; preds = %255
  br label %258

258:                                              ; preds = %257, %255, %255, %255
  %259 = phi i32 [ 4071432, %257 ], [ 919042, %255 ], [ 919042, %255 ], [ 919042, %255 ]
  %260 = load ptr, ptr %96, align 8
  %261 = getelementptr i8, ptr %260, i32 1876
  tail call void @msm_writel(i32 noundef %259, ptr noundef %261) #4
  br label %262

262:                                              ; preds = %258, %255
  %263 = load ptr, ptr %96, align 8
  %264 = getelementptr i8, ptr %263, i32 2008
  tail call void @msm_writel(i32 noundef 0, ptr noundef %264) #4
  %265 = load ptr, ptr %177, align 4
  tail call void @adreno_wait_ring(ptr noundef %265, i32 noundef 18) #4
  %266 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 6
  %267 = load ptr, ptr %266, align 8
  %268 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 4
  %269 = load ptr, ptr %268, align 8
  %270 = icmp eq ptr %267, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %262
  %272 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %273 = load ptr, ptr %272, align 4
  br label %274

274:                                              ; preds = %271, %262
  %275 = phi ptr [ %273, %271 ], [ %267, %262 ]
  %276 = getelementptr i32, ptr %275, i32 1
  store ptr %276, ptr %266, align 8
  store i32 -1072674816, ptr %275, align 4
  %277 = load ptr, ptr %266, align 8
  %278 = load ptr, ptr %268, align 8
  %279 = icmp eq ptr %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %282 = load ptr, ptr %281, align 4
  br label %283

283:                                              ; preds = %280, %274
  %284 = phi ptr [ %282, %280 ], [ %277, %274 ]
  %285 = getelementptr i32, ptr %284, i32 1
  store ptr %285, ptr %266, align 8
  store i32 1015, ptr %284, align 4
  %286 = load ptr, ptr %266, align 8
  %287 = load ptr, ptr %268, align 8
  %288 = icmp eq ptr %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %291 = load ptr, ptr %290, align 4
  br label %292

292:                                              ; preds = %289, %283
  %293 = phi ptr [ %291, %289 ], [ %286, %283 ]
  %294 = getelementptr i32, ptr %293, i32 1
  store ptr %294, ptr %266, align 8
  store i32 0, ptr %293, align 4
  %295 = load ptr, ptr %266, align 8
  %296 = load ptr, ptr %268, align 8
  %297 = icmp eq ptr %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %300 = load ptr, ptr %299, align 4
  br label %301

301:                                              ; preds = %298, %292
  %302 = phi ptr [ %300, %298 ], [ %295, %292 ]
  %303 = getelementptr i32, ptr %302, i32 1
  store ptr %303, ptr %266, align 8
  store i32 0, ptr %302, align 4
  %304 = load ptr, ptr %266, align 8
  %305 = load ptr, ptr %268, align 8
  %306 = icmp eq ptr %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %309 = load ptr, ptr %308, align 4
  br label %310

310:                                              ; preds = %307, %301
  %311 = phi ptr [ %309, %307 ], [ %304, %301 ]
  %312 = getelementptr i32, ptr %311, i32 1
  store ptr %312, ptr %266, align 8
  store i32 0, ptr %311, align 4
  %313 = load ptr, ptr %266, align 8
  %314 = load ptr, ptr %268, align 8
  %315 = icmp eq ptr %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %318 = load ptr, ptr %317, align 4
  br label %319

319:                                              ; preds = %316, %310
  %320 = phi ptr [ %318, %316 ], [ %313, %310 ]
  %321 = getelementptr i32, ptr %320, i32 1
  store ptr %321, ptr %266, align 8
  store i32 128, ptr %320, align 4
  %322 = load ptr, ptr %266, align 8
  %323 = load ptr, ptr %268, align 8
  %324 = icmp eq ptr %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %327 = load ptr, ptr %326, align 4
  br label %328

328:                                              ; preds = %325, %319
  %329 = phi ptr [ %327, %325 ], [ %322, %319 ]
  %330 = getelementptr i32, ptr %329, i32 1
  store ptr %330, ptr %266, align 8
  store i32 256, ptr %329, align 4
  %331 = load ptr, ptr %266, align 8
  %332 = load ptr, ptr %268, align 8
  %333 = icmp eq ptr %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %336 = load ptr, ptr %335, align 4
  br label %337

337:                                              ; preds = %334, %328
  %338 = phi ptr [ %336, %334 ], [ %331, %328 ]
  %339 = getelementptr i32, ptr %338, i32 1
  store ptr %339, ptr %266, align 8
  store i32 384, ptr %338, align 4
  %340 = load ptr, ptr %266, align 8
  %341 = load ptr, ptr %268, align 8
  %342 = icmp eq ptr %340, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %345 = load ptr, ptr %344, align 4
  br label %346

346:                                              ; preds = %343, %337
  %347 = phi ptr [ %345, %343 ], [ %340, %337 ]
  %348 = getelementptr i32, ptr %347, i32 1
  store ptr %348, ptr %266, align 8
  store i32 26112, ptr %347, align 4
  %349 = load ptr, ptr %266, align 8
  %350 = load ptr, ptr %268, align 8
  %351 = icmp eq ptr %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %354 = load ptr, ptr %353, align 4
  br label %355

355:                                              ; preds = %352, %346
  %356 = phi ptr [ %354, %352 ], [ %349, %346 ]
  %357 = getelementptr i32, ptr %356, i32 1
  store ptr %357, ptr %266, align 8
  store i32 336, ptr %356, align 4
  %358 = load ptr, ptr %266, align 8
  %359 = load ptr, ptr %268, align 8
  %360 = icmp eq ptr %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %363 = load ptr, ptr %362, align 4
  br label %364

364:                                              ; preds = %361, %355
  %365 = phi ptr [ %363, %361 ], [ %358, %355 ]
  %366 = getelementptr i32, ptr %365, i32 1
  store ptr %366, ptr %266, align 8
  store i32 334, ptr %365, align 4
  %367 = load ptr, ptr %266, align 8
  %368 = load ptr, ptr %268, align 8
  %369 = icmp eq ptr %367, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %372 = load ptr, ptr %371, align 4
  br label %373

373:                                              ; preds = %370, %364
  %374 = phi ptr [ %372, %370 ], [ %367, %364 ]
  %375 = getelementptr i32, ptr %374, i32 1
  store ptr %375, ptr %266, align 8
  store i32 340, ptr %374, align 4
  %376 = load ptr, ptr %266, align 8
  %377 = load ptr, ptr %268, align 8
  %378 = icmp eq ptr %376, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %381 = load ptr, ptr %380, align 4
  br label %382

382:                                              ; preds = %379, %373
  %383 = phi ptr [ %381, %379 ], [ %376, %373 ]
  %384 = getelementptr i32, ptr %383, i32 1
  store ptr %384, ptr %266, align 8
  store i32 1, ptr %383, align 4
  %385 = load ptr, ptr %266, align 8
  %386 = load ptr, ptr %268, align 8
  %387 = icmp eq ptr %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %390 = load ptr, ptr %389, align 4
  br label %391

391:                                              ; preds = %388, %382
  %392 = phi ptr [ %390, %388 ], [ %385, %382 ]
  %393 = getelementptr i32, ptr %392, i32 1
  store ptr %393, ptr %266, align 8
  store i32 0, ptr %392, align 4
  %394 = load ptr, ptr %266, align 8
  %395 = load ptr, ptr %268, align 8
  %396 = icmp eq ptr %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %391
  %398 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %399 = load ptr, ptr %398, align 4
  br label %400

400:                                              ; preds = %397, %391
  %401 = phi ptr [ %399, %397 ], [ %394, %391 ]
  %402 = getelementptr i32, ptr %401, i32 1
  store ptr %402, ptr %266, align 8
  store i32 0, ptr %401, align 4
  %403 = load ptr, ptr %266, align 8
  %404 = load ptr, ptr %268, align 8
  %405 = icmp eq ptr %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %408 = load ptr, ptr %407, align 4
  br label %409

409:                                              ; preds = %406, %400
  %410 = phi ptr [ %408, %406 ], [ %403, %400 ]
  %411 = getelementptr i32, ptr %410, i32 1
  store ptr %411, ptr %266, align 8
  store i32 0, ptr %410, align 4
  %412 = load ptr, ptr %266, align 8
  %413 = load ptr, ptr %268, align 8
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %417 = load ptr, ptr %416, align 4
  br label %418

418:                                              ; preds = %415, %409
  %419 = phi ptr [ %417, %415 ], [ %412, %409 ]
  %420 = getelementptr i32, ptr %419, i32 1
  store ptr %420, ptr %266, align 8
  store i32 0, ptr %419, align 4
  %421 = load ptr, ptr %266, align 8
  %422 = load ptr, ptr %268, align 8
  %423 = icmp eq ptr %421, %422
  br i1 %423, label %424, label %427

424:                                              ; preds = %418
  %425 = getelementptr inbounds %struct.msm_ringbuffer, ptr %265, i32 0, i32 3
  %426 = load ptr, ptr %425, align 4
  br label %427

427:                                              ; preds = %424, %418
  %428 = phi ptr [ %426, %424 ], [ %421, %418 ]
  %429 = getelementptr i32, ptr %428, i32 1
  store ptr %429, ptr %266, align 8
  store i32 0, ptr %428, align 4
  tail call void @adreno_flush(ptr noundef %0, ptr noundef %265, i32 noundef 453) #4
  %430 = load ptr, ptr %177, align 4
  %431 = tail call zeroext i1 @adreno_idle(ptr noundef %0, ptr noundef %430) #4
  br i1 %431, label %432, label %446

432:                                              ; preds = %427
  %433 = load volatile i32, ptr @jiffies, align 64
  %434 = sub i32 -100, %433
  br label %435

435:                                              ; preds = %440, %432
  %436 = load ptr, ptr %96, align 8
  %437 = getelementptr i8, ptr %436, i32 192
  %438 = tail call i32 @msm_readl(ptr noundef %437) #4
  %439 = icmp sgt i32 %438, -1
  br i1 %439, label %446, label %440

440:                                              ; preds = %435
  %441 = load volatile i32, ptr @jiffies, align 64
  %442 = add i32 %434, %441
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %435, label %444

444:                                              ; preds = %440
  %445 = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef %445) #4
  br label %446

446:                                              ; preds = %444, %435, %427, %169
  %447 = phi i32 [ %172, %169 ], [ -22, %444 ], [ -22, %427 ], [ 0, %435 ]
  ret i32 %447
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a3xx_submit(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  tail call void @adreno_flush(ptr noundef %0, ptr noundef %4, i32 noundef 453) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a3xx_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 400
  %5 = tail call i32 @msm_readl(ptr noundef %4) #4
  %6 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef %6, i32 noundef %5) #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 388
  tail call void @msm_writel(i32 noundef %5, ptr noundef %8) #4
  tail call void @msm_gpu_retire(ptr noundef %0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_active_ring(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a3xx_recover(ptr noundef %0) #0 {
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
  %39 = getelementptr i8, ptr %38, i32 192
  %40 = tail call i32 @msm_readl(ptr noundef %39) #4
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %40) #6
  tail call void @adreno_dump(ptr noundef %0) #4
  br label %42

42:                                               ; preds = %37, %1
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 96
  tail call void @msm_writel(i32 noundef 1, ptr noundef %44) #4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 96
  %47 = tail call i32 @msm_readl(ptr noundef %46) #4
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr i8, ptr %48, i32 96
  tail call void @msm_writel(i32 noundef 0, ptr noundef %49) #4
  tail call void @adreno_recover(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @a3xx_gpu_state_get(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 240) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @adreno_gpu_state_get(ptr noundef %0, ptr noundef nonnull %3) #4
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 192
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
define internal i32 @a3xx_get_rptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1808
  %6 = tail call i32 @msm_readl(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  store volatile i32 %6, ptr %8, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load volatile i32, ptr %9, align 8
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

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
!9 = !{i64 2156052731, i64 2156053233, i64 2156052768, i64 2156052824, i64 2156052858, i64 2156052882, i64 2156052923, i64 2156052944, i64 2156052972, i64 2156053006}
