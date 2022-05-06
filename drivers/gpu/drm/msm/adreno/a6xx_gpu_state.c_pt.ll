; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.a6xx_registers = type { ptr, i32, i32, i32 }
%struct.a6xx_indexed_registers = type { ptr, i32, i32, i32 }
%struct.a6xx_shader_block = type { ptr, i32, i32 }
%struct.a6xx_cluster = type { i32, ptr, ptr, i32, i32, i32 }
%struct.a6xx_dbgahb_cluster = type { ptr, i32, i32, ptr, i32 }
%struct.a6xx_debugbus_block = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.a6xx_crashdumper = type { ptr, ptr, i64 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.93 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.69, ptr }
%union.anon.69 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.a6xx_gpu_state = type { %struct.msm_gpu_state, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, [2 x [8 x i32]], %struct.list_head, i8 }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timespec64 = type { i64, i32 }
%struct.anon = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.a6xx_state_memobj = type { %struct.list_head, [0 x i64] }
%struct.a6xx_gpu_state_obj = type { ptr, ptr }
%struct.a6xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, %struct.a6xx_gmu, ptr, i64, ptr, i8, ptr, ptr, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.msm_gpu_state_bo = type { i64, i32, ptr, i8 }

@snapshot_debugbus = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [21 x i8] c"gpu-initialized: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gmu-log:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"    iova: 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"    size: %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gmu-hfi:\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"    queue-history[%u]:\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gmu-debug:\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"registers:\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"registers-gmu:\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"indexed-registers:\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"shader-blocks:\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"clusters:\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"debugbus:\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@a6xx_gmu_reglist = internal constant [3 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_gmu_cx_registers, i32 112, i32 0, i32 0 }, %struct.a6xx_registers { ptr @a6xx_gmu_cx_rscc_registers, i32 22, i32 0, i32 0 }, %struct.a6xx_registers { ptr @a6xx_gmu_gx_registers, i32 36, i32 0, i32 0 }], align 4
@a6xx_gmu_cx_registers = internal constant [112 x i32] [i32 19456, i32 19463, i32 19472, i32 19474, i32 19712, i32 19712, i32 19719, i32 19722, i32 20480, i32 20484, i32 20487, i32 20488, i32 20491, i32 20492, i32 20495, i32 20508, i32 20516, i32 20522, i32 20525, i32 20528, i32 20544, i32 20563, i32 20615, i32 20617, i32 20640, i32 20642, i32 20644, i32 20655, i32 20672, i32 20675, i32 20688, i32 20688, i32 20708, i32 20708, i32 20712, i32 20716, i32 20736, i32 20739, i32 20800, i32 20800, i32 20802, i32 20804, i32 20812, i32 20813, i32 20815, i32 20817, i32 20820, i32 20820, i32 20823, i32 20824, i32 20829, i32 20829, i32 20834, i32 20834, i32 20836, i32 20837, i32 20864, i32 20870, i32 20880, i32 20894, i32 20928, i32 20928, i32 20933, i32 20940, i32 20960, i32 20962, i32 20976, i32 20976, i32 20992, i32 20993, i32 37632, i32 37654, i32 37888, i32 37888, i32 38912, i32 38930, i32 38976, i32 38994, i32 39936, i32 39940, i32 39943, i32 39947, i32 39957, i32 39964, i32 39966, i32 39981, i32 39996, i32 39997, i32 39999, i32 40000, i32 40002, i32 40009, i32 40024, i32 40026, i32 40256, i32 40286, i32 40960, i32 40962, i32 41984, i32 41986, i32 44032, i32 44034, i32 45056, i32 45058, i32 46080, i32 46082, i32 47104, i32 47106, i32 48128, i32 48150, i32 48160, i32 48167], align 4
@a6xx_gmu_cx_rscc_registers = internal constant [22 x i32] [i32 140, i32 140, i32 257, i32 258, i32 832, i32 834, i32 836, i32 839, i32 844, i32 903, i32 1004, i32 1007, i32 1012, i32 1071, i32 1172, i32 1175, i32 1180, i32 1239, i32 1340, i32 1343, i32 1348, i32 1407], align 4
@a6xx_gmu_gx_registers = internal constant [36 x i32] [i32 0, i32 0, i32 16, i32 19, i32 22, i32 22, i32 24, i32 27, i32 30, i32 30, i32 32, i32 35, i32 38, i32 38, i32 40, i32 43, i32 46, i32 46, i32 48, i32 51, i32 54, i32 54, i32 56, i32 59, i32 62, i32 62, i32 64, i32 67, i32 70, i32 70, i32 128, i32 132, i32 256, i32 299, i32 320, i32 320], align 4
@a6xx_indexed_reglist = internal constant [4 x %struct.a6xx_indexed_registers] [%struct.a6xx_indexed_registers { ptr @.str.15, i32 2312, i32 2313, i32 51 }, %struct.a6xx_indexed_registers { ptr @.str.16, i32 2314, i32 2315, i32 256 }, %struct.a6xx_indexed_registers { ptr @.str.17, i32 2320, i32 2321, i32 24576 }, %struct.a6xx_indexed_registers { ptr @.str.18, i32 2316, i32 2317, i32 1024 }], align 4
@a6xx_cp_mempool_indexed = internal constant %struct.a6xx_indexed_registers { ptr @.str.19, i32 2318, i32 2319, i32 8288 }, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"CP_SQE_STAT\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"CP_DRAW_STATE\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"CP_UCODE_DBG_DATA\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"CP_ROQ\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"CP_MEMPOOL\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"crashdump\00", align 1
@a6xx_ahb_reglist = internal constant [1 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_ahb_registers, i32 4, i32 0, i32 0 }], align 4
@a6xx_gbif_reglist = internal constant %struct.a6xx_registers { ptr @a6xx_gbif_registers, i32 8, i32 0, i32 0 }, align 4
@a6xx_vbif_reglist = internal constant %struct.a6xx_registers { ptr @a6xx_vbif_registers, i32 84, i32 0, i32 0 }, align 4
@a6xx_reglist = internal constant [3 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_registers, i32 156, i32 0, i32 0 }, %struct.a6xx_registers { ptr @a6xx_rb_rac_registers, i32 14, i32 36413, i32 0 }, %struct.a6xx_registers { ptr @a6xx_rb_rbp_registers, i32 12, i32 36413, i32 9 }], align 4
@a6xx_hlsq_reglist = internal constant [3 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_hlsq_registers, i32 10, i32 194560, i32 64 }, %struct.a6xx_registers { ptr @a6xx_sp_registers, i32 14, i32 178176, i32 32 }, %struct.a6xx_registers { ptr @a6xx_tp_registers, i32 8, i32 186368, i32 0 }], align 4
@a6xx_ahb_registers = internal constant [4 x i32] [i32 528, i32 531, i32 2085, i32 2085], align 4
@a6xx_gbif_registers = internal constant [8 x i32] [i32 15360, i32 15371, i32 15424, i32 15431, i32 15552, i32 15569, i32 3642, i32 3642], align 4
@a6xx_vbif_registers = internal constant [84 x i32] [i32 12288, i32 12295, i32 12300, i32 12308, i32 12312, i32 12333, i32 12336, i32 12337, i32 12340, i32 12342, i32 12348, i32 12349, i32 12352, i32 12352, i32 12354, i32 12354, i32 12361, i32 12361, i32 12376, i32 12376, i32 12378, i32 12385, i32 12388, i32 12392, i32 12396, i32 12397, i32 12416, i32 12424, i32 12427, i32 12428, i32 12432, i32 12436, i32 12440, i32 12440, i32 12444, i32 12444, i32 12480, i32 12480, i32 12488, i32 12488, i32 12496, i32 12496, i32 12504, i32 12504, i32 12512, i32 12512, i32 12544, i32 12544, i32 12552, i32 12552, i32 12560, i32 12560, i32 12568, i32 12568, i32 12576, i32 12576, i32 12580, i32 12581, i32 12585, i32 12585, i32 12593, i32 12593, i32 12628, i32 12628, i32 12630, i32 12630, i32 12632, i32 12632, i32 12634, i32 12634, i32 12636, i32 12636, i32 12638, i32 12638, i32 12640, i32 12640, i32 12642, i32 12642, i32 13324, i32 13324, i32 13328, i32 13328, i32 14336, i32 14337], align 4
@a6xx_registers = internal constant [156 x i32] [i32 0, i32 2, i32 16, i32 16, i32 18, i32 18, i32 24, i32 27, i32 30, i32 50, i32 56, i32 60, i32 66, i32 66, i32 68, i32 68, i32 71, i32 71, i32 86, i32 86, i32 173, i32 174, i32 176, i32 251, i32 256, i32 285, i32 512, i32 525, i32 536, i32 573, i32 1024, i32 1273, i32 1280, i32 1280, i32 1285, i32 1291, i32 1294, i32 1297, i32 1331, i32 1331, i32 1344, i32 1365, i32 2048, i32 2056, i32 2064, i32 2067, i32 2080, i32 2081, i32 2083, i32 2084, i32 2086, i32 2087, i32 2096, i32 2099, i32 2112, i32 2115, i32 2127, i32 2159, i32 2176, i32 2186, i32 2208, i32 2219, i32 2240, i32 2244, i32 2256, i32 2269, i32 2288, i32 2291, i32 2304, i32 2307, i32 2312, i32 2321, i32 2344, i32 2366, i32 2370, i32 2381, i32 2432, i32 2436, i32 2445, i32 2454, i32 2456, i32 2462, i32 2464, i32 2470, i32 2472, i32 2478, i32 2480, i32 2481, i32 2498, i32 2504, i32 2560, i32 2563, i32 3072, i32 3076, i32 3078, i32 3078, i32 3088, i32 3289, i32 3584, i32 3598, i32 3600, i32 3603, i32 3607, i32 3609, i32 3612, i32 3627, i32 3632, i32 3634, i32 3640, i32 3641, i32 34304, i32 34305, i32 34320, i32 34331, i32 34336, i32 34336, i32 34344, i32 34347, i32 34352, i32 34359, i32 38400, i32 38404, i32 38436, i32 38455, i32 40448, i32 40449, i32 40451, i32 40462, i32 40465, i32 40470, i32 40473, i32 40473, i32 40476, i32 40476, i32 40480, i32 40483, i32 40496, i32 40497, i32 40500, i32 40500, i32 40560, i32 40562, i32 40568, i32 40569, i32 40576, i32 40959, i32 42496, i32 42497, i32 42499, i32 42499, i32 42506, i32 42506, i32 42512, i32 42519, i32 42544, i32 42544], align 4
@a6xx_rb_rac_registers = internal constant [14 x i32] [i32 36356, i32 36357, i32 36359, i32 36360, i32 36368, i32 36380, i32 36384, i32 36389, i32 36392, i32 36392, i32 36396, i32 36399, i32 36432, i32 36434], align 4
@a6xx_rb_rbp_registers = internal constant [12 x i32] [i32 36353, i32 36353, i32 36364, i32 36364, i32 36411, i32 36414, i32 36416, i32 36419, i32 36435, i32 36447, i32 36464, i32 36471], align 4
@.str.21 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c\00", align 1
@a6xx_hlsq_registers = internal constant [10 x i32] [i32 48640, i32 48641, i32 48644, i32 48645, i32 48648, i32 48649, i32 48656, i32 48661, i32 48672, i32 48675], align 4
@a6xx_sp_registers = internal constant [14 x i32] [i32 44544, i32 44548, i32 44556, i32 44556, i32 44559, i32 44587, i32 44592, i32 44594, i32 44597, i32 44597, i32 44602, i32 44607, i32 44624, i32 44626], align 4
@a6xx_tp_registers = internal constant [8 x i32] [i32 46592, i32 46593, i32 46596, i32 46597, i32 46608, i32 46619, i32 46624, i32 46627], align 4
@a6xx_shader_blocks = internal constant [42 x %struct.a6xx_shader_block] [%struct.a6xx_shader_block { ptr @.str.22, i32 9, i32 512 }, %struct.a6xx_shader_block { ptr @.str.23, i32 10, i32 128 }, %struct.a6xx_shader_block { ptr @.str.24, i32 11, i32 960 }, %struct.a6xx_shader_block { ptr @.str.25, i32 25, i32 512 }, %struct.a6xx_shader_block { ptr @.str.26, i32 26, i32 128 }, %struct.a6xx_shader_block { ptr @.str.27, i32 27, i32 960 }, %struct.a6xx_shader_block { ptr @.str.28, i32 41, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.29, i32 42, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.30, i32 43, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.31, i32 44, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.32, i32 45, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.33, i32 46, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.34, i32 47, i32 512 }, %struct.a6xx_shader_block { ptr @.str.35, i32 48, i32 8192 }, %struct.a6xx_shader_block { ptr @.str.36, i32 49, i32 640 }, %struct.a6xx_shader_block { ptr @.str.37, i32 50, i32 128 }, %struct.a6xx_shader_block { ptr @.str.38, i32 51, i32 128 }, %struct.a6xx_shader_block { ptr @.str.39, i32 52, i32 128 }, %struct.a6xx_shader_block { ptr @.str.40, i32 53, i32 128 }, %struct.a6xx_shader_block { ptr @.str.41, i32 54, i32 128 }, %struct.a6xx_shader_block { ptr @.str.42, i32 55, i32 63 }, %struct.a6xx_shader_block { ptr @.str.43, i32 73, i32 448 }, %struct.a6xx_shader_block { ptr @.str.44, i32 74, i32 640 }, %struct.a6xx_shader_block { ptr @.str.45, i32 75, i32 64 }, %struct.a6xx_shader_block { ptr @.str.46, i32 76, i32 64 }, %struct.a6xx_shader_block { ptr @.str.47, i32 77, i32 4 }, %struct.a6xx_shader_block { ptr @.str.48, i32 78, i32 4 }, %struct.a6xx_shader_block { ptr @.str.49, i32 80, i32 448 }, %struct.a6xx_shader_block { ptr @.str.50, i32 81, i32 1408 }, %struct.a6xx_shader_block { ptr @.str.51, i32 82, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.52, i32 83, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.53, i32 84, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.54, i32 85, i32 8 }, %struct.a6xx_shader_block { ptr @.str.55, i32 86, i32 4 }, %struct.a6xx_shader_block { ptr @.str.56, i32 87, i32 128 }, %struct.a6xx_shader_block { ptr @.str.57, i32 88, i32 12 }, %struct.a6xx_shader_block { ptr @.str.58, i32 89, i32 16 }, %struct.a6xx_shader_block { ptr @.str.59, i32 90, i32 40 }, %struct.a6xx_shader_block { ptr @.str.60, i32 91, i32 20 }, %struct.a6xx_shader_block { ptr @.str.61, i32 96, i32 64 }, %struct.a6xx_shader_block { ptr @.str.62, i32 97, i32 64 }, %struct.a6xx_shader_block { ptr @.str.63, i32 98, i32 64 }], align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"A6XX_TP0_TMO_DATA\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"A6XX_TP0_SMO_DATA\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"A6XX_TP0_MIPMAP_BASE_DATA\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"A6XX_TP1_TMO_DATA\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"A6XX_TP1_SMO_DATA\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"A6XX_TP1_MIPMAP_BASE_DATA\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"A6XX_SP_INST_DATA\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"A6XX_SP_LB_0_DATA\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"A6XX_SP_LB_1_DATA\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"A6XX_SP_LB_2_DATA\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"A6XX_SP_LB_3_DATA\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"A6XX_SP_LB_4_DATA\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"A6XX_SP_LB_5_DATA\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"A6XX_SP_CB_BINDLESS_DATA\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"A6XX_SP_CB_LEGACY_DATA\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"A6XX_SP_UAV_DATA\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"A6XX_SP_INST_TAG\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"A6XX_SP_CB_BINDLESS_TAG\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"A6XX_SP_TMO_UMO_TAG\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"A6XX_SP_SMO_TAG\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"A6XX_SP_STATE_DATA\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"A6XX_HLSQ_CHUNK_CVS_RAM\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"A6XX_HLSQ_CHUNK_CPS_RAM\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"A6XX_HLSQ_CHUNK_CVS_RAM_TAG\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"A6XX_HLSQ_CHUNK_CPS_RAM_TAG\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"A6XX_HLSQ_ICB_CVS_CB_BASE_TAG\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"A6XX_HLSQ_ICB_CPS_CB_BASE_TAG\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"A6XX_HLSQ_CVS_MISC_RAM\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"A6XX_HLSQ_CPS_MISC_RAM\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"A6XX_HLSQ_INST_RAM\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"A6XX_HLSQ_GFX_CVS_CONST_RAM\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"A6XX_HLSQ_GFX_CPS_CONST_RAM\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"A6XX_HLSQ_CVS_MISC_RAM_TAG\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"A6XX_HLSQ_CPS_MISC_RAM_TAG\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"A6XX_HLSQ_INST_RAM_TAG\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"A6XX_HLSQ_GFX_CVS_CONST_RAM_TAG\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"A6XX_HLSQ_GFX_CPS_CONST_RAM_TAG\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"A6XX_HLSQ_PWR_REST_RAM\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"A6XX_HLSQ_PWR_REST_TAG\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"A6XX_HLSQ_DATAPATH_META\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"A6XX_HLSQ_FRONTEND_META\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"A6XX_HLSQ_INDIRECT_META\00", align 1
@a6xx_clusters = internal constant [6 x %struct.a6xx_cluster] [%struct.a6xx_cluster { i32 3, ptr @.str.64, ptr @a6xx_gras_cluster, i32 18, i32 0, i32 0 }, %struct.a6xx_cluster { i32 5, ptr @.str.65, ptr @a6xx_ps_cluster_rac, i32 32, i32 36413, i32 0 }, %struct.a6xx_cluster { i32 5, ptr @.str.65, ptr @a6xx_ps_cluster_rbp, i32 14, i32 36413, i32 9 }, %struct.a6xx_cluster { i32 5, ptr @.str.65, ptr @a6xx_ps_cluster, i32 6, i32 0, i32 0 }, %struct.a6xx_cluster { i32 0, ptr @.str.66, ptr @a6xx_fe_cluster, i32 12, i32 0, i32 0 }, %struct.a6xx_cluster { i32 2, ptr @.str.67, ptr @a6xx_pc_vs_cluster, i32 8, i32 0, i32 0 }], align 4
@.str.64 = private unnamed_addr constant [13 x i8] c"CLUSTER_GRAS\00", align 1
@a6xx_gras_cluster = internal constant [18 x i32] [i32 32768, i32 32774, i32 32784, i32 32914, i32 32916, i32 32925, i32 32928, i32 32934, i32 32943, i32 33009, i32 33024, i32 33031, i32 33033, i32 33033, i32 33040, i32 33040, i32 33792, i32 33803], align 4
@.str.65 = private unnamed_addr constant [11 x i8] c"CLUSTER_PS\00", align 1
@a6xx_ps_cluster_rac = internal constant [32 x i32] [i32 34816, i32 34822, i32 34825, i32 34833, i32 34840, i32 34846, i32 34848, i32 34917, i32 34928, i32 34937, i32 34944, i32 34953, i32 34960, i32 34961, i32 34968, i32 34968, i32 35008, i32 35009, i32 35024, i32 35043, i32 35072, i32 35084, i32 35087, i32 35098, i32 35840, i32 35841, i32 35848, i32 35856, i32 35863, i32 35871, i32 35878, i32 35891], align 4
@a6xx_ps_cluster_rbp = internal constant [14 x i32] [i32 35056, i32 35059, i32 35085, i32 35086, i32 35111, i32 35112, i32 35824, i32 35825, i32 35842, i32 35847, i32 35857, i32 35862, i32 35872, i32 35877], align 4
@a6xx_ps_cluster = internal constant [6 x i32] [i32 37376, i32 37398, i32 37400, i32 37430, i32 37632, i32 37638], align 4
@.str.66 = private unnamed_addr constant [11 x i8] c"CLUSTER_FE\00", align 1
@a6xx_fe_cluster = internal constant [12 x i32] [i32 37632, i32 37638, i32 38912, i32 38918, i32 39680, i32 39687, i32 40960, i32 40969, i32 40974, i32 41199, i32 41208, i32 41208], align 4
@.str.67 = private unnamed_addr constant [14 x i8] c"CLUSTER_PC_VS\00", align 1
@a6xx_pc_vs_cluster = internal constant [8 x i32] [i32 37120, i32 37128, i32 37632, i32 37638, i32 39296, i32 39297, i32 39680, i32 39687], align 4
@a6xx_dbgahb_clusters = internal constant [15 x %struct.a6xx_dbgahb_cluster] [%struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 65, i32 188416, ptr @a6xx_sp_vs_hlsq_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 33, i32 172032, ptr @a6xx_sp_vs_sp_cluster, i32 12 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 65, i32 188416, ptr @a6xx_hlsq_duplicate_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 69, i32 192512, ptr @a6xx_hlsq_2d_duplicate_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 33, i32 172032, ptr @a6xx_sp_duplicate_cluster, i32 8 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 1, i32 180224, ptr @a6xx_tp_duplicate_cluster, i32 6 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 66, i32 188416, ptr @a6xx_sp_ps_hlsq_cluster, i32 10 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 70, i32 192512, ptr @a6xx_sp_ps_hlsq_2d_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 34, i32 172032, ptr @a6xx_sp_ps_sp_cluster, i32 12 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 38, i32 176128, ptr @a6xx_sp_ps_sp_2d_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 2, i32 180224, ptr @a6xx_sp_ps_tp_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 6, i32 184320, ptr @a6xx_sp_ps_tp_2d_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 66, i32 188416, ptr @a6xx_hlsq_duplicate_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 34, i32 172032, ptr @a6xx_sp_duplicate_cluster, i32 8 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 2, i32 180224, ptr @a6xx_tp_duplicate_cluster, i32 6 }], align 4
@.str.68 = private unnamed_addr constant [14 x i8] c"CLUSTER_SP_VS\00", align 1
@a6xx_sp_vs_hlsq_cluster = internal constant [4 x i32] [i32 47104, i32 47107, i32 47136, i32 47138], align 4
@a6xx_sp_vs_sp_cluster = internal constant [12 x i32] [i32 43008, i32 43044, i32 43056, i32 43068, i32 43072, i32 43108, i32 43120, i32 43157, i32 43168, i32 43183, i32 43200, i32 43203], align 4
@a6xx_hlsq_duplicate_cluster = internal constant [4 x i32] [i32 47888, i32 47889, i32 47904, i32 47913], align 4
@a6xx_hlsq_2d_duplicate_cluster = internal constant [2 x i32] [i32 48512, i32 48512], align 4
@a6xx_sp_duplicate_cluster = internal constant [8 x i32] [i32 43776, i32 43776, i32 43780, i32 43781, i32 43792, i32 43803, i32 43808, i32 43808], align 4
@a6xx_tp_duplicate_cluster = internal constant [6 x i32] [i32 45824, i32 45831, i32 45833, i32 45833, i32 45952, i32 45954], align 4
@.str.69 = private unnamed_addr constant [14 x i8] c"CLUSTER_SP_PS\00", align 1
@a6xx_sp_ps_hlsq_cluster = internal constant [10 x i32] [i32 47488, i32 47488, i32 47490, i32 47495, i32 47504, i32 47515, i32 47520, i32 47522, i32 47552, i32 47561], align 4
@a6xx_sp_ps_hlsq_2d_cluster = internal constant [2 x i32] [i32 48512, i32 48512], align 4
@a6xx_sp_ps_sp_cluster = internal constant [12 x i32] [i32 43392, i32 43432, i32 43440, i32 43452, i32 43472, i32 43475, i32 43488, i32 43507, i32 43520, i32 43520, i32 43568, i32 43569], align 4
@a6xx_sp_ps_sp_2d_cluster = internal constant [2 x i32] [i32 44224, i32 44224], align 4
@a6xx_sp_ps_tp_cluster = internal constant [4 x i32] [i32 45440, i32 45443, i32 45456, i32 45457], align 4
@a6xx_sp_ps_tp_2d_cluster = internal constant [2 x i32] [i32 46272, i32 46289], align 4
@.str.70 = private unnamed_addr constant [8 x i8] c"cx_dbgc\00", align 1
@a6xx_debugbus_blocks = internal constant [39 x %struct.a6xx_debugbus_block] [%struct.a6xx_debugbus_block { ptr @.str.71, i32 1, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.72, i32 2, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.73, i32 4, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.74, i32 5, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.75, i32 6, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.76, i32 7, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.77, i32 8, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.78, i32 9, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.79, i32 10, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.80, i32 11, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.81, i32 12, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.82, i32 13, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.83, i32 14, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.84, i32 16, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.85, i32 17, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.86, i32 18, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.87, i32 20, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.88, i32 21, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.89, i32 22, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.90, i32 24, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.91, i32 25, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.92, i32 29, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.93, i32 30, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.94, i32 31, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.95, i32 32, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.96, i32 33, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.97, i32 36, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.98, i32 40, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.99, i32 41, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.100, i32 56, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.101, i32 57, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.102, i32 58, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.103, i32 59, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.104, i32 64, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.105, i32 65, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.106, i32 72, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.107, i32 73, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.108, i32 74, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.109, i32 75, i32 256 }], align 4
@a6xx_gbif_debugbus_block = internal constant %struct.a6xx_debugbus_block { ptr @.str.110, i32 3, i32 256 }, align 4
@a6xx_cx_debugbus_blocks = internal constant [2 x %struct.a6xx_debugbus_block] [%struct.a6xx_debugbus_block { ptr @.str.111, i32 19, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.112, i32 23, i32 256 }], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.71 = private unnamed_addr constant [15 x i8] c"A6XX_DBGBUS_CP\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_RBBM\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_HLSQ\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_UCHE\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_DPM\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_TESS\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"A6XX_DBGBUS_PC\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_VFDP\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_VPC\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_TSE\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_RAS\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_VSC\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_COM\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_LRZ\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_A2D\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"A6XX_DBGBUS_CCUFCHE\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_RBP\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_DCS\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_DBGC\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"A6XX_DBGBUS_GMU_GX\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"A6XX_DBGBUS_TPFCHE\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"A6XX_DBGBUS_GPC\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_LARC\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"A6XX_DBGBUS_HLSQ_SPTP\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_RB_0\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_RB_1\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"A6XX_DBGBUS_UCHE_WRAPPER\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"A6XX_DBGBUS_CCU_0\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"A6XX_DBGBUS_CCU_1\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"A6XX_DBGBUS_VFD_0\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"A6XX_DBGBUS_VFD_1\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"A6XX_DBGBUS_VFD_2\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"A6XX_DBGBUS_VFD_3\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_SP_0\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_SP_1\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"A6XX_DBGBUS_TPL1_0\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"A6XX_DBGBUS_TPL1_1\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"A6XX_DBGBUS_TPL1_2\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"A6XX_DBGBUS_TPL1_3\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"A6XX_DBGBUS_VBIF\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"A6XX_DBGBUS_GMU_CX\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"A6XX_DBGBUS_CX\00", align 1
@.str.113 = private unnamed_addr constant [39 x i8] c"  - { offset: 0x%06x, value: 0x%08x }\0A\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"  - regs-name: \00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"    dwords: %d\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"    data: !!ascii85 |\0A\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"  - type: \00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"    - bank: %d\0A\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"      size: %d\0A\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"  - cluster-name: \00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"    - context: %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [43 x i8] c"      - { offset: 0x%06x, value: 0x%08x }\0A\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"  - debugbus-block: A6XX_DBGBUS_VBIF\0A\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"    count: %d\0A\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"  - debugbus-block: \00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @a6xx_gpu_state_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.a6xx_crashdumper, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 400) #9
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 2124
  %8 = tail call i32 @msm_readl(ptr noundef %7) #8
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq ptr %4, null
  br i1 %11, label %1177, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 22
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 22, i32 1
  store ptr %13, ptr %14, align 4
  %15 = tail call i32 @adreno_gpu_state_get(ptr noundef %0, ptr noundef nonnull %4) #8
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 32) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 1
  store ptr null, ptr %20, align 8
  br label %36

21:                                               ; preds = %12
  %22 = load ptr, ptr %14, align 4
  store ptr %17, ptr %14, align 4
  store ptr %13, ptr %17, align 8
  %23 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %17, ptr %22, align 4
  %24 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %17, i32 0, i32 1
  %25 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 1
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 2
  store i32 3, ptr %26, align 4
  tail call fastcc void @_a6xx_get_gmu_registers(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @a6xx_gmu_reglist, ptr noundef nonnull %24, i1 noundef zeroext false) #8
  %27 = load ptr, ptr %25, align 8
  %28 = getelementptr %struct.a6xx_gpu_state_obj, ptr %27, i32 1
  tail call fastcc void @_a6xx_get_gmu_registers(ptr noundef %0, ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_gmu_reglist, i32 0, i32 1), ptr noundef %28, i1 noundef zeroext true) #8
  %29 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %30 = tail call zeroext i1 @a6xx_gmu_gx_is_on(ptr noundef %29) #8
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr i8, ptr %32, i32 150592
  tail call void @msm_writel(i32 noundef 0, ptr noundef %33) #8
  %34 = load ptr, ptr %25, align 8
  %35 = getelementptr %struct.a6xx_gpu_state_obj, ptr %34, i32 2
  tail call fastcc void @_a6xx_get_gmu_registers(ptr noundef %0, ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_gmu_reglist, i32 0, i32 2), ptr noundef %35, i1 noundef zeroext false) #8
  br label %36

36:                                               ; preds = %31, %21, %19
  %37 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 32) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %14, align 4
  store ptr %39, ptr %14, align 4
  store ptr %13, ptr %39, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %39, ptr %42, align 4
  %44 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %39, i32 0, i32 1
  %45 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14, i32 3
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %44, align 8
  %47 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %39, i32 2
  store i32 %48, ptr %49, align 8
  %50 = tail call noalias ptr @kvmalloc_node(i32 noundef %48, i32 noundef 3520, i32 noundef -1) #10
  %51 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %39, i32 2, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %47, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %50, ptr align 1 %55, i32 %56, i1 false) #8
  br label %57

57:                                               ; preds = %53, %41, %36
  %58 = phi ptr [ %44, %53 ], [ null, %41 ], [ null, %36 ]
  %59 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 18
  store ptr %58, ptr %59, align 4
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 32) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %14, align 4
  store ptr %61, ptr %14, align 4
  store ptr %13, ptr %61, align 8
  %65 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %61, ptr %64, align 4
  %66 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %61, i32 0, i32 1
  %67 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 9, i32 3
  %68 = load i64, ptr %67, align 8
  store i64 %68, ptr %66, align 8
  %69 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 9, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %61, i32 2
  store i32 %70, ptr %71, align 8
  %72 = tail call noalias ptr @kvmalloc_node(i32 noundef %70, i32 noundef 3520, i32 noundef -1) #10
  %73 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %61, i32 2, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  %74 = icmp eq ptr %72, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 9, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %69, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %72, ptr align 1 %77, i32 %78, i1 false) #8
  br label %79

79:                                               ; preds = %75, %63, %57
  %80 = phi ptr [ %66, %75 ], [ null, %63 ], [ null, %57 ]
  %81 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 19
  store ptr %80, ptr %81, align 8
  %82 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %83 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 32) #9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %101, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %14, align 4
  store ptr %83, ptr %14, align 4
  store ptr %13, ptr %83, align 8
  %87 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  store volatile ptr %83, ptr %86, align 4
  %88 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %83, i32 0, i32 1
  %89 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 10, i32 3
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %88, align 8
  %91 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 10, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %83, i32 2
  store i32 %92, ptr %93, align 8
  %94 = tail call noalias ptr @kvmalloc_node(i32 noundef %92, i32 noundef 3520, i32 noundef -1) #10
  %95 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %83, i32 2, i32 0, i32 1
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 10, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %91, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %94, ptr align 1 %99, i32 %100, i1 false) #8
  br label %101

101:                                              ; preds = %97, %85, %79
  %102 = phi ptr [ %88, %97 ], [ null, %85 ], [ null, %79 ]
  %103 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 20
  store ptr %102, ptr %103, align 4
  %104 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 5
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, 7
  %107 = zext i8 %106 to i32
  %108 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %107
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 0
  store i32 %109, ptr %110, align 8
  %111 = add i8 %105, 1
  %112 = and i8 %111, 7
  %113 = zext i8 %112 to i32
  %114 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 1
  store i32 %115, ptr %116, align 4
  %117 = add i8 %105, 2
  %118 = and i8 %117, 7
  %119 = zext i8 %118 to i32
  %120 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 2
  store i32 %121, ptr %122, align 8
  %123 = add i8 %105, 3
  %124 = and i8 %123, 7
  %125 = zext i8 %124 to i32
  %126 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %125
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 3
  store i32 %127, ptr %128, align 4
  %129 = add i8 %105, 4
  %130 = and i8 %129, 7
  %131 = zext i8 %130 to i32
  %132 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 4
  store i32 %133, ptr %134, align 8
  %135 = add i8 %105, 5
  %136 = and i8 %135, 7
  %137 = zext i8 %136 to i32
  %138 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %137
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 5
  store i32 %139, ptr %140, align 4
  %141 = add i8 %105, 6
  %142 = and i8 %141, 7
  %143 = zext i8 %142 to i32
  %144 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %143
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 6
  store i32 %145, ptr %146, align 8
  %147 = add i8 %105, 7
  %148 = and i8 %147, 7
  %149 = zext i8 %148 to i32
  %150 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 0, i32 7
  store i32 %151, ptr %152, align 4
  %153 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 5
  %154 = load i8, ptr %153, align 4
  %155 = and i8 %154, 7
  %156 = zext i8 %155 to i32
  %157 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %156
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 0
  store i32 %158, ptr %159, align 8
  %160 = add i8 %154, 1
  %161 = and i8 %160, 7
  %162 = zext i8 %161 to i32
  %163 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %162
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 1
  store i32 %164, ptr %165, align 4
  %166 = add i8 %154, 2
  %167 = and i8 %166, 7
  %168 = zext i8 %167 to i32
  %169 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %168
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 2
  store i32 %170, ptr %171, align 8
  %172 = add i8 %154, 3
  %173 = and i8 %172, 7
  %174 = zext i8 %173 to i32
  %175 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %174
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 3
  store i32 %176, ptr %177, align 4
  %178 = add i8 %154, 4
  %179 = and i8 %178, 7
  %180 = zext i8 %179 to i32
  %181 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %180
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 4
  store i32 %182, ptr %183, align 8
  %184 = add i8 %154, 5
  %185 = and i8 %184, 7
  %186 = zext i8 %185 to i32
  %187 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %186
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 5
  store i32 %188, ptr %189, align 4
  %190 = add i8 %154, 6
  %191 = and i8 %190, 7
  %192 = zext i8 %191 to i32
  %193 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %192
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 6
  store i32 %194, ptr %195, align 8
  %196 = add i8 %154, 7
  %197 = and i8 %196, 7
  %198 = zext i8 %197 to i32
  %199 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %198
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr %struct.a6xx_gpu_state, ptr %4, i32 0, i32 21, i32 1, i32 7
  store i32 %200, ptr %201, align 4
  %202 = tail call zeroext i1 @a6xx_gmu_gx_is_on(ptr noundef %37) #8
  br i1 %202, label %203, label %1177

203:                                              ; preds = %101
  %204 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %205 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %204, i32 noundef 3520, i32 noundef 48) #9
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 11
  store ptr null, ptr %208, align 8
  br label %291

209:                                              ; preds = %203
  %210 = load ptr, ptr %14, align 4
  store ptr %205, ptr %14, align 4
  store ptr %13, ptr %205, align 8
  %211 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  store ptr %210, ptr %211, align 4
  store volatile ptr %205, ptr %210, align 4
  %212 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %205, i32 0, i32 1
  %213 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 11
  store ptr %212, ptr %213, align 8
  br label %214

214:                                              ; preds = %253, %209
  %215 = phi ptr [ %212, %209 ], [ %254, %253 ]
  %216 = phi i32 [ 0, %209 ], [ %251, %253 ]
  %217 = getelementptr [4 x %struct.a6xx_indexed_registers], ptr @a6xx_indexed_reglist, i32 0, i32 %216
  %218 = getelementptr %struct.a6xx_gpu_state_obj, ptr %215, i32 %216
  store ptr %217, ptr %218, align 4
  %219 = getelementptr [4 x %struct.a6xx_indexed_registers], ptr @a6xx_indexed_reglist, i32 0, i32 %216, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = shl i32 %220, 2
  %222 = add i32 %221, 8
  %223 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %222, i32 noundef 3520) #10
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %214
  %226 = getelementptr %struct.a6xx_gpu_state_obj, ptr %215, i32 %216, i32 1
  store ptr null, ptr %226, align 4
  br label %250

227:                                              ; preds = %214
  %228 = load ptr, ptr %14, align 4
  store ptr %223, ptr %14, align 4
  store ptr %13, ptr %223, align 64
  %229 = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  store ptr %228, ptr %229, align 4
  store volatile ptr %223, ptr %228, align 4
  %230 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %223, i32 0, i32 1
  %231 = getelementptr %struct.a6xx_gpu_state_obj, ptr %215, i32 %216, i32 1
  store ptr %230, ptr %231, align 4
  %232 = getelementptr [4 x %struct.a6xx_indexed_registers], ptr @a6xx_indexed_reglist, i32 0, i32 %216, i32 1
  %233 = load i32, ptr %232, align 4
  %234 = load ptr, ptr %5, align 8
  %235 = shl i32 %233, 2
  %236 = getelementptr i8, ptr %234, i32 %235
  tail call void @msm_writel(i32 noundef 0, ptr noundef %236) #8
  %237 = getelementptr [4 x %struct.a6xx_indexed_registers], ptr @a6xx_indexed_reglist, i32 0, i32 %216, i32 2
  %238 = load i32, ptr %237, align 4
  %239 = shl i32 %238, 2
  %240 = tail call i32 @llvm.umax.i32(i32 %220, i32 1) #8
  br label %241

241:                                              ; preds = %241, %227
  %242 = phi i32 [ 0, %227 ], [ %248, %241 ]
  %243 = load ptr, ptr %5, align 8
  %244 = getelementptr i8, ptr %243, i32 %239
  %245 = tail call i32 @msm_readl(ptr noundef %244) #8
  %246 = load ptr, ptr %231, align 4
  %247 = getelementptr i32, ptr %246, i32 %242
  store i32 %245, ptr %247, align 4
  %248 = add nuw i32 %242, 1
  %249 = icmp eq i32 %248, %240
  br i1 %249, label %250, label %241

250:                                              ; preds = %241, %225
  %251 = add nuw nsw i32 %216, 1
  %252 = icmp eq i32 %251, 4
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr %213, align 8
  br label %214

255:                                              ; preds = %250
  %256 = load ptr, ptr %5, align 8
  %257 = getelementptr i8, ptr %256, i32 8972
  %258 = tail call i32 @msm_readl(ptr noundef %257) #8
  %259 = load ptr, ptr %5, align 8
  %260 = getelementptr i8, ptr %259, i32 8972
  tail call void @msm_writel(i32 noundef 0, ptr noundef %260) #8
  %261 = load ptr, ptr %213, align 8
  %262 = getelementptr %struct.a6xx_gpu_state_obj, ptr %261, i32 4
  store ptr @a6xx_cp_mempool_indexed, ptr %262, align 4
  %263 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 33160, i32 noundef 3520, i32 noundef 4) #10
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = getelementptr %struct.a6xx_gpu_state_obj, ptr %261, i32 4, i32 1
  store ptr null, ptr %266, align 4
  br label %283

267:                                              ; preds = %255
  %268 = load ptr, ptr %14, align 4
  store ptr %263, ptr %14, align 4
  store ptr %13, ptr %263, align 4096
  %269 = getelementptr inbounds %struct.list_head, ptr %263, i32 0, i32 1
  store ptr %268, ptr %269, align 4
  store volatile ptr %263, ptr %268, align 4
  %270 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %263, i32 0, i32 1
  %271 = getelementptr %struct.a6xx_gpu_state_obj, ptr %261, i32 4, i32 1
  store ptr %270, ptr %271, align 4
  %272 = load ptr, ptr %5, align 8
  %273 = getelementptr i8, ptr %272, i32 9272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %273) #8
  br label %274

274:                                              ; preds = %274, %267
  %275 = phi i32 [ 0, %267 ], [ %281, %274 ]
  %276 = load ptr, ptr %5, align 8
  %277 = getelementptr i8, ptr %276, i32 9276
  %278 = tail call i32 @msm_readl(ptr noundef %277) #8
  %279 = load ptr, ptr %271, align 4
  %280 = getelementptr i32, ptr %279, i32 %275
  store i32 %278, ptr %280, align 4
  %281 = add nuw nsw i32 %275, 1
  %282 = icmp eq i32 %281, 8288
  br i1 %282, label %283, label %274

283:                                              ; preds = %274, %265
  %284 = load ptr, ptr %213, align 8
  %285 = getelementptr %struct.a6xx_gpu_state_obj, ptr %284, i32 4, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr i32, ptr %286, i32 8192
  store i32 %258, ptr %287, align 4
  %288 = load ptr, ptr %5, align 8
  %289 = getelementptr i8, ptr %288, i32 8972
  tail call void @msm_writel(i32 noundef %258, ptr noundef %289) #8
  %290 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 12
  store i32 5, ptr %290, align 4
  br label %291

291:                                              ; preds = %283, %207
  br i1 %10, label %292, label %312

292:                                              ; preds = %291
  %293 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 20
  %294 = load i8, ptr %293, align 8, !range !8
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %312

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %300 = load ptr, ptr %299, align 8
  %301 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %2, i32 0, i32 1
  %302 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %2, i32 0, i32 2
  %303 = call ptr @msm_gem_kernel_new(ptr noundef %298, i32 noundef 1048576, i32 noundef 131072, ptr noundef %300, ptr noundef %301, ptr noundef %302) #8
  store ptr %303, ptr %2, align 8
  %304 = icmp ugt ptr %303, inttoptr (i32 -4096 to ptr)
  br i1 %304, label %308, label %305

305:                                              ; preds = %296
  %306 = load ptr, ptr %301, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %306, ptr noundef nonnull @.str.20) #8
  %307 = load ptr, ptr %2, align 8
  br label %308

308:                                              ; preds = %305, %296
  %309 = phi ptr [ %307, %305 ], [ %303, %296 ]
  %310 = icmp ugt ptr %309, inttoptr (i32 -4096 to ptr)
  %311 = select i1 %310, ptr null, ptr %2
  br label %312

312:                                              ; preds = %308, %292, %291
  %313 = phi ptr [ null, %291 ], [ null, %292 ], [ %311, %308 ]
  %314 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %315 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %314, i32 noundef 3520, i32 noundef 72) #9
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 3
  store ptr null, ptr %318, align 8
  br label %486

319:                                              ; preds = %312
  %320 = load ptr, ptr %14, align 4
  store ptr %315, ptr %14, align 4
  store ptr %13, ptr %315, align 8
  %321 = getelementptr inbounds %struct.list_head, ptr %315, i32 0, i32 1
  store ptr %320, ptr %321, align 4
  store volatile ptr %315, ptr %320, align 4
  %322 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %315, i32 0, i32 1
  %323 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 3
  store ptr %322, ptr %323, align 8
  %324 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 4
  store i32 8, ptr %324, align 4
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @a6xx_ahb_reglist, ptr noundef nonnull %322) #8
  %325 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 630
  %328 = load ptr, ptr %323, align 8
  %329 = getelementptr %struct.a6xx_gpu_state_obj, ptr %328, i32 1
  %330 = select i1 %327, ptr @a6xx_vbif_reglist, ptr @a6xx_gbif_reglist
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %330, ptr noundef %329) #8
  %331 = icmp eq ptr %313, null
  br i1 %331, label %332, label %339

332:                                              ; preds = %319
  %333 = load ptr, ptr %323, align 8
  %334 = getelementptr %struct.a6xx_gpu_state_obj, ptr %333, i32 2
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @a6xx_reglist, ptr noundef %334) #8
  %335 = load ptr, ptr %323, align 8
  %336 = getelementptr %struct.a6xx_gpu_state_obj, ptr %335, i32 3
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %0, ptr noundef %4, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 1), ptr noundef %336) #8
  %337 = load ptr, ptr %323, align 8
  %338 = getelementptr %struct.a6xx_gpu_state_obj, ptr %337, i32 4
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %0, ptr noundef %4, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 2), ptr noundef %338) #8
  br label %804

339:                                              ; preds = %319
  %340 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %313, i32 0, i32 2
  br label %341

341:                                              ; preds = %412, %339
  %342 = phi i32 [ 0, %339 ], [ %413, %412 ]
  %343 = phi i32 [ 2, %339 ], [ %346, %412 ]
  %344 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %342
  %345 = load ptr, ptr %323, align 8
  %346 = add nuw nsw i32 %343, 1
  %347 = getelementptr %struct.a6xx_gpu_state_obj, ptr %345, i32 %343
  %348 = load ptr, ptr %313, align 8
  %349 = load i64, ptr %340, align 8
  %350 = add i64 %349, 8192
  %351 = icmp eq i32 %342, 0
  br i1 %351, label %363, label %352

352:                                              ; preds = %341
  %353 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %342, i32 2
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %342, i32 3
  %356 = load i32, ptr %355, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, ptr %348, align 8
  %358 = zext i32 %354 to i64
  %359 = shl i64 %358, 44
  %360 = or i64 %359, 2097153
  %361 = getelementptr i64, ptr %348, i32 1
  store i64 %360, ptr %361, align 8
  %362 = getelementptr i64, ptr %348, i32 2
  br label %363

363:                                              ; preds = %352, %341
  %364 = phi ptr [ %362, %352 ], [ %348, %341 ]
  %365 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %342, i32 1
  %366 = load i32, ptr %365, align 4
  %367 = load ptr, ptr %344, align 4
  br label %368

368:                                              ; preds = %368, %363
  %369 = phi ptr [ %385, %368 ], [ %364, %363 ]
  %370 = phi i64 [ %388, %368 ], [ %350, %363 ]
  %371 = phi i32 [ %389, %368 ], [ 0, %363 ]
  %372 = phi i32 [ %390, %368 ], [ 0, %363 ]
  %373 = or i32 %372, 1
  %374 = getelementptr i32, ptr %367, i32 %373
  %375 = load i32, ptr %374, align 4
  %376 = getelementptr i32, ptr %367, i32 %372
  %377 = load i32, ptr %376, align 4
  %378 = sub i32 %375, %377
  %379 = add i32 %378, 1
  store i64 %370, ptr %369, align 8
  %380 = zext i32 %377 to i64
  %381 = shl i64 %380, 44
  %382 = zext i32 %379 to i64
  %383 = or i64 %381, %382
  %384 = getelementptr i64, ptr %369, i32 1
  store i64 %383, ptr %384, align 8
  %385 = getelementptr i64, ptr %369, i32 2
  %386 = shl i32 %379, 2
  %387 = zext i32 %386 to i64
  %388 = add i64 %370, %387
  %389 = add i32 %379, %371
  %390 = add i32 %372, 2
  %391 = icmp ult i32 %390, %366
  br i1 %391, label %368, label %392

392:                                              ; preds = %368
  %393 = shl i32 %389, 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %385, i8 0, i64 16, i1 false) #8
  %394 = icmp ugt i32 %393, 1040384
  br i1 %394, label %395, label %396, !prof !9

395:                                              ; preds = %392
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 706, i32 noundef 9, ptr noundef null) #8
  br label %412

396:                                              ; preds = %392
  %397 = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %0, ptr noundef nonnull %313) #8
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %412

399:                                              ; preds = %396
  store ptr %344, ptr %347, align 4
  %400 = load ptr, ptr %313, align 8
  %401 = add nuw nsw i32 %393, 8
  %402 = call noalias align 64 ptr @__kmalloc(i32 noundef %401, i32 noundef 3520) #10
  %403 = icmp eq ptr %402, null
  br i1 %403, label %409, label %404

404:                                              ; preds = %399
  %405 = getelementptr i8, ptr %400, i32 8192
  %406 = load ptr, ptr %14, align 4
  store ptr %402, ptr %14, align 4
  store ptr %13, ptr %402, align 64
  %407 = getelementptr inbounds %struct.list_head, ptr %402, i32 0, i32 1
  store ptr %406, ptr %407, align 4
  store volatile ptr %402, ptr %406, align 4
  %408 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %402, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %408, ptr align 1 %405, i32 %393, i1 false) #8
  br label %409

409:                                              ; preds = %404, %399
  %410 = phi ptr [ %408, %404 ], [ null, %399 ]
  %411 = getelementptr %struct.a6xx_gpu_state_obj, ptr %345, i32 %343, i32 1
  store ptr %410, ptr %411, align 4
  br label %412

412:                                              ; preds = %409, %396, %395
  %413 = add nuw nsw i32 %342, 1
  %414 = icmp eq i32 %413, 3
  br i1 %414, label %415, label %341

415:                                              ; preds = %483, %412
  %416 = phi i32 [ %484, %483 ], [ 0, %412 ]
  %417 = phi i32 [ %462, %483 ], [ 5, %412 ]
  %418 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %416
  %419 = load ptr, ptr %323, align 8
  %420 = load ptr, ptr %313, align 8
  %421 = load i64, ptr %340, align 8
  %422 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %416, i32 3
  %423 = load i32, ptr %422, align 4
  %424 = zext i32 %423 to i64
  store i64 %424, ptr %420, align 8
  %425 = getelementptr i64, ptr %420, i32 1
  store i64 936748722495160321, ptr %425, align 8
  %426 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %416, i32 1
  %427 = load i32, ptr %426, align 4
  %428 = getelementptr i64, ptr %420, i32 2
  %429 = add i64 %421, 8192
  %430 = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %416, i32 2
  %431 = load ptr, ptr %418, align 4
  %432 = load i32, ptr %430, align 4
  %433 = lshr i32 %432, 2
  %434 = sub nsw i32 51200, %433
  br label %435

435:                                              ; preds = %435, %415
  %436 = phi ptr [ %428, %415 ], [ %459, %435 ]
  %437 = phi ptr [ %420, %415 ], [ %436, %435 ]
  %438 = phi i64 [ %429, %415 ], [ %456, %435 ]
  %439 = phi i32 [ 0, %415 ], [ %458, %435 ]
  %440 = phi i32 [ 0, %415 ], [ %457, %435 ]
  %441 = or i32 %439, 1
  %442 = getelementptr i32, ptr %431, i32 %441
  %443 = load i32, ptr %442, align 4
  %444 = getelementptr i32, ptr %431, i32 %439
  %445 = load i32, ptr %444, align 4
  %446 = sub i32 %443, %445
  %447 = add i32 %446, 1
  %448 = add i32 %434, %445
  store i64 %438, ptr %436, align 8
  %449 = zext i32 %448 to i64
  %450 = shl i64 %449, 44
  %451 = zext i32 %447 to i64
  %452 = or i64 %450, %451
  %453 = getelementptr i64, ptr %437, i32 3
  store i64 %452, ptr %453, align 8
  %454 = shl i32 %447, 2
  %455 = zext i32 %454 to i64
  %456 = add i64 %438, %455
  %457 = add i32 %447, %440
  %458 = add i32 %439, 2
  %459 = getelementptr i64, ptr %436, i32 2
  %460 = icmp ult i32 %458, %427
  br i1 %460, label %435, label %461

461:                                              ; preds = %435
  %462 = add nuw nsw i32 %417, 1
  %463 = getelementptr %struct.a6xx_gpu_state_obj, ptr %419, i32 %417
  %464 = shl i32 %457, 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %459, i8 0, i64 16, i1 false) #8
  %465 = icmp ugt i32 %464, 1040384
  br i1 %465, label %466, label %467, !prof !9

466:                                              ; preds = %461
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 668, i32 noundef 9, ptr noundef null) #8
  br label %483

467:                                              ; preds = %461
  %468 = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %0, ptr noundef nonnull %313) #8
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %483

470:                                              ; preds = %467
  store ptr %418, ptr %463, align 4
  %471 = load ptr, ptr %313, align 8
  %472 = add nuw nsw i32 %464, 8
  %473 = call noalias align 64 ptr @__kmalloc(i32 noundef %472, i32 noundef 3520) #10
  %474 = icmp eq ptr %473, null
  br i1 %474, label %480, label %475

475:                                              ; preds = %470
  %476 = getelementptr i8, ptr %471, i32 8192
  %477 = load ptr, ptr %14, align 4
  store ptr %473, ptr %14, align 4
  store ptr %13, ptr %473, align 64
  %478 = getelementptr inbounds %struct.list_head, ptr %473, i32 0, i32 1
  store ptr %477, ptr %478, align 4
  store volatile ptr %473, ptr %477, align 4
  %479 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %473, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %479, ptr align 1 %476, i32 %464, i1 false) #8
  br label %480

480:                                              ; preds = %475, %470
  %481 = phi ptr [ %479, %475 ], [ null, %470 ]
  %482 = getelementptr %struct.a6xx_gpu_state_obj, ptr %419, i32 %417, i32 1
  store ptr %481, ptr %482, align 4
  br label %483

483:                                              ; preds = %480, %467, %466
  %484 = add nuw nsw i32 %416, 1
  %485 = icmp eq i32 %484, 3
  br i1 %485, label %486, label %415

486:                                              ; preds = %483, %317
  %487 = icmp eq ptr %313, null
  br i1 %487, label %804, label %488

488:                                              ; preds = %486
  %489 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %490 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %489, i32 noundef 3520, i32 noundef 344) #9
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %494

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 5
  store ptr null, ptr %493, align 8
  br label %561

494:                                              ; preds = %488
  %495 = load ptr, ptr %14, align 4
  store ptr %490, ptr %14, align 4
  store ptr %13, ptr %490, align 8
  %496 = getelementptr inbounds %struct.list_head, ptr %490, i32 0, i32 1
  store ptr %495, ptr %496, align 4
  store volatile ptr %490, ptr %495, align 4
  %497 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %490, i32 0, i32 1
  %498 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 5
  store ptr %497, ptr %498, align 8
  %499 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 6
  store i32 42, ptr %499, align 4
  %500 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %313, i32 0, i32 2
  br label %501

501:                                              ; preds = %559, %494
  %502 = phi ptr [ %497, %494 ], [ %560, %559 ]
  %503 = phi i32 [ 0, %494 ], [ %557, %559 ]
  %504 = getelementptr [42 x %struct.a6xx_shader_block], ptr @a6xx_shader_blocks, i32 0, i32 %503
  %505 = getelementptr %struct.a6xx_gpu_state_obj, ptr %502, i32 %503
  %506 = getelementptr [42 x %struct.a6xx_shader_block], ptr @a6xx_shader_blocks, i32 0, i32 %503, i32 2
  %507 = load i32, ptr %506, align 4
  %508 = mul i32 %507, 12
  %509 = icmp ugt i32 %508, 1040384
  br i1 %509, label %542, label %510, !prof !9

510:                                              ; preds = %501
  %511 = load ptr, ptr %313, align 8
  %512 = getelementptr [42 x %struct.a6xx_shader_block], ptr @a6xx_shader_blocks, i32 0, i32 %503, i32 1
  %513 = load i32, ptr %512, align 4
  %514 = shl i32 %513, 8
  %515 = zext i32 %514 to i64
  store i64 %515, ptr %511, align 8
  %516 = getelementptr i64, ptr %511, i32 1
  store i64 936748722495160321, ptr %516, align 8
  %517 = getelementptr i64, ptr %511, i32 2
  %518 = load i64, ptr %500, align 8
  %519 = add i64 %518, 8192
  store i64 %519, ptr %517, align 8
  %520 = zext i32 %507 to i64
  %521 = or i64 %520, 900719925474099200
  %522 = getelementptr i64, ptr %511, i32 3
  store i64 %521, ptr %522, align 8
  %523 = getelementptr i64, ptr %511, i32 4
  %524 = or i32 %514, 1
  %525 = zext i32 %524 to i64
  store i64 %525, ptr %523, align 8
  %526 = getelementptr i64, ptr %511, i32 5
  store i64 936748722495160321, ptr %526, align 8
  %527 = getelementptr i64, ptr %511, i32 6
  %528 = load i64, ptr %500, align 8
  %529 = add i64 %528, 8192
  store i64 %529, ptr %527, align 8
  %530 = getelementptr i64, ptr %511, i32 7
  store i64 %521, ptr %530, align 8
  %531 = getelementptr i64, ptr %511, i32 8
  %532 = or i32 %514, 2
  %533 = zext i32 %532 to i64
  store i64 %533, ptr %531, align 8
  %534 = getelementptr i64, ptr %511, i32 9
  store i64 936748722495160321, ptr %534, align 8
  %535 = getelementptr i64, ptr %511, i32 10
  %536 = load i64, ptr %500, align 8
  %537 = add i64 %536, 8192
  store i64 %537, ptr %535, align 8
  %538 = getelementptr i64, ptr %511, i32 11
  store i64 %521, ptr %538, align 8
  %539 = getelementptr i64, ptr %511, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %539, i8 0, i64 16, i1 false) #8
  %540 = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %0, ptr noundef %313) #8
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %543, label %556

542:                                              ; preds = %501
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 601, i32 noundef 9, ptr noundef null) #8
  br label %556

543:                                              ; preds = %510
  store ptr %504, ptr %505, align 4
  %544 = load ptr, ptr %313, align 8
  %545 = add nuw nsw i32 %508, 8
  %546 = call noalias align 64 ptr @__kmalloc(i32 noundef %545, i32 noundef 3520) #10
  %547 = icmp eq ptr %546, null
  br i1 %547, label %553, label %548

548:                                              ; preds = %543
  %549 = getelementptr i8, ptr %544, i32 8192
  %550 = load ptr, ptr %14, align 4
  store ptr %546, ptr %14, align 4
  store ptr %13, ptr %546, align 64
  %551 = getelementptr inbounds %struct.list_head, ptr %546, i32 0, i32 1
  store ptr %550, ptr %551, align 4
  store volatile ptr %546, ptr %550, align 4
  %552 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %546, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %552, ptr align 1 %549, i32 %508, i1 false) #8
  br label %553

553:                                              ; preds = %548, %543
  %554 = phi ptr [ %552, %548 ], [ null, %543 ]
  %555 = getelementptr %struct.a6xx_gpu_state_obj, ptr %502, i32 %503, i32 1
  store ptr %554, ptr %555, align 4
  br label %556

556:                                              ; preds = %553, %542, %510
  %557 = add nuw nsw i32 %503, 1
  %558 = icmp eq i32 %557, 42
  br i1 %558, label %561, label %559

559:                                              ; preds = %556
  %560 = load ptr, ptr %498, align 8
  br label %501

561:                                              ; preds = %556, %492
  %562 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %563 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %562, i32 noundef 3520, i32 noundef 56) #9
  %564 = icmp eq ptr %563, null
  br i1 %564, label %565, label %567

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %566, align 8
  br label %684

567:                                              ; preds = %561
  %568 = load ptr, ptr %14, align 4
  store ptr %563, ptr %14, align 4
  store ptr %13, ptr %563, align 8
  %569 = getelementptr inbounds %struct.list_head, ptr %563, i32 0, i32 1
  store ptr %568, ptr %569, align 4
  store volatile ptr %563, ptr %568, align 4
  %570 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %563, i32 0, i32 1
  %571 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 7
  store ptr %570, ptr %571, align 8
  %572 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 8
  store i32 6, ptr %572, align 4
  %573 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %313, i32 0, i32 2
  br label %574

574:                                              ; preds = %682, %567
  %575 = phi ptr [ %570, %567 ], [ %683, %682 ]
  %576 = phi i32 [ 0, %567 ], [ %680, %682 ]
  %577 = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %576
  %578 = getelementptr %struct.a6xx_gpu_state_obj, ptr %575, i32 %576
  %579 = load ptr, ptr %313, align 8
  %580 = load i64, ptr %573, align 8
  %581 = add i64 %580, 8192
  %582 = add nsw i32 %576, -3
  %583 = icmp ult i32 %582, -2
  br i1 %583, label %595, label %584

584:                                              ; preds = %574
  %585 = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %576, i32 4
  %586 = load i32, ptr %585, align 4
  %587 = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %576, i32 5
  %588 = load i32, ptr %587, align 4
  %589 = zext i32 %588 to i64
  store i64 %589, ptr %579, align 8
  %590 = zext i32 %586 to i64
  %591 = shl i64 %590, 44
  %592 = or i64 %591, 2097153
  %593 = getelementptr i64, ptr %579, i32 1
  store i64 %592, ptr %593, align 8
  %594 = getelementptr i64, ptr %579, i32 2
  br label %595

595:                                              ; preds = %584, %574
  %596 = phi ptr [ %594, %584 ], [ %579, %574 ]
  %597 = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %576, i32 3
  %598 = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %576, i32 2
  %599 = load i32, ptr %577, align 4
  %600 = shl i32 %599, 8
  %601 = zext i32 %600 to i64
  store i64 %601, ptr %596, align 8
  %602 = getelementptr i64, ptr %596, i32 1
  store i64 45088772833935361, ptr %602, align 8
  %603 = getelementptr i64, ptr %596, i32 2
  %604 = load i32, ptr %597, align 4
  %605 = load ptr, ptr %598, align 4
  br label %606

606:                                              ; preds = %606, %595
  %607 = phi ptr [ %629, %606 ], [ %603, %595 ]
  %608 = phi ptr [ %607, %606 ], [ %596, %595 ]
  %609 = phi i32 [ %628, %606 ], [ 0, %595 ]
  %610 = phi i32 [ %627, %606 ], [ 0, %595 ]
  %611 = phi i64 [ %626, %606 ], [ %581, %595 ]
  %612 = or i32 %609, 1
  %613 = getelementptr i32, ptr %605, i32 %612
  %614 = load i32, ptr %613, align 4
  %615 = getelementptr i32, ptr %605, i32 %609
  %616 = load i32, ptr %615, align 4
  %617 = sub i32 %614, %616
  %618 = add i32 %617, 1
  store i64 %611, ptr %607, align 8
  %619 = zext i32 %616 to i64
  %620 = shl i64 %619, 44
  %621 = zext i32 %618 to i64
  %622 = or i64 %620, %621
  %623 = getelementptr i64, ptr %608, i32 3
  store i64 %622, ptr %623, align 8
  %624 = shl i32 %618, 2
  %625 = zext i32 %624 to i64
  %626 = add i64 %611, %625
  %627 = add i32 %618, %610
  %628 = add i32 %609, 2
  %629 = getelementptr i64, ptr %607, i32 2
  %630 = icmp ult i32 %628, %604
  br i1 %630, label %606, label %631

631:                                              ; preds = %606
  %632 = or i32 %600, 17
  %633 = zext i32 %632 to i64
  store i64 %633, ptr %629, align 8
  %634 = getelementptr i64, ptr %607, i32 3
  store i64 45088772833935361, ptr %634, align 8
  %635 = getelementptr i64, ptr %607, i32 4
  br label %636

636:                                              ; preds = %636, %631
  %637 = phi ptr [ %657, %636 ], [ %635, %631 ]
  %638 = phi ptr [ %637, %636 ], [ %629, %631 ]
  %639 = phi i32 [ %656, %636 ], [ 0, %631 ]
  %640 = phi i64 [ %655, %636 ], [ %626, %631 ]
  %641 = or i32 %639, 1
  %642 = getelementptr i32, ptr %605, i32 %641
  %643 = load i32, ptr %642, align 4
  %644 = getelementptr i32, ptr %605, i32 %639
  %645 = load i32, ptr %644, align 4
  %646 = sub i32 %643, %645
  %647 = add i32 %646, 1
  store i64 %640, ptr %637, align 8
  %648 = zext i32 %645 to i64
  %649 = shl i64 %648, 44
  %650 = zext i32 %647 to i64
  %651 = or i64 %649, %650
  %652 = getelementptr i64, ptr %638, i32 3
  store i64 %651, ptr %652, align 8
  %653 = shl i32 %647, 2
  %654 = zext i32 %653 to i64
  %655 = add i64 %640, %654
  %656 = add i32 %639, 2
  %657 = getelementptr i64, ptr %637, i32 2
  %658 = icmp ult i32 %656, %604
  br i1 %658, label %636, label %659

659:                                              ; preds = %636
  %660 = shl i32 %627, 3
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %657, i8 0, i64 16, i1 false) #8
  %661 = icmp ugt i32 %660, 1040384
  br i1 %661, label %662, label %663, !prof !9

662:                                              ; preds = %659
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 560, i32 noundef 9, ptr noundef null) #8
  br label %679

663:                                              ; preds = %659
  %664 = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %0, ptr noundef %313) #8
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %679

666:                                              ; preds = %663
  store ptr %577, ptr %578, align 4
  %667 = load ptr, ptr %313, align 8
  %668 = add nuw nsw i32 %660, 8
  %669 = call noalias align 64 ptr @__kmalloc(i32 noundef %668, i32 noundef 3520) #10
  %670 = icmp eq ptr %669, null
  br i1 %670, label %676, label %671

671:                                              ; preds = %666
  %672 = getelementptr i8, ptr %667, i32 8192
  %673 = load ptr, ptr %14, align 4
  store ptr %669, ptr %14, align 4
  store ptr %13, ptr %669, align 64
  %674 = getelementptr inbounds %struct.list_head, ptr %669, i32 0, i32 1
  store ptr %673, ptr %674, align 4
  store volatile ptr %669, ptr %673, align 4
  %675 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %669, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %675, ptr align 1 %672, i32 %660, i1 false) #8
  br label %676

676:                                              ; preds = %671, %666
  %677 = phi ptr [ %675, %671 ], [ null, %666 ]
  %678 = getelementptr %struct.a6xx_gpu_state_obj, ptr %575, i32 %576, i32 1
  store ptr %677, ptr %678, align 4
  br label %679

679:                                              ; preds = %676, %663, %662
  %680 = add nuw nsw i32 %576, 1
  %681 = icmp eq i32 %680, 6
  br i1 %681, label %684, label %682

682:                                              ; preds = %679
  %683 = load ptr, ptr %571, align 8
  br label %574

684:                                              ; preds = %679, %565
  %685 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %686 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %685, i32 noundef 3520, i32 noundef 128) #9
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %690

688:                                              ; preds = %684
  %689 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 9
  store ptr null, ptr %689, align 8
  br label %799

690:                                              ; preds = %684
  %691 = load ptr, ptr %14, align 4
  store ptr %686, ptr %14, align 4
  store ptr %13, ptr %686, align 8
  %692 = getelementptr inbounds %struct.list_head, ptr %686, i32 0, i32 1
  store ptr %691, ptr %692, align 4
  store volatile ptr %686, ptr %691, align 4
  %693 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %686, i32 0, i32 1
  %694 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 9
  store ptr %693, ptr %694, align 8
  %695 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 10
  store i32 15, ptr %695, align 4
  %696 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %313, i32 0, i32 2
  br label %697

697:                                              ; preds = %797, %690
  %698 = phi ptr [ %693, %690 ], [ %798, %797 ]
  %699 = phi i32 [ 0, %690 ], [ %795, %797 ]
  %700 = load ptr, ptr %313, align 8
  %701 = load i64, ptr %696, align 8
  %702 = add i64 %701, 8192
  %703 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %699, i32 1
  %704 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %699, i32 4
  %705 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %699, i32 3
  %706 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %699, i32 2
  %707 = load i32, ptr %703, align 4
  %708 = shl i32 %707, 8
  %709 = zext i32 %708 to i64
  store i64 %709, ptr %700, align 8
  %710 = getelementptr i64, ptr %700, i32 1
  store i64 936748722495160321, ptr %710, align 8
  %711 = getelementptr i64, ptr %700, i32 2
  %712 = load i32, ptr %704, align 4
  %713 = load ptr, ptr %705, align 4
  %714 = load i32, ptr %706, align 4
  %715 = lshr i32 %714, 2
  %716 = sub nsw i32 51200, %715
  br label %717

717:                                              ; preds = %717, %697
  %718 = phi ptr [ %741, %717 ], [ %711, %697 ]
  %719 = phi ptr [ %718, %717 ], [ %700, %697 ]
  %720 = phi i64 [ %738, %717 ], [ %702, %697 ]
  %721 = phi i32 [ %740, %717 ], [ 0, %697 ]
  %722 = phi i32 [ %739, %717 ], [ 0, %697 ]
  %723 = or i32 %721, 1
  %724 = getelementptr i32, ptr %713, i32 %723
  %725 = load i32, ptr %724, align 4
  %726 = getelementptr i32, ptr %713, i32 %721
  %727 = load i32, ptr %726, align 4
  %728 = sub i32 %725, %727
  %729 = add i32 %728, 1
  %730 = add i32 %716, %727
  store i64 %720, ptr %718, align 8
  %731 = zext i32 %730 to i64
  %732 = shl i64 %731, 44
  %733 = zext i32 %729 to i64
  %734 = or i64 %732, %733
  %735 = getelementptr i64, ptr %719, i32 3
  store i64 %734, ptr %735, align 8
  %736 = shl i32 %729, 2
  %737 = zext i32 %736 to i64
  %738 = add i64 %720, %737
  %739 = add i32 %729, %722
  %740 = add i32 %721, 2
  %741 = getelementptr i64, ptr %718, i32 2
  %742 = icmp ult i32 %740, %712
  br i1 %742, label %717, label %743

743:                                              ; preds = %717
  %744 = add i32 %708, 512
  %745 = zext i32 %744 to i64
  store i64 %745, ptr %741, align 8
  %746 = getelementptr i64, ptr %718, i32 3
  store i64 936748722495160321, ptr %746, align 8
  %747 = getelementptr i64, ptr %718, i32 4
  br label %748

748:                                              ; preds = %748, %743
  %749 = phi ptr [ %770, %748 ], [ %747, %743 ]
  %750 = phi ptr [ %749, %748 ], [ %741, %743 ]
  %751 = phi i64 [ %768, %748 ], [ %738, %743 ]
  %752 = phi i32 [ %769, %748 ], [ 0, %743 ]
  %753 = or i32 %752, 1
  %754 = getelementptr i32, ptr %713, i32 %753
  %755 = load i32, ptr %754, align 4
  %756 = getelementptr i32, ptr %713, i32 %752
  %757 = load i32, ptr %756, align 4
  %758 = sub i32 %755, %757
  %759 = add i32 %758, 1
  %760 = add i32 %716, %757
  store i64 %751, ptr %749, align 8
  %761 = zext i32 %760 to i64
  %762 = shl i64 %761, 44
  %763 = zext i32 %759 to i64
  %764 = or i64 %762, %763
  %765 = getelementptr i64, ptr %750, i32 3
  store i64 %764, ptr %765, align 8
  %766 = shl i32 %759, 2
  %767 = zext i32 %766 to i64
  %768 = add i64 %751, %767
  %769 = add i32 %752, 2
  %770 = getelementptr i64, ptr %749, i32 2
  %771 = icmp ult i32 %769, %712
  br i1 %771, label %748, label %772

772:                                              ; preds = %748
  %773 = getelementptr %struct.a6xx_gpu_state_obj, ptr %698, i32 %699
  %774 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %699
  %775 = shl i32 %739, 3
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %770, i8 0, i64 16, i1 false) #8
  %776 = icmp ugt i32 %775, 1040384
  br i1 %776, label %777, label %778, !prof !9

777:                                              ; preds = %772
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 489, i32 noundef 9, ptr noundef null) #8
  br label %794

778:                                              ; preds = %772
  %779 = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %0, ptr noundef %313) #8
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %794

781:                                              ; preds = %778
  store ptr %774, ptr %773, align 4
  %782 = load ptr, ptr %313, align 8
  %783 = add nuw nsw i32 %775, 8
  %784 = call noalias align 64 ptr @__kmalloc(i32 noundef %783, i32 noundef 3520) #10
  %785 = icmp eq ptr %784, null
  br i1 %785, label %791, label %786

786:                                              ; preds = %781
  %787 = getelementptr i8, ptr %782, i32 8192
  %788 = load ptr, ptr %14, align 4
  store ptr %784, ptr %14, align 4
  store ptr %13, ptr %784, align 64
  %789 = getelementptr inbounds %struct.list_head, ptr %784, i32 0, i32 1
  store ptr %788, ptr %789, align 4
  store volatile ptr %784, ptr %788, align 4
  %790 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %784, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %790, ptr align 1 %787, i32 %775, i1 false) #8
  br label %791

791:                                              ; preds = %786, %781
  %792 = phi ptr [ %790, %786 ], [ null, %781 ]
  %793 = getelementptr %struct.a6xx_gpu_state_obj, ptr %698, i32 %699, i32 1
  store ptr %792, ptr %793, align 4
  br label %794

794:                                              ; preds = %791, %778, %777
  %795 = add nuw nsw i32 %699, 1
  %796 = icmp eq i32 %795, 15
  br i1 %796, label %799, label %797

797:                                              ; preds = %794
  %798 = load ptr, ptr %694, align 8
  br label %697

799:                                              ; preds = %794, %688
  %800 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %313, i32 0, i32 1
  %801 = load ptr, ptr %800, align 4
  %802 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %803 = load ptr, ptr %802, align 8
  call void @msm_gem_kernel_put(ptr noundef %801, ptr noundef %803) #8
  br label %804

804:                                              ; preds = %799, %486, %332
  %805 = load i8, ptr @snapshot_debugbus, align 1, !range !8
  %806 = icmp eq i8 %805, 0
  br i1 %806, label %1172, label %807

807:                                              ; preds = %804
  %808 = load ptr, ptr %5, align 8
  %809 = getelementptr i8, ptr %808, i32 6160
  call void @msm_writel(i32 noundef -268435456, ptr noundef %809) #8
  %810 = load ptr, ptr %5, align 8
  %811 = getelementptr i8, ptr %810, i32 6164
  call void @msm_writel(i32 noundef 251658240, ptr noundef %811) #8
  %812 = load ptr, ptr %5, align 8
  %813 = getelementptr i8, ptr %812, i32 6176
  call void @msm_writel(i32 noundef 0, ptr noundef %813) #8
  %814 = load ptr, ptr %5, align 8
  %815 = getelementptr i8, ptr %814, i32 6180
  call void @msm_writel(i32 noundef 0, ptr noundef %815) #8
  %816 = load ptr, ptr %5, align 8
  %817 = getelementptr i8, ptr %816, i32 6184
  call void @msm_writel(i32 noundef 0, ptr noundef %817) #8
  %818 = load ptr, ptr %5, align 8
  %819 = getelementptr i8, ptr %818, i32 6188
  call void @msm_writel(i32 noundef 0, ptr noundef %819) #8
  %820 = load ptr, ptr %5, align 8
  %821 = getelementptr i8, ptr %820, i32 6208
  call void @msm_writel(i32 noundef 1985229328, ptr noundef %821) #8
  %822 = load ptr, ptr %5, align 8
  %823 = getelementptr i8, ptr %822, i32 6212
  call void @msm_writel(i32 noundef -19088744, ptr noundef %823) #8
  %824 = load ptr, ptr %5, align 8
  %825 = getelementptr i8, ptr %824, i32 6192
  call void @msm_writel(i32 noundef 0, ptr noundef %825) #8
  %826 = load ptr, ptr %5, align 8
  %827 = getelementptr i8, ptr %826, i32 6196
  call void @msm_writel(i32 noundef 0, ptr noundef %827) #8
  %828 = load ptr, ptr %5, align 8
  %829 = getelementptr i8, ptr %828, i32 6200
  call void @msm_writel(i32 noundef 0, ptr noundef %829) #8
  %830 = load ptr, ptr %5, align 8
  %831 = getelementptr i8, ptr %830, i32 6204
  call void @msm_writel(i32 noundef 0, ptr noundef %831) #8
  %832 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %833 = load ptr, ptr %832, align 8
  %834 = call ptr @platform_get_resource_byname(ptr noundef %833, i32 noundef 512, ptr noundef nonnull @.str.70) #8
  %835 = icmp eq ptr %834, null
  br i1 %835, label %857, label %836

836:                                              ; preds = %807
  %837 = load i32, ptr %834, align 4
  %838 = getelementptr inbounds %struct.resource, ptr %834, i32 0, i32 1
  %839 = load i32, ptr %838, align 4
  %840 = sub i32 1, %837
  %841 = add i32 %840, %839
  %842 = call ptr @ioremap(i32 noundef %837, i32 noundef %841) #8
  %843 = icmp eq ptr %842, null
  br i1 %843, label %857, label %844

844:                                              ; preds = %836
  %845 = getelementptr i8, ptr %842, i32 16
  call void @msm_writel(i32 noundef -268435456, ptr noundef %845) #8
  %846 = getelementptr i8, ptr %842, i32 20
  call void @msm_writel(i32 noundef 251658240, ptr noundef %846) #8
  %847 = getelementptr i8, ptr %842, i32 32
  call void @msm_writel(i32 noundef 0, ptr noundef %847) #8
  %848 = getelementptr i8, ptr %842, i32 36
  call void @msm_writel(i32 noundef 0, ptr noundef %848) #8
  %849 = getelementptr i8, ptr %842, i32 40
  call void @msm_writel(i32 noundef 0, ptr noundef %849) #8
  %850 = getelementptr i8, ptr %842, i32 44
  call void @msm_writel(i32 noundef 0, ptr noundef %850) #8
  %851 = getelementptr i8, ptr %842, i32 64
  call void @msm_writel(i32 noundef 1985229328, ptr noundef %851) #8
  %852 = getelementptr i8, ptr %842, i32 68
  call void @msm_writel(i32 noundef -19088744, ptr noundef %852) #8
  %853 = getelementptr i8, ptr %842, i32 48
  call void @msm_writel(i32 noundef 0, ptr noundef %853) #8
  %854 = getelementptr i8, ptr %842, i32 52
  call void @msm_writel(i32 noundef 0, ptr noundef %854) #8
  %855 = getelementptr i8, ptr %842, i32 56
  call void @msm_writel(i32 noundef 0, ptr noundef %855) #8
  %856 = getelementptr i8, ptr %842, i32 60
  call void @msm_writel(i32 noundef 0, ptr noundef %856) #8
  br label %857

857:                                              ; preds = %844, %836, %807
  %858 = phi i1 [ false, %844 ], [ true, %836 ], [ true, %807 ]
  %859 = phi ptr [ %842, %844 ], [ null, %836 ], [ null, %807 ]
  %860 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %861 = load i32, ptr %860, align 4
  %862 = icmp eq i32 %861, 630
  %863 = select i1 %862, i32 320, i32 328
  %864 = call noalias align 64 ptr @__kmalloc(i32 noundef %863, i32 noundef 3520) #10
  %865 = icmp eq ptr %864, null
  br i1 %865, label %866, label %868

866:                                              ; preds = %857
  %867 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 13
  store ptr null, ptr %867, align 8
  br label %889

868:                                              ; preds = %857
  %869 = load ptr, ptr %14, align 4
  store ptr %864, ptr %14, align 4
  store ptr %13, ptr %864, align 64
  %870 = getelementptr inbounds %struct.list_head, ptr %864, i32 0, i32 1
  store ptr %869, ptr %870, align 4
  store volatile ptr %864, ptr %869, align 4
  %871 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %864, i32 0, i32 1
  %872 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 13
  store ptr %871, ptr %872, align 8
  call fastcc void @a6xx_get_debugbus_block(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @a6xx_debugbus_blocks, ptr noundef %871) #8
  br label %873

873:                                              ; preds = %873, %868
  %874 = phi i32 [ 1, %868 ], [ %878, %873 ]
  %875 = load ptr, ptr %872, align 8
  %876 = getelementptr [39 x %struct.a6xx_debugbus_block], ptr @a6xx_debugbus_blocks, i32 0, i32 %874
  %877 = getelementptr %struct.a6xx_gpu_state_obj, ptr %875, i32 %874
  call fastcc void @a6xx_get_debugbus_block(ptr noundef %0, ptr noundef %4, ptr noundef %876, ptr noundef %877) #8
  %878 = add nuw nsw i32 %874, 1
  %879 = icmp eq i32 %878, 39
  br i1 %879, label %880, label %873

880:                                              ; preds = %873
  %881 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 14
  store i32 39, ptr %881, align 4
  %882 = load i32, ptr %860, align 4
  %883 = icmp eq i32 %882, 630
  br i1 %883, label %892, label %884

884:                                              ; preds = %880
  %885 = load ptr, ptr %872, align 8
  %886 = getelementptr %struct.a6xx_gpu_state_obj, ptr %885, i32 39
  call fastcc void @a6xx_get_debugbus_block(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @a6xx_gbif_debugbus_block, ptr noundef %886) #8
  %887 = load i32, ptr %881, align 4
  %888 = add i32 %887, 1
  store i32 %888, ptr %881, align 4
  br label %889

889:                                              ; preds = %884, %866
  %890 = load i32, ptr %860, align 4
  %891 = icmp eq i32 %890, 630
  br i1 %891, label %892, label %1107

892:                                              ; preds = %889, %880
  %893 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %894 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %893, i32 noundef 3520, i32 noundef 16) #9
  %895 = icmp eq ptr %894, null
  br i1 %895, label %896, label %898

896:                                              ; preds = %892
  %897 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 15
  store ptr null, ptr %897, align 8
  br label %1107

898:                                              ; preds = %892
  %899 = load ptr, ptr %14, align 4
  store ptr %894, ptr %14, align 4
  store ptr %13, ptr %894, align 8
  %900 = getelementptr inbounds %struct.list_head, ptr %894, i32 0, i32 1
  store ptr %899, ptr %900, align 4
  store volatile ptr %894, ptr %899, align 4
  %901 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %894, i32 0, i32 1
  %902 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 15
  store ptr %901, ptr %902, align 8
  %903 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %904 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %903, i32 noundef 3520, i32 noundef 688) #9
  %905 = icmp eq ptr %904, null
  br i1 %905, label %906, label %908

906:                                              ; preds = %898
  %907 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %894, i32 1, i32 0, i32 1
  store ptr null, ptr %907, align 4
  br label %1107

908:                                              ; preds = %898
  %909 = load ptr, ptr %14, align 4
  store ptr %904, ptr %14, align 4
  store ptr %13, ptr %904, align 8
  %910 = getelementptr inbounds %struct.list_head, ptr %904, i32 0, i32 1
  store ptr %909, ptr %910, align 4
  store volatile ptr %904, ptr %909, align 4
  %911 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %904, i32 0, i32 1
  %912 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %894, i32 1, i32 0, i32 1
  store ptr %911, ptr %912, align 4
  store ptr null, ptr %901, align 8
  %913 = load ptr, ptr %5, align 8
  %914 = getelementptr i8, ptr %913, i32 49156
  %915 = call i32 @msm_readl(ptr noundef %914) #8
  %916 = or i32 %915, 2
  %917 = load ptr, ptr %5, align 8
  %918 = getelementptr i8, ptr %917, i32 49156
  call void @msm_writel(i32 noundef %916, ptr noundef %918) #8
  %919 = load ptr, ptr %5, align 8
  %920 = getelementptr i8, ptr %919, i32 49684
  call void @msm_writel(i32 noundef 0, ptr noundef %920) #8
  %921 = load ptr, ptr %5, align 8
  %922 = getelementptr i8, ptr %921, i32 49680
  call void @msm_writel(i32 noundef 1, ptr noundef %922) #8
  %923 = load ptr, ptr %912, align 4
  %924 = load ptr, ptr %5, align 8
  %925 = getelementptr i8, ptr %924, i32 49692
  call void @msm_writel(i32 noundef 65536, ptr noundef %925) #8
  br label %926

926:                                              ; preds = %926, %908
  %927 = phi i32 [ 0, %908 ], [ %934, %926 ]
  %928 = load ptr, ptr %5, align 8
  %929 = getelementptr i8, ptr %928, i32 49696
  call void @msm_writel(i32 noundef %927, ptr noundef %929) #8
  %930 = load ptr, ptr %5, align 8
  %931 = getelementptr i8, ptr %930, i32 49712
  %932 = call i32 @msm_readl(ptr noundef %931) #8
  %933 = getelementptr i32, ptr %923, i32 %927
  store i32 %932, ptr %933, align 4
  %934 = add nuw nsw i32 %927, 1
  %935 = icmp eq i32 %934, 16
  br i1 %935, label %936, label %926

936:                                              ; preds = %926
  %937 = getelementptr i32, ptr %923, i32 16
  %938 = load ptr, ptr %5, align 8
  %939 = getelementptr i8, ptr %938, i32 49692
  call void @msm_writel(i32 noundef 131072, ptr noundef %939) #8
  br label %940

940:                                              ; preds = %940, %936
  %941 = phi i32 [ 0, %936 ], [ %948, %940 ]
  %942 = load ptr, ptr %5, align 8
  %943 = getelementptr i8, ptr %942, i32 49696
  call void @msm_writel(i32 noundef %941, ptr noundef %943) #8
  %944 = load ptr, ptr %5, align 8
  %945 = getelementptr i8, ptr %944, i32 49712
  %946 = call i32 @msm_readl(ptr noundef %945) #8
  %947 = getelementptr i32, ptr %937, i32 %941
  store i32 %946, ptr %947, align 4
  %948 = add nuw nsw i32 %941, 1
  %949 = icmp eq i32 %948, 16
  br i1 %949, label %950, label %940

950:                                              ; preds = %940
  %951 = getelementptr i32, ptr %923, i32 32
  %952 = load ptr, ptr %5, align 8
  %953 = getelementptr i8, ptr %952, i32 49692
  call void @msm_writel(i32 noundef 1, ptr noundef %953) #8
  br label %954

954:                                              ; preds = %954, %950
  %955 = phi i32 [ 0, %950 ], [ %962, %954 ]
  %956 = load ptr, ptr %5, align 8
  %957 = getelementptr i8, ptr %956, i32 49696
  call void @msm_writel(i32 noundef %955, ptr noundef %957) #8
  %958 = load ptr, ptr %5, align 8
  %959 = getelementptr i8, ptr %958, i32 49712
  %960 = call i32 @msm_readl(ptr noundef %959) #8
  %961 = getelementptr i32, ptr %951, i32 %955
  store i32 %960, ptr %961, align 4
  %962 = add nuw nsw i32 %955, 1
  %963 = icmp eq i32 %962, 18
  br i1 %963, label %964, label %954

964:                                              ; preds = %954
  %965 = getelementptr i32, ptr %923, i32 50
  %966 = load ptr, ptr %5, align 8
  %967 = getelementptr i8, ptr %966, i32 49692
  call void @msm_writel(i32 noundef 2, ptr noundef %967) #8
  br label %968

968:                                              ; preds = %968, %964
  %969 = phi i32 [ 0, %964 ], [ %976, %968 ]
  %970 = load ptr, ptr %5, align 8
  %971 = getelementptr i8, ptr %970, i32 49696
  call void @msm_writel(i32 noundef %969, ptr noundef %971) #8
  %972 = load ptr, ptr %5, align 8
  %973 = getelementptr i8, ptr %972, i32 49712
  %974 = call i32 @msm_readl(ptr noundef %973) #8
  %975 = getelementptr i32, ptr %965, i32 %969
  store i32 %974, ptr %975, align 4
  %976 = add nuw nsw i32 %969, 1
  %977 = icmp eq i32 %976, 18
  br i1 %977, label %978, label %968

978:                                              ; preds = %968
  %979 = getelementptr i32, ptr %923, i32 68
  %980 = load ptr, ptr %5, align 8
  %981 = getelementptr i8, ptr %980, i32 49692
  call void @msm_writel(i32 noundef 4, ptr noundef %981) #8
  br label %982

982:                                              ; preds = %982, %978
  %983 = phi i32 [ 0, %978 ], [ %990, %982 ]
  %984 = load ptr, ptr %5, align 8
  %985 = getelementptr i8, ptr %984, i32 49696
  call void @msm_writel(i32 noundef %983, ptr noundef %985) #8
  %986 = load ptr, ptr %5, align 8
  %987 = getelementptr i8, ptr %986, i32 49712
  %988 = call i32 @msm_readl(ptr noundef %987) #8
  %989 = getelementptr i32, ptr %979, i32 %983
  store i32 %988, ptr %989, align 4
  %990 = add nuw nsw i32 %983, 1
  %991 = icmp eq i32 %990, 18
  br i1 %991, label %992, label %982

992:                                              ; preds = %982
  %993 = getelementptr i32, ptr %923, i32 86
  %994 = load ptr, ptr %5, align 8
  %995 = getelementptr i8, ptr %994, i32 49692
  call void @msm_writel(i32 noundef 8, ptr noundef %995) #8
  br label %996

996:                                              ; preds = %996, %992
  %997 = phi i32 [ 0, %992 ], [ %1004, %996 ]
  %998 = load ptr, ptr %5, align 8
  %999 = getelementptr i8, ptr %998, i32 49696
  call void @msm_writel(i32 noundef %997, ptr noundef %999) #8
  %1000 = load ptr, ptr %5, align 8
  %1001 = getelementptr i8, ptr %1000, i32 49712
  %1002 = call i32 @msm_readl(ptr noundef %1001) #8
  %1003 = getelementptr i32, ptr %993, i32 %997
  store i32 %1002, ptr %1003, align 4
  %1004 = add nuw nsw i32 %997, 1
  %1005 = icmp eq i32 %1004, 18
  br i1 %1005, label %1006, label %996

1006:                                             ; preds = %996
  %1007 = getelementptr i32, ptr %923, i32 104
  %1008 = load ptr, ptr %5, align 8
  %1009 = getelementptr i8, ptr %1008, i32 49692
  call void @msm_writel(i32 noundef 16, ptr noundef %1009) #8
  br label %1010

1010:                                             ; preds = %1010, %1006
  %1011 = phi i32 [ 0, %1006 ], [ %1018, %1010 ]
  %1012 = load ptr, ptr %5, align 8
  %1013 = getelementptr i8, ptr %1012, i32 49696
  call void @msm_writel(i32 noundef %1011, ptr noundef %1013) #8
  %1014 = load ptr, ptr %5, align 8
  %1015 = getelementptr i8, ptr %1014, i32 49712
  %1016 = call i32 @msm_readl(ptr noundef %1015) #8
  %1017 = getelementptr i32, ptr %1007, i32 %1011
  store i32 %1016, ptr %1017, align 4
  %1018 = add nuw nsw i32 %1011, 1
  %1019 = icmp eq i32 %1018, 18
  br i1 %1019, label %1020, label %1010

1020:                                             ; preds = %1010
  %1021 = getelementptr i32, ptr %923, i32 122
  %1022 = load ptr, ptr %5, align 8
  %1023 = getelementptr i8, ptr %1022, i32 49692
  call void @msm_writel(i32 noundef 0, ptr noundef %1023) #8
  br label %1024

1024:                                             ; preds = %1024, %1020
  %1025 = phi i32 [ 0, %1020 ], [ %1102, %1024 ]
  %1026 = phi ptr [ %1021, %1020 ], [ %1101, %1024 ]
  %1027 = shl nuw nsw i32 1, %1025
  %1028 = load ptr, ptr %5, align 8
  %1029 = getelementptr i8, ptr %1028, i32 49684
  call void @msm_writel(i32 noundef %1027, ptr noundef %1029) #8
  %1030 = load ptr, ptr %5, align 8
  %1031 = getelementptr i8, ptr %1030, i32 49688
  call void @msm_writel(i32 noundef 0, ptr noundef %1031) #8
  %1032 = load ptr, ptr %5, align 8
  %1033 = getelementptr i8, ptr %1032, i32 49712
  %1034 = call i32 @msm_readl(ptr noundef %1033) #8
  store i32 %1034, ptr %1026, align 4
  %1035 = load ptr, ptr %5, align 8
  %1036 = getelementptr i8, ptr %1035, i32 49688
  call void @msm_writel(i32 noundef 1, ptr noundef %1036) #8
  %1037 = load ptr, ptr %5, align 8
  %1038 = getelementptr i8, ptr %1037, i32 49712
  %1039 = call i32 @msm_readl(ptr noundef %1038) #8
  %1040 = getelementptr i32, ptr %1026, i32 1
  store i32 %1039, ptr %1040, align 4
  %1041 = load ptr, ptr %5, align 8
  %1042 = getelementptr i8, ptr %1041, i32 49688
  call void @msm_writel(i32 noundef 2, ptr noundef %1042) #8
  %1043 = load ptr, ptr %5, align 8
  %1044 = getelementptr i8, ptr %1043, i32 49712
  %1045 = call i32 @msm_readl(ptr noundef %1044) #8
  %1046 = getelementptr i32, ptr %1026, i32 2
  store i32 %1045, ptr %1046, align 4
  %1047 = load ptr, ptr %5, align 8
  %1048 = getelementptr i8, ptr %1047, i32 49688
  call void @msm_writel(i32 noundef 3, ptr noundef %1048) #8
  %1049 = load ptr, ptr %5, align 8
  %1050 = getelementptr i8, ptr %1049, i32 49712
  %1051 = call i32 @msm_readl(ptr noundef %1050) #8
  %1052 = getelementptr i32, ptr %1026, i32 3
  store i32 %1051, ptr %1052, align 4
  %1053 = load ptr, ptr %5, align 8
  %1054 = getelementptr i8, ptr %1053, i32 49688
  call void @msm_writel(i32 noundef 4, ptr noundef %1054) #8
  %1055 = load ptr, ptr %5, align 8
  %1056 = getelementptr i8, ptr %1055, i32 49712
  %1057 = call i32 @msm_readl(ptr noundef %1056) #8
  %1058 = getelementptr i32, ptr %1026, i32 4
  store i32 %1057, ptr %1058, align 4
  %1059 = load ptr, ptr %5, align 8
  %1060 = getelementptr i8, ptr %1059, i32 49688
  call void @msm_writel(i32 noundef 5, ptr noundef %1060) #8
  %1061 = load ptr, ptr %5, align 8
  %1062 = getelementptr i8, ptr %1061, i32 49712
  %1063 = call i32 @msm_readl(ptr noundef %1062) #8
  %1064 = getelementptr i32, ptr %1026, i32 5
  store i32 %1063, ptr %1064, align 4
  %1065 = load ptr, ptr %5, align 8
  %1066 = getelementptr i8, ptr %1065, i32 49688
  call void @msm_writel(i32 noundef 6, ptr noundef %1066) #8
  %1067 = load ptr, ptr %5, align 8
  %1068 = getelementptr i8, ptr %1067, i32 49712
  %1069 = call i32 @msm_readl(ptr noundef %1068) #8
  %1070 = getelementptr i32, ptr %1026, i32 6
  store i32 %1069, ptr %1070, align 4
  %1071 = load ptr, ptr %5, align 8
  %1072 = getelementptr i8, ptr %1071, i32 49688
  call void @msm_writel(i32 noundef 7, ptr noundef %1072) #8
  %1073 = load ptr, ptr %5, align 8
  %1074 = getelementptr i8, ptr %1073, i32 49712
  %1075 = call i32 @msm_readl(ptr noundef %1074) #8
  %1076 = getelementptr i32, ptr %1026, i32 7
  store i32 %1075, ptr %1076, align 4
  %1077 = load ptr, ptr %5, align 8
  %1078 = getelementptr i8, ptr %1077, i32 49688
  call void @msm_writel(i32 noundef 8, ptr noundef %1078) #8
  %1079 = load ptr, ptr %5, align 8
  %1080 = getelementptr i8, ptr %1079, i32 49712
  %1081 = call i32 @msm_readl(ptr noundef %1080) #8
  %1082 = getelementptr i32, ptr %1026, i32 8
  store i32 %1081, ptr %1082, align 4
  %1083 = load ptr, ptr %5, align 8
  %1084 = getelementptr i8, ptr %1083, i32 49688
  call void @msm_writel(i32 noundef 9, ptr noundef %1084) #8
  %1085 = load ptr, ptr %5, align 8
  %1086 = getelementptr i8, ptr %1085, i32 49712
  %1087 = call i32 @msm_readl(ptr noundef %1086) #8
  %1088 = getelementptr i32, ptr %1026, i32 9
  store i32 %1087, ptr %1088, align 4
  %1089 = load ptr, ptr %5, align 8
  %1090 = getelementptr i8, ptr %1089, i32 49688
  call void @msm_writel(i32 noundef 10, ptr noundef %1090) #8
  %1091 = load ptr, ptr %5, align 8
  %1092 = getelementptr i8, ptr %1091, i32 49712
  %1093 = call i32 @msm_readl(ptr noundef %1092) #8
  %1094 = getelementptr i32, ptr %1026, i32 10
  store i32 %1093, ptr %1094, align 4
  %1095 = load ptr, ptr %5, align 8
  %1096 = getelementptr i8, ptr %1095, i32 49688
  call void @msm_writel(i32 noundef 11, ptr noundef %1096) #8
  %1097 = load ptr, ptr %5, align 8
  %1098 = getelementptr i8, ptr %1097, i32 49712
  %1099 = call i32 @msm_readl(ptr noundef %1098) #8
  %1100 = getelementptr i32, ptr %1026, i32 11
  store i32 %1099, ptr %1100, align 4
  %1101 = getelementptr i32, ptr %1026, i32 12
  %1102 = add nuw nsw i32 %1025, 1
  %1103 = icmp eq i32 %1102, 4
  br i1 %1103, label %1104, label %1024

1104:                                             ; preds = %1024
  %1105 = load ptr, ptr %5, align 8
  %1106 = getelementptr i8, ptr %1105, i32 49156
  call void @msm_writel(i32 noundef %915, ptr noundef %1106) #8
  br label %1107

1107:                                             ; preds = %1104, %906, %896, %889
  br i1 %858, label %1172, label %1108

1108:                                             ; preds = %1107
  %1109 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1110 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1109, i32 noundef 3520, i32 noundef 24) #9
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1112, label %1114

1112:                                             ; preds = %1108
  %1113 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 16
  store ptr null, ptr %1113, align 4
  br label %1171

1114:                                             ; preds = %1108
  %1115 = load ptr, ptr %14, align 4
  store ptr %1110, ptr %14, align 4
  store ptr %13, ptr %1110, align 8
  %1116 = getelementptr inbounds %struct.list_head, ptr %1110, i32 0, i32 1
  store ptr %1115, ptr %1116, align 4
  store volatile ptr %1110, ptr %1115, align 4
  %1117 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %1110, i32 0, i32 1
  %1118 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 16
  store ptr %1117, ptr %1118, align 4
  %1119 = getelementptr i8, ptr %859, i32 4
  %1120 = getelementptr i8, ptr %859, i32 8
  %1121 = getelementptr i8, ptr %859, i32 12
  %1122 = getelementptr i8, ptr %859, i32 192
  %1123 = getelementptr i8, ptr %859, i32 188
  %1124 = call noalias align 64 ptr @__kmalloc(i32 noundef 2056, i32 noundef 3520) #10
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1126, label %1128

1126:                                             ; preds = %1114
  %1127 = getelementptr %struct.a6xx_state_memobj, ptr %1110, i32 1, i32 0, i32 1
  store ptr null, ptr %1127, align 4
  br label %1145

1128:                                             ; preds = %1114
  %1129 = load ptr, ptr %14, align 4
  store ptr %1124, ptr %14, align 4
  store ptr %13, ptr %1124, align 64
  %1130 = getelementptr inbounds %struct.list_head, ptr %1124, i32 0, i32 1
  store ptr %1129, ptr %1130, align 4
  store volatile ptr %1124, ptr %1129, align 4
  %1131 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %1124, i32 0, i32 1
  %1132 = getelementptr %struct.a6xx_state_memobj, ptr %1110, i32 1, i32 0, i32 1
  store ptr %1131, ptr %1132, align 4
  store ptr @a6xx_cx_debugbus_blocks, ptr %1117, align 8
  br label %1133

1133:                                             ; preds = %1133, %1128
  %1134 = phi ptr [ %1131, %1128 ], [ %1142, %1133 ]
  %1135 = phi i32 [ 0, %1128 ], [ %1143, %1133 ]
  %1136 = and i32 %1135, 255
  %1137 = or i32 %1136, 4864
  call void @msm_writel(i32 noundef %1137, ptr noundef %859) #8
  call void @msm_writel(i32 noundef %1137, ptr noundef %1119) #8
  call void @msm_writel(i32 noundef %1137, ptr noundef %1120) #8
  call void @msm_writel(i32 noundef %1137, ptr noundef %1121) #8
  %1138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1138(i32 noundef 214748) #8
  %1139 = call i32 @msm_readl(ptr noundef %1122) #8
  store i32 %1139, ptr %1134, align 4
  %1140 = call i32 @msm_readl(ptr noundef %1123) #8
  %1141 = getelementptr i32, ptr %1134, i32 1
  store i32 %1140, ptr %1141, align 4
  %1142 = getelementptr i32, ptr %1134, i32 2
  %1143 = add nuw i32 %1135, 1
  %1144 = icmp eq i32 %1143, 256
  br i1 %1144, label %1145, label %1133

1145:                                             ; preds = %1133, %1126
  %1146 = load ptr, ptr %1118, align 4
  %1147 = call noalias align 64 ptr @__kmalloc(i32 noundef 2056, i32 noundef 3520) #10
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1167, label %1149

1149:                                             ; preds = %1145
  %1150 = getelementptr %struct.a6xx_gpu_state_obj, ptr %1146, i32 1
  %1151 = load ptr, ptr %14, align 4
  store ptr %1147, ptr %14, align 4
  store ptr %13, ptr %1147, align 64
  %1152 = getelementptr inbounds %struct.list_head, ptr %1147, i32 0, i32 1
  store ptr %1151, ptr %1152, align 4
  store volatile ptr %1147, ptr %1151, align 4
  %1153 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %1147, i32 0, i32 1
  %1154 = getelementptr %struct.a6xx_gpu_state_obj, ptr %1146, i32 1, i32 1
  store ptr %1153, ptr %1154, align 4
  store ptr getelementptr inbounds ([2 x %struct.a6xx_debugbus_block], ptr @a6xx_cx_debugbus_blocks, i32 0, i32 1), ptr %1150, align 4
  br label %1155

1155:                                             ; preds = %1155, %1149
  %1156 = phi ptr [ %1153, %1149 ], [ %1164, %1155 ]
  %1157 = phi i32 [ 0, %1149 ], [ %1165, %1155 ]
  %1158 = and i32 %1157, 255
  %1159 = or i32 %1158, 5888
  call void @msm_writel(i32 noundef %1159, ptr noundef %859) #8
  call void @msm_writel(i32 noundef %1159, ptr noundef %1119) #8
  call void @msm_writel(i32 noundef %1159, ptr noundef %1120) #8
  call void @msm_writel(i32 noundef %1159, ptr noundef %1121) #8
  %1160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1160(i32 noundef 214748) #8
  %1161 = call i32 @msm_readl(ptr noundef %1122) #8
  store i32 %1161, ptr %1156, align 4
  %1162 = call i32 @msm_readl(ptr noundef %1123) #8
  %1163 = getelementptr i32, ptr %1156, i32 1
  store i32 %1162, ptr %1163, align 4
  %1164 = getelementptr i32, ptr %1156, i32 2
  %1165 = add nuw i32 %1157, 1
  %1166 = icmp eq i32 %1165, 256
  br i1 %1166, label %1169, label %1155

1167:                                             ; preds = %1145
  %1168 = getelementptr %struct.a6xx_gpu_state_obj, ptr %1146, i32 1, i32 1
  store ptr null, ptr %1168, align 4
  br label %1169

1169:                                             ; preds = %1167, %1155
  %1170 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 17
  store i32 2, ptr %1170, align 8
  br label %1171

1171:                                             ; preds = %1169, %1112
  call void @iounmap(ptr noundef nonnull %859) #8
  br label %1172

1172:                                             ; preds = %1171, %1107, %804
  %1173 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 20
  %1174 = load i8, ptr %1173, align 8, !range !8
  %1175 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %4, i32 0, i32 23
  %1176 = xor i8 %1174, 1
  store i8 %1176, ptr %1175, align 8
  br label %1177

1177:                                             ; preds = %1172, %101, %1
  %1178 = phi ptr [ %4, %1172 ], [ %4, %101 ], [ inttoptr (i32 -12 to ptr), %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret ptr %1178
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a6xx_gmu_gx_is_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_gpu_state_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #8, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #8, !srcloc !12
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %35, label %11, !prof !13

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #8
  br label %35

12:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %13 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %0, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @kvfree(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %0, i32 0, i32 19
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void @kvfree(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %0, i32 0, i32 22
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %26
  %31 = phi ptr [ %32, %30 ], [ %28, %26 ]
  %32 = load ptr, ptr %31, align 8
  tail call void @kfree(ptr noundef %31) #8
  %33 = icmp eq ptr %32, %27
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %26
  tail call void @adreno_gpu_state_destroy(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  br label %35

35:                                               ; preds = %34, %11, %9, %1
  %36 = phi i32 [ 1, %1 ], [ 1, %34 ], [ 0, %9 ], [ 0, %11 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a6xx_show(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %374, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 23
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %10) #8
  tail call void @adreno_show(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  %11 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %12, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.2, i64 noundef %15) #8
  %16 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %12, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %16, align 8
  %20 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %12, i32 0, i32 3
  tail call void @adreno_show_object(ptr noundef %2, ptr noundef %18, i32 noundef %19, ptr noundef %20) #8
  br label %21

21:                                               ; preds = %14, %7
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %22 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 19
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %64, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %23, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.2, i64 noundef %26) #8
  %27 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %23, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %28) #8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0) #8
  %29 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 0
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %30) #8
  %31 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %32) #8
  %33 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %34) #8
  %35 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %36) #8
  %37 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %38) #8
  %39 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %40) #8
  %41 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %42) #8
  %43 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %44) #8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 1) #8
  %45 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 0
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %46) #8
  %47 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 1
  %48 = load i32, ptr %47, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %48) #8
  %49 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 2
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %50) #8
  %51 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 3
  %52 = load i32, ptr %51, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %52) #8
  %53 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 4
  %54 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %54) #8
  %55 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 5
  %56 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %56) #8
  %57 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 6
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %58) #8
  %59 = getelementptr %struct.a6xx_gpu_state, ptr %1, i32 0, i32 21, i32 1, i32 7
  %60 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %60) #8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %61 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %23, i32 0, i32 2
  %62 = load i32, ptr %27, align 8
  %63 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %23, i32 0, i32 3
  tail call void @adreno_show_object(ptr noundef %2, ptr noundef %61, i32 noundef %62, ptr noundef %63) #8
  br label %64

64:                                               ; preds = %25, %21
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.8) #8
  %65 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 20
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i64, ptr %66, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.2, i64 noundef %69) #8
  %70 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %66, i32 0, i32 1
  %71 = load i32, ptr %70, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %71) #8
  %72 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %66, i32 0, i32 2
  %73 = load i32, ptr %70, align 8
  %74 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %66, i32 0, i32 3
  tail call void @adreno_show_object(ptr noundef %2, ptr noundef %72, i32 noundef %73, ptr noundef %74) #8
  br label %75

75:                                               ; preds = %68, %64
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.9) #8
  %76 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 3
  br label %81

81:                                               ; preds = %129, %79
  %82 = phi i32 [ %77, %79 ], [ %130, %129 ]
  %83 = phi i32 [ 0, %79 ], [ %131, %129 ]
  %84 = load ptr, ptr %80, align 8
  %85 = getelementptr %struct.a6xx_gpu_state_obj, ptr %84, i32 %83
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %129, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %86, align 4
  %90 = getelementptr %struct.a6xx_gpu_state_obj, ptr %84, i32 %83, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.a6xx_registers, ptr %86, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp ne ptr %91, null
  %95 = icmp ne i32 %93, 0
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %123, %88
  %98 = phi i32 [ %124, %123 ], [ 0, %88 ]
  %99 = phi i32 [ %125, %123 ], [ 0, %88 ]
  %100 = or i32 %99, 1
  %101 = getelementptr i32, ptr %89, i32 %100
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr i32, ptr %89, i32 %99
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %102, 1
  %106 = icmp eq i32 %105, %104
  br i1 %106, label %123, label %107

107:                                              ; preds = %97
  %108 = sub i32 %105, %104
  %109 = tail call i32 @llvm.umax.i32(i32 %108, i32 1) #8
  %110 = add i32 %109, %98
  br label %111

111:                                              ; preds = %119, %107
  %112 = phi i32 [ %121, %119 ], [ %104, %107 ]
  %113 = phi i32 [ %120, %119 ], [ %98, %107 ]
  %114 = getelementptr i32, ptr %91, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, -558907731
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = shl i32 %112, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.113, i32 noundef %118, i32 noundef %115) #8
  br label %119

119:                                              ; preds = %117, %111
  %120 = add i32 %113, 1
  %121 = add i32 %112, 1
  %122 = icmp eq i32 %120, %110
  br i1 %122, label %123, label %111

123:                                              ; preds = %119, %97
  %124 = phi i32 [ %98, %97 ], [ %110, %119 ]
  %125 = add i32 %99, 2
  %126 = icmp ult i32 %125, %93
  br i1 %126, label %97, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %76, align 4
  br label %129

129:                                              ; preds = %127, %88, %81
  %130 = phi i32 [ %128, %127 ], [ %82, %88 ], [ %82, %81 ]
  %131 = add nuw nsw i32 %83, 1
  %132 = icmp slt i32 %131, %130
  br i1 %132, label %81, label %133

133:                                              ; preds = %129, %75
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  %134 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %191

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 1
  br label %139

139:                                              ; preds = %187, %137
  %140 = phi i32 [ %135, %137 ], [ %188, %187 ]
  %141 = phi i32 [ 0, %137 ], [ %189, %187 ]
  %142 = load ptr, ptr %138, align 8
  %143 = getelementptr %struct.a6xx_gpu_state_obj, ptr %142, i32 %141
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %187, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %144, align 4
  %148 = getelementptr %struct.a6xx_gpu_state_obj, ptr %142, i32 %141, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.a6xx_registers, ptr %144, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = icmp ne ptr %149, null
  %153 = icmp ne i32 %151, 0
  %154 = and i1 %152, %153
  br i1 %154, label %155, label %187

155:                                              ; preds = %181, %146
  %156 = phi i32 [ %182, %181 ], [ 0, %146 ]
  %157 = phi i32 [ %183, %181 ], [ 0, %146 ]
  %158 = or i32 %157, 1
  %159 = getelementptr i32, ptr %147, i32 %158
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i32, ptr %147, i32 %157
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %160, 1
  %164 = icmp eq i32 %163, %162
  br i1 %164, label %181, label %165

165:                                              ; preds = %155
  %166 = sub i32 %163, %162
  %167 = tail call i32 @llvm.umax.i32(i32 %166, i32 1) #8
  %168 = add i32 %167, %156
  br label %169

169:                                              ; preds = %177, %165
  %170 = phi i32 [ %179, %177 ], [ %162, %165 ]
  %171 = phi i32 [ %178, %177 ], [ %156, %165 ]
  %172 = getelementptr i32, ptr %149, i32 %171
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, -558907731
  br i1 %174, label %177, label %175

175:                                              ; preds = %169
  %176 = shl i32 %170, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.113, i32 noundef %176, i32 noundef %173) #8
  br label %177

177:                                              ; preds = %175, %169
  %178 = add i32 %171, 1
  %179 = add i32 %170, 1
  %180 = icmp eq i32 %178, %168
  br i1 %180, label %181, label %169

181:                                              ; preds = %177, %155
  %182 = phi i32 [ %156, %155 ], [ %168, %177 ]
  %183 = add i32 %157, 2
  %184 = icmp ult i32 %183, %151
  br i1 %184, label %155, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr %134, align 4
  br label %187

187:                                              ; preds = %185, %146, %139
  %188 = phi i32 [ %186, %185 ], [ %140, %146 ], [ %140, %139 ]
  %189 = add nuw nsw i32 %141, 1
  %190 = icmp slt i32 %189, %188
  br i1 %190, label %139, label %191

191:                                              ; preds = %187, %133
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.11) #8
  %192 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 12
  %193 = load i32, ptr %192, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %217

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 11
  br label %197

197:                                              ; preds = %213, %195
  %198 = phi i32 [ %193, %195 ], [ %214, %213 ]
  %199 = phi i32 [ 0, %195 ], [ %215, %213 ]
  %200 = load ptr, ptr %196, align 8
  %201 = getelementptr %struct.a6xx_gpu_state_obj, ptr %200, i32 %199
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %213, label %204

204:                                              ; preds = %197
  %205 = load ptr, ptr %202, align 4
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.114) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef %205) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %206 = getelementptr inbounds %struct.a6xx_indexed_registers, ptr %202, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.115, i32 noundef %207) #8
  %208 = load i32, ptr %206, align 4
  %209 = shl i32 %208, 2
  %210 = getelementptr %struct.a6xx_gpu_state_obj, ptr %200, i32 %199, i32 1
  %211 = load ptr, ptr %210, align 4
  tail call fastcc void @print_ascii85(ptr noundef %2, i32 noundef %209, ptr noundef %211) #8
  %212 = load i32, ptr %192, align 4
  br label %213

213:                                              ; preds = %204, %197
  %214 = phi i32 [ %198, %197 ], [ %212, %204 ]
  %215 = add nuw nsw i32 %199, 1
  %216 = icmp slt i32 %215, %214
  br i1 %216, label %197, label %217

217:                                              ; preds = %213, %191
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.12) #8
  %218 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 6
  %219 = load i32, ptr %218, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %260

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 5
  br label %223

223:                                              ; preds = %256, %221
  %224 = phi i32 [ 0, %221 ], [ %257, %256 ]
  %225 = load ptr, ptr %222, align 8
  %226 = getelementptr %struct.a6xx_gpu_state_obj, ptr %225, i32 %224
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %256, label %229

229:                                              ; preds = %223
  %230 = load ptr, ptr %227, align 4
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.119) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef %230) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %231 = getelementptr inbounds %struct.a6xx_shader_block, ptr %227, i32 0, i32 2
  %232 = getelementptr %struct.a6xx_gpu_state_obj, ptr %225, i32 %224, i32 1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 0) #8
  %233 = load i32, ptr %231, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.121, i32 noundef %233) #8
  %234 = load ptr, ptr %232, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %229
  %237 = load i32, ptr %231, align 4
  %238 = shl i32 %237, 2
  tail call fastcc void @print_ascii85(ptr noundef %2, i32 noundef %238, ptr noundef nonnull %234) #8
  br label %239

239:                                              ; preds = %236, %229
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 1) #8
  %240 = load i32, ptr %231, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.121, i32 noundef %240) #8
  %241 = load ptr, ptr %232, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  %244 = load i32, ptr %231, align 4
  %245 = shl i32 %244, 2
  %246 = getelementptr i32, ptr %241, i32 %244
  tail call fastcc void @print_ascii85(ptr noundef %2, i32 noundef %245, ptr noundef %246) #8
  br label %247

247:                                              ; preds = %243, %239
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 2) #8
  %248 = load i32, ptr %231, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.121, i32 noundef %248) #8
  %249 = load ptr, ptr %232, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %256, label %251

251:                                              ; preds = %247
  %252 = load i32, ptr %231, align 4
  %253 = shl i32 %252, 2
  %254 = shl i32 %252, 1
  %255 = getelementptr i32, ptr %249, i32 %254
  tail call fastcc void @print_ascii85(ptr noundef %2, i32 noundef %253, ptr noundef %255) #8
  br label %256

256:                                              ; preds = %251, %247, %223
  %257 = add nuw nsw i32 %224, 1
  %258 = load i32, ptr %218, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %223, label %260

260:                                              ; preds = %256, %217
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.13) #8
  %261 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 8
  %262 = load i32, ptr %261, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 7
  br label %272

266:                                              ; preds = %289, %260
  %267 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 10
  %268 = load i32, ptr %267, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %313

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 9
  br label %293

272:                                              ; preds = %289, %264
  %273 = phi i32 [ %262, %264 ], [ %290, %289 ]
  %274 = phi i32 [ 0, %264 ], [ %291, %289 ]
  %275 = load ptr, ptr %265, align 8
  %276 = getelementptr %struct.a6xx_gpu_state_obj, ptr %275, i32 %274
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %289, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.a6xx_cluster, ptr %277, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.122) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef %281) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %282 = getelementptr inbounds %struct.a6xx_cluster, ptr %277, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.a6xx_cluster, ptr %277, i32 0, i32 3
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr %struct.a6xx_gpu_state_obj, ptr %275, i32 %274, i32 1
  %287 = load ptr, ptr %286, align 4
  tail call fastcc void @a6xx_show_cluster_data(ptr noundef %283, i32 noundef %285, ptr noundef %287, ptr noundef %2) #8
  %288 = load i32, ptr %261, align 4
  br label %289

289:                                              ; preds = %279, %272
  %290 = phi i32 [ %273, %272 ], [ %288, %279 ]
  %291 = add nuw nsw i32 %274, 1
  %292 = icmp slt i32 %291, %290
  br i1 %292, label %272, label %266

293:                                              ; preds = %309, %270
  %294 = phi i32 [ %268, %270 ], [ %310, %309 ]
  %295 = phi i32 [ 0, %270 ], [ %311, %309 ]
  %296 = load ptr, ptr %271, align 8
  %297 = getelementptr %struct.a6xx_gpu_state_obj, ptr %296, i32 %295
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %309, label %300

300:                                              ; preds = %293
  %301 = load ptr, ptr %298, align 4
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.122) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef %301) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %302 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, ptr %298, i32 0, i32 3
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, ptr %298, i32 0, i32 4
  %305 = load i32, ptr %304, align 4
  %306 = getelementptr %struct.a6xx_gpu_state_obj, ptr %296, i32 %295, i32 1
  %307 = load ptr, ptr %306, align 4
  tail call fastcc void @a6xx_show_cluster_data(ptr noundef %303, i32 noundef %305, ptr noundef %307, ptr noundef %2) #8
  %308 = load i32, ptr %267, align 4
  br label %309

309:                                              ; preds = %300, %293
  %310 = phi i32 [ %294, %293 ], [ %308, %300 ]
  %311 = add nuw nsw i32 %295, 1
  %312 = icmp slt i32 %311, %310
  br i1 %312, label %293, label %313

313:                                              ; preds = %309, %266
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.14) #8
  %314 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 14
  %315 = load i32, ptr %314, align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %340

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 13
  br label %319

319:                                              ; preds = %336, %317
  %320 = phi i32 [ %315, %317 ], [ %337, %336 ]
  %321 = phi i32 [ 0, %317 ], [ %338, %336 ]
  %322 = load ptr, ptr %318, align 8
  %323 = getelementptr %struct.a6xx_gpu_state_obj, ptr %322, i32 %321
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %336, label %326

326:                                              ; preds = %319
  %327 = getelementptr %struct.a6xx_gpu_state_obj, ptr %322, i32 %321, i32 1
  %328 = load ptr, ptr %327, align 4
  %329 = load ptr, ptr %324, align 4
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.127) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef %329) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %330 = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %324, i32 0, i32 2
  %331 = load i32, ptr %330, align 4
  %332 = shl i32 %331, 1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.126, i32 noundef %332) #8
  %333 = load i32, ptr %330, align 4
  %334 = shl i32 %333, 3
  tail call fastcc void @print_ascii85(ptr noundef %2, i32 noundef %334, ptr noundef %328) #8
  %335 = load i32, ptr %314, align 4
  br label %336

336:                                              ; preds = %326, %319
  %337 = phi i32 [ %320, %319 ], [ %335, %326 ]
  %338 = add nuw nsw i32 %321, 1
  %339 = icmp slt i32 %338, %337
  br i1 %339, label %319, label %340

340:                                              ; preds = %336, %313
  %341 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 15
  %342 = load ptr, ptr %341, align 8
  %343 = icmp eq ptr %342, null
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.125) #8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.126, i32 noundef 170) #8
  %345 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %342, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  tail call fastcc void @print_ascii85(ptr noundef %2, i32 noundef 680, ptr noundef %346) #8
  br label %347

347:                                              ; preds = %344, %340
  %348 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 17
  %349 = load i32, ptr %348, align 8
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %374

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 16
  br label %353

353:                                              ; preds = %370, %351
  %354 = phi i32 [ %349, %351 ], [ %371, %370 ]
  %355 = phi i32 [ 0, %351 ], [ %372, %370 ]
  %356 = load ptr, ptr %352, align 4
  %357 = getelementptr %struct.a6xx_gpu_state_obj, ptr %356, i32 %355
  %358 = load ptr, ptr %357, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %370, label %360

360:                                              ; preds = %353
  %361 = getelementptr %struct.a6xx_gpu_state_obj, ptr %356, i32 %355, i32 1
  %362 = load ptr, ptr %361, align 4
  %363 = load ptr, ptr %358, align 4
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.127) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef %363) #8
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %364 = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %358, i32 0, i32 2
  %365 = load i32, ptr %364, align 4
  %366 = shl i32 %365, 1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.126, i32 noundef %366) #8
  %367 = load i32, ptr %364, align 4
  %368 = shl i32 %367, 3
  tail call fastcc void @print_ascii85(ptr noundef %2, i32 noundef %368, ptr noundef %362) #8
  %369 = load i32, ptr %348, align 8
  br label %370

370:                                              ; preds = %360, %353
  %371 = phi i32 [ %354, %353 ], [ %369, %360 ]
  %372 = add nuw nsw i32 %355, 1
  %373 = icmp slt i32 %372, %371
  br i1 %373, label %353, label %374

374:                                              ; preds = %370, %347, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show_object(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_a6xx_get_gmu_registers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.a6xx_registers, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %21, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %22, %11 ]
  %14 = or i32 %13, 1
  %15 = getelementptr i32, ptr %10, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %10, i32 %13
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %12, 1
  %20 = add i32 %19, %16
  %21 = sub i32 %20, %18
  %22 = add i32 %13, 2
  %23 = icmp ult i32 %22, %7
  br i1 %23, label %11, label %24

24:                                               ; preds = %11
  %25 = shl i32 %21, 2
  %26 = add i32 %25, 8
  br label %27

27:                                               ; preds = %24, %5
  %28 = phi i32 [ 8, %5 ], [ %26, %24 ]
  store ptr %2, ptr %3, align 4
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %3, i32 0, i32 1
  store ptr null, ptr %32, align 4
  br label %86

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 22
  %35 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 22, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %29, ptr %35, align 4
  store ptr %34, ptr %29, align 64
  %37 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %29, ptr %36, align 4
  %38 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %29, i32 0, i32 1
  %39 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %3, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %86, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %44 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 4
  %45 = select i1 %4, ptr %44, ptr %43
  br label %46

46:                                               ; preds = %81, %42
  %47 = phi i32 [ %40, %42 ], [ %82, %81 ]
  %48 = phi i32 [ 0, %42 ], [ %83, %81 ]
  %49 = phi i32 [ 0, %42 ], [ %84, %81 ]
  %50 = load ptr, ptr %2, align 4
  %51 = or i32 %49, 1
  %52 = getelementptr i32, ptr %50, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i32, ptr %50, i32 %49
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %53, 1
  %57 = icmp eq i32 %56, %55
  br i1 %57, label %81, label %58

58:                                               ; preds = %46
  %59 = sub i32 %56, %55
  %60 = call i32 @llvm.umax.i32(i32 %59, i32 1)
  br label %61

61:                                               ; preds = %75, %58
  %62 = phi i32 [ %78, %75 ], [ %55, %58 ]
  %63 = phi i32 [ %73, %75 ], [ 0, %58 ]
  %64 = phi i32 [ %71, %75 ], [ %48, %58 ]
  %65 = add i32 %62, %63
  %66 = load ptr, ptr %45, align 4
  %67 = shl i32 %65, 2
  %68 = getelementptr i8, ptr %66, i32 %67
  %69 = tail call i32 @msm_readl(ptr noundef %68) #8
  %70 = load ptr, ptr %39, align 4
  %71 = add i32 %64, 1
  %72 = getelementptr i32, ptr %70, i32 %64
  store i32 %69, ptr %72, align 4
  %73 = add nuw i32 %63, 1
  %74 = icmp eq i32 %73, %60
  br i1 %74, label %79, label %75

75:                                               ; preds = %61
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr i32, ptr %76, i32 %49
  %78 = load i32, ptr %77, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load i32, ptr %6, align 4
  br label %81

81:                                               ; preds = %79, %46
  %82 = phi i32 [ %47, %46 ], [ %80, %79 ]
  %83 = phi i32 [ %48, %46 ], [ %71, %79 ]
  %84 = add i32 %49, 2
  %85 = icmp ult i32 %84, %82
  br i1 %85, label %46, label %86

86:                                               ; preds = %81, %33, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_get_ahb_gpu_registers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.a6xx_registers, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 4
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %20, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %21, %10 ]
  %13 = or i32 %12, 1
  %14 = getelementptr i32, ptr %9, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i32, ptr %9, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %11, 1
  %19 = add i32 %18, %15
  %20 = sub i32 %19, %17
  %21 = add i32 %12, 2
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %10, label %23

23:                                               ; preds = %10
  %24 = shl i32 %20, 2
  %25 = add i32 %24, 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = phi i32 [ 8, %4 ], [ %25, %23 ]
  store ptr %2, ptr %3, align 4
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %3, i32 0, i32 1
  store ptr null, ptr %31, align 4
  br label %90

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 22
  %34 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 22, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr %28, ptr %34, align 4
  store ptr %33, ptr %28, align 64
  %36 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %28, ptr %35, align 4
  %37 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %28, i32 0, i32 1
  %38 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %3, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %43

43:                                               ; preds = %85, %41
  %44 = phi i32 [ %39, %41 ], [ %86, %85 ]
  %45 = phi i32 [ 0, %41 ], [ %87, %85 ]
  %46 = phi i32 [ 0, %41 ], [ %88, %85 ]
  %47 = load ptr, ptr %2, align 4
  %48 = or i32 %46, 1
  %49 = getelementptr i32, ptr %47, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i32, ptr %47, i32 %46
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %50, 1
  %54 = icmp eq i32 %53, %52
  br i1 %54, label %85, label %55

55:                                               ; preds = %43
  %56 = sub i32 %53, %52
  %57 = call i32 @llvm.umax.i32(i32 %56, i32 1)
  %58 = load ptr, ptr %42, align 8
  %59 = shl i32 %52, 2
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = tail call i32 @msm_readl(ptr noundef %60) #8
  %62 = load ptr, ptr %38, align 4
  %63 = add i32 %45, 1
  %64 = getelementptr i32, ptr %62, i32 %45
  store i32 %61, ptr %64, align 4
  %65 = icmp ult i32 %56, 2
  br i1 %65, label %82, label %66

66:                                               ; preds = %66, %55
  %67 = phi i32 [ %80, %66 ], [ 1, %55 ]
  %68 = phi i32 [ %78, %66 ], [ %63, %55 ]
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr i32, ptr %69, i32 %46
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %67
  %73 = load ptr, ptr %42, align 8
  %74 = shl i32 %72, 2
  %75 = getelementptr i8, ptr %73, i32 %74
  %76 = tail call i32 @msm_readl(ptr noundef %75) #8
  %77 = load ptr, ptr %38, align 4
  %78 = add i32 %68, 1
  %79 = getelementptr i32, ptr %77, i32 %68
  store i32 %76, ptr %79, align 4
  %80 = add nuw i32 %67, 1
  %81 = icmp eq i32 %80, %57
  br i1 %81, label %82, label %66

82:                                               ; preds = %66, %55
  %83 = phi i32 [ %63, %55 ], [ %78, %66 ]
  %84 = load i32, ptr %5, align 4
  br label %85

85:                                               ; preds = %82, %43
  %86 = phi i32 [ %44, %43 ], [ %84, %82 ]
  %87 = phi i32 [ %45, %43 ], [ %83, %82 ]
  %88 = add i32 %46, 2
  %89 = icmp ult i32 %88, %86
  br i1 %89, label %43, label %90

90:                                               ; preds = %85, %32, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_crashdumper_run(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %9 = tail call zeroext i1 @a6xx_gmu_sptprac_is_on(ptr noundef %8) #8
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %11 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %1, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 9216
  tail call void @msm_writel(i32 noundef %13, ptr noundef %16) #8
  %17 = lshr i64 %12, 32
  %18 = trunc i64 %17 to i32
  %19 = load ptr, ptr %14, align 8
  %20 = getelementptr i8, ptr %19, i32 9220
  tail call void @msm_writel(i32 noundef %18, ptr noundef %20) #8
  %21 = load ptr, ptr %14, align 8
  %22 = getelementptr i8, ptr %21, i32 9224
  tail call void @msm_writel(i32 noundef 1, ptr noundef %22) #8
  %23 = tail call i64 @ktime_get() #8
  %24 = add i64 %23, 10000000
  %25 = load ptr, ptr %14, align 8
  %26 = getelementptr i8, ptr %25, i32 9228
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %33, %10
  %31 = tail call i64 @ktime_get() #8
  %32 = icmp sgt i64 %31, %24
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %34 = load ptr, ptr %14, align 8
  %35 = getelementptr i8, ptr %34, i32 9228
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %30, label %46

39:                                               ; preds = %30
  %40 = load ptr, ptr %14, align 8
  %41 = getelementptr i8, ptr %40, i32 9228
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 -110, i32 0
  br label %46

46:                                               ; preds = %39, %33, %10
  %47 = phi i32 [ 0, %10 ], [ %45, %39 ], [ 0, %33 ]
  %48 = load ptr, ptr %14, align 8
  %49 = getelementptr i8, ptr %48, i32 9224
  tail call void @msm_writel(i32 noundef 0, ptr noundef %49) #8
  br label %50

50:                                               ; preds = %46, %7, %2
  %51 = phi i32 [ %47, %46 ], [ -22, %2 ], [ -22, %7 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a6xx_gmu_sptprac_is_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_get_debugbus_block(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 3
  %8 = add i32 %7, 8
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %3, i32 0, i32 1
  store ptr null, ptr %12, align 4
  br label %53

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 22
  %15 = getelementptr inbounds %struct.a6xx_gpu_state, ptr %1, i32 0, i32 22, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %9, ptr %15, align 4
  store ptr %14, ptr %9, align 64
  %17 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %9, ptr %16, align 4
  %18 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %9, i32 0, i32 1
  %19 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %3, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store ptr %2, ptr %3, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %18, %22 ], [ %49, %25 ]
  %27 = phi i32 [ 0, %22 ], [ %50, %25 ]
  %28 = load i32, ptr %23, align 4
  %29 = and i32 %27, 255
  %30 = shl i32 %28, 8
  %31 = and i32 %30, 65280
  %32 = or i32 %31, %29
  %33 = load ptr, ptr %24, align 8
  %34 = getelementptr i8, ptr %33, i32 6144
  tail call void @msm_writel(i32 noundef %32, ptr noundef %34) #8
  %35 = load ptr, ptr %24, align 8
  %36 = getelementptr i8, ptr %35, i32 6148
  tail call void @msm_writel(i32 noundef %32, ptr noundef %36) #8
  %37 = load ptr, ptr %24, align 8
  %38 = getelementptr i8, ptr %37, i32 6152
  tail call void @msm_writel(i32 noundef %32, ptr noundef %38) #8
  %39 = load ptr, ptr %24, align 8
  %40 = getelementptr i8, ptr %39, i32 6156
  tail call void @msm_writel(i32 noundef %32, ptr noundef %40) #8
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #8
  %42 = load ptr, ptr %24, align 8
  %43 = getelementptr i8, ptr %42, i32 6336
  %44 = tail call i32 @msm_readl(ptr noundef %43) #8
  store i32 %44, ptr %26, align 4
  %45 = load ptr, ptr %24, align 8
  %46 = getelementptr i8, ptr %45, i32 6332
  %47 = tail call i32 @msm_readl(ptr noundef %46) #8
  %48 = getelementptr i32, ptr %26, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr i32, ptr %26, i32 2
  %50 = add nuw i32 %27, 1
  %51 = load i32, ptr %5, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %25, label %53

53:                                               ; preds = %25, %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_state_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_ascii85(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !19
  %5 = icmp ult i32 %1, 4
  br i1 %5, label %63, label %6

6:                                                ; preds = %3
  %7 = lshr i32 %1, 2
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %16, %8 ], [ 0, %6 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %6 ]
  %11 = getelementptr i32, ptr %2, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %10, 2
  %15 = add nuw i32 %14, 4
  %16 = select i1 %13, i32 %9, i32 %15
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %8

19:                                               ; preds = %8
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %19
  tail call void @drm_puts(ptr noundef %0, ptr noundef nonnull @.str.116) #8
  tail call void @drm_puts(ptr noundef %0, ptr noundef nonnull @.str.117) #8
  %22 = add i32 %16, 3
  %23 = sdiv i32 %22, 4
  %24 = icmp sgt i32 %22, 3
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %4, i32 5
  %27 = getelementptr inbounds i8, ptr %4, i32 4
  %28 = getelementptr inbounds i8, ptr %4, i32 3
  %29 = getelementptr inbounds i8, ptr %4, i32 2
  %30 = getelementptr inbounds i8, ptr %4, i32 1
  br label %31

31:                                               ; preds = %58, %25
  %32 = phi i32 [ 0, %25 ], [ %60, %58 ]
  %33 = getelementptr i32, ptr %2, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  store i8 0, ptr %26, align 1
  %37 = freeze i32 %34
  %38 = udiv i32 %37, 85
  %39 = mul i32 %38, 85
  %40 = sub i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = add nuw nsw i8 %41, 33
  store i8 %42, ptr %27, align 1
  %43 = urem i32 %38, 85
  %44 = trunc i32 %43 to i8
  %45 = add nuw nsw i8 %44, 33
  store i8 %45, ptr %28, align 1
  %46 = udiv i32 %34, 7225
  %47 = urem i32 %46, 85
  %48 = trunc i32 %47 to i8
  %49 = add nuw nsw i8 %48, 33
  store i8 %49, ptr %29, align 1
  %50 = udiv i32 %34, 614125
  %51 = trunc i32 %50 to i16
  %52 = urem i16 %51, 85
  %53 = trunc i16 %52 to i8
  %54 = add nuw nsw i8 %53, 33
  store i8 %54, ptr %30, align 1
  %55 = udiv i32 %34, 52200625
  %56 = trunc i32 %55 to i8
  %57 = add nuw nsw i8 %56, 33
  store i8 %57, ptr %4, align 1
  br label %58

58:                                               ; preds = %36, %31
  %59 = phi ptr [ @.str.118, %31 ], [ %4, %36 ]
  call void @drm_puts(ptr noundef %0, ptr noundef nonnull %59) #8
  %60 = add nuw nsw i32 %32, 1
  %61 = icmp eq i32 %60, %23
  br i1 %61, label %62, label %31

62:                                               ; preds = %58, %21
  call void @drm_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #8
  br label %63

63:                                               ; preds = %62, %19, %3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_show_cluster_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %3, ptr noundef nonnull @.str.123, i32 noundef 0) #8
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %3, ptr noundef nonnull @.str.123, i32 noundef 1) #8
  br label %68

7:                                                ; preds = %33, %4
  %8 = phi i32 [ %35, %33 ], [ 0, %4 ]
  %9 = phi i32 [ %34, %33 ], [ 0, %4 ]
  %10 = or i32 %8, 1
  %11 = getelementptr i32, ptr %0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i32, ptr %0, i32 %8
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, 1
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %33, label %17

17:                                               ; preds = %7
  %18 = sub i32 %15, %14
  %19 = call i32 @llvm.umax.i32(i32 %18, i32 1)
  %20 = add i32 %9, %19
  br label %21

21:                                               ; preds = %29, %17
  %22 = phi i32 [ %31, %29 ], [ %14, %17 ]
  %23 = phi i32 [ %30, %29 ], [ %9, %17 ]
  %24 = getelementptr i32, ptr %2, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -558907731
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = shl i32 %22, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %3, ptr noundef nonnull @.str.124, i32 noundef %28, i32 noundef %25) #8
  br label %29

29:                                               ; preds = %27, %21
  %30 = add i32 %23, 1
  %31 = add i32 %22, 1
  %32 = icmp eq i32 %30, %20
  br i1 %32, label %33, label %21

33:                                               ; preds = %29, %7
  %34 = phi i32 [ %9, %7 ], [ %20, %29 ]
  %35 = add i32 %8, 2
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %7, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %3, ptr noundef nonnull @.str.123, i32 noundef 1) #8
  br i1 %5, label %38, label %68

38:                                               ; preds = %64, %37
  %39 = phi i32 [ %66, %64 ], [ 0, %37 ]
  %40 = phi i32 [ %65, %64 ], [ %34, %37 ]
  %41 = or i32 %39, 1
  %42 = getelementptr i32, ptr %0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i32, ptr %0, i32 %39
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %43, 1
  %47 = icmp eq i32 %46, %45
  br i1 %47, label %64, label %48

48:                                               ; preds = %38
  %49 = sub i32 %46, %45
  %50 = call i32 @llvm.umax.i32(i32 %49, i32 1)
  %51 = add i32 %40, %50
  br label %52

52:                                               ; preds = %60, %48
  %53 = phi i32 [ %62, %60 ], [ %45, %48 ]
  %54 = phi i32 [ %61, %60 ], [ %40, %48 ]
  %55 = getelementptr i32, ptr %2, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, -558907731
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = shl i32 %53, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %3, ptr noundef nonnull @.str.124, i32 noundef %59, i32 noundef %56) #8
  br label %60

60:                                               ; preds = %58, %52
  %61 = add i32 %54, 1
  %62 = add i32 %53, 1
  %63 = icmp eq i32 %61, %51
  br i1 %63, label %64, label %52

64:                                               ; preds = %60, %38
  %65 = phi i32 [ %40, %38 ], [ %51, %60 ]
  %66 = add i32 %39, 2
  %67 = icmp slt i32 %66, %1
  br i1 %67, label %38, label %68

68:                                               ; preds = %64, %37, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148024252}
!11 = !{i64 420413, i64 2147910384, i64 2147910410, i64 2147910457, i64 2147910479, i64 2147910507, i64 2147910527}
!12 = !{i64 2147926411, i64 2147926443, i64 2147926472, i64 2147926506, i64 2147926537, i64 2147926560}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148936604}
!15 = !{i64 2156429350}
!16 = !{i64 5553390}
!17 = !{i64 2156430992}
!18 = !{i64 2156431386}
!19 = !{!"auto-init"}
