; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.panfrost_exception_info = type { ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.85, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.85 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@panfrost_device_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&pfdev->sched_lock\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"clk init failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"devfreq init failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"reset init failed %d\0A\00", align 1
@panfrost_exception_infos = internal unnamed_addr constant [240 x %struct.panfrost_exception_info] [%struct.panfrost_exception_info { ptr @.str.20 }, %struct.panfrost_exception_info { ptr @.str.21 }, %struct.panfrost_exception_info { ptr @.str.22 }, %struct.panfrost_exception_info { ptr @.str.23 }, %struct.panfrost_exception_info { ptr @.str.24 }, %struct.panfrost_exception_info { ptr @.str.25 }, %struct.panfrost_exception_info { ptr @.str.26 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.27 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.28 }, %struct.panfrost_exception_info { ptr @.str.29 }, %struct.panfrost_exception_info { ptr @.str.30 }, %struct.panfrost_exception_info { ptr @.str.31 }, %struct.panfrost_exception_info { ptr @.str.32 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.33 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.34 }, %struct.panfrost_exception_info { ptr @.str.35 }, %struct.panfrost_exception_info { ptr @.str.36 }, %struct.panfrost_exception_info { ptr @.str.37 }, %struct.panfrost_exception_info { ptr @.str.38 }, %struct.panfrost_exception_info { ptr @.str.39 }, %struct.panfrost_exception_info { ptr @.str.40 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.41 }, %struct.panfrost_exception_info { ptr @.str.42 }, %struct.panfrost_exception_info { ptr @.str.43 }, %struct.panfrost_exception_info { ptr @.str.44 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.45 }, %struct.panfrost_exception_info { ptr @.str.46 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.47 }, %struct.panfrost_exception_info { ptr @.str.48 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.49 }, %struct.panfrost_exception_info { ptr @.str.50 }, %struct.panfrost_exception_info { ptr @.str.51 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.52 }, %struct.panfrost_exception_info { ptr @.str.53 }, %struct.panfrost_exception_info { ptr @.str.54 }, %struct.panfrost_exception_info { ptr @.str.55 }, %struct.panfrost_exception_info { ptr @.str.56 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.57 }, %struct.panfrost_exception_info { ptr @.str.58 }, %struct.panfrost_exception_info { ptr @.str.59 }, %struct.panfrost_exception_info { ptr @.str.60 }, %struct.panfrost_exception_info { ptr @.str.61 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.62 }, %struct.panfrost_exception_info { ptr @.str.63 }, %struct.panfrost_exception_info { ptr @.str.64 }, %struct.panfrost_exception_info { ptr @.str.65 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.66 }, %struct.panfrost_exception_info { ptr @.str.67 }, %struct.panfrost_exception_info { ptr @.str.68 }, %struct.panfrost_exception_info { ptr @.str.69 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.70 }, %struct.panfrost_exception_info { ptr @.str.71 }, %struct.panfrost_exception_info { ptr @.str.72 }, %struct.panfrost_exception_info { ptr @.str.73 }, %struct.panfrost_exception_info { ptr @.str.74 }, %struct.panfrost_exception_info { ptr @.str.75 }, %struct.panfrost_exception_info { ptr @.str.76 }, %struct.panfrost_exception_info { ptr @.str.77 }, %struct.panfrost_exception_info { ptr @.str.78 }, %struct.panfrost_exception_info { ptr @.str.79 }, %struct.panfrost_exception_info { ptr @.str.80 }, %struct.panfrost_exception_info { ptr @.str.81 }, %struct.panfrost_exception_info { ptr @.str.82 }, %struct.panfrost_exception_info { ptr @.str.83 }, %struct.panfrost_exception_info { ptr @.str.84 }, %struct.panfrost_exception_info { ptr @.str.85 }], align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/panfrost/panfrost_device.c\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unknown exception type\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"get clock failed %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"clock rate = %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"get bus_clock failed %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"bus_clock rate = %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"failed to enable regulators: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"get reset failed %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"Incorrect number of power domains: %d provided, %d needed\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Too many supplies in compatible structure.\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"failed to get pm-domain %s(%d): %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"adding device link failed!\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"INTERRUPTED\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"STOPPED\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"TERMINATED\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"KABOOM\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"EUREKA\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"JOB_CONFIG_FAULT\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"JOB_POWER_FAULT\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"JOB_READ_FAULT\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"JOB_WRITE_FAULT\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"JOB_AFFINITY_FAULT\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"JOB_BUS_FAULT\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"INSTR_INVALID_PC\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"INSTR_INVALID_ENC\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"INSTR_TYPE_MISMATCH\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"INSTR_OPERAND_FAULT\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"INSTR_TLS_FAULT\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"INSTR_BARRIER_FAULT\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"INSTR_ALIGN_FAULT\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"DATA_INVALID_FAULT\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"TILE_RANGE_FAULT\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"ADDR_RANGE_FAULT\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"IMPRECISE_FAULT\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"OOM\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"OOM_AFBC\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"DELAYED_BUS_FAULT\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"GPU_SHAREABILITY_FAULT\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"SYS_SHAREABILITY_FAULT\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"GPU_CACHEABILITY_FAULT\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"TRANSLATION_FAULT_0\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"TRANSLATION_FAULT_1\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"TRANSLATION_FAULT_2\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"TRANSLATION_FAULT_3\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"TRANSLATION_FAULT_4\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"TRANSLATION_FAULT_IDENTITY\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"PERM_FAULT_0\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"PERM_FAULT_1\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"PERM_FAULT_2\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"PERM_FAULT_3\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"TRANSTAB_BUS_FAULT_0\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"TRANSTAB_BUS_FAULT_1\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"TRANSTAB_BUS_FAULT_2\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"TRANSTAB_BUS_FAULT_3\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"ACCESS_FLAG_0\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"ACCESS_FLAG_1\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"ACCESS_FLAG_2\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"ACCESS_FLAG_3\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"ADDR_SIZE_FAULT_IN0\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"ADDR_SIZE_FAULT_IN1\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"ADDR_SIZE_FAULT_IN2\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"ADDR_SIZE_FAULT_IN3\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"ADDR_SIZE_FAULT_OUT0\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"ADDR_SIZE_FAULT_OUT1\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"ADDR_SIZE_FAULT_OUT2\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"ADDR_SIZE_FAULT_OUT3\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"MEM_ATTR_FAULT_0\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"MEM_ATTR_FAULT_1\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"MEM_ATTR_FAULT_2\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"MEM_ATTR_FAULT_3\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"MEM_ATTR_NONCACHE_0\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"MEM_ATTR_NONCACHE_1\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"MEM_ATTR_NONCACHE_2\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"MEM_ATTR_NONCACHE_3\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_device_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @panfrost_device_init.__key) #6
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 20
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 20, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 17
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 17, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 13
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #6
  %10 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 4
  store ptr %9, ptr %10, align 8
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8
  %14 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %14) #7
  %15 = load ptr, ptr %10, align 8
  %16 = ptrtoint ptr %15 to i32
  br label %48

17:                                               ; preds = %1
  %18 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %19 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %18) #7
  %20 = load ptr, ptr %10, align 8
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = tail call i32 @clk_enable(ptr noundef %20) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %51

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8
  %29 = tail call ptr @devm_clk_get_optional(ptr noundef %28, ptr noundef nonnull @.str.8) #6
  %30 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 5
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8
  %34 = ptrtoint ptr %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef %34) #7
  %35 = load ptr, ptr %30, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %45

37:                                               ; preds = %27
  %38 = icmp eq ptr %29, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = tail call i32 @clk_get_rate(ptr noundef nonnull %29) #6
  %41 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.10, i32 noundef %40) #7
  %42 = load ptr, ptr %30, align 4
  %43 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %39, %32
  %46 = phi i32 [ %36, %32 ], [ %43, %39 ]
  %47 = load ptr, ptr %10, align 8
  tail call void @clk_disable(ptr noundef %47) #6
  tail call void @clk_unprepare(ptr noundef %47) #6
  br label %48

48:                                               ; preds = %45, %12
  %49 = phi i32 [ %16, %12 ], [ %46, %45 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48, %26, %17
  %52 = phi i32 [ %49, %48 ], [ %21, %17 ], [ %24, %26 ]
  %53 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.1, i32 noundef %52) #7
  br label %302

54:                                               ; preds = %48, %39, %37
  %55 = tail call i32 @panfrost_devfreq_init(ptr noundef %0) #6
  switch i32 %55, label %56 [
    i32 0, label %58
    i32 -517, label %297
  ]

56:                                               ; preds = %54
  %57 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.2, i32 noundef %55) #7
  br label %297

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 3
  %60 = load i8, ptr %59, align 8, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %129

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 12
  %64 = load ptr, ptr %63, align 8
  %65 = load i32, ptr %64, align 4
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %65, i32 12) #6
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %68, label %70, !prof !9

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 6
  store ptr null, ptr %69, align 8
  br label %295

70:                                               ; preds = %62
  %71 = load ptr, ptr %0, align 8
  %72 = extractvalue { i32, i1 } %66, 0
  %73 = tail call noalias ptr @devm_kmalloc(ptr noundef %71, i32 noundef %72, i32 noundef 3520) #6
  %74 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 6
  store ptr %73, ptr %74, align 8
  %75 = icmp eq ptr %73, null
  br i1 %75, label %295, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %63, align 8
  %78 = load i32, ptr %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.panfrost_compatible, ptr %77, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %82, align 4
  store ptr %83, ptr %73, align 4
  %84 = load i32, ptr %77, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.panfrost_compatible, ptr %77, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr ptr, ptr %88, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr %struct.regulator_bulk_data, ptr %73, i32 1
  store ptr %90, ptr %91, align 4
  %92 = load ptr, ptr %63, align 8
  %93 = load i32, ptr %92, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %108

95:                                               ; preds = %95, %86
  %96 = phi ptr [ %105, %95 ], [ %92, %86 ]
  %97 = phi i32 [ %104, %95 ], [ 2, %86 ]
  %98 = load ptr, ptr %74, align 8
  %99 = getelementptr inbounds %struct.panfrost_compatible, ptr %96, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr ptr, ptr %100, i32 %97
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr %struct.regulator_bulk_data, ptr %98, i32 %97
  store ptr %102, ptr %103, align 4
  %104 = add nuw nsw i32 %97, 1
  %105 = load ptr, ptr %63, align 8
  %106 = load i32, ptr %105, align 4
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %95, label %108

108:                                              ; preds = %95, %86
  %109 = phi i32 [ %93, %86 ], [ %106, %95 ]
  %110 = load ptr, ptr %74, align 8
  br label %111

111:                                              ; preds = %108, %80, %76
  %112 = phi ptr [ %73, %76 ], [ %73, %80 ], [ %110, %108 ]
  %113 = phi i32 [ %78, %76 ], [ %84, %80 ], [ %109, %108 ]
  %114 = load ptr, ptr %0, align 8
  %115 = tail call i32 @devm_regulator_bulk_get(ptr noundef %114, i32 noundef %113, ptr noundef %112) #6
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = icmp eq i32 %115, -517
  br i1 %118, label %295, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.11, i32 noundef %115) #7
  br label %295

121:                                              ; preds = %111
  %122 = load ptr, ptr %63, align 8
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %74, align 8
  %125 = tail call i32 @regulator_bulk_enable(i32 noundef %123, ptr noundef %124) #6
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.12, i32 noundef %125) #7
  br label %295

129:                                              ; preds = %121, %58
  %130 = load ptr, ptr %0, align 8
  %131 = tail call ptr @devm_reset_control_array_get(ptr noundef %130, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %132 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 7
  store ptr %131, ptr %132, align 4
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load ptr, ptr %0, align 8
  %136 = ptrtoint ptr %131 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.13, i32 noundef %136) #7
  %137 = load ptr, ptr %132, align 4
  %138 = ptrtoint ptr %137 to i32
  br label %141

139:                                              ; preds = %129
  %140 = tail call i32 @reset_control_deassert(ptr noundef %131) #6
  br label %141

141:                                              ; preds = %139, %134
  %142 = phi i32 [ %138, %134 ], [ %140, %139 ]
  %143 = icmp eq i32 %142, 0
  %144 = load ptr, ptr %0, align 8
  br i1 %143, label %146, label %145

145:                                              ; preds = %141
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.3, i32 noundef %142) #7
  br label %285

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.device, ptr %144, i32 0, i32 25
  %148 = load ptr, ptr %147, align 8
  %149 = tail call i32 @of_count_phandle_with_args(ptr noundef %148, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #6
  %150 = icmp slt i32 %149, 2
  %151 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 12
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.panfrost_compatible, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = icmp slt i32 %154, 2
  %156 = select i1 %150, i1 %155, i1 false
  br i1 %156, label %254, label %157

157:                                              ; preds = %146
  %158 = icmp eq i32 %149, %154
  br i1 %158, label %161, label %159

159:                                              ; preds = %157
  %160 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.16, i32 noundef %149, i32 noundef %154) #7
  br label %281

161:                                              ; preds = %157
  %162 = icmp ugt i32 %149, 3
  br i1 %162, label %180, label %163, !prof !9

163:                                              ; preds = %161
  %164 = icmp eq i32 %149, 0
  br i1 %164, label %254, label %165

165:                                              ; preds = %163
  %166 = load ptr, ptr %0, align 8
  %167 = getelementptr inbounds %struct.panfrost_compatible, ptr %152, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %168, align 4
  %170 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %166, ptr noundef %169) #6
  %171 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 8, i32 0
  store ptr %170, ptr %171, align 4
  %172 = icmp eq ptr %170, null
  %173 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  %174 = or i1 %172, %173
  br i1 %174, label %240, label %175

175:                                              ; preds = %165
  %176 = load ptr, ptr %0, align 8
  %177 = tail call ptr @device_link_add(ptr noundef %176, ptr noundef nonnull %170, i32 noundef 13) #6
  %178 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 9, i32 0
  store ptr %177, ptr %178, align 4
  %179 = icmp eq ptr %177, null
  br i1 %179, label %223, label %226

180:                                              ; preds = %161
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.17) #6
  br label %281

181:                                              ; preds = %228
  %182 = load ptr, ptr %0, align 8
  %183 = tail call ptr @device_link_add(ptr noundef %182, ptr noundef nonnull %235, i32 noundef 13) #6
  %184 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 9, i32 1
  store ptr %183, ptr %184, align 4
  %185 = icmp eq ptr %183, null
  br i1 %185, label %223, label %186

186:                                              ; preds = %181
  %187 = icmp eq i32 %149, 2
  br i1 %187, label %254, label %188

188:                                              ; preds = %186
  %189 = load ptr, ptr %151, align 8
  %190 = load ptr, ptr %0, align 8
  %191 = getelementptr inbounds %struct.panfrost_compatible, ptr %189, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr ptr, ptr %192, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %190, ptr noundef %194) #6
  %196 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 8, i32 2
  store ptr %195, ptr %196, align 4
  %197 = icmp eq ptr %195, null
  %198 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  %199 = or i1 %197, %198
  br i1 %199, label %240, label %200

200:                                              ; preds = %188
  %201 = load ptr, ptr %0, align 8
  %202 = tail call ptr @device_link_add(ptr noundef %201, ptr noundef nonnull %195, i32 noundef 13) #6
  %203 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 9, i32 2
  store ptr %202, ptr %203, align 4
  %204 = icmp eq ptr %202, null
  br i1 %204, label %223, label %205

205:                                              ; preds = %200
  %206 = icmp eq i32 %149, 3
  br i1 %206, label %254, label %207

207:                                              ; preds = %205
  %208 = load ptr, ptr %151, align 8
  %209 = load ptr, ptr %0, align 8
  %210 = getelementptr inbounds %struct.panfrost_compatible, ptr %208, i32 0, i32 3
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr ptr, ptr %211, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %209, ptr noundef %213) #6
  %215 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 8, i32 3
  store ptr %214, ptr %215, align 4
  %216 = icmp eq ptr %214, null
  %217 = icmp ugt ptr %214, inttoptr (i32 -4096 to ptr)
  %218 = or i1 %216, %217
  br i1 %218, label %240, label %219

219:                                              ; preds = %207
  %220 = load ptr, ptr %0, align 8
  %221 = tail call ptr @device_link_add(ptr noundef %220, ptr noundef nonnull %214, i32 noundef 13) #6
  %222 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 9, i32 3
  store ptr %221, ptr %222, align 4
  br label %223

223:                                              ; preds = %219, %200, %181, %175
  %224 = phi ptr [ %171, %175 ], [ %236, %181 ], [ %196, %200 ], [ %215, %219 ]
  %225 = load ptr, ptr %224, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.19) #7
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %0) #6
  br label %281

226:                                              ; preds = %175
  %227 = icmp eq i32 %149, 1
  br i1 %227, label %254, label %228

228:                                              ; preds = %226
  %229 = load ptr, ptr %151, align 8
  %230 = load ptr, ptr %0, align 8
  %231 = getelementptr inbounds %struct.panfrost_compatible, ptr %229, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr ptr, ptr %232, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %230, ptr noundef %234) #6
  %236 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 8, i32 1
  store ptr %235, ptr %236, align 4
  %237 = icmp eq ptr %235, null
  %238 = icmp ugt ptr %235, inttoptr (i32 -4096 to ptr)
  %239 = or i1 %237, %238
  br i1 %239, label %240, label %181

240:                                              ; preds = %228, %207, %188, %165
  %241 = phi i32 [ 0, %165 ], [ 1, %228 ], [ 2, %188 ], [ 3, %207 ]
  %242 = phi ptr [ %170, %165 ], [ %235, %228 ], [ %195, %188 ], [ %214, %207 ]
  %243 = phi ptr [ %171, %165 ], [ %236, %228 ], [ %196, %188 ], [ %215, %207 ]
  %244 = phi i1 [ %172, %165 ], [ %237, %228 ], [ %197, %188 ], [ %216, %207 ]
  %245 = ptrtoint ptr %242 to i32
  %246 = select i1 %244, i32 -61, i32 %245
  store ptr null, ptr %243, align 4
  %247 = load ptr, ptr %0, align 8
  %248 = load ptr, ptr %151, align 8
  %249 = getelementptr inbounds %struct.panfrost_compatible, ptr %248, i32 0, i32 3
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr ptr, ptr %250, i32 %241
  %252 = load ptr, ptr %251, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.18, ptr noundef %252, i32 noundef %241, i32 noundef %246) #7
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %0) #6
  %253 = icmp eq i32 %246, 0
  br i1 %253, label %254, label %281

254:                                              ; preds = %240, %226, %205, %186, %163, %146
  %255 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 2
  %256 = load ptr, ptr %255, align 8
  %257 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %256, i32 noundef 0) #6
  %258 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  store ptr %257, ptr %258, align 4
  %259 = icmp ugt ptr %257, inttoptr (i32 -4096 to ptr)
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = ptrtoint ptr %257 to i32
  br label %279

262:                                              ; preds = %254
  %263 = tail call i32 @panfrost_gpu_init(ptr noundef %0) #6
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %279

265:                                              ; preds = %262
  %266 = tail call i32 @panfrost_mmu_init(ptr noundef %0) #6
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = tail call i32 @panfrost_job_init(ptr noundef %0) #6
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = tail call i32 @panfrost_perfcnt_init(ptr noundef %0) #6
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %302, label %274

274:                                              ; preds = %271
  tail call void @panfrost_job_fini(ptr noundef %0) #6
  br label %275

275:                                              ; preds = %274, %268
  %276 = phi i32 [ %269, %268 ], [ %272, %274 ]
  tail call void @panfrost_mmu_fini(ptr noundef %0) #6
  br label %277

277:                                              ; preds = %275, %265
  %278 = phi i32 [ %266, %265 ], [ %276, %275 ]
  tail call void @panfrost_gpu_fini(ptr noundef %0) #6
  br label %279

279:                                              ; preds = %277, %262, %260
  %280 = phi i32 [ %261, %260 ], [ %263, %262 ], [ %278, %277 ]
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %0)
  br label %281

281:                                              ; preds = %279, %240, %223, %180, %159
  %282 = phi i32 [ %246, %240 ], [ %280, %279 ], [ -19, %223 ], [ -22, %159 ], [ -22, %180 ]
  %283 = load ptr, ptr %132, align 4
  %284 = tail call i32 @reset_control_assert(ptr noundef %283) #6
  br label %285

285:                                              ; preds = %281, %145
  %286 = phi i32 [ %142, %145 ], [ %282, %281 ]
  %287 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 6
  %288 = load ptr, ptr %287, align 8
  %289 = icmp eq ptr %288, null
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 12
  %292 = load ptr, ptr %291, align 8
  %293 = load i32, ptr %292, align 4
  %294 = tail call i32 @regulator_bulk_disable(i32 noundef %293, ptr noundef nonnull %288) #6
  br label %295

295:                                              ; preds = %290, %285, %127, %119, %117, %70, %68
  %296 = phi i32 [ %286, %285 ], [ %286, %290 ], [ -12, %68 ], [ -517, %117 ], [ %115, %119 ], [ -12, %70 ], [ %125, %127 ]
  tail call void @panfrost_devfreq_fini(ptr noundef %0) #6
  br label %297

297:                                              ; preds = %295, %56, %54
  %298 = phi i32 [ %55, %56 ], [ %296, %295 ], [ %55, %54 ]
  %299 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 5
  %300 = load ptr, ptr %299, align 4
  tail call void @clk_disable(ptr noundef %300) #6
  tail call void @clk_unprepare(ptr noundef %300) #6
  %301 = load ptr, ptr %10, align 8
  tail call void @clk_disable(ptr noundef %301) #6
  tail call void @clk_unprepare(ptr noundef %301) #6
  br label %302

302:                                              ; preds = %297, %271, %51
  %303 = phi i32 [ %52, %51 ], [ %298, %297 ], [ 0, %271 ]
  ret i32 %303
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_devfreq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gpu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_perfcnt_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @panfrost_pm_domain_fini(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 8, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 9, i32 0
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @device_link_del(ptr noundef nonnull %7) #6
  %10 = load ptr, ptr %2, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %3, %5 ]
  tail call void @dev_pm_domain_detach(ptr noundef %12, i1 noundef zeroext true) #6
  %13 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 8, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 9, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  tail call void @device_link_del(ptr noundef nonnull %18) #6
  %21 = load ptr, ptr %13, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %14, %16 ]
  tail call void @dev_pm_domain_detach(ptr noundef %23, i1 noundef zeroext true) #6
  %24 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 8, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 9, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  tail call void @device_link_del(ptr noundef nonnull %29) #6
  %32 = load ptr, ptr %24, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %25, %27 ]
  tail call void @dev_pm_domain_detach(ptr noundef %34, i1 noundef zeroext true) #6
  br label %35

35:                                               ; preds = %33, %22, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_device_fini(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @panfrost_perfcnt_fini(ptr noundef %0) #6
  tail call void @panfrost_job_fini(ptr noundef %0) #6
  tail call void @panfrost_mmu_fini(ptr noundef %0) #6
  tail call void @panfrost_gpu_fini(ptr noundef %0) #6
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %0)
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #6
  tail call void @panfrost_devfreq_fini(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regulator_bulk_disable(i32 noundef %11, ptr noundef nonnull %6) #6
  br label %13

13:                                               ; preds = %8, %1
  %14 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @panfrost_exception_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 239
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr [240 x %struct.panfrost_exception_info], ptr @panfrost_exception_infos, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %3, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 374, i32 noundef 9, ptr noundef null) #6
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi ptr [ @.str.5, %7 ], [ %5, %3 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @panfrost_exception_needs_reset(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_device_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @panfrost_gpu_soft_reset(ptr noundef %0) #6
  tail call void @panfrost_gpu_power_on(ptr noundef %0) #6
  tail call void @panfrost_mmu_reset(ptr noundef %0) #6
  tail call void @panfrost_job_enable_interrupts(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gpu_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_enable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_device_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @panfrost_gpu_soft_reset(ptr noundef %3) #6
  tail call void @panfrost_gpu_power_on(ptr noundef %3) #6
  tail call void @panfrost_mmu_reset(ptr noundef %3) #6
  tail call void @panfrost_job_enable_interrupts(ptr noundef %3) #6
  tail call void @panfrost_devfreq_resume(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_device_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @panfrost_job_is_idle(ptr noundef %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @panfrost_devfreq_suspend(ptr noundef %3) #6
  tail call void @panfrost_gpu_power_off(ptr noundef %3) #6
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 0, %6 ], [ -16, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_is_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
