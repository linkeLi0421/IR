; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.77 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.71, i64, i64, i32, %struct.kref, i32 }
%union.anon.71 = type { i64 }
%struct.drm_etnaviv_timespec = type { i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.76, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.76 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_fence = type { ptr, %struct.dma_fence }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_perfmon_request = type { i32, i8, i8, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@.str = private unnamed_addr constant [23 x i8] c"%s: invalid param: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to enable GPU power domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Unknown GPU model\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Ignoring GPU with VG and FE2.0\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"GPU reset failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"could not create command buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Need to move linear window on MC1.0, disabling TS\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s Status:\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09identity\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09 model: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\09 revision: 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\09 product_id: 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\09 customer_id: 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\09 eco_id: 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"\09features\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\09 major_features: 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"\09 minor_features0: 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"\09 minor_features1: 0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"\09 minor_features2: 0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"\09 minor_features3: 0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"\09 minor_features4: 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\09 minor_features5: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"\09 minor_features6: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"\09 minor_features7: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"\09 minor_features8: 0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"\09 minor_features9: 0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"\09 minor_features10: 0x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\09 minor_features11: 0x%08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"\09specs\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"\09 stream_count:  %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"\09 register_max: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"\09 thread_count: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"\09 vertex_cache_size: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"\09 shader_core_count: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"\09 pixel_pipes: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"\09 vertex_output_buffer_size: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"\09 buffer_size: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"\09 instruction_count: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"\09 num_constants: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"\09 varyings_count: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"\09axi: 0x%08x\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\09idle: 0x%08x\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"\09 FE is not idle\0A\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"\09 DE is not idle\0A\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"\09 PE is not idle\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"\09 SH is not idle\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"\09 PA is not idle\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"\09 SE is not idle\0A\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"\09 RA is not idle\0A\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"\09 TX is not idle\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"\09 VG is not idle\0A\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"\09 IM is not idle\0A\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"\09 FP is not idle\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"\09 TS is not idle\0A\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"\09 BL is not idle\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"\09 ASYNCFE is not idle\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"\09 MC is not idle\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"\09 PPA is not idle\0A\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"\09 WD is not idle\0A\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"\09 NN is not idle\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"\09 TP is not idle\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"\09 AXI low power mode\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"\09MC\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"\09 read0: 0x%08x\0A\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"\09 read1: 0x%08x\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"\09 write: 0x%08x\0A\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"\09DMA \00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"seems to be stuck\0A\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"address is constant\0A\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"is running\0A\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"\09 address 0: 0x%08x\0A\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"\09 address 1: 0x%08x\0A\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"\09 state 0: 0x%08x\0A\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"\09 state 1: 0x%08x\0A\00", align 1
@.str.74 = private unnamed_addr constant [41 x i8] c"\09 last fetch 64 bit word: 0x%08x 0x%08x\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"recover hung GPU!\0A\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"no free events\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.77 = private unnamed_addr constant [39 x i8] c"timed out waiting for idle: idle=0x%x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@etnaviv_gpu_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vivante,gc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.78 = private unnamed_addr constant [12 x i8] c"etnaviv-gpu\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@etnaviv_gpu_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_gpu_rpm_suspend, ptr @etnaviv_gpu_rpm_resume, ptr null }, align 4
@gpu_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"etnaviv-gpu,2d\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@etnaviv_gpu_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @etnaviv_gpu_platform_probe, ptr @etnaviv_gpu_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.78, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @etnaviv_gpu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_gpu_pm_ops, ptr null, ptr null }, ptr @gpu_ids, i8 0 }, align 4
@.str.79 = private unnamed_addr constant [27 x i8] c"model: GC%x, revision: %x\0A\00", align 1
@.str.80 = private unnamed_addr constant [54 x i8] c"GPU failed to reset: FE %sidle, 3D %sidle, 2D %sidle\0A\00", align 1
@.str.81 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.84 = private unnamed_addr constant [35 x i8] c"wait_for_completion_timeout failed\00", align 1
@etnaviv_fence_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @etnaviv_fence_get_driver_name, ptr @etnaviv_fence_get_timeline_name, ptr null, ptr @etnaviv_fence_signaled, ptr null, ptr @etnaviv_fence_release, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.85 = private unnamed_addr constant [8 x i8] c"etnaviv\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"event %u is already marked as free\00", align 1
@etnaviv_gpu_platform_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"&gpu->lock\00", align 1
@etnaviv_gpu_platform_probe.__key.88 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"&gpu->fence_lock\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"failed to request IRQ%u: %d\0A\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"clk_reg: %p\0A\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"clk_bus: %p\0A\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"clk_core: %p\0A\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"clk_shader: %p\0A\00", align 1
@gpu_ops = internal constant %struct.component_ops { ptr @etnaviv_gpu_bind, ptr @etnaviv_gpu_unbind }, align 4
@.str.99 = private unnamed_addr constant [34 x i8] c"failed to register component: %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"AXI bus error\0A\00", align 1
@dump_mmu_fault._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.dump_mmu_fault = private unnamed_addr constant [15 x i8] c"dump_mmu_fault\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"MMU fault status 0x%08x\0A\00", align 1
@dump_mmu_fault._rs.102 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.103 = private unnamed_addr constant [26 x i8] c"MMU %d fault addr 0x%08x\0A\00", align 1
@cooling_ops = internal constant %struct.thermal_cooling_device_ops { ptr @etnaviv_gpu_cooling_get_max_state, ptr @etnaviv_gpu_cooling_get_cur_state, ptr @etnaviv_gpu_cooling_set_cur_state, ptr null, ptr null, ptr null }, align 4
@etnaviv_gpu_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"&gpu->fence_event\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@etnaviv_gpu_rpm_suspend._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.etnaviv_gpu_rpm_suspend = private unnamed_addr constant [24 x i8] c"etnaviv_gpu_rpm_suspend\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"GPU not yet idle, mask: 0x%08x\0A\00", align 1

@__mod_of__etnaviv_gpu_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @etnaviv_gpu_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_get_param(ptr noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  switch i32 %1, label %131 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %12
    i32 4, label %16
    i32 5, label %20
    i32 6, label %24
    i32 7, label %28
    i32 8, label %32
    i32 9, label %36
    i32 10, label %40
    i32 11, label %44
    i32 12, label %48
    i32 13, label %52
    i32 14, label %56
    i32 15, label %60
    i32 16, label %64
    i32 17, label %68
    i32 18, label %72
    i32 19, label %76
    i32 20, label %80
    i32 21, label %84
    i32 22, label %88
    i32 23, label %92
    i32 24, label %96
    i32 25, label %100
    i32 26, label %104
    i32 27, label %108
    i32 28, label %119
    i32 29, label %123
    i32 30, label %127
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %2, align 8
  br label %141

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, ptr %2, align 8
  br label %141

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  store i64 %15, ptr %2, align 8
  br label %141

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = zext i32 %18 to i64
  store i64 %19, ptr %2, align 8
  br label %141

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %2, align 8
  br label %141

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  store i64 %27, ptr %2, align 8
  br label %141

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, ptr %2, align 8
  br label %141

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 10
  %34 = load i32, ptr %33, align 8
  %35 = zext i32 %34 to i64
  store i64 %35, ptr %2, align 8
  br label %141

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  store i64 %39, ptr %2, align 8
  br label %141

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 12
  %42 = load i32, ptr %41, align 8
  %43 = zext i32 %42 to i64
  store i64 %43, ptr %2, align 8
  br label %141

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 13
  %46 = load i32, ptr %45, align 4
  %47 = zext i32 %46 to i64
  store i64 %47, ptr %2, align 8
  br label %141

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 14
  %50 = load i32, ptr %49, align 8
  %51 = zext i32 %50 to i64
  store i64 %51, ptr %2, align 8
  br label %141

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 15
  %54 = load i32, ptr %53, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, ptr %2, align 8
  br label %141

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 16
  %58 = load i32, ptr %57, align 8
  %59 = zext i32 %58 to i64
  store i64 %59, ptr %2, align 8
  br label %141

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 17
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  store i64 %63, ptr %2, align 8
  br label %141

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 18
  %66 = load i32, ptr %65, align 8
  %67 = zext i32 %66 to i64
  store i64 %67, ptr %2, align 8
  br label %141

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 19
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, ptr %2, align 8
  br label %141

72:                                               ; preds = %3
  %73 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 20
  %74 = load i32, ptr %73, align 8
  %75 = zext i32 %74 to i64
  store i64 %75, ptr %2, align 8
  br label %141

76:                                               ; preds = %3
  %77 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 22
  %78 = load i32, ptr %77, align 8
  %79 = zext i32 %78 to i64
  store i64 %79, ptr %2, align 8
  br label %141

80:                                               ; preds = %3
  %81 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 21
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  store i64 %83, ptr %2, align 8
  br label %141

84:                                               ; preds = %3
  %85 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 24
  %86 = load i32, ptr %85, align 8
  %87 = zext i32 %86 to i64
  store i64 %87, ptr %2, align 8
  br label %141

88:                                               ; preds = %3
  %89 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 23
  %90 = load i32, ptr %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, ptr %2, align 8
  br label %141

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 27
  %94 = load i32, ptr %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, ptr %2, align 8
  br label %141

96:                                               ; preds = %3
  %97 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 25
  %98 = load i32, ptr %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, ptr %2, align 8
  br label %141

100:                                              ; preds = %3
  %101 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 26
  %102 = load i32, ptr %101, align 8
  %103 = zext i32 %102 to i64
  store i64 %103, ptr %2, align 8
  br label %141

104:                                              ; preds = %3
  %105 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 28
  %106 = load i8, ptr %105, align 8
  %107 = zext i8 %106 to i64
  store i64 %107, ptr %2, align 8
  br label %141

108:                                              ; preds = %3
  %109 = load ptr, ptr %0, align 8
  %110 = getelementptr inbounds %struct.drm_device, ptr %109, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %111, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %113, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i64 4194304, ptr %2, align 8
  br label %141

118:                                              ; preds = %108
  store i64 -1, ptr %2, align 8
  br label %141

119:                                              ; preds = %3
  %120 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 2
  %121 = load i32, ptr %120, align 8
  %122 = zext i32 %121 to i64
  store i64 %122, ptr %2, align 8
  br label %141

123:                                              ; preds = %3
  %124 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, ptr %2, align 8
  br label %141

127:                                              ; preds = %3
  %128 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 4
  %129 = load i32, ptr %128, align 8
  %130 = zext i32 %129 to i64
  store i64 %130, ptr %2, align 8
  br label %141

131:                                              ; preds = %3
  %132 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.device, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load ptr, ptr %133, align 4
  br label %139

139:                                              ; preds = %137, %131
  %140 = phi ptr [ %138, %137 ], [ %135, %131 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef %140, i32 noundef %1) #12
  br label %141

141:                                              ; preds = %139, %127, %123, %119, %118, %117, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %4
  %142 = phi i32 [ -22, %139 ], [ 0, %117 ], [ 0, %118 ], [ 0, %127 ], [ 0, %123 ], [ 0, %119 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %12 ], [ 0, %8 ], [ 0, %4 ]
  ret i32 %142
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_gpu_start_fe(ptr nocapture noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #12, !srcloc !9
  %7 = zext i16 %2 to i32
  %8 = or i32 %7, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr i8, ptr %9, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #12, !srcloc !9
  %11 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr i8, ptr %15, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %8) #12, !srcloc !9
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 9
  store i8 1, ptr %18, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1) #13
  br label %432

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %16 = and i32 %15, -16777216
  %17 = icmp eq i32 %16, 16777216
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  store i32 1280, ptr %19, align 8
  %20 = lshr i32 %15, 12
  %21 = and i32 %20, 15
  %22 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  store i32 %21, ptr %22, align 4
  br label %91

23:                                               ; preds = %11
  %24 = load ptr, ptr %12, align 8
  %25 = getelementptr i8, ptr %24, i32 40
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %27 = load ptr, ptr %12, align 8
  %28 = getelementptr i8, ptr %27, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %30 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  store i32 %29, ptr %30, align 8
  %31 = load ptr, ptr %12, align 8
  %32 = getelementptr i8, ptr %31, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %34 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %12, align 8
  %36 = getelementptr i8, ptr %35, i32 48
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %38 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 3
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %30, align 8
  %40 = icmp eq i32 %39, 1536
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load i32, ptr %34, align 4
  %43 = icmp eq i32 %42, 25
  br i1 %43, label %91, label %44

44:                                               ; preds = %41, %23
  %45 = load ptr, ptr %12, align 8
  %46 = getelementptr i8, ptr %45, i32 168
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %48 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 2
  store i32 %47, ptr %48, align 8
  %49 = load ptr, ptr %12, align 8
  %50 = getelementptr i8, ptr %49, i32 232
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %52 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 4
  store i32 %51, ptr %52, align 8
  %53 = load i32, ptr %30, align 8
  %54 = and i32 %53, 65280
  %55 = icmp ne i32 %54, 1024
  %56 = icmp eq i32 %53, 1056
  %57 = or i1 %56, %55
  br i1 %57, label %60, label %58

58:                                               ; preds = %44
  %59 = and i32 %53, 1024
  store i32 %59, ptr %30, align 8
  br label %91

60:                                               ; preds = %44
  %61 = icmp eq i32 %53, 768
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  %63 = load i32, ptr %34, align 4
  %64 = icmp eq i32 %63, 8705
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr i8, ptr %66, i32 44
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %69 = icmp eq i32 %26, 537397268
  %70 = icmp eq i32 %68, 302321920
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 4177, ptr %34, align 4
  br label %73

73:                                               ; preds = %72, %65, %62, %60
  %74 = load i32, ptr %30, align 8
  switch i32 %74, label %91 [
    i32 8192, label %75
    i32 4096, label %79
    i32 800, label %85
  ]

75:                                               ; preds = %73
  %76 = load i32, ptr %34, align 4
  %77 = icmp eq i32 %76, -43952
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  store i32 12288, ptr %30, align 8
  store i32 21584, ptr %34, align 4
  br label %91

79:                                               ; preds = %73
  %80 = load i32, ptr %34, align 4
  %81 = icmp eq i32 %80, 20535
  %82 = icmp eq i32 %26, 538052119
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  store i32 1, ptr %52, align 8
  br label %91

85:                                               ; preds = %73
  %86 = load i32, ptr %34, align 4
  %87 = icmp eq i32 %86, 21251
  %88 = icmp eq i32 %26, 538182929
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 1, ptr %52, align 8
  br label %91

91:                                               ; preds = %90, %85, %84, %79, %78, %75, %73, %58, %41, %18
  %92 = phi i32 [ %74, %73 ], [ %59, %58 ], [ 12288, %78 ], [ 8192, %75 ], [ 4096, %79 ], [ 4096, %84 ], [ 800, %85 ], [ 800, %90 ], [ 1280, %18 ], [ 1536, %41 ]
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  %95 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  %96 = load i32, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.79, i32 noundef %92, i32 noundef %96) #13
  %97 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 16
  store i32 2147483647, ptr %97, align 4
  %98 = tail call zeroext i1 @etnaviv_fill_identity_from_hwdb(ptr noundef %0) #12
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, ptr %94, align 8
  br label %325

101:                                              ; preds = %91
  %102 = load ptr, ptr %12, align 8
  %103 = getelementptr i8, ptr %102, i32 28
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %105 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  store i32 %104, ptr %105, align 4
  %106 = load i32, ptr %94, align 8
  switch i32 %106, label %117 [
    i32 1792, label %107
    i32 1280, label %109
    i32 768, label %112
  ]

107:                                              ; preds = %101
  %108 = and i32 %104, -2
  store i32 %108, ptr %105, align 4
  br label %117

109:                                              ; preds = %101
  %110 = load i32, ptr %95, align 4
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %115, label %117

112:                                              ; preds = %101
  %113 = load i32, ptr %95, align 4
  %114 = icmp ult i32 %113, 8192
  br i1 %114, label %115, label %117

115:                                              ; preds = %112, %109
  %116 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %116, i8 0, i64 24, i1 false) #12
  br label %145

117:                                              ; preds = %112, %109, %107, %101
  %118 = load ptr, ptr %12, align 8
  %119 = getelementptr i8, ptr %118, i32 52
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %121 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 6
  store i32 %120, ptr %121, align 8
  %122 = and i32 %120, 2097152
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %117
  %125 = load ptr, ptr %12, align 8
  %126 = getelementptr i8, ptr %125, i32 116
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %128 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 7
  store i32 %127, ptr %128, align 4
  %129 = load ptr, ptr %12, align 8
  %130 = getelementptr i8, ptr %129, i32 132
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %132 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 8
  store i32 %131, ptr %132, align 8
  %133 = load ptr, ptr %12, align 8
  %134 = getelementptr i8, ptr %133, i32 136
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %136 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 9
  store i32 %135, ptr %136, align 4
  %137 = load ptr, ptr %12, align 8
  %138 = getelementptr i8, ptr %137, i32 148
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %140 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 10
  store i32 %139, ptr %140, align 8
  %141 = load ptr, ptr %12, align 8
  %142 = getelementptr i8, ptr %141, i32 160
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %144 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 11
  store i32 %143, ptr %144, align 4
  br label %145

145:                                              ; preds = %124, %117, %115
  %146 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 6
  %147 = load i32, ptr %94, align 8
  %148 = icmp eq i32 %147, 1536
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 255, ptr %97, align 4
  br label %150

150:                                              ; preds = %149, %145
  %151 = load i32, ptr %146, align 8
  %152 = and i32 %151, 2097152
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 18
  %156 = load i32, ptr %155, align 8
  br label %204

157:                                              ; preds = %150
  %158 = load ptr, ptr %12, align 8
  %159 = getelementptr i8, ptr %158, i32 72
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %161 = load ptr, ptr %12, align 8
  %162 = getelementptr i8, ptr %161, i32 128
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %164 = load ptr, ptr %12, align 8
  %165 = getelementptr i8, ptr %164, i32 140
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %167 = load ptr, ptr %12, align 8
  %168 = getelementptr i8, ptr %167, i32 156
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %170 = and i32 %160, 15
  %171 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 18
  store i32 %170, ptr %171, align 8
  %172 = lshr i32 %160, 4
  %173 = and i32 %172, 15
  %174 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 19
  store i32 %173, ptr %174, align 4
  %175 = lshr i32 %160, 8
  %176 = and i32 %175, 15
  %177 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 20
  store i32 %176, ptr %177, align 8
  %178 = lshr i32 %160, 12
  %179 = and i32 %178, 31
  %180 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 22
  store i32 %179, ptr %180, align 8
  %181 = lshr i32 %160, 20
  %182 = and i32 %181, 31
  %183 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 21
  store i32 %182, ptr %183, align 4
  %184 = lshr i32 %160, 25
  %185 = and i32 %184, 7
  %186 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 24
  store i32 %185, ptr %186, align 8
  %187 = lshr i32 %160, 28
  %188 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 23
  store i32 %187, ptr %188, align 4
  %189 = and i32 %163, 255
  %190 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 27
  store i32 %189, ptr %190, align 4
  %191 = lshr i32 %163, 8
  %192 = and i32 %191, 255
  %193 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 25
  store i32 %192, ptr %193, align 4
  %194 = lshr i32 %163, 16
  %195 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 26
  store i32 %194, ptr %195, align 8
  %196 = lshr i32 %166, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 31
  %199 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 28
  store i8 %198, ptr %199, align 8
  %200 = lshr i32 %169, 12
  %201 = and i32 %200, 31
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %157
  store i32 %201, ptr %171, align 8
  br label %213

204:                                              ; preds = %157, %154
  %205 = phi i32 [ %156, %154 ], [ %170, %157 ]
  %206 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 18
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i32, ptr %94, align 8
  %210 = icmp ugt i32 %209, 4095
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 4, ptr %206, align 8
  br label %213

212:                                              ; preds = %208
  store i32 1, ptr %206, align 8
  br label %213

213:                                              ; preds = %212, %211, %204, %203
  %214 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 19
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = shl nuw i32 1, %215
  br label %223

219:                                              ; preds = %213
  %220 = load i32, ptr %94, align 8
  %221 = icmp eq i32 %220, 1024
  %222 = select i1 %221, i32 32, i32 64
  br label %223

223:                                              ; preds = %219, %217
  %224 = phi i32 [ %218, %217 ], [ %222, %219 ]
  store i32 %224, ptr %214, align 4
  %225 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 20
  %226 = load i32, ptr %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = shl nuw i32 1, %226
  br label %234

230:                                              ; preds = %223
  %231 = load i32, ptr %94, align 8
  switch i32 %231, label %233 [
    i32 1024, label %234
    i32 1280, label %232
    i32 1328, label %232
  ]

232:                                              ; preds = %230, %230
  br label %234

233:                                              ; preds = %230
  br label %234

234:                                              ; preds = %233, %232, %230, %228
  %235 = phi i32 [ 256, %233 ], [ 128, %232 ], [ %229, %228 ], [ 64, %230 ]
  store i32 %235, ptr %225, align 8
  %236 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 22
  %237 = load i32, ptr %236, align 8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  store i32 8, ptr %236, align 8
  br label %240

240:                                              ; preds = %239, %234
  %241 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 21
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load i32, ptr %94, align 8
  %246 = icmp ugt i32 %245, 4095
  %247 = select i1 %246, i32 2, i32 1
  store i32 %247, ptr %241, align 4
  br label %248

248:                                              ; preds = %244, %240
  %249 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 24
  %250 = load i32, ptr %249, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store i32 1, ptr %249, align 8
  br label %253

253:                                              ; preds = %252, %248
  %254 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 23
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  %258 = shl nuw i32 1, %255
  br label %268

259:                                              ; preds = %253
  %260 = load i32, ptr %94, align 8
  %261 = icmp eq i32 %260, 1024
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load i32, ptr %95, align 4
  %264 = icmp ult i32 %263, 16384
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = icmp ult i32 %263, 16896
  %267 = select i1 %266, i32 256, i32 128
  br label %268

268:                                              ; preds = %265, %262, %259, %257
  %269 = phi i32 [ %258, %257 ], [ 512, %262 ], [ %267, %265 ], [ 512, %259 ]
  store i32 %269, ptr %254, align 4
  %270 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 25
  %271 = load i32, ptr %270, align 4
  switch i32 %271, label %279 [
    i32 0, label %272
    i32 1, label %280
    i32 2, label %278
  ]

272:                                              ; preds = %268
  %273 = load i32, ptr %94, align 8
  switch i32 %273, label %277 [
    i32 8192, label %274
    i32 2176, label %280
  ]

274:                                              ; preds = %272
  %275 = load i32, ptr %95, align 4
  %276 = icmp eq i32 %275, 20744
  br i1 %276, label %280, label %277

277:                                              ; preds = %274, %272
  br label %280

278:                                              ; preds = %268
  br label %280

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279, %278, %277, %274, %272, %268
  %281 = phi i32 [ 256, %277 ], [ 256, %279 ], [ 2048, %278 ], [ 512, %272 ], [ 512, %274 ], [ 1024, %268 ]
  store i32 %281, ptr %270, align 4
  %282 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 26
  %283 = load i32, ptr %282, align 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  store i32 168, ptr %282, align 8
  br label %286

286:                                              ; preds = %285, %280
  %287 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 28
  %288 = load i8, ptr %287, align 8
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 7
  %292 = load i32, ptr %291, align 4
  %293 = and i32 %292, 8388608
  %294 = icmp eq i32 %293, 0
  %295 = select i1 %294, i8 8, i8 12
  store i8 %295, ptr %287, align 8
  br label %296

296:                                              ; preds = %290, %286
  %297 = phi i8 [ %288, %286 ], [ %295, %290 ]
  %298 = load i32, ptr %94, align 8
  switch i32 %298, label %325 [
    i32 20480, label %299
    i32 16384, label %302
    i32 12288, label %304
    i32 8704, label %307
    i32 8448, label %310
    i32 8192, label %313
    i32 5376, label %316
    i32 2176, label %319
  ]

299:                                              ; preds = %296
  %300 = load i32, ptr %95, align 4
  %301 = icmp eq i32 %300, 21556
  br i1 %301, label %323, label %330

302:                                              ; preds = %296
  %303 = load i32, ptr %95, align 4
  switch i32 %303, label %330 [
    i32 21026, label %323
    i32 21061, label %323
    i32 21000, label %323
  ]

304:                                              ; preds = %296
  %305 = load i32, ptr %95, align 4
  %306 = icmp eq i32 %305, 21557
  br i1 %306, label %323, label %330

307:                                              ; preds = %296
  %308 = load i32, ptr %95, align 4
  %309 = icmp eq i32 %308, 21060
  br i1 %309, label %323, label %330

310:                                              ; preds = %296
  %311 = load i32, ptr %95, align 4
  %312 = icmp eq i32 %311, 20744
  br i1 %312, label %323, label %330

313:                                              ; preds = %296
  %314 = load i32, ptr %95, align 4
  %315 = icmp eq i32 %314, 20744
  br i1 %315, label %323, label %330

316:                                              ; preds = %296
  %317 = load i32, ptr %95, align 4
  %318 = icmp eq i32 %317, 21062
  br i1 %318, label %323, label %330

319:                                              ; preds = %296
  %320 = load i32, ptr %95, align 4
  %321 = and i32 %320, -2
  %322 = icmp eq i32 %321, 20742
  br i1 %322, label %323, label %330

323:                                              ; preds = %319, %316, %313, %310, %307, %304, %302, %302, %302, %299
  %324 = add i8 %297, -1
  store i8 %324, ptr %287, align 8
  br label %330

325:                                              ; preds = %296, %99
  %326 = phi i32 [ %298, %296 ], [ %100, %99 ]
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %329, ptr noundef nonnull @.str.2) #13
  br label %427

330:                                              ; preds = %325, %323, %319, %316, %313, %310, %307, %304, %302, %299
  %331 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  %332 = load i32, ptr %331, align 4
  %333 = and i32 %332, 335544320
  %334 = icmp eq i32 %333, 335544320
  br i1 %334, label %335, label %337

335:                                              ; preds = %330
  %336 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %336, ptr noundef nonnull @.str.3) #13
  br label %427

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 13
  %339 = load i32, ptr %338, align 4
  %340 = and i32 %339, 2097152
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 16
  %344 = load i32, ptr %343, align 8
  %345 = and i32 %344, 16384
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  store i32 1, ptr %348, align 4
  br label %349

349:                                              ; preds = %347, %342, %337
  %350 = tail call fastcc i32 @etnaviv_hw_reset(ptr noundef %0)
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %353, ptr noundef nonnull @.str.4) #13
  br label %427

354:                                              ; preds = %349
  %355 = tail call i32 @etnaviv_iommu_global_init(ptr noundef %0) #12
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %427

357:                                              ; preds = %354
  %358 = load ptr, ptr %5, align 8
  %359 = getelementptr inbounds %struct.device, ptr %358, i32 0, i32 16
  %360 = load ptr, ptr %359, align 4
  %361 = icmp eq ptr %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = load i64, ptr %360, align 8
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %362, %357
  br label %366

366:                                              ; preds = %365, %362
  %367 = phi i64 [ 4294967295, %365 ], [ %363, %362 ]
  %368 = getelementptr inbounds %struct.device, ptr %358, i32 0, i32 18
  %369 = load i64, ptr %368, align 8
  %370 = icmp eq i64 %369, 0
  %371 = tail call i64 @llvm.umin.i64(i64 %367, i64 %369) #12
  %372 = select i1 %370, i64 %367, i64 %371
  %373 = tail call i64 @dma_get_required_mask(ptr noundef %358) #12
  %374 = icmp ult i64 %372, %373
  br i1 %374, label %375, label %379

375:                                              ; preds = %366
  %376 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 2
  %377 = load i32, ptr %376, align 4
  %378 = or i32 %377, 4
  store i32 %378, ptr %376, align 4
  br label %379

379:                                              ; preds = %375, %366
  %380 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 3
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %383 = tail call i32 @etnaviv_cmdbuf_init(ptr noundef %381, ptr noundef %382, i32 noundef 4096) #12
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %387, label %385

385:                                              ; preds = %379
  %386 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %386, ptr noundef nonnull @.str.5) #13
  br label %427

387:                                              ; preds = %379
  %388 = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %382) #12
  %389 = and i32 %388, -134217728
  %390 = load i32, ptr %331, align 4
  %391 = and i32 %390, 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %398, label %393

393:                                              ; preds = %387
  %394 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 6
  %395 = load i32, ptr %394, align 8
  %396 = and i32 %395, 4194304
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %405, label %398

398:                                              ; preds = %393, %387
  %399 = icmp slt i32 %389, 0
  %400 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 4
  %401 = load ptr, ptr %400, align 4
  %402 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %401, i32 0, i32 7
  br i1 %399, label %403, label %404

403:                                              ; preds = %398
  store i32 -2147483648, ptr %402, align 4
  br label %415

404:                                              ; preds = %398
  store i32 %389, ptr %402, align 4
  br label %415

405:                                              ; preds = %393
  %406 = add i32 %389, 134217728
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %405
  %409 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %409, ptr noundef nonnull @.str.6) #13
  %410 = load i32, ptr %331, align 4
  %411 = and i32 %410, -2
  store i32 %411, ptr %331, align 4
  %412 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 4
  %413 = load ptr, ptr %412, align 4
  %414 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %413, i32 0, i32 7
  store i32 -2147483648, ptr %414, align 4
  br label %415

415:                                              ; preds = %408, %405, %404, %403
  %416 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 15
  store i32 0, ptr %416, align 8
  %417 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 14
  store i32 0, ptr %417, align 4
  %418 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %418, ptr noundef nonnull @.str.83, ptr noundef nonnull @init_completion.__key) #12
  %419 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 12
  store i32 0, ptr %419, align 4
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  tail call void @complete(ptr noundef %417) #12
  %420 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %420) #12
  tail call fastcc void @etnaviv_gpu_hw_init(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %420) #12
  %421 = load ptr, ptr %5, align 8
  %422 = tail call i64 @ktime_get_mono_fast_ns() #12
  %423 = getelementptr inbounds %struct.device, ptr %421, i32 0, i32 11, i32 22
  store volatile i64 %422, ptr %423, align 8
  %424 = load ptr, ptr %5, align 8
  %425 = tail call i32 @__pm_runtime_suspend(ptr noundef %424, i32 noundef 13) #12
  %426 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 8
  store i8 1, ptr %426, align 8
  br label %436

427:                                              ; preds = %385, %354, %352, %335, %328
  %428 = phi i32 [ -6, %328 ], [ -6, %335 ], [ %350, %352 ], [ %355, %354 ], [ %383, %385 ]
  %429 = load ptr, ptr %5, align 8
  %430 = tail call i64 @ktime_get_mono_fast_ns() #12
  %431 = getelementptr inbounds %struct.device, ptr %429, i32 0, i32 11, i32 22
  store volatile i64 %430, ptr %431, align 8
  br label %432

432:                                              ; preds = %427, %9
  %433 = phi i32 [ %7, %9 ], [ %428, %427 ]
  %434 = load ptr, ptr %5, align 8
  %435 = tail call i32 @__pm_runtime_suspend(ptr noundef %434, i32 noundef 13) #12
  br label %436

436:                                              ; preds = %432, %415
  %437 = phi i32 [ %433, %432 ], [ 0, %415 ]
  ret i32 %437
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @etnaviv_hw_reset(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = sub i32 -100, %2
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %3, %4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 36
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  br label %11

11:                                               ; preds = %52, %7
  %12 = load i32, ptr %8, align 8
  %13 = sub i32 6, %12
  %14 = shl i32 4, %13
  %15 = and i32 %14, 508
  %16 = or i32 %15, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %17 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %18 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #12, !srcloc !9
  %19 = or i32 %15, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %20 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #12, !srcloc !9
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr i8, ptr %24, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #12, !srcloc !9
  br label %29

26:                                               ; preds = %11
  %27 = or i32 %15, 528384
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %28 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #12, !srcloc !9
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %19, %23 ], [ %27, %26 ]
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #12
  %31 = and i32 %30, -4097
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %32 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %33 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %15) #12, !srcloc !9
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr i8, ptr %34, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %29
  %40 = load ptr, ptr %9, align 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %42 = and i32 %41, 196608
  %43 = icmp eq i32 %42, 196608
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = or i32 %41, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %46 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #12, !srcloc !9
  tail call fastcc void @etnaviv_gpu_update_clock(ptr noundef %0)
  %47 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 9
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 11
  store i32 -1, ptr %48, align 8
  %49 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %75, label %74

52:                                               ; preds = %39, %29
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = add i32 %3, %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %11, label %56

56:                                               ; preds = %52, %1
  %57 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %58, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %61 = load ptr, ptr %57, align 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %63 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = and i32 %60, 1
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr @.str.82, ptr @.str.81
  %68 = and i32 %62, 65536
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr @.str.82, ptr @.str.81
  %71 = and i32 %62, 131072
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, ptr @.str.82, ptr @.str.81
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.80, ptr noundef nonnull %67, ptr noundef nonnull %70, ptr noundef nonnull %73) #13
  br label %76

74:                                               ; preds = %44
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %50) #12
  br label %75

75:                                               ; preds = %74, %44
  store ptr null, ptr %49, align 8
  br label %76

76:                                               ; preds = %75, %56
  %77 = phi i32 [ -16, %56 ], [ 0, %75 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_global_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_pa(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @etnaviv_gpu_hw_init(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 800
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %25 [
    i32 20487, label %8
    i32 21024, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 44
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %13 = icmp eq i32 %12, 33956864
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr i8, ptr %15, i32 1044
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %18 = and i32 %17, -256
  %19 = load i32, ptr %6, align 4
  %20 = icmp eq i32 %19, 20487
  %21 = select i1 %20, i32 12, i32 8
  %22 = or i32 %21, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr i8, ptr %23, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #12, !srcloc !9
  br label %25

25:                                               ; preds = %14, %8, %5, %1
  %26 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 256
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %30 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -17153
  %33 = icmp ult i32 %32, 2
  %34 = select i1 %33, i32 3, i32 1
  %35 = or i32 %34, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %36 = load ptr, ptr %26, align 8
  %37 = getelementptr i8, ptr %36, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #12, !srcloc !9
  %38 = load ptr, ptr %26, align 8
  %39 = getelementptr i8, ptr %38, i32 260
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %41 = load i32, ptr %2, align 8
  %42 = icmp ult i32 %41, 1024
  %43 = icmp eq i32 %41, 1056
  %44 = or i1 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %25
  %46 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 11
  %49 = and i32 %48, 16
  %50 = xor i32 %49, 16
  %51 = or i32 %50, %40
  br label %52

52:                                               ; preds = %45, %25
  %53 = phi i32 [ %40, %25 ], [ %51, %45 ]
  %54 = load i32, ptr %30, align 4
  %55 = icmp ult i32 %54, 20480
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 134217728
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 7
  %65 = and i32 %64, 4
  %66 = xor i32 %65, 4
  %67 = or i32 %66, %53
  br label %68

68:                                               ; preds = %61, %56, %52
  %69 = phi i32 [ %53, %56 ], [ %53, %52 ], [ %67, %61 ]
  %70 = icmp ult i32 %54, 21538
  %71 = or i32 %69, 32768
  %72 = select i1 %70, i32 %71, i32 %69
  switch i32 %41, label %83 [
    i32 16384, label %73
    i32 8192, label %75
    i32 28672, label %79
  ]

73:                                               ; preds = %68
  %74 = icmp eq i32 %54, 21026
  br i1 %74, label %77, label %83

75:                                               ; preds = %68
  %76 = icmp eq i32 %54, 20744
  br i1 %76, label %77, label %83

77:                                               ; preds = %75, %73
  %78 = or i32 %72, 128
  br label %83

79:                                               ; preds = %68
  %80 = icmp eq i32 %54, 25090
  %81 = or i32 %72, 224
  %82 = select i1 %80, i32 %81, i32 %72
  br label %83

83:                                               ; preds = %79, %77, %75, %73, %68
  %84 = phi i32 [ %82, %79 ], [ %72, %75 ], [ %78, %77 ], [ %72, %73 ], [ %72, %68 ]
  %85 = or i32 %84, 196608
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %86 = load ptr, ptr %26, align 8
  %87 = getelementptr i8, ptr %86, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %88 = load ptr, ptr %26, align 8
  %89 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 8704) #12, !srcloc !9
  %90 = load i32, ptr %2, align 8
  %91 = icmp eq i32 %90, 8192
  br i1 %91, label %92, label %103

92:                                               ; preds = %83
  %93 = load i32, ptr %30, align 4
  %94 = icmp eq i32 %93, 20744
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load ptr, ptr %26, align 8
  %97 = getelementptr i8, ptr %96, i32 1152
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %99 = and i32 %98, -256
  %100 = or i32 %99, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %101 = load ptr, ptr %26, align 8
  %102 = getelementptr i8, ptr %101, i32 1152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #12, !srcloc !9
  br label %103

103:                                              ; preds = %95, %92, %83
  %104 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load ptr, ptr %26, align 8
  %109 = getelementptr i8, ptr %108, i32 936
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %111 = or i32 %110, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %112 = load ptr, ptr %26, align 8
  %113 = getelementptr i8, ptr %112, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #12, !srcloc !9
  br label %114

114:                                              ; preds = %107, %103
  %115 = load i32, ptr %2, align 8
  switch i32 %115, label %116 [
    i32 16384, label %118
    i32 4096, label %120
  ]

116:                                              ; preds = %114
  %117 = load i32, ptr %30, align 4
  br label %122

118:                                              ; preds = %114
  %119 = load i32, ptr %30, align 4
  switch i32 %119, label %122 [
    i32 21000, label %135
    i32 21026, label %135
  ]

120:                                              ; preds = %114
  %121 = load i32, ptr %30, align 4
  switch i32 %121, label %122 [
    i32 20537, label %135
    i32 20544, label %135
  ]

122:                                              ; preds = %120, %118, %116
  %123 = phi i32 [ %117, %116 ], [ %119, %118 ], [ %121, %120 ]
  %124 = icmp ugt i32 %123, 21536
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %26, align 8
  %132 = getelementptr i8, ptr %131, i32 268
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %134 = or i32 %133, 262144
  br label %135

135:                                              ; preds = %130, %125, %122, %120, %120, %118, %118
  %136 = phi i32 [ %134, %130 ], [ 22612096, %125 ], [ 22612096, %122 ], [ 31000704, %118 ], [ 22677632, %120 ], [ 31000704, %118 ], [ 22677632, %120 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %137 = load ptr, ptr %26, align 8
  %138 = getelementptr i8, ptr %137, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %139 = load ptr, ptr %26, align 8
  %140 = getelementptr i8, ptr %139, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 -1) #12, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_debugfs(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %6, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %11) #12
  %12 = load ptr, ptr %3, align 8
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %214, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 1640
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %20 = load ptr, ptr %16, align 8
  %21 = getelementptr i8, ptr %20, i32 1644
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %23 = load ptr, ptr %16, align 8
  %24 = getelementptr i8, ptr %23, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %26 = load ptr, ptr %16, align 8
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %29 = load ptr, ptr %16, align 8
  %30 = getelementptr i8, ptr %29, i32 1636
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %32 = load ptr, ptr %16, align 8
  %33 = getelementptr i8, ptr %32, i32 1632
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  br label %35

35:                                               ; preds = %44, %15
  %36 = phi i32 [ 0, %15 ], [ %46, %44 ]
  %37 = load ptr, ptr %16, align 8
  %38 = getelementptr i8, ptr %37, i32 1636
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %40 = load ptr, ptr %16, align 8
  %41 = getelementptr i8, ptr %40, i32 1632
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %43 = icmp eq i32 %31, %39
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = icmp ne i32 %34, %42
  %46 = add nuw nsw i32 %36, 1
  %47 = icmp eq i32 %46, 500
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %49, label %35

49:                                               ; preds = %44, %35
  %50 = phi i32 [ %39, %35 ], [ %31, %44 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.8) #12
  %51 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %52) #12
  %53 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  %54 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %54) #12
  %55 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 2
  %56 = load i32, ptr %55, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %56) #12
  %57 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 3
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %58) #12
  %59 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 4
  %60 = load i32, ptr %59, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %60) #12
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.14) #12
  %61 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  %62 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %62) #12
  %63 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 6
  %64 = load i32, ptr %63, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %64) #12
  %65 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 7
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %66) #12
  %67 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 8
  %68 = load i32, ptr %67, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %68) #12
  %69 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 9
  %70 = load i32, ptr %69, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %70) #12
  %71 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 10
  %72 = load i32, ptr %71, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %72) #12
  %73 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 11
  %74 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %74) #12
  %75 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 12
  %76 = load i32, ptr %75, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %76) #12
  %77 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 13
  %78 = load i32, ptr %77, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %78) #12
  %79 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 14
  %80 = load i32, ptr %79, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %80) #12
  %81 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 15
  %82 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %82) #12
  %83 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 16
  %84 = load i32, ptr %83, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %84) #12
  %85 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 17
  %86 = load i32, ptr %85, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %86) #12
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.28) #12
  %87 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 18
  %88 = load i32, ptr %87, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %88) #12
  %89 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 19
  %90 = load i32, ptr %89, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %90) #12
  %91 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 20
  %92 = load i32, ptr %91, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %92) #12
  %93 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 22
  %94 = load i32, ptr %93, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %94) #12
  %95 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 21
  %96 = load i32, ptr %95, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %96) #12
  %97 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 24
  %98 = load i32, ptr %97, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %98) #12
  %99 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 23
  %100 = load i32, ptr %99, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %100) #12
  %101 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 27
  %102 = load i32, ptr %101, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %102) #12
  %103 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 25
  %104 = load i32, ptr %103, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %104) #12
  %105 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 26
  %106 = load i32, ptr %105, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %106) #12
  %107 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 28
  %108 = load i8, ptr %107, align 8
  %109 = zext i8 %108 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %109) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %25) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %28) #12
  %110 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 16
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 2147483647
  %113 = xor i32 %112, 2147483647
  %114 = or i32 %113, %28
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %49
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.42) #12
  br label %118

118:                                              ; preds = %117, %49
  %119 = and i32 %114, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #12
  br label %122

122:                                              ; preds = %121, %118
  %123 = and i32 %114, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.44) #12
  br label %126

126:                                              ; preds = %125, %122
  %127 = and i32 %114, 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.45) #12
  br label %130

130:                                              ; preds = %129, %126
  %131 = and i32 %114, 16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.46) #12
  br label %134

134:                                              ; preds = %133, %130
  %135 = and i32 %114, 32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.47) #12
  br label %138

138:                                              ; preds = %137, %134
  %139 = and i32 %114, 64
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.48) #12
  br label %142

142:                                              ; preds = %141, %138
  %143 = and i32 %114, 128
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.49) #12
  br label %146

146:                                              ; preds = %145, %142
  %147 = and i32 %114, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.50) #12
  br label %150

150:                                              ; preds = %149, %146
  %151 = and i32 %114, 512
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.51) #12
  br label %154

154:                                              ; preds = %153, %150
  %155 = and i32 %114, 1024
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.52) #12
  br label %158

158:                                              ; preds = %157, %154
  %159 = and i32 %114, 2048
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.53) #12
  br label %162

162:                                              ; preds = %161, %158
  %163 = and i32 %114, 4096
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.54) #12
  br label %166

166:                                              ; preds = %165, %162
  %167 = and i32 %114, 8192
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.55) #12
  br label %170

170:                                              ; preds = %169, %166
  %171 = and i32 %114, 16384
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.56) #12
  br label %174

174:                                              ; preds = %173, %170
  %175 = and i32 %114, 32768
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.57) #12
  br label %178

178:                                              ; preds = %177, %174
  %179 = and i32 %114, 65536
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.58) #12
  br label %182

182:                                              ; preds = %181, %178
  %183 = and i32 %114, 131072
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.59) #12
  br label %186

186:                                              ; preds = %185, %182
  %187 = and i32 %114, 262144
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.60) #12
  br label %190

190:                                              ; preds = %189, %186
  %191 = icmp sgt i32 %28, -1
  br i1 %191, label %193, label %192

192:                                              ; preds = %190
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.61) #12
  br label %193

193:                                              ; preds = %192, %190
  %194 = load i32, ptr %61, align 4
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %16, align 8
  %199 = getelementptr i8, ptr %198, i32 1084
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %201 = load ptr, ptr %16, align 8
  %202 = getelementptr i8, ptr %201, i32 1088
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %204 = load ptr, ptr %16, align 8
  %205 = getelementptr i8, ptr %204, i32 1092
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.62) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %200) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %203) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %206) #12
  br label %207

207:                                              ; preds = %197, %193
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.66) #12
  %208 = icmp eq i32 %34, %42
  %209 = select i1 %208, ptr @.str.67, ptr @.str.68
  %210 = select i1 %43, ptr %209, ptr @.str.69
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull %210) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %31) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.71, i32 noundef %50) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef %34) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.73, i32 noundef %42) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef %19, i32 noundef %22) #12
  %211 = load ptr, ptr %3, align 8
  %212 = tail call i64 @ktime_get_mono_fast_ns() #12
  %213 = getelementptr inbounds %struct.device, ptr %211, i32 0, i32 11, i32 22
  store volatile i64 %212, ptr %213, align 8
  br label %214

214:                                              ; preds = %207, %10
  %215 = phi i32 [ %13, %10 ], [ 0, %207 ]
  %216 = load ptr, ptr %3, align 8
  %217 = tail call i32 @__pm_runtime_suspend(ptr noundef %216, i32 noundef 13) #12
  ret i32 %215
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_gpu_recover_hang(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75) #13
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %8) #12
  %9 = tail call fastcc i32 @etnaviv_hw_reset(ptr noundef %0)
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 12
  %12 = tail call i32 @_find_next_bit_le(ptr noundef %11, i32 noundef 30, i32 noundef 0) #12
  %13 = icmp ult i32 %12, 30
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 14
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %12, %14 ], [ %19, %16 ]
  tail call void @complete(ptr noundef %15) #12
  %18 = add nuw nsw i32 %17, 1
  %19 = tail call i32 @_find_next_bit_le(ptr noundef %11, i32 noundef 30, i32 noundef %18) #12
  %20 = icmp ult i32 %19, 30
  br i1 %20, label %16, label %21

21:                                               ; preds = %16, %7
  store i32 0, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %22 = load i16, ptr %10, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  tail call fastcc void @etnaviv_gpu_hw_init(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %8) #12
  %24 = load ptr, ptr %2, align 8
  %25 = tail call i64 @ktime_get_mono_fast_ns() #12
  %26 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 11, i32 22
  store volatile i64 %25, ptr %26, align 8
  br label %27

27:                                               ; preds = %21, %1
  %28 = load ptr, ptr %2, align 8
  %29 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_wait_fence_interruptible(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 18
  %7 = tail call ptr @idr_find(ptr noundef %6, i32 noundef %1) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %23, %9
  %14 = phi i32 [ %21, %23 ], [ %11, %9 ]
  %15 = add i32 %14, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !17
  br label %16

16:                                               ; preds = %16, %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %14, i32 %15, ptr elementtype(i32) %10) #12, !srcloc !18
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %25, label %23, !prof !19

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %23, %20, %9
  %26 = phi i32 [ 0, %9 ], [ 0, %23 ], [ %14, %20 ]
  %27 = add i32 %26, 1
  %28 = or i32 %27, %26
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !19

30:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 0) #12
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31, %3
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %89

34:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %35 = icmp eq ptr %2, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 5
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dma_fence_ops, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %41
  %48 = tail call zeroext i1 %45(ptr noundef nonnull %7) #12
  br i1 %48, label %49, label %80

49:                                               ; preds = %47
  %50 = tail call i32 @dma_fence_signal(ptr noundef nonnull %7) #12
  br label %80

51:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #12, !annotation !21
  %52 = load i64, ptr %2, align 8
  %53 = getelementptr inbounds %struct.drm_etnaviv_timespec, ptr %2, i32 0, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  call void @ktime_get_ts64(ptr noundef nonnull %4) #12
  %56 = load i64, ptr %4, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %73, label %58

58:                                               ; preds = %51
  %59 = icmp sgt i64 %52, %56
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %62 = load i32, ptr %61, align 8
  %63 = sub i32 %55, %62
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %73, label %65

65:                                               ; preds = %60, %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %66 = getelementptr inbounds [2 x i64], ptr %4, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #12, !alias.scope !22, !annotation !21
  %69 = sub i64 %52, %56
  %70 = sub i32 %55, %68
  %71 = sext i32 %70 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %5, i64 noundef %69, i64 noundef %71) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %72 = call i32 @timespec64_to_jiffies(ptr noundef nonnull %4) #12
  br label %73

73:                                               ; preds = %65, %60, %51
  %74 = phi i32 [ %72, %65 ], [ 0, %60 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  %75 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %7, i1 noundef zeroext true, i32 noundef %74) #12
  %76 = icmp eq i32 %75, 0
  %77 = icmp eq i32 %75, -512
  %78 = select i1 %77, i32 -512, i32 0
  %79 = select i1 %76, i32 -110, i32 %78
  br label %80

80:                                               ; preds = %73, %49, %47, %41, %36
  %81 = phi i32 [ %79, %73 ], [ -16, %41 ], [ -16, %47 ], [ 0, %49 ], [ 0, %36 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !17
  %82 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !26
  %83 = extractvalue { i32, i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = icmp sgt i32 %83, 0
  br i1 %86, label %89, label %87, !prof !19

87:                                               ; preds = %85
  call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #12
  br label %89

88:                                               ; preds = %80
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  call void @dma_fence_release(ptr noundef %10) #12
  br label %89

89:                                               ; preds = %88, %87, %85, %33
  %90 = phi i32 [ 0, %33 ], [ %81, %85 ], [ %81, %87 ], [ %81, %88 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_wait_obj_inactive(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -16
  br label %81

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #12, !annotation !21
  %14 = load i64, ptr %2, align 8
  %15 = getelementptr inbounds %struct.drm_etnaviv_timespec, ptr %2, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  call void @ktime_get_ts64(ptr noundef nonnull %4) #12
  %18 = load i64, ptr %4, align 8
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = icmp sgt i64 %14, %18
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = sub i32 %17, %24
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %35, label %27

27:                                               ; preds = %22, %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %28 = getelementptr inbounds [2 x i64], ptr %4, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #12, !alias.scope !28, !annotation !21
  %31 = sub i64 %14, %18
  %32 = sub i32 %17, %30
  %33 = sext i32 %32 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %5, i64 noundef %31, i64 noundef %33) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %34 = call i32 @timespec64_to_jiffies(ptr noundef nonnull %4) #12
  br label %35

35:                                               ; preds = %27, %22, %13
  %36 = phi i32 [ %34, %27 ], [ 0, %22 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  %37 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 6
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = icmp ne i32 %36, 0
  %42 = select i1 %39, i1 true, i1 %41
  %43 = select i1 %42, i32 %36, i32 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %40, i1 true, i1 %44
  br i1 %45, label %75, label %46

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !21
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #12
  %47 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 21
  %48 = call i32 @prepare_to_wait_event(ptr noundef %47, ptr noundef nonnull %6, i32 noundef 1) #12
  %49 = load volatile i32, ptr %37, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = select i1 %50, i1 true, i1 %41
  %53 = select i1 %52, i32 %36, i32 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %51, i1 true, i1 %54
  br i1 %55, label %71, label %56

56:                                               ; preds = %60, %46
  %57 = phi i32 [ %68, %60 ], [ %53, %46 ]
  %58 = phi i32 [ %62, %60 ], [ %48, %46 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = call i32 @schedule_timeout(i32 noundef %57) #12
  %62 = call i32 @prepare_to_wait_event(ptr noundef %47, ptr noundef nonnull %6, i32 noundef 1) #12
  %63 = load volatile i32, ptr %37, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = icmp ne i32 %61, 0
  %67 = select i1 %64, i1 true, i1 %66
  %68 = select i1 %67, i32 %61, i32 1
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %65, i1 true, i1 %69
  br i1 %70, label %71, label %56

71:                                               ; preds = %60, %46
  %72 = phi i32 [ %53, %46 ], [ %68, %60 ]
  call void @finish_wait(ptr noundef %47, ptr noundef nonnull %6) #12
  br label %73

73:                                               ; preds = %71, %56
  %74 = phi i32 [ %72, %71 ], [ %58, %56 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  br label %75

75:                                               ; preds = %73, %35
  %76 = phi i32 [ %43, %35 ], [ %74, %73 ]
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = icmp eq i32 %76, -512
  %80 = select i1 %79, i32 -512, i32 -110
  br label %81

81:                                               ; preds = %78, %75, %8
  %82 = phi i32 [ %12, %8 ], [ 0, %75 ], [ %80, %78 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gpu_submit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i32], align 4
  %3 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !21
  %5 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 11
  %6 = load i8, ptr %5, align 4, !range !31
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !17
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #12, !srcloc !33
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %212, label %19

19:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  br label %212

20:                                               ; preds = %8
  store i8 1, ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 14
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 14
  %26 = tail call i32 @wait_for_completion_timeout(ptr noundef %25, i32 noundef 10000) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %36, %33, %21
  %29 = phi i1 [ false, %36 ], [ true, %33 ], [ false, %21 ]
  %30 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.84) #13
  br i1 %27, label %53, label %51

32:                                               ; preds = %21
  br i1 %24, label %39, label %33

33:                                               ; preds = %32
  %34 = tail call i32 @wait_for_completion_timeout(ptr noundef %25, i32 noundef %26) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %28, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @wait_for_completion_timeout(ptr noundef %25, i32 noundef %34) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %28, label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %40) #12
  %41 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 12
  %42 = tail call i32 @_find_first_zero_bit_le(ptr noundef %41, i32 noundef 30) #12
  store i32 %42, ptr %2, align 4
  %43 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %42
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %43, i8 0, i32 12, i1 false) #12
  tail call void @_set_bit(i32 noundef %42, ptr noundef %41) #12
  br i1 %24, label %60, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @_find_first_zero_bit_le(ptr noundef %41, i32 noundef 30) #12
  %46 = getelementptr inbounds i32, ptr %2, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %45
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %47, i8 0, i32 12, i1 false) #12
  tail call void @_set_bit(i32 noundef %45, ptr noundef %41) #12
  %48 = tail call i32 @_find_first_zero_bit_le(ptr noundef %41, i32 noundef 30) #12
  %49 = getelementptr inbounds i32, ptr %2, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %48
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %50, i8 0, i32 12, i1 false) #12
  tail call void @_set_bit(i32 noundef %48, ptr noundef %41) #12
  br label %60

51:                                               ; preds = %28
  tail call void @complete(ptr noundef %25) #12
  br i1 %29, label %53, label %52

52:                                               ; preds = %51
  tail call void @complete(ptr noundef %25) #12
  br label %53

53:                                               ; preds = %52, %51, %28
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.76) #12
  %54 = load ptr, ptr %30, align 8
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #12, !srcloc !17
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 0, i32 -1, ptr elementtype(i32) %55) #12, !srcloc !33
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %212, label %59

59:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  br label %212

60:                                               ; preds = %44, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %61 = load i16, ptr %40, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %63 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %63) #12
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 56) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  store ptr %4, ptr %65, align 8
  %68 = getelementptr inbounds %struct.etnaviv_fence, ptr %65, i32 0, i32 1
  %69 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 23
  %70 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 22
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 19
  %73 = load i32, ptr %72, align 8
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8
  %75 = zext i32 %74 to i64
  tail call void @dma_fence_init(ptr noundef %68, ptr noundef nonnull @etnaviv_fence_ops, ptr noundef %69, i64 noundef %71, i64 noundef %75) #12
  %76 = icmp eq ptr %68, null
  br i1 %76, label %77, label %117

77:                                               ; preds = %67, %60
  %78 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 2
  %79 = load i32, ptr %2, align 4
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr %41, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load ptr, ptr %78, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.86, i32 noundef %79) #13
  br label %90

89:                                               ; preds = %77
  tail call void @_clear_bit(i32 noundef %79, ptr noundef %41) #12
  tail call void @complete(ptr noundef %25) #12
  br label %90

90:                                               ; preds = %89, %87
  br i1 %24, label %210, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr %41, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  tail call void @_clear_bit(i32 noundef %93, ptr noundef %41) #12
  tail call void @complete(ptr noundef %25) #12
  br label %104

102:                                              ; preds = %91
  %103 = load ptr, ptr %78, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.86, i32 noundef %93) #13
  br label %104

104:                                              ; preds = %102, %101
  %105 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = lshr i32 %106, 5
  %108 = getelementptr i32, ptr %41, i32 %107
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %106, 31
  %111 = shl nuw i32 1, %110
  %112 = and i32 %111, %109
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %104
  tail call void @_clear_bit(i32 noundef %106, ptr noundef %41) #12
  tail call void @complete(ptr noundef %25) #12
  br label %210

115:                                              ; preds = %104
  %116 = load ptr, ptr %78, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.86, i32 noundef %106) #13
  br label %210

117:                                              ; preds = %67
  %118 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 9
  %119 = load i8, ptr %118, align 1, !range !31
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 4
  %123 = load ptr, ptr %122, align 4
  tail call void @etnaviv_iommu_restore(ptr noundef %4, ptr noundef %123) #12
  %124 = tail call zeroext i16 @etnaviv_buffer_init(ptr noundef %4) #12
  %125 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 10
  %126 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 30
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %127, i32 0, i32 6
  %129 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %125, ptr noundef %128) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %130 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 28
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr i8, ptr %131, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %129) #12, !srcloc !9
  %133 = zext i16 %124 to i32
  %134 = or i32 %133, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %135 = load ptr, ptr %130, align 8
  %136 = getelementptr i8, ptr %135, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #12, !srcloc !9
  %137 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %141 = load ptr, ptr %130, align 8
  %142 = getelementptr i8, ptr %141, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %134) #12, !srcloc !9
  br label %143

143:                                              ; preds = %140, %121
  store i8 1, ptr %118, align 1
  br label %144

144:                                              ; preds = %143, %117
  %145 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 5
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %146) #12
  br label %149

149:                                              ; preds = %148, %144
  %150 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 30
  %151 = load ptr, ptr %150, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #12, !srcloc !17
  %152 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 1, ptr elementtype(i32) %151) #12, !srcloc !35
  %153 = extractvalue { i32, i32, i32 } %152, 0
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155, !prof !36

155:                                              ; preds = %149
  %156 = add i32 %153, 1
  %157 = or i32 %156, %153
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %161, label %159, !prof !19

159:                                              ; preds = %155, %149
  %160 = phi i32 [ 2, %149 ], [ 1, %155 ]
  tail call void @refcount_warn_saturate(ptr noundef %151, i32 noundef %160) #12
  br label %161

161:                                              ; preds = %159, %155
  store ptr %151, ptr %145, align 8
  %162 = load i32, ptr %22, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %166, i32 2
  store ptr @sync_point_perfmon_sample_pre, ptr %167, align 4
  %168 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #12, !srcloc !17
  %169 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #12, !srcloc !35
  %170 = extractvalue { i32, i32, i32 } %169, 0
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172, !prof !36

172:                                              ; preds = %164
  %173 = add i32 %170, 1
  %174 = or i32 %173, %170
  %175 = icmp sgt i32 %174, -1
  br i1 %175, label %178, label %176, !prof !19

176:                                              ; preds = %172, %164
  %177 = phi i32 [ 2, %164 ], [ 1, %172 ]
  tail call void @refcount_warn_saturate(ptr noundef %168, i32 noundef %177) #12
  br label %178

178:                                              ; preds = %176, %172
  %179 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %166, i32 1
  store ptr %0, ptr %179, align 4
  tail call void @etnaviv_sync_point_queue(ptr noundef %4, i32 noundef %166) #12
  br label %180

180:                                              ; preds = %178, %161
  %181 = load i32, ptr %2, align 4
  %182 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %181
  store ptr %68, ptr %182, align 4
  %183 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 10
  %184 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 10, i32 3
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, -8
  %187 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 10, i32 4
  store i32 %186, ptr %187, align 8
  %188 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 12
  %189 = load i32, ptr %188, align 8
  %190 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 4
  %191 = load ptr, ptr %190, align 4
  tail call void @etnaviv_buffer_queue(ptr noundef %4, i32 noundef %189, ptr noundef %191, i32 noundef %181, ptr noundef %183) #12
  %192 = load i32, ptr %22, align 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %210, label %194

194:                                              ; preds = %180
  %195 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %196, i32 2
  store ptr @sync_point_perfmon_sample_post, ptr %197, align 4
  %198 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %198) #12, !srcloc !17
  %199 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %198, ptr %198, i32 1, ptr elementtype(i32) %198) #12, !srcloc !35
  %200 = extractvalue { i32, i32, i32 } %199, 0
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202, !prof !36

202:                                              ; preds = %194
  %203 = add i32 %200, 1
  %204 = or i32 %203, %200
  %205 = icmp sgt i32 %204, -1
  br i1 %205, label %208, label %206, !prof !19

206:                                              ; preds = %202, %194
  %207 = phi i32 [ 2, %194 ], [ 1, %202 ]
  tail call void @refcount_warn_saturate(ptr noundef %198, i32 noundef %207) #12
  br label %208

208:                                              ; preds = %206, %202
  %209 = getelementptr %struct.etnaviv_gpu, ptr %4, i32 0, i32 13, i32 %196, i32 1
  store ptr %0, ptr %209, align 4
  tail call void @etnaviv_sync_point_queue(ptr noundef %4, i32 noundef %196) #12
  br label %210

210:                                              ; preds = %208, %180, %115, %114, %90
  %211 = phi ptr [ %68, %180 ], [ %68, %208 ], [ null, %114 ], [ null, %115 ], [ null, %90 ]
  tail call void @mutex_unlock(ptr noundef %63) #12
  br label %212

212:                                              ; preds = %210, %59, %53, %19, %13
  %213 = phi ptr [ %211, %210 ], [ null, %13 ], [ null, %19 ], [ null, %53 ], [ null, %59 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  ret ptr %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_point_perfmon_sample_pre(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %7 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #12, !srcloc !9
  %10 = load ptr, ptr %3, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %12 = and i32 %11, -2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %13 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #12, !srcloc !9
  %14 = getelementptr inbounds %struct.etnaviv_event, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %15, i32 0, i32 14
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %15, i32 0, i32 15
  %21 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %15, i32 0, i32 12
  br label %22

22:                                               ; preds = %32, %19
  %23 = phi i32 [ %17, %19 ], [ %33, %32 ]
  %24 = phi i32 [ 0, %19 ], [ %34, %32 ]
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr %struct.etnaviv_perfmon_request, ptr %25, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, ptr %21, align 8
  tail call void @etnaviv_perfmon_process(ptr noundef %0, ptr noundef %26, i32 noundef %30) #12
  %31 = load i32, ptr %16, align 8
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i32 [ %31, %29 ], [ %23, %22 ]
  %34 = add nuw i32 %24, 1
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %22, label %36

36:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_sync_point_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_buffer_queue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_point_perfmon_sample_post(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.etnaviv_event, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %4, i32 0, i32 15
  %10 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %4, i32 0, i32 12
  br label %11

11:                                               ; preds = %21, %8
  %12 = phi i32 [ %6, %8 ], [ %22, %21 ]
  %13 = phi i32 [ 0, %8 ], [ %23, %21 ]
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr %struct.etnaviv_perfmon_request, ptr %14, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, ptr %10, align 8
  tail call void @etnaviv_perfmon_process(ptr noundef %0, ptr noundef %15, i32 noundef %19) #12
  %20 = load i32, ptr %5, align 8
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %20, %18 ], [ %12, %11 ]
  %23 = add nuw i32 %13, 1
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %11, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %4, i32 0, i32 15
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %36, %29 ]
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr %struct.etnaviv_perfmon_request, ptr %31, i32 %30, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.etnaviv_perfmon_request, ptr %31, i32 %30, i32 4
  %35 = load ptr, ptr %34, align 4
  store i32 %33, ptr %35, align 4
  %36 = add nuw i32 %30, 1
  %37 = load i32, ptr %5, align 8
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %29, label %39

39:                                               ; preds = %29, %25, %2
  %40 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %43 = or i32 %42, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %44 = load ptr, ptr %40, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %43) #12, !srcloc !9
  %45 = load ptr, ptr %40, align 8
  %46 = getelementptr i8, ptr %45, i32 256
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %48 = or i32 %47, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %49 = load ptr, ptr %40, align 8
  %50 = getelementptr i8, ptr %49, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #12, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_wait_idle(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #12
  %5 = add i32 %4, %3
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, %11
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i32 %5, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %26

18:                                               ; preds = %26
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %5, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %9, %14 ], [ %30, %18 ]
  %24 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.77, i32 noundef %23) #13
  br label %34

26:                                               ; preds = %18, %14
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #12
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %31 = load i32, ptr %10, align 4
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, %31
  br i1 %33, label %34, label %18

34:                                               ; preds = %26, %22, %2
  %35 = phi i32 [ -110, %22 ], [ 0, %2 ], [ 0, %26 ]
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_platform_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 944, i32 noundef 3520) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 2
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.87, ptr noundef nonnull @etnaviv_gpu_platform_probe.__key) #12
  %8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.89, ptr noundef nonnull @etnaviv_gpu_platform_probe.__key.88) #12
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #12
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 28
  store ptr %9, ptr %10, align 8
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %9 to i32
  br label %71

14:                                               ; preds = %5
  %15 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 29
  store i32 %15, ptr %16, align 4
  %17 = icmp slt i32 %15, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %21, %18 ]
  %27 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %15, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %26, ptr noundef nonnull %3) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.90, i32 noundef %30, i32 noundef %27) #13
  br label %71

31:                                               ; preds = %25
  %32 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.91) #12
  %33 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 33
  store ptr %32, ptr %33, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.92, ptr noundef %32) #12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = ptrtoint ptr %34 to i32
  br label %71

38:                                               ; preds = %31
  %39 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.93) #12
  %40 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 32
  store ptr %39, ptr %40, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.94, ptr noundef %39) #12
  %41 = load ptr, ptr %40, align 8
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = ptrtoint ptr %41 to i32
  br label %71

45:                                               ; preds = %38
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.95) #12
  %47 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 34
  store ptr %46, ptr %47, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef %46) #12
  %48 = load ptr, ptr %47, align 8
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = ptrtoint ptr %48 to i32
  br label %71

52:                                               ; preds = %45
  %53 = tail call i32 @clk_get_rate(ptr noundef %48) #12
  %54 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 37
  store i32 %53, ptr %54, align 4
  %55 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.97) #12
  %56 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 35
  store ptr %55, ptr %56, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef %55) #12
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = ptrtoint ptr %57 to i32
  br label %71

61:                                               ; preds = %52
  %62 = tail call i32 @clk_get_rate(ptr noundef %57) #12
  %63 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 38
  store i32 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %64, align 8
  %65 = load ptr, ptr %6, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %65, i1 noundef zeroext true) #12
  %66 = load ptr, ptr %6, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %66, i32 noundef 200) #12
  %67 = load ptr, ptr %6, align 8
  tail call void @pm_runtime_enable(ptr noundef %67) #12
  %68 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @gpu_ops) #12
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %68) #13
  br label %71

71:                                               ; preds = %70, %61, %59, %50, %43, %36, %29, %14, %12, %1
  %72 = phi i32 [ %13, %12 ], [ %27, %29 ], [ %37, %36 ], [ %44, %43 ], [ %51, %50 ], [ %60, %59 ], [ %68, %70 ], [ -12, %1 ], [ %15, %14 ], [ 0, %61 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_platform_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @gpu_ops) #12
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @etnaviv_fill_identity_from_hwdb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @etnaviv_gpu_update_clock(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 34
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 37
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 36
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %10, %12
  %14 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %13) #12
  %15 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 35
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 38
  %18 = load i32, ptr %17, align 8
  %19 = load i32, ptr %11, align 8
  %20 = lshr i32 %18, %19
  %21 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %20) #12
  br label %36

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 36
  %24 = load i32, ptr %23, align 8
  %25 = sub i32 6, %24
  %26 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %29 = and i32 %28, -509
  %30 = shl i32 4, %25
  %31 = and i32 %30, 508
  %32 = or i32 %29, %31
  %33 = or i32 %32, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %34 = load ptr, ptr %26, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %35 = load ptr, ptr %26, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #12, !srcloc !9
  br label %36

36:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timespec64_to_jiffies(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @etnaviv_fence_get_driver_name(ptr nocapture noundef readnone %0) #7 {
  ret ptr @.str.85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @etnaviv_fence_get_timeline_name(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %7, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @etnaviv_fence_signaled(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = sub i32 %5, %8
  %10 = icmp sgt i32 %9, -1
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_fence_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %5, ptr noundef nonnull inttoptr (i32 16 to ptr)) #12
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_buffer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_perfmon_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %135, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i64 @ktime_get_mono_fast_ns() #12
  %12 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 22
  store volatile i64 %11, ptr %12, align 8
  %13 = icmp sgt i32 %6, -1
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.100) #13
  %16 = and i32 %6, 2147483647
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ %16, %14 ], [ %6, %8 ]
  %19 = and i32 %18, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %91, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 392, i32 900
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %29 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs, ptr noundef nonnull @__func__.dump_mmu_fault) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.101, i32 noundef %28) #13
  br label %33

33:                                               ; preds = %31, %21
  %34 = and i32 %28, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %22, align 4
  %38 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.102, ptr noundef nonnull @__func__.dump_mmu_fault) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = icmp eq i32 %37, 0
  %42 = select i1 %41, i32 400, i32 896
  %43 = load ptr, ptr %9, align 8
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr i8, ptr %44, i32 %42
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.103, i32 noundef 0, i32 noundef %46) #13
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = and i32 %28, 48
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %22, align 4
  %52 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.102, ptr noundef nonnull @__func__.dump_mmu_fault) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = icmp eq i32 %51, 0
  %56 = select i1 %55, i32 404, i32 896
  %57 = load ptr, ptr %9, align 8
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr i8, ptr %58, i32 %56
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.103, i32 noundef 1, i32 noundef %60) #13
  br label %61

61:                                               ; preds = %54, %50, %47
  %62 = and i32 %28, 768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %22, align 4
  %66 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.102, ptr noundef nonnull @__func__.dump_mmu_fault) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = icmp eq i32 %65, 0
  %70 = select i1 %69, i32 408, i32 896
  %71 = load ptr, ptr %9, align 8
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr i8, ptr %72, i32 %70
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.103, i32 noundef 2, i32 noundef %74) #13
  br label %75

75:                                               ; preds = %68, %64, %61
  %76 = and i32 %28, 12288
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %22, align 4
  %80 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.102, ptr noundef nonnull @__func__.dump_mmu_fault) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = icmp eq i32 %79, 0
  %84 = select i1 %83, i32 412, i32 896
  %85 = load ptr, ptr %9, align 8
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr i8, ptr %86, i32 %84
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.103, i32 noundef 3, i32 noundef %88) #13
  br label %89

89:                                               ; preds = %82, %78, %75
  %90 = and i32 %18, -1073741825
  br label %91

91:                                               ; preds = %89, %17
  %92 = phi i32 [ %90, %89 ], [ %18, %17 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %135, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 25
  %96 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 6
  %97 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 24
  %98 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 20
  %99 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 12
  %100 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 14
  br label %101

101:                                              ; preds = %133, %94
  %102 = phi i32 [ %92, %94 ], [ %106, %133 ]
  %103 = tail call i32 @llvm.cttz.i32(i32 %102, i1 true), !range !37
  %104 = shl nuw i32 1, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %102, %105
  %107 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %103
  %108 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %103, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  store i32 %103, ptr %95, align 4
  %112 = load ptr, ptr %96, align 8
  %113 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %112, ptr noundef %97) #12
  br label %114

114:                                              ; preds = %111, %101
  %115 = load ptr, ptr %107, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %133, label %117

117:                                              ; preds = %114
  store ptr null, ptr %107, align 4
  %118 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 4
  %119 = load i64, ptr %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, ptr %98, align 4
  %122 = sub i32 %120, %121
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 %120, ptr %98, align 4
  br label %125

125:                                              ; preds = %124, %117
  %126 = tail call i32 @dma_fence_signal(ptr noundef nonnull %115) #12
  %127 = load volatile i32, ptr %99, align 4
  %128 = and i32 %127, %104
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.86, i32 noundef %103) #13
  br label %133

132:                                              ; preds = %125
  tail call void @_clear_bit(i32 noundef %103, ptr noundef %99) #12
  tail call void @complete(ptr noundef %100) #12
  br label %133

133:                                              ; preds = %132, %130, %114
  %134 = icmp eq i32 %106, 0
  br i1 %134, label %135, label %101

135:                                              ; preds = %133, %91, %2
  %136 = phi i32 [ 0, %2 ], [ 1, %91 ], [ 1, %133 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %11, %3 ]
  %17 = tail call ptr @thermal_of_cooling_device_register(ptr noundef %9, ptr noundef %16, ptr noundef %7, ptr noundef nonnull @cooling_ops) #12
  %18 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i32
  br label %69

22:                                               ; preds = %15
  %23 = load ptr, ptr %10, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %26, %25 ], [ %23, %22 ]
  %29 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %28, i32 noundef 655362, i32 noundef 1) #12
  %30 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 6
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @etnaviv_sched_init(ptr noundef %7) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @__pm_runtime_resume(ptr noundef %37, i32 noundef 4) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %35
  store ptr %2, ptr %7, align 8
  %41 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #12
  %42 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 22
  store i64 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 18
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 18, i32 0, i32 1
  store i32 33554436, ptr %44, align 4
  %45 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 18, i32 0, i32 2
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 18, i32 1
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 18, i32 2
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 23
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 24
  store i32 -32, ptr %49, align 4
  %50 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 24, i32 1
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 24, i32 1, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 24, i32 2
  store ptr @sync_point_worker, ptr %52, align 4
  %53 = getelementptr inbounds %struct.etnaviv_gpu, ptr %7, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %53, ptr noundef nonnull @.str.104, ptr noundef nonnull @etnaviv_gpu_bind.__key) #12
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  %56 = getelementptr %struct.etnaviv_drm_private, ptr %5, i32 0, i32 1, i32 %54
  store ptr %7, ptr %56, align 4
  %57 = load ptr, ptr %36, align 8
  %58 = tail call i64 @ktime_get_mono_fast_ns() #12
  %59 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 11, i32 22
  store volatile i64 %58, ptr %59, align 8
  %60 = load ptr, ptr %36, align 8
  %61 = tail call i32 @__pm_runtime_suspend(ptr noundef %60, i32 noundef 13) #12
  br label %69

62:                                               ; preds = %35
  tail call void @etnaviv_sched_fini(ptr noundef %7) #12
  br label %63

63:                                               ; preds = %62, %32
  %64 = phi i32 [ %33, %32 ], [ %38, %62 ]
  %65 = load ptr, ptr %30, align 8
  tail call void @destroy_workqueue(ptr noundef %65) #12
  br label %66

66:                                               ; preds = %63, %27
  %67 = phi i32 [ %64, %63 ], [ -12, %27 ]
  %68 = load ptr, ptr %18, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %68) #12
  br label %69

69:                                               ; preds = %66, %40, %20
  %70 = phi i32 [ %21, %20 ], [ %67, %66 ], [ 0, %40 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_gpu_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %9, %3 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.105, ptr noundef %14) #12
  %15 = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  tail call void @destroy_workqueue(ptr noundef %16) #12
  tail call void @etnaviv_sched_fini(ptr noundef %5) #12
  %17 = load ptr, ptr %6, align 8
  %18 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #12
  %19 = load ptr, ptr %6, align 8
  %20 = tail call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 4) #12
  %21 = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 30
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %22) #12
  br label %25

25:                                               ; preds = %24, %13
  %26 = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 8
  %27 = load i8, ptr %26, align 8, !range !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 10
  tail call void @etnaviv_cmdbuf_free(ptr noundef %30) #12
  tail call void @etnaviv_iommu_global_fini(ptr noundef %5) #12
  store i8 0, ptr %26, align 8
  br label %31

31:                                               ; preds = %29, %25
  store ptr null, ptr %5, align 8
  %32 = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 18
  tail call void @idr_destroy(ptr noundef %32) #12
  %33 = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %34) #12
  store ptr null, ptr %33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_sched_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_point_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -868
  %3 = getelementptr i8, ptr %0, i32 -460
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [30 x %struct.etnaviv_event], ptr %3, i32 0, i32 %5
  %7 = getelementptr i8, ptr %0, i32 28
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 1636
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %11 = getelementptr inbounds %struct.etnaviv_event, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %2, ptr noundef %6) #12
  %13 = getelementptr inbounds %struct.etnaviv_event, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @etnaviv_submit_put(ptr noundef %14) #12
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr i8, ptr %0, i32 -464
  %17 = lshr i32 %15, 5
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %15, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = getelementptr i8, ptr %0, i32 -860
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.86, i32 noundef %15) #13
  br label %29

27:                                               ; preds = %1
  tail call void @_clear_bit(i32 noundef %15, ptr noundef %16) #12
  %28 = getelementptr i8, ptr %0, i32 -100
  tail call void @complete(ptr noundef %28) #12
  br label %29

29:                                               ; preds = %27, %24
  %30 = add i32 %10, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr i8, ptr %31, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr i8, ptr %33, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 65538) #12, !srcloc !9
  %35 = getelementptr i8, ptr %0, i32 -720
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %39 = load ptr, ptr %7, align 8
  %40 = getelementptr i8, ptr %39, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 65538) #12, !srcloc !9
  br label %41

41:                                               ; preds = %38, %29
  %42 = getelementptr i8, ptr %0, i32 -491
  store i8 1, ptr %42, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_sched_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @etnaviv_gpu_cooling_get_max_state(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  store i32 6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_gpu_cooling_get_cur_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 36
  %6 = load i32, ptr %5, align 8
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_cooling_set_cur_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 36
  store i32 %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 15
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 7
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  tail call fastcc void @etnaviv_gpu_update_clock(ptr noundef %4)
  br label %18

18:                                               ; preds = %17, %12
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_submit_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_global_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_rpm_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 7, i32 7
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %70

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -16386
  %11 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 28
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %15, %10
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = tail call i32 @___ratelimit(ptr noundef nonnull @etnaviv_gpu_rpm_suspend._rs, ptr noundef nonnull @__func__.etnaviv_gpu_rpm_suspend) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %70, label %20

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.106, i32 noundef %15) #13
  br label %70

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 8
  %23 = load i8, ptr %22, align 8, !range !31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %60, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 9
  %27 = load i8, ptr %26, align 1, !range !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %30) #12
  tail call void @etnaviv_buffer_end(ptr noundef %3) #12
  tail call void @mutex_unlock(ptr noundef %30) #12
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = add i32 %31, 10
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %36 = load i32, ptr %8, align 4
  %37 = and i32 %36, %35
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %59, label %39

39:                                               ; preds = %29
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = sub i32 %32, %40
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %51

43:                                               ; preds = %51
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = sub i32 %32, %44
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %35, %39 ], [ %55, %43 ]
  %49 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.77, i32 noundef %48) #13
  br label %59

51:                                               ; preds = %43, %39
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 1073740) #12
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr i8, ptr %53, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %56 = load i32, ptr %8, align 4
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, %56
  br i1 %58, label %59, label %43

59:                                               ; preds = %51, %47, %29
  store i8 0, ptr %26, align 1
  br label %60

60:                                               ; preds = %59, %25, %21
  %61 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 11
  store i32 -1, ptr %61, align 8
  %62 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 35
  %63 = load ptr, ptr %62, align 4
  tail call void @clk_disable(ptr noundef %63) #12
  tail call void @clk_unprepare(ptr noundef %63) #12
  %64 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 34
  %65 = load ptr, ptr %64, align 8
  tail call void @clk_disable(ptr noundef %65) #12
  tail call void @clk_unprepare(ptr noundef %65) #12
  %66 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 32
  %67 = load ptr, ptr %66, align 8
  tail call void @clk_disable(ptr noundef %67) #12
  tail call void @clk_unprepare(ptr noundef %67) #12
  %68 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 33
  %69 = load ptr, ptr %68, align 4
  tail call void @clk_disable(ptr noundef %69) #12
  tail call void @clk_unprepare(ptr noundef %69) #12
  br label %70

70:                                               ; preds = %60, %20, %17, %1
  %71 = phi i32 [ 0, %60 ], [ -16, %1 ], [ -16, %20 ], [ -16, %17 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_rpm_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %71

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 32
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 34
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 35
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_prepare(ptr noundef %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = tail call i32 @clk_enable(ptr noundef %29) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %29) #12
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i32 [ %33, %35 ], [ %30, %27 ]
  %38 = load ptr, ptr %20, align 8
  tail call void @clk_disable(ptr noundef %38) #12
  br label %39

39:                                               ; preds = %36, %24
  %40 = phi ptr [ %38, %36 ], [ %21, %24 ]
  %41 = phi i32 [ %37, %36 ], [ %25, %24 ]
  tail call void @clk_unprepare(ptr noundef %40) #12
  br label %42

42:                                               ; preds = %39, %19
  %43 = phi i32 [ %22, %19 ], [ %41, %39 ]
  %44 = load ptr, ptr %12, align 8
  tail call void @clk_disable(ptr noundef %44) #12
  br label %45

45:                                               ; preds = %42, %16
  %46 = phi ptr [ %44, %42 ], [ %13, %16 ]
  %47 = phi i32 [ %43, %42 ], [ %17, %16 ]
  tail call void @clk_unprepare(ptr noundef %46) #12
  br label %48

48:                                               ; preds = %45, %11
  %49 = phi i32 [ %14, %11 ], [ %47, %45 ]
  %50 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %50) #12
  br label %51

51:                                               ; preds = %48, %8
  %52 = phi ptr [ %50, %48 ], [ %5, %8 ]
  %53 = phi i32 [ %49, %48 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %52) #12
  br label %71

54:                                               ; preds = %32
  %55 = load ptr, ptr %3, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 8
  %59 = load i8, ptr %58, align 8, !range !31
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 3
  %63 = tail call i32 @mutex_lock_killable(ptr noundef %62) #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call fastcc void @etnaviv_gpu_update_clock(ptr noundef %3) #12
  tail call fastcc void @etnaviv_gpu_hw_init(ptr noundef %3) #12
  tail call void @mutex_unlock(ptr noundef %62) #12
  br label %71

66:                                               ; preds = %61
  %67 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %67) #12
  tail call void @clk_unprepare(ptr noundef %67) #12
  %68 = load ptr, ptr %20, align 8
  tail call void @clk_disable(ptr noundef %68) #12
  tail call void @clk_unprepare(ptr noundef %68) #12
  %69 = load ptr, ptr %12, align 8
  tail call void @clk_disable(ptr noundef %69) #12
  tail call void @clk_unprepare(ptr noundef %69) #12
  %70 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %70) #12
  tail call void @clk_unprepare(ptr noundef %70) #12
  br label %71

71:                                               ; preds = %66, %65, %57, %54, %51, %1
  %72 = phi i32 [ %63, %66 ], [ 0, %57 ], [ 0, %54 ], [ 0, %65 ], [ %53, %51 ], [ %6, %1 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_buffer_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 2155327597}
!9 = !{i64 5077132}
!10 = !{i64 5077550}
!11 = !{i64 2155328223}
!12 = !{i64 2148928191}
!13 = !{i64 2148924015}
!14 = !{i64 2148924090, i64 2148924117, i64 2148924164, i64 2148924186, i64 2148924214, i64 2148924234}
!15 = !{i64 2148951194}
!16 = !{i64 2149026825}
!17 = !{i64 490023, i64 2147979994, i64 2147980020, i64 2147980067, i64 2147980089, i64 2147980117, i64 2147980137}
!18 = !{i64 476086, i64 476110, i64 476131, i64 476148, i64 476165}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2149027042}
!21 = !{!"auto-init"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"timespec64_sub: argument 0"}
!24 = distinct !{!24, !"timespec64_sub"}
!25 = !{i64 2148093862}
!26 = !{i64 2147996021, i64 2147996053, i64 2147996082, i64 2147996116, i64 2147996147, i64 2147996170}
!27 = !{i64 2149514158}
!28 = !{!29}
!29 = distinct !{!29, !30, !"timespec64_sub: argument 0"}
!30 = distinct !{!30, !"timespec64_sub"}
!31 = !{i8 0, i8 2}
!32 = !{i64 2147991713}
!33 = !{i64 476592, i64 476617, i64 476639, i64 476655, i64 476667, i64 476687, i64 476711, i64 476727, i64 476739}
!34 = !{i64 2147991839}
!35 = !{i64 2147993664, i64 2147993696, i64 2147993725, i64 2147993759, i64 2147993790, i64 2147993813}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i32 0, i32 33}
