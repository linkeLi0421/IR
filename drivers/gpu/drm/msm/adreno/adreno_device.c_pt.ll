; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/adreno_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/adreno_device.c"
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
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adreno_reglist = type { i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.adreno_platform_config = type { %struct.adreno_rev }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@hang_debug = dso_local global i8 0, align 1
@__UNIQUE_ID_hang_debug296 = internal constant [68 x i8] c"parm=hang_debug:Dump registers when hang is detected (can be slow!)\00", section ".modinfo", align 1
@__param_str_hang_debug = internal constant [11 x i8] c"hang_debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_hang_debug = internal constant %struct.kernel_param { ptr @__param_str_hang_debug, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @hang_debug } }, section "__param", align 4
@__UNIQUE_ID_hang_debugtype297 = internal constant [25 x i8] c"parmtype=hang_debug:bool\00", section ".modinfo", align 1
@snapshot_debugbus = dso_local global i8 0, align 1
@__UNIQUE_ID_snapshot_debugbus298 = internal constant [87 x i8] c"parm=snapshot_debugbus:Include debugbus sections in GPU devcoredump (if not fused off)\00", section ".modinfo", align 1
@__param_str_snapshot_debugbus = internal constant [18 x i8] c"snapshot_debugbus\00", align 1
@__param_snapshot_debugbus = internal constant %struct.kernel_param { ptr @__param_str_snapshot_debugbus, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @snapshot_debugbus } }, section "__param", align 4
@__UNIQUE_ID_snapshot_debugbustype299 = internal constant [32 x i8] c"parmtype=snapshot_debugbus:bool\00", section ".modinfo", align 1
@allow_vram_carveout = dso_local global i8 0, align 1
@__UNIQUE_ID_allow_vram_carveout300 = internal constant [70 x i8] c"parm=allow_vram_carveout:Allow using VRAM Carveout, in place of IOMMU\00", section ".modinfo", align 1
@__param_str_allow_vram_carveout = internal constant [20 x i8] c"allow_vram_carveout\00", align 1
@__param_allow_vram_carveout = internal constant %struct.kernel_param { ptr @__param_str_allow_vram_carveout, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @allow_vram_carveout } }, section "__param", align 4
@__UNIQUE_ID_allow_vram_carveouttype301 = internal constant [34 x i8] c"parmtype=allow_vram_carveout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [26 x i8] c"firmware=qcom/a300_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [26 x i8] c"firmware=qcom/a300_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [26 x i8] c"firmware=qcom/a330_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [26 x i8] c"firmware=qcom/a330_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [26 x i8] c"firmware=qcom/a420_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [26 x i8] c"firmware=qcom/a420_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [26 x i8] c"firmware=qcom/a530_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [26 x i8] c"firmware=qcom/a530_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [30 x i8] c"firmware=qcom/a530v3_gpmu.fw2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [27 x i8] c"firmware=qcom/a530_zap.mdt\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware312 = internal constant [27 x i8] c"firmware=qcom/a530_zap.b00\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware313 = internal constant [27 x i8] c"firmware=qcom/a530_zap.b01\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware314 = internal constant [27 x i8] c"firmware=qcom/a530_zap.b02\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware315 = internal constant [26 x i8] c"firmware=qcom/a630_sqe.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [27 x i8] c"firmware=qcom/a630_gmu.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware317 = internal constant [27 x i8] c"firmware=qcom/a630_zap.mbn\00", section ".modinfo", align 1
@gpulist = internal constant [24 x %struct.adreno_info] [%struct.adreno_info { %struct.adreno_rev { i8 2, i8 0, i8 0, i8 0 }, i32 200, ptr @.str.4, [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr null], i32 262144, i32 0, ptr @a2xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 2, i8 0, i8 0, i8 1 }, i32 201, ptr @.str.4, [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr null], i32 131072, i32 0, ptr @a2xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 2, i8 2, i8 0, i8 -1 }, i32 220, ptr @.str.7, [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr null], i32 524288, i32 0, ptr @a2xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 0, i8 5, i8 -1 }, i32 305, ptr @.str.10, [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr null], i32 262144, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 0, i8 6, i8 0 }, i32 307, ptr @.str.13, [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr null], i32 131072, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 2, i8 -1, i8 -1 }, i32 320, ptr @.str.14, [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr null], i32 524288, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 3, i8 0, i8 -1 }, i32 330, ptr @.str.15, [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr null], i32 1048576, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 4, i8 0, i8 5, i8 -1 }, i32 405, ptr @.str.18, [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr null], i32 262144, i32 0, ptr @a4xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 4, i8 2, i8 0, i8 -1 }, i32 420, ptr @.str.21, [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr null], i32 1572864, i32 0, ptr @a4xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 4, i8 3, i8 0, i8 -1 }, i32 430, ptr @.str.22, [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr null], i32 1572864, i32 0, ptr @a4xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 0, i8 6, i8 -1 }, i32 506, ptr @.str.23, [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr null], i32 139264, i32 3, ptr @a5xx_gpu_init, ptr @.str.26, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 0, i8 8, i8 -1 }, i32 508, ptr @.str.27, [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr null], i32 139264, i32 3, ptr @a5xx_gpu_init, ptr @.str.28, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 0, i8 9, i8 -1 }, i32 509, ptr @.str.29, [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr null], i32 278528, i32 3, ptr @a5xx_gpu_init, ptr @.str.30, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 1, i8 0, i8 -1 }, i32 510, ptr @.str.31, [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr null], i32 262144, i32 0, ptr @a5xx_gpu_init, ptr null, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 1, i8 2, i8 -1 }, i32 512, ptr @.str.32, [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr null], i32 278528, i32 3, ptr @a5xx_gpu_init, ptr @.str.30, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 3, i8 0, i8 2 }, i32 530, ptr @.str.33, [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.34], i32 1048576, i32 3, ptr @a5xx_gpu_init, ptr @.str.35, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 4, i8 0, i8 -1 }, i32 540, ptr @.str.36, [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.37], i32 1048576, i32 3, ptr @a5xx_gpu_init, ptr @.str.38, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 1, i8 8, i8 -1 }, i32 618, ptr @.str.39, [3 x ptr] [ptr @.str.40, ptr @.str.41, ptr null], i32 524288, i32 0, ptr @a6xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 3, i8 0, i8 -1 }, i32 630, ptr @.str.42, [3 x ptr] [ptr @.str.40, ptr @.str.41, ptr null], i32 1048576, i32 0, ptr @a6xx_gpu_init, ptr @.str.43, i32 66, ptr @a630_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 4, i8 0, i8 -1 }, i32 640, ptr @.str.44, [3 x ptr] [ptr @.str.40, ptr @.str.45, ptr null], i32 1048576, i32 0, ptr @a6xx_gpu_init, ptr @.str.46, i32 66, ptr @a640_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 5, i8 0, i8 -1 }, i32 650, ptr @.str.47, [3 x ptr] [ptr @.str.48, ptr @.str.49, ptr null], i32 1179648, i32 0, ptr @a6xx_gpu_init, ptr @.str.50, i32 66, ptr @a650_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 6, i8 0, i8 -1 }, i32 660, ptr @.str.51, [3 x ptr] [ptr @.str.52, ptr @.str.53, ptr null], i32 1572864, i32 0, ptr @a6xx_gpu_init, ptr @.str.54, i32 66, ptr @a660_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 3, i8 5, i8 -1 }, i32 0, ptr @.str.55, [3 x ptr] [ptr @.str.52, ptr @.str.53, ptr null], i32 524288, i32 0, ptr @a6xx_gpu_init, ptr null, i32 66, ptr @a660_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 8, i8 0, i8 -1 }, i32 680, ptr @.str.56, [3 x ptr] [ptr @.str.40, ptr @.str.45, ptr null], i32 2097152, i32 0, ptr @a6xx_gpu_init, ptr @.str.46, i32 66, ptr @a640_hwcg }], align 4
@adreno_load_gpu.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str = private unnamed_addr constant [25 x i8] c"no GPU device was found\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"*ERROR* Couldn't power up the GPU: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"*ERROR* gpu hw init failed: %d\0A\00", align 1
@adreno_driver = internal global %struct.platform_driver { ptr @adreno_probe, ptr @adreno_remove, ptr @adreno_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.57, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adreno_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"A200\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"yamato_pm4.fw\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"yamato_pfp.fw\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"A220\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"leia_pm4_470.fw\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"leia_pfp_470.fw\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"A305\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"a300_pm4.fw\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"a300_pfp.fw\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"A306\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"A320\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"A330\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"a330_pm4.fw\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"a330_pfp.fw\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"A405\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"a420_pm4.fw\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"a420_pfp.fw\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"A420\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"A430\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"A506\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"a530_pm4.fw\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"a530_pfp.fw\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"a506_zap.mdt\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"A508\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"a508_zap.mdt\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"A509\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"a512_zap.mdt\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"A510\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"A512\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"A530\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"a530v3_gpmu.fw2\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"a530_zap.mdt\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"A540\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"a540_gpmu.fw2\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"a540_zap.mdt\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"A618\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"a630_sqe.fw\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"a630_gmu.bin\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"A630\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"a630_zap.mdt\00", align 1
@a630_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"A640\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"a640_gmu.bin\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"a640_zap.mdt\00", align 1
@a640_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"A650\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"a650_sqe.fw\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"a650_gmu.bin\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"a650_zap.mdt\00", align 1
@a650_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.51 = private unnamed_addr constant [5 x i8] c"A660\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"a660_sqe.fw\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"a660_gmu.bin\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"a660_zap.mdt\00", align 1
@a660_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.55 = private unnamed_addr constant [16 x i8] c"Adreno 7c Gen 3\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"A680\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"adreno\00", align 1
@dt_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno-3xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amd,imageon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kgsl-3d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@adreno_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adreno_suspend, ptr @adreno_resume, ptr null }, align 4
@a3xx_ops = internal constant %struct.component_ops { ptr @adreno_bind, ptr @adreno_unbind }, align 4
@.str.58 = private unnamed_addr constant [12 x i8] c"amd,imageon\00", align 1
@adreno_bind.config = internal global %struct.adreno_platform_config zeroinitializer, align 4
@.str.59 = private unnamed_addr constant [35 x i8] c"Unknown GPU revision: %u.%u.%u.%u\0A\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"Found GPU: %u.%u.%u.%u\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"failed to load adreno gpu\0A\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"qcom,adreno-%u.%u\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"amd,imageon-%u.%u\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"qcom,chipid\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"*ERROR* could not parse qcom,chipid: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"Using legacy qcom,chipid binding!\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"Use compatible qcom,adreno-%u%u%u.%u instead.\0A\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"msm\00", align 1
@__const.adreno_device_register_headless.dummy_info = private unnamed_addr constant { ptr, ptr, i8, [3 x i8], ptr, i32, ptr, i32, ptr, i32, [4 x i8], i64, ptr, [4 x i8] } { ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @.str.69, i32 -1, ptr null, i32 0, ptr null, i32 0, [4 x i8] zeroinitializer, i64 -1, ptr null, [4 x i8] zeroinitializer }, align 8
@.str.70 = private unnamed_addr constant [36 x i8] c"Timeout waiting for GPU to suspend\0A\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_allow_vram_carveout300, ptr @__UNIQUE_ID_allow_vram_carveouttype301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311, ptr @__UNIQUE_ID_firmware312, ptr @__UNIQUE_ID_firmware313, ptr @__UNIQUE_ID_firmware314, ptr @__UNIQUE_ID_firmware315, ptr @__UNIQUE_ID_firmware316, ptr @__UNIQUE_ID_firmware317, ptr @__UNIQUE_ID_hang_debug296, ptr @__UNIQUE_ID_hang_debugtype297, ptr @__UNIQUE_ID_snapshot_debugbus298, ptr @__UNIQUE_ID_snapshot_debugbustype299, ptr @__param_allow_vram_carveout, ptr @__param_hang_debug, ptr @__param_snapshot_debugbus], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @adreno_cmp_rev([1 x i32] %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = extractvalue [1 x i32] %0, 0
  %4 = trunc i32 %3 to i8
  %5 = lshr i32 %3, 16
  %6 = trunc i32 %5 to i8
  %7 = lshr i32 %3, 24
  %8 = trunc i32 %7 to i8
  %9 = extractvalue [1 x i32] %1, 0
  %10 = trunc i32 %9 to i8
  %11 = lshr i32 %9, 16
  %12 = trunc i32 %11 to i8
  %13 = lshr i32 %9, 24
  %14 = trunc i32 %13 to i8
  %15 = icmp eq i8 %4, -1
  %16 = icmp eq i8 %4, %10
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = lshr i32 %9, 8
  %20 = trunc i32 %19 to i8
  %21 = lshr i32 %3, 8
  %22 = trunc i32 %21 to i8
  %23 = icmp eq i8 %22, -1
  %24 = icmp eq i8 %22, %20
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = icmp eq i8 %6, -1
  %28 = icmp eq i8 %6, %12
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = icmp eq i8 %8, -1
  %32 = icmp eq i8 %8, %14
  %33 = or i1 %31, %32
  br label %34

34:                                               ; preds = %30, %26, %18, %2
  %35 = phi i1 [ false, %26 ], [ false, %18 ], [ false, %2 ], [ %33, %30 ]
  ret i1 %35
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @adreno_info([1 x i32] %0) local_unnamed_addr #1 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = trunc i32 %2 to i8
  %4 = lshr i32 %2, 16
  %5 = trunc i32 %4 to i8
  %6 = lshr i32 %2, 24
  %7 = trunc i32 %6 to i8
  %8 = lshr i32 %2, 8
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %36, %1
  %11 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %12 = getelementptr [24 x %struct.adreno_info], ptr @gpulist, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i8
  %15 = lshr i32 %13, 16
  %16 = trunc i32 %15 to i8
  %17 = lshr i32 %13, 24
  %18 = trunc i32 %17 to i8
  %19 = icmp eq i8 %14, -1
  %20 = icmp eq i8 %14, %3
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %10
  %23 = lshr i32 %13, 8
  %24 = trunc i32 %23 to i8
  %25 = icmp eq i8 %24, -1
  %26 = icmp eq i8 %24, %9
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = icmp eq i8 %16, -1
  %30 = icmp eq i8 %16, %5
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = icmp eq i8 %18, -1
  %34 = icmp eq i8 %18, %7
  %35 = or i1 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %28, %22, %10
  %37 = add nuw nsw i32 %11, 1
  %38 = icmp eq i32 %37, 24
  br i1 %38, label %39, label %10

39:                                               ; preds = %36, %32
  %40 = phi ptr [ null, %36 ], [ %12, %32 ]
  ret ptr %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @adreno_load_gpu(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7, %1
  %13 = load i1, ptr @adreno_load_gpu.__print_once, align 1
  br i1 %13, label %51, label %14

14:                                               ; preds = %12
  store i1 true, ptr @adreno_load_gpu.__print_once, align 1
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #10
  br label %51

17:                                               ; preds = %7
  %18 = tail call i32 @adreno_load_fw(ptr noundef nonnull %10) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %22 = tail call i32 @__pm_runtime_set_status(ptr noundef %21, i32 noundef 0) #11
  %23 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #11
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %23) #11
  br label %51

29:                                               ; preds = %20
  %30 = getelementptr i8, ptr %9, i32 116
  tail call void @mutex_lock(ptr noundef %30) #11
  %31 = tail call i32 @msm_gpu_hw_init(ptr noundef nonnull %10) #11
  tail call void @mutex_unlock(ptr noundef %30) #11
  %32 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #11
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %31) #11
  br label %51

37:                                               ; preds = %29
  %38 = getelementptr i8, ptr %9, i32 -4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %39, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  tail call void %41(ptr noundef nonnull %10, ptr noundef %45) #11
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  tail call void %48(ptr noundef nonnull %10, ptr noundef %50) #11
  br label %51

51:                                               ; preds = %43, %37, %34, %25, %17, %14, %12
  %52 = phi ptr [ null, %25 ], [ null, %34 ], [ null, %14 ], [ null, %12 ], [ null, %17 ], [ %10, %43 ], [ %10, %37 ]
  ret ptr %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_load_fw(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_hw_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @adreno_register() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @adreno_driver, ptr noundef nonnull @__this_module) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @adreno_unregister() local_unnamed_addr #6 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @adreno_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a2xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a3xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a4xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a5xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a6xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adreno_probe(ptr noundef %0) #3 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call i32 @component_add(ptr noundef %3, ptr noundef nonnull @a3xx_ops) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.58) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @__const.adreno_device_register_headless.dummy_info, i32 56, i1 false) #11
  %12 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #11
  br label %13

13:                                               ; preds = %11, %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adreno_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @a3xx_ops) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adreno_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adreno_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #3 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %13 = call i32 @of_property_read_string_helper(ptr noundef %12, ptr noundef nonnull @.str.62, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #11
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !8
  %16 = load ptr, ptr %4, align 4
  %17 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %16, ptr noundef nonnull @.str.63, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 4
  %21 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %20, ptr noundef nonnull @.str.64, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %36

23:                                               ; preds = %19, %15
  %24 = load i32, ptr %6, align 4
  %25 = freeze i32 %24
  %26 = udiv i32 %25, 100
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr @adreno_bind.config, align 4
  %28 = mul i32 %26, 100
  %29 = sub i32 %25, %28
  %30 = trunc i32 %29 to i8
  %31 = udiv i8 %30, 10
  store i8 %31, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %32 = mul i8 %31, 10
  %33 = sub i8 %30, %32
  store i8 %33, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %34 = load i32, ptr %7, align 4
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %58

36:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %37

37:                                               ; preds = %36, %3
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.65, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #11
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i32, ptr %5, align 4
  %42 = lshr i32 %41, 24
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr @adreno_bind.config, align 4
  %44 = lshr i32 %41, 16
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %46 = lshr i32 %41, 8
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %48 = trunc i32 %41 to i8
  store i8 %48, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.67) #10
  %49 = load i8, ptr @adreno_bind.config, align 4
  %50 = zext i8 %49 to i32
  %51 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %54 = zext i8 %53 to i32
  %55 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  %56 = zext i8 %55 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #10
  br label %58

57:                                               ; preds = %37
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.66, i32 noundef %38) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %126

58:                                               ; preds = %40, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %59 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  store ptr @adreno_bind.config, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 -16
  %61 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 2
  store ptr %60, ptr %61, align 8
  %62 = load i32, ptr @adreno_bind.config, align 4
  %63 = trunc i32 %62 to i8
  %64 = lshr i32 %62, 16
  %65 = trunc i32 %64 to i8
  %66 = lshr i32 %62, 24
  %67 = trunc i32 %66 to i8
  %68 = lshr i32 %62, 8
  %69 = trunc i32 %68 to i8
  br label %70

70:                                               ; preds = %96, %58
  %71 = phi i32 [ 0, %58 ], [ %97, %96 ]
  %72 = getelementptr [24 x %struct.adreno_info], ptr @gpulist, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = trunc i32 %73 to i8
  %75 = lshr i32 %73, 16
  %76 = trunc i32 %75 to i8
  %77 = lshr i32 %73, 24
  %78 = trunc i32 %77 to i8
  %79 = icmp eq i8 %74, -1
  %80 = icmp eq i8 %74, %63
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %70
  %83 = lshr i32 %73, 8
  %84 = trunc i32 %83 to i8
  %85 = icmp eq i8 %84, -1
  %86 = icmp eq i8 %84, %69
  %87 = or i1 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = icmp eq i8 %76, -1
  %90 = icmp eq i8 %76, %65
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = icmp eq i8 %78, -1
  %94 = icmp eq i8 %78, %67
  %95 = or i1 %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %92, %88, %82, %70
  %97 = add nuw nsw i32 %71, 1
  %98 = icmp eq i32 %97, 24
  br i1 %98, label %101, label %70

99:                                               ; preds = %92
  %100 = icmp eq ptr %72, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %99, %96
  %102 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = and i32 %62, 255
  %105 = and i32 %68, 255
  %106 = and i32 %64, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.59, i32 noundef %104, i32 noundef %105, i32 noundef %106, i32 noundef %66) #10
  br label %126

107:                                              ; preds = %99
  %108 = and i32 %62, 255
  %109 = and i32 %68, 255
  %110 = and i32 %64, 255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef %108, i32 noundef %109, i32 noundef %110, i32 noundef %66) #11
  %111 = load i8, ptr @adreno_bind.config, align 4
  %112 = icmp eq i8 %111, 2
  %113 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 8
  %114 = zext i1 %112 to i8
  store i8 %114, ptr %113, align 4
  %115 = icmp ugt i8 %111, 5
  %116 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 9
  %117 = zext i1 %115 to i8
  store i8 %117, ptr %116, align 1
  %118 = getelementptr [24 x %struct.adreno_info], ptr @gpulist, i32 0, i32 %71, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = call ptr %119(ptr noundef %10) #11
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %126

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %124, ptr noundef nonnull @.str.61) #10
  %125 = ptrtoint ptr %120 to i32
  br label %126

126:                                              ; preds = %122, %107, %101, %57
  %127 = phi i32 [ %125, %122 ], [ -6, %101 ], [ %38, %57 ], [ 0, %107 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adreno_unbind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #11
  %10 = getelementptr i8, ptr %7, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %8) #11
  %14 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 2
  store ptr null, ptr %14, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adreno_suspend(ptr noundef %0) #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -16
  %6 = getelementptr i8, ptr %4, i32 140
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = getelementptr i8, ptr %4, i32 136
  %8 = load i32, ptr %7, align 8
  tail call void @mutex_unlock(ptr noundef %6) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #11
  %11 = getelementptr i8, ptr %4, i32 296
  br label %12

12:                                               ; preds = %23, %10
  %13 = phi i32 [ 100, %10 ], [ %24, %23 ]
  %14 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 2) #11
  call void @mutex_lock(ptr noundef %6) #11
  %15 = load i32, ptr %7, align 8
  call void @mutex_unlock(ptr noundef %6) #11
  %16 = icmp eq i32 %15, 0
  %17 = xor i1 %16, true
  %18 = icmp ne i32 %13, 0
  %19 = select i1 %17, i1 true, i1 %18
  %20 = select i1 %19, i32 %13, i32 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %16, i1 true, i1 %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = call i32 @schedule_timeout(i32 noundef %20) #11
  br label %12

25:                                               ; preds = %12
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  br i1 %21, label %26, label %27

26:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.70) #10
  br label %33

27:                                               ; preds = %25, %1
  %28 = getelementptr i8, ptr %4, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %5) #11
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi i32 [ -16, %26 ], [ %32, %27 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adreno_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr i8, ptr %3, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #11
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
