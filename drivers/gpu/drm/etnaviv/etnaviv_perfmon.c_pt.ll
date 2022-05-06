; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_perfmon.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_perfmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_pm_domain_meta = type { i32, ptr, i32 }
%struct.etnaviv_pm_domain = type { [64 x i8], i32, i32, i8, ptr }
%struct.etnaviv_pm_signal = type { [64 x i8], i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_etnaviv_pm_domain = type { i32, i8, i8, i16, [64 x i8] }
%struct.drm_etnaviv_pm_signal = type { i32, i8, i8, i16, i16, [64 x i8] }
%struct.drm_etnaviv_gem_submit_pmr = type { i32, i8, i8, i16, i32, i32, i32 }
%struct.etnaviv_perfmon_request = type { i32, i8, i8, i32, ptr, i32 }

@doms_meta = internal unnamed_addr constant [3 x %struct.etnaviv_pm_domain_meta] [%struct.etnaviv_pm_domain_meta { i32 4, ptr @doms_3d, i32 8 }, %struct.etnaviv_pm_domain_meta { i32 512, ptr @doms_2d, i32 1 }, %struct.etnaviv_pm_domain_meta { i32 67108864, ptr @doms_vg, i32 0 }], align 4
@doms_3d = internal constant [8 x %struct.etnaviv_pm_domain] [%struct.etnaviv_pm_domain { [64 x i8] c"HI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1132, i32 1144, i8 7, ptr @.compoundliteral }, %struct.etnaviv_pm_domain { [64 x i8] c"PE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1108, i32 1136, i8 4, ptr @.compoundliteral.1 }, %struct.etnaviv_pm_domain { [64 x i8] c"SH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1116, i32 1136, i8 9, ptr @.compoundliteral.2 }, %struct.etnaviv_pm_domain { [64 x i8] c"PA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1120, i32 1140, i8 6, ptr @.compoundliteral.3 }, %struct.etnaviv_pm_domain { [64 x i8] c"SE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1124, i32 1140, i8 2, ptr @.compoundliteral.4 }, %struct.etnaviv_pm_domain { [64 x i8] c"RA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1096, i32 1140, i8 7, ptr @.compoundliteral.5 }, %struct.etnaviv_pm_domain { [64 x i8] c"TX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1100, i32 1140, i8 9, ptr @.compoundliteral.6 }, %struct.etnaviv_pm_domain { [64 x i8] c"MC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1128, i32 1144, i8 3, ptr @.compoundliteral.7 }], align 4
@doms_2d = internal constant [1 x %struct.etnaviv_pm_domain] [%struct.etnaviv_pm_domain { [64 x i8] c"PE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1108, i32 1136, i8 1, ptr @.compoundliteral.8 }], align 4
@doms_vg = internal constant [0 x %struct.etnaviv_pm_domain] zeroinitializer, align 4
@.compoundliteral = internal constant [7 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_READ_BYTES8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, ptr @pipe_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_WRITE_BYTES8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 68, ptr @pipe_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_CYCLES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @hi_total_cycle_read }, %struct.etnaviv_pm_signal { [64 x i8] c"IDLE_CYCLES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @hi_total_idle_cycle_read }, %struct.etnaviv_pm_signal { [64 x i8] c"AXI_CYCLES_READ_REQUEST_STALLED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"AXI_CYCLES_WRITE_REQUEST_STALLED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"AXI_CYCLES_WRITE_DATA_STALLED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 512, ptr @perf_reg_read }], align 4
@.compoundliteral.1 = internal constant [4 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_KILLED_BY_COLOR_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_KILLED_BY_DEPTH_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 65536, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_DRAWN_BY_COLOR_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 131072, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_DRAWN_BY_DEPTH_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 196608, ptr @pipe_perf_reg_read }], align 4
@.compoundliteral.2 = internal constant [9 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"SHADER_CYCLES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 67108864, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PS_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 117440512, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"RENDERED_PIXEL_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 134217728, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VS_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 150994944, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"RENDERED_VERTICE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 167772160, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VTX_BRANCH_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184549376, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VTX_TEXLD_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 201326592, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PXL_BRANCH_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 218103808, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PXL_TEXLD_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 234881024, ptr @pipe_perf_reg_read }], align 4
@.compoundliteral.3 = internal constant [6 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"INPUT_VTX_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"INPUT_PRIM_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"OUTPUT_PRIM_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"DEPTH_CLIPPED_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TRIVIAL_REJECTED_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CULLED_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, ptr @pipe_perf_reg_read }], align 4
@.compoundliteral.4 = internal constant [2 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"CULLED_TRIANGLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CULLED_LINES_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256, ptr @perf_reg_read }], align 4
@.compoundliteral.5 = internal constant [7 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"VALID_PIXEL_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_QUAD_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 65536, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VALID_QUAD_COUNT_AFTER_EARLY_Z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 131072, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_PRIMITIVE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 196608, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIPE_CACHE_MISS_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 589824, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PREFETCH_CACHE_MISS_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 655360, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CULLED_QUAD_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 720896, ptr @perf_reg_read }], align 4
@.compoundliteral.6 = internal constant [9 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_BILINEAR_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_TRILINEAR_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16777216, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_DISCARDED_TEXTURE_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33554432, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_TEXTURE_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50331648, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"MEM_READ_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 83886080, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"MEM_READ_IN_8B_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100663296, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CACHE_MISS_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 117440512, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CACHE_HIT_TEXEL_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 134217728, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CACHE_MISS_TEXEL_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 150994944, ptr @perf_reg_read }], align 4
@.compoundliteral.7 = internal constant [3 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_READ_REQ_8B_FROM_PIPELINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_READ_REQ_8B_FROM_IP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_WRITE_REQ_8B_FROM_PIPELINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, ptr @perf_reg_read }], align 4
@.compoundliteral.8 = internal constant [1 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"PIXELS_RENDERED_2D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 720896, ptr @pipe_perf_reg_read }], align 4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_pm_query_dom(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = and i32 %5, 8
  %7 = lshr i32 %4, 9
  %8 = and i32 %7, 1
  %9 = or i32 %8, %6
  %10 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp ugt i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = and i32 %4, 4
  %16 = icmp eq i32 %15, 0
  %17 = icmp ult i8 %11, 8
  %18 = getelementptr %struct.etnaviv_pm_domain, ptr @doms_3d, i32 %12
  %19 = select i1 %17, ptr %18, ptr null
  %20 = select i1 %16, ptr null, ptr %19
  %21 = or i1 %16, %17
  %22 = select i1 %21, i32 0, i32 -8
  %23 = and i32 %4, 512
  %24 = icmp eq i32 %23, 0
  %25 = sub nsw i32 0, %12
  %26 = icmp eq i32 %22, %25
  %27 = select i1 %26, ptr @doms_2d, ptr %20
  %28 = select i1 %24, ptr %20, ptr %27
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %1, i32 0, i32 2
  store i8 %11, ptr %31, align 1
  %32 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %28, i32 0, i32 3
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  %35 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %1, i32 0, i32 3
  store i16 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %1, i32 0, i32 4
  %37 = tail call ptr @strncpy(ptr noundef %36, ptr noundef nonnull %28, i32 noundef 64)
  %38 = add i8 %11, 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %9, %39
  %41 = select i1 %40, i8 -1, i8 %38
  store i8 %41, ptr %10, align 4
  br label %42

42:                                               ; preds = %30, %14, %2
  %43 = phi i32 [ 0, %30 ], [ -22, %2 ], [ -22, %14 ]
  ret i32 %43
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_pm_query_sig(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = and i32 %5, 8
  %7 = lshr i32 %4, 9
  %8 = and i32 %7, 1
  %9 = or i32 %8, %6
  %10 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp ugt i32 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = and i32 %4, 4
  %16 = icmp eq i32 %15, 0
  %17 = icmp ult i8 %11, 8
  %18 = getelementptr %struct.etnaviv_pm_domain, ptr @doms_3d, i32 %12
  %19 = select i1 %17, ptr %18, ptr null
  %20 = select i1 %16, ptr null, ptr %19
  %21 = or i1 %16, %17
  %22 = select i1 %21, i32 0, i32 -8
  %23 = and i32 %4, 512
  %24 = icmp eq i32 %23, 0
  %25 = sub nsw i32 0, %12
  %26 = icmp eq i32 %22, %25
  %27 = select i1 %26, ptr @doms_2d, ptr %20
  %28 = select i1 %24, ptr %20, ptr %27
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %1, i32 0, i32 3
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %28, i32 0, i32 3
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i16
  %36 = icmp ult i16 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = zext i16 %32 to i32
  %39 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %28, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.etnaviv_pm_signal, ptr %40, i32 %38
  %42 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %1, i32 0, i32 4
  store i16 %32, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %1, i32 0, i32 5
  %44 = tail call ptr @strncpy(ptr noundef %43, ptr noundef %41, i32 noundef 64)
  %45 = add nuw i16 %32, 1
  store i16 %45, ptr %31, align 2
  %46 = load i8, ptr %33, align 4
  %47 = zext i8 %46 to i16
  %48 = icmp eq i16 %45, %47
  %49 = select i1 %48, i16 -1, i16 %45
  store i16 %49, ptr %31, align 2
  br label %50

50:                                               ; preds = %37, %30, %14, %2
  %51 = phi i32 [ 0, %37 ], [ -22, %2 ], [ -22, %14 ], [ -22, %30 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_pm_req_validate(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr [3 x %struct.etnaviv_pm_domain_meta], ptr @doms_meta, i32 0, i32 %1, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr [3 x %struct.etnaviv_pm_domain_meta], ptr @doms_meta, i32 0, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, ptr %0, i32 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr %struct.etnaviv_pm_domain, ptr %11, i32 %5, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  %17 = icmp ult i16 %13, %16
  %18 = select i1 %17, i32 0, i32 -22
  br label %19

19:                                               ; preds = %9, %2
  %20 = phi i32 [ -22, %2 ], [ %18, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_perfmon_process(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr [3 x %struct.etnaviv_pm_domain_meta], ptr @doms_meta, i32 0, i32 %2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.etnaviv_pm_domain, ptr %7, i32 %10
  %12 = getelementptr %struct.etnaviv_pm_domain, ptr %7, i32 %10, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %1, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.etnaviv_pm_signal, ptr %13, i32 %16
  %18 = getelementptr %struct.etnaviv_pm_signal, ptr %13, i32 %16, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %11, ptr noundef %17) #5
  %21 = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i32, ptr %5, i32 %22
  store i32 %20, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_reg_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 24
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %6, -15728641
  br i1 %9, label %28, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.etnaviv_pm_signal, ptr %2, i32 0, i32 1
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %25, %13 ]
  %15 = phi i32 [ 0, %11 ], [ %24, %13 ]
  %16 = shl i32 %14, 20
  %17 = and i32 %16, 15728640
  %18 = or i32 %17, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #5, !srcloc !11
  %20 = load i32, ptr %12, align 4
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr i8, ptr %21, i32 %20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %24 = add i32 %23, %15
  %25 = add nuw i32 %14, 1
  %26 = load i32, ptr %7, align 8
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %13, label %28

28:                                               ; preds = %13, %3
  %29 = phi i32 [ 0, %3 ], [ %24, %13 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %30 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %10) #5, !srcloc !11
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi_total_cycle_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %7 [
    i32 2176, label %6
    i32 8192, label %6
    i32 8448, label %6
  ]

6:                                                ; preds = %3, %3, %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 1080, %6 ], [ 120, %3 ]
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi_total_idle_cycle_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %7 [
    i32 2176, label %6
    i32 8192, label %6
    i32 8448, label %6
  ]

6:                                                ; preds = %3, %3, %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 120, %6 ], [ 124, %3 ]
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_reg_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.etnaviv_pm_signal, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #5, !srcloc !11
  %11 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr i8, ptr %13, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_perf_reg_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 24
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %6, -15728641
  br i1 %9, label %34, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %1, i32 0, i32 2
  %13 = getelementptr inbounds %struct.etnaviv_pm_signal, ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %1, i32 0, i32 1
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ 0, %11 ], [ %31, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %30, %15 ]
  %18 = shl i32 %16, 20
  %19 = and i32 %18, 15728640
  %20 = or i32 %19, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #5, !srcloc !11
  %22 = load i32, ptr %12, align 4
  %23 = load i32, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr i8, ptr %24, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !11
  %26 = load i32, ptr %14, align 4
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %30 = add i32 %29, %17
  %31 = add nuw i32 %16, 1
  %32 = load i32, ptr %7, align 8
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %15, label %34

34:                                               ; preds = %15, %3
  %35 = phi i32 [ 0, %3 ], [ %30, %15 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %10) #5, !srcloc !11
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
!8 = !{i64 3259779}
!9 = !{i64 2155144855}
!10 = !{i64 2155144229}
!11 = !{i64 3259361}
